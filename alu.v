module alu (a,b,sel,y);
input [7:0] a,b;
input [2:0] sel;
output reg [7:0] y;

always @ (*)
	begin 
		case(sel)
			3'b000:
				begin 
					y=a; //pass though 
				end
			3'b001:
				begin
					y= a & b;
				end
			3'b010:
				begin
					y= a | b;
				end
			3'b011:
				begin
					y= a + b;
				end
			3'b100:
				begin
					y= a - b;
				end
			3'b101:
				begin
					y= ~a; // bitwise invert 
				end
			3'b110:
				begin
					y = a + 1'b1; // inc
				end
			3'b111:
				begin
					y = a - 1'b1; // dec
				end
			endcase
	end
endmodule