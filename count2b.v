module count2b (clk,reset,stop,cycle);
input clk,reset,stop;
output reg [1:0]cycle;
initial 
	cycle <=00;
always @ (posedge clk)
	begin	
	if (!stop)
		begin
			if (reset)
				cycle <= 2'b00;
			else
				cycle <= cycle + 2'b01;
		end
	end
endmodule 
