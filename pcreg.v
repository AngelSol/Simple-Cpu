module pcreg (D,Load,Clear,clk,out);
input [5:0] D;
input Load,Clear,clk;
output reg [5:0] out;
initial 
	out <= 6'b0;

always @ (posedge clk , posedge Clear) begin
if (Clear) out <= 0;
else if(Load) out <=D;
else out<=out;
end

endmodule
