module outreg ( D,Wr,clear,clk,qr);
input [7:0] D;
input Wr,clear,clk;
output reg [7:0] qr;
reg [7:0] q;

always @ (posedge clk , posedge clear) begin
if (clear) q = 8'b00000000;
else q<=D;
end
always @ (*) begin
if (Wr)
	qr = q;
else 
	qr = 8'bzzzzzzzz;
end
endmodule


