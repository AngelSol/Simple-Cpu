module RAM (D,addr,WE,clk,Q); //instructions stored here
input [7:0] D;
input [5:0] addr;
input WE,clk;
output [7:0] Q;

reg [7:0] MEM [63:0];

initial
	begin
	$readmemb ("memfile.dat",MEM);
	end

assign Q = MEM [addr];
always @ (negedge clk)
	if (WE)
		MEM [addr] <= D;
endmodule