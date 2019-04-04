module IRreg(D,load,clear,clk,Out);
input [7:0] D;
input load,clear,clk;
output reg [7:0] Out;
initial 
	Out <= 8'b00000000;

always @ (posedge clk, posedge clear)
	begin
		if (clear)
			Out <= 8'b00000000;
		else if(load)
			Out <= D;
		else	
			Out <= Out;
	end
endmodule
		
