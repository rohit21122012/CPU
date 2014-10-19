`include "ALU/Arith/UnSigned/USubtractor/complement2s.v"	
module USubtractor(x , a , b);

input [31:0] a ,b;
output [31:0] x;

reg reg0=1'd0;

wire [31:0]b_not;
wire shit,shit1;

complement2s bla(b_not,b);
UAdder blabla(x ,shit1, shit , a , b_not , reg0);

endmodule

