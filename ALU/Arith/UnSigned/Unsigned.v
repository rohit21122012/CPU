//b12015 Rohit Patiyal
`include "ALU/Arith/UnSigned/UDivider/UDivider.v"
`include "ALU/Arith/UnSigned/UAdder/UAdder.v"


module UnSigned(output [31:0] Answer, input [31:0] A,input [31:0] B,input [1:0] OpCode);


	output [31:0] Sum;
	output [31:0] Difference;
	output [63:0] Product;
	output [31:0] Quotient;
	output [31:0] Remainder;


	UDivider myDiv(Quotient, Remainder, A, B);
	UDivider myDiv2(Sum, Remainder, A, B);
	UDivider myDiv3(Difference, Remainder, A, B);
	//UDivider myDiv(Quotient, Remainder, A, B);

	generate for(i=0;i<32;i=i+1) begin: muxingthebits
		mux4to1 m(Answer[i], Sum[i], Quotient[i], Difference[i], Quotient[i], OpCode);
	end endgenerate



endmodule