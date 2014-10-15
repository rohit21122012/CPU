//b12015 Rohit Patiyal 
`include "ALU/Arith/Signed/Signed.v"
`include "ALU/Arith/UnSigned/Unsigned.v" //` 

module arith(output [31:0] ArithAnswer, input [31:0] A,input [31:0] B, input S_or_U, input [1:0] OpCode);

	wire [31:0] UnSignAns;
	wire [31:0] SignAns;
	
	genvar i;
	
	UnSigned s2(UnSignAns, A, B, OpCode);
	//Signed s1(SignAns, A, B, OpCode);
	
	generate for(i=0; i<32; i=i+1) begin: multiple2to1muxs 
		mux2to1 Mux1(ArithAnswer[i], UnSignAns[i], UnSignAns[i], S_or_U);
	end endgenerate

endmodule
