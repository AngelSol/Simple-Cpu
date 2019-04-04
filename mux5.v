module mux5 (a,b,c,d,e,sel,y);
input [2:0] sel;
input [7:0] a,b,c,d,e;
output reg [7:0] y;

	always @ (*)	
		begin
			case (sel)
				3'b000:	begin
					y<=a;
						end
				3'b001:	begin
					y<=b;
						end
				3'b010:	begin
					y<=c;
						end
				3'b011:	begin
					y<=d;
						end
				3'b100:	begin
					y<=e;
						end
			endcase	
		end
endmodule