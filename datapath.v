module datapath (
input clk,
input IRload,
input [1:0] JMPmux,
input PCload,MemInst,MRload,memWr,
input [2:0] Asel,
input Aload,reset,RFwr,
input [2:0]ALUsel,
input [1:0] Shftsel,
input outen,
input [7:0] inext,
output [7:0] IR,
output Aeq0,apos,
output [7:0]dataout, //output reg thing);
output [7:0] ramin,
output [5:0] ramaddress
);

wire [7:0] memout,irout,MR2ram,Accin,Accout,shftout,rfout,aluout,regout;
wire [5:0] PCplus1,relnout,relpout,PCout,PCin,RAMaddr;




IRreg insreg(memout,IRload,reset,clk,irout);
IRreg MAreg(memout,MRload,reset,clk,MR2ram);

reln ad(PCout,irout [2:0],relnout);
relp su(PCout,irout [2:0],relpout);
incer plus1(PCout,PCplus1);

mux4 pcmuxin(PCplus1, memout[5:0], relnout,relpout,JMPmux,PCin );
pcreg pc(PCin,PCload,reset,clk,PCout);

pcmux2 pcmuxout(PCout,MR2ram[5:0],MemInst,RAMaddr);

RAM datainst(Accout,RAMaddr,memWr,clk,memout);
regifile regies(Accout,RFwr,irout[2:0],clk,rfout);

mux5 accmux(shftout,rfout,inext,memout,memout,Asel,Accin); //picture shows two inputs from memout
accumulator accu(Accin,Aload,reset,clk,Accout);

assign Aeq0 = ~|Accout;
assign apos = ~ Accout [7];
assign IR = irout;
assign dataout = regout;
assign ramaddress = RAMaddr;
assign ramin = Accout;


alu alumod(Accout,rfout,ALUsel,aluout);
shifter shiftmod(aluout,Shftsel,shftout);

outreg outer(Accout,outen,reset,clk,regout);
endmodule