module controler (
input clk,
input [7:0] IR,
input Aeq0,apos,
input [7:0]dataout,
output IRload,
output [1:0] JMPmux,
output PCload,MemInst,MRload,memWr,
output [2:0] Asel,
output Aload,reset,RFwr,
output [2:0]ALUsel,
output [1:0] Shftsel,
output outen

);
reg [18:0] controls;
assign {IRload,JMPmux,PCload,MemInst,MRload,memWr,Asel,Aload,reset,RFwr,ALUsel,Shftsel,outen} = controls;
reg resetcount,stop;
wire [1:0] cycle;


initial 
	begin
		stop <=0;
		resetcount <=0;
	end
	
count2b counter(clk,resetcount,stop,cycle);

always @ (*)
	begin
		case (cycle)
			2'b00 :	
				begin 
					controls <= 19'b1001000xxx000xxxxx0;
					resetcount <=0;
				end

			2'b01 : 	//2 byte instructions must update pc 
				begin
					casex (IR)
						8'b00010xxx: //LDA
						begin 
							controls <= 19'b0xx0000001100xxxxx0;
							resetcount <=1;
						end 
						
						8'b00100xxx: //STA
						begin 
							controls <= 19'b0xx0000xxx001xxxxx0;
							resetcount <=1;
						end
						8'b00110000: //LDM0
						begin 
							controls <= 19'b0xx0010xxx000xxxxx0;
							resetcount <=0;
						end
						8'b01000000: //STM0
						begin 
							controls <= 19'b0xx0010xxx000xxxxx0;
							resetcount <=0;
						end
						8'b01010000: //LDI
						begin 
							controls <= 19'b0001000100100xxxxx0; 
							resetcount <=1;
						end
						
						// uses alu
						
						8'b10100xxx: //AND
						begin 
							controls <= 19'b0xx0000000100001000;
							resetcount <=1;
						end
						
						8'b10110xxx: //OR
						begin 
							controls <= 19'b0xx0000000100010000;
							resetcount <=1;
						end
						
						8'b11000xxx: //ADD
						begin 
							controls <= 19'b0xx0000000100011000;
							resetcount <=1;
						end
						8'b11010xxx: //SUB
						begin 
							controls <= 19'b0xx0000000100100000;
							resetcount <=1;
						end
						8'b11100000: //NOT
						begin 
							controls <= 19'b0xx0000000100101000;
							resetcount <=1;
						end
						8'b11100001: //INC
						begin 
							controls <= 19'b0xx0000000100110000;
							resetcount <=1;
						end
						8'b11100010: //DEC
						begin 
							controls <= 19'b0xx0000000100111000;
							resetcount <=1;
						end
						8'b11100011: //SHFL
						begin 
							controls <= 19'b0xx0000000100000010;
							resetcount <=1;
						end
						8'b11100100: //SHFR
						begin 
							controls <= 19'b0xx0000000100000100;
							resetcount <=1;
						end
						8'b11100101: //ROTR
						begin 
							controls <= 19'b0xx0000000100000110;
							resetcount <=1;
						end
						
						//j instructions
						
						
						8'b01100000: //JMP
						begin 
							controls <= 19'b0011000xxx000xxxxx0;
							resetcount <=1;
						end
						8'b0110xxxx: //JMPR
						begin 
							if (IR[3])
								controls <= 19'b0101000xxx000xxxxx0;
							else
							begin
								controls <= 19'b0111000xxx000xxxxx0;
								resetcount <=1;
							end
						end
						8'b01110000: //JZ
						begin
						if (Aeq0)
							
							begin 
								controls <= 19'b0011000xxx000xxxxx0;
								resetcount <=1;
							end
						else 
							begin 
								controls <= 19'b0001000xxx000xxxxx0;
								resetcount <=1;
							end
						end
						8'b0111xxxx: //JZR
						begin
						if (Aeq0)
							begin	
							if (IR[3])
								controls <= 19'b0101000xxx000xxxxx0;
							else
							begin
								controls <= 19'b0111000xxx000xxxxx0;
								resetcount <=1;
							end
							end
						else 
							begin 
								controls <= 19'b0001000xxx000xxxxx0;
								resetcount <=1;
							end
						end
						8'b10000000: //JNZ
						begin
						if (!Aeq0)
							begin	
								controls <= 19'b0011000xxx000xxxxx0;
								resetcount <=1;
							end
						else 
							begin 
								controls <= 19'b0001000xxx000xxxxx0;
								resetcount <=1;
							end
						end
						8'b1000xxxx: //JNZR
						begin
						if (!Aeq0)
						begin	
							if (IR[3])
								controls <= 19'b0101000xxx000xxxxx0;
							else
							begin
								controls <= 19'b0111000xxx000xxxxx0;
								resetcount <=1;
							end
						end
						else 
							begin 
								controls <= 19'b0001000xxx000xxxxx0;
								resetcount <=1;
							end
						end
						
						
						8'b10010000: //JP
						begin
						if (apos)
							begin
								controls <= 19'b0011000xxx000xxxxx0;
								resetcount <=1;
							end
						else 
							begin 
								controls <= 19'b0001000xxx000xxxxx0;
								resetcount <=1;
							end
						end
						8'b1001xxxx: //JPR
						begin
						if (apos)
							begin
								controls <= 19'b0xx0000000100000110;
								resetcount <=1;
							end
						else 
							begin 
								controls <= 19'b0001000xxx000xxxxx0;
								resetcount <=1;
							end
						end
						//done so far
						//in/out 
						8'b11110000: //IN 
						begin 
							controls <= 19'b0xx0000010100xxxxx0;
							resetcount <=1;
						end
						8'b11110001: //OUT
						begin 
							controls <= 19'b0xx0000xxx000xxxxx1;
							resetcount <=1;
						end
						8'b11110010: //HALT
						begin 
							controls <= 19'b0xx0000xxx010xxxxx0;
							resetcount <=1;
							stop <=1;
						end
						8'b00000000: //NOP
						begin 
							controls <= 19'b0xx0000xxx000xxxxx0;
							resetcount <=1;
						end
						//default: not needed 
							//begin 
								//controls <= 19'b1001000xxx000xxxxx0;
								//resetcount <=1;
						//	end
					endcase
						
				
				end
				2'b10:
					begin
					
						case (IR)
							8'b00110000: //LDM1
							begin 
								controls <= 19'b0001100011100xxxxx0;
								resetcount <=1;
							end
							8'b01000000: //STM1
							begin 
								controls <= 19'b0001101xxx000xxxxx0;
								resetcount <=1;
							end
							
							
						endcase
					end
			endcase
	end
		
endmodule
