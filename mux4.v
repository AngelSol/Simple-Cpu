module mux4 (a,b,c,d,sel,y);
input [1:0] sel;
input [5:0] a,b,c,d;
output reg [5:0] y;

	always @ (*)	
		begin
			case (sel)
				2'b00:	begin
					y=a;
						end
				2'b01:	begin
					y=b;
						end
				2'b10:	begin
					y=c;
						end
				2'b11:	begin
					y=d;
						end
			endcase	
		end
endmodule