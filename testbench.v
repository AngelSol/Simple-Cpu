module testbench ();
reg clk;
reg reset;
wire [7:0] inext,dataoutf,ramin,IR;
wire [5:0] ramaddress;
wire memWr,RFwr;
reg [1:0]succuss;

top cpusim(clk,reset,inext,dataoutf,ramin,IR,ramaddress,memWr,RFwr);

// initialize test
initial
	begin
		succuss <= 2'b00;
		reset <= 1; # 22; reset <= 0;
	end

always
	begin
		clk <= 1;
		 # 5; 
		 clk <= 0;
		 # 5; // clock duration
	end
	
// check results
always @ (negedge RFwr)
	begin
		if (IR[2:0] == 3'b000&&ramin == 8'b00000001)
			begin 
				succuss <= succuss + 1'b1;
				$display ("R[",IR[2:0],"] = ", ramin);
			end
	end
	
	always @ (negedge memWr)
		begin
			if (ramaddress == 6'b001111&&ramin == 8'b00000001)
			begin
				succuss <= succuss + 1'b1;
				$display ("RAM[",ramaddress,"] = ", ramin);
			end
			else if (ramaddress == 6'b010000&&ramin == 8'b00000010)
			begin 
				
				succuss <= succuss + 1'b1;
				$display ("RAM[",ramaddress,"] = ", ramin);
			end
		end
always @(*)
	if (succuss == 2'b11)
		begin
			$display ("Simulation succeeded");
			#50
			$stop;
		end
endmodule