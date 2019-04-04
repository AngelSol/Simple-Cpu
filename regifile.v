module regifile (D,WE,WA,clk,out);
input [7:0] D;
input WE,clk;
input [2:0] WA;
output [7:0] out;
reg [7:0] regmem [7:0];
assign out = regmem [WA];
always @ (posedge clk)
if (WE)
	regmem[WA] <= D;
endmodule