module accumulator (D,Wr,clear,clk,q);
input [7:0] D;
input Wr,clear,clk;
output reg [7:0] q;

always @ (posedge clk , posedge clear) 
	begin
		if (clear) 
			q <= 0;
		else if(Wr) 
			q<=D;
		else 
			q<=q;
	end
endmodule


