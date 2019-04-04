module reln(a,b,y);
input [5:0] a;
input [2:0] b;
output [5:0] y;
assign y = a - b;
endmodule