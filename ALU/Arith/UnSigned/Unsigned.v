//b12015 Rohit Patiyal
`#include "UDivider/UDivider.v"
`#include "UAdder/UAdder.v"

module UnSigned(output [31:0] AnswerOne,output [31:0] AnswerTwo,input [31:0] A,input [31:0] B,input [1:0] OpCode);
	
	input [31:0] A; //Dividend ;
	input [31:0] B; //Divisor;

	output [31:0] Sum;
	output [31:0] Difference;
	output [63:0] Product;
	output [31:0] Quotient;
	output [31:0] Remainder;


	UDivider myDiv(Quotient, Remainder, A, B);

	generate for(i=0;i<32;i=i+1) begin: muxingthebits
		mux4to1(AnswerOne[i], Sum, Quotient, Difference, Product[31:0], OpCode)
	end endgenerate
	
	generate for(i=0;i<32;i=i+1) begin: muxingthebits
		mux4to1(AnswerOne[i], 0, Remainder, 0, Product[63:32]);
	end endgenerate


endmodule