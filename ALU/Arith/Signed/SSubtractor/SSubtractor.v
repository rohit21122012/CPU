// I/O ports declaration
module SSubtractor(out1 , out2 ,A ,B);
output [31:0] out1,out2;
input [31:0] A;
input [31:0]B;

reg[31:0]reg1 = 32'd1;
reg reg0 = 1'd0;
reg reg11 = 1'd1;

//Internal nets
wire xorput , xorputa,xorputb,x,y;
wire [31:0] o,o_,o__,r_,r__,dd_,dr_,dd,dr;

//Instantiate logic primitives

xor m(xorputa, reg0 ,A[31]);
xor l(xorputb,reg0,B[31]);
xor k(xorput , xorputa,xorputb);

complement2s j(dd_ ,A);
complement2s i(dr_ ,B);
mux32to16 h(dd,A,dd_,xorputa);
mux32to16 g(dr,B,dr_,xorputb);

UAdder f(o_,shit1,shit,dd, dr,reg0);
USubtractor e(r_,dd,dr);

complement2s a(r__ , r_);
complement2s a2(o__ , o_);
mux48to16 c(out1 ,r_ , o_,o__,r__, xorputa,xorputb,reg11);


/*complement2s j(dd_ ,A);
complement2s i(dr_ ,B);48
mux32to16 h(dd,A,dd_,xorputa);
mux32to16 g(dr,B,dr_,xorputb);*/











endmodule


