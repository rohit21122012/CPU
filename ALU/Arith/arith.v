//b12015 Rohit Patiyal 
`#include "Signed/Signed.v"
`#include "UnSigned/UnSigned.v"
`#include "mux2to1.v" //` 

module arith(output [31:0] ArithAnswerOne, output [31:0] ArithAnswerTwo, input [31:0] A,input [31:0] B, input S_or_U, input OpCode);

	wire [31:0] UnSignArithAnswerOne;
	wire [31:0] UnSignArithAnswerTwo;
	wire [31:0] SignLogicAnserOne;
	wire [31:0] SignLogicAnswerTwo; 
	genvar i;
	
	UnSigned s2(UnSignArithAnswerOne, UnSignArithAnswerTwo, A, B, OpCode);
	Signed s1(SignArithAnswerOne, UnSignArithAnswerTwo, A, B, OpCode);
	
	generate for(i=0; i<32; i=i+1) begin: multiple2to1muxs 
		mux2to1 Mux1(ArithAnswerOne[i], UnSignArithAnswerOne[i], SignLogicAnswerOne[i], S_or_U);
	end endgenerate

	generate for(i=0; i<32; i=i+1) begin: again 
		mux2to1 Mux2(ArithAnswerTwo[i], UnSignArithAnswerTwo[i], SignLogicAnswerTwo[i], S_or_U);
	end endgenerate

endmodule