module shifter (in,sel,out);
input [7:0] in;
input [1:0] sel;
output reg [7:0] out;

always @ (*) begin
	case (sel)
		2'b00: //pass though 
			begin 
				out = in;
			end
		2'b01: //SHFL
			begin 
				out = in << 1'b1;
			end
		2'b10: //SHFR 
			begin 
				out = in >> 1'b1;
			end
		2'b11: //Rotr 
			begin 
				out = {in[0], in[7:1]};
			end
	endcase
end
endmodule