//b12015 Rohit Patiyal
`include "ALU/Arith/UnSigned/UDivider/UDivider.v"
`include "ALU/Arith/UnSigned/UAdder/UAdder.v"
`include "ALU/Arith/UnSigned/UMultiplier/UMultiplier.v" //`

module UnSigned(output [31:0] Answer, input [31:0] A,input [31:0] B,input [1:0] OpCode);


	output [31:0] Sum;
	output [31:0] Difference;
	output [63:0] Product;
	output [31:0] Quotient;
	output [31:0] Remainder;

	wire carry_out;
	wire overflow;

	UDivider myDiv(Quotient, Remainder, A, B);
	UAdder myAdder(Sum, carry_out, overflow, A, B ,0);
	UDivider myDiv3(Difference, Remainder, A, B);
	UMultiplier myProduct(Product, A, B);
	//UDivider myDiv(Quotient, Remainder, A, B);

	genvar i;
	generate for(i=0;i<32;i=i+1) begin: muxingthebits
		mux4to1 m(Answer[i], Sum[i], Difference[i], Product[i], Quotient[i], OpCode);
	end endgenerate



endmodule