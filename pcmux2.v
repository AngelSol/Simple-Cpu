module pcmux2 (a,b,sel,out);
input [5:0] a,b;
input sel;
output reg [5:0] out;

	always @ (*)	
		begin
			case (sel)
				1'b0:	begin
					out=a;
						end
				1'b1:	begin
					out=b;
						end
	
			endcase	
		end
endmodule