//b12015 Rohit Patiyal
`include "ALU/Arith/Signed/SDivider/SDivider.v"
//`include "ALU/Arith/Signed/SAdder/SAdder.v"
`include "ALU/Arith/Signed/SMultiplier/SMultiplier.v" 
//`include "ALU/mux4to1.v"//`

module Signed(output [31:0] Answer, input [31:0] A,input [31:0] B,input [1:0] OpCode);


	output [31:0] Sum;
	output [31:0] Difference;
	output [63:0] Product;
	output [31:0] Quotient;
	output [31:0] Remainder;

	wire carry_out;
	wire overflow;

//	SDivider myDiv(Quotient, Remainder, A, B);
//	SAdder myAdder(Sum, carry_out, overflow, A, B ,0);
//	SDivider myDiv3(Difference, Remainder, A, B);
	SMultiplier myProduct(Product, A, B);
	SDivider myDiv(Quotient, Remainder, A, B);
	genvar i;
	generate for(i=0;i<32;i=i+1) begin: muxingthebits
		mux4to1 m(Answer[i], Product[i], Product[i], Product[i], Quotient[i], OpCode);
	end endgenerate



endmodule