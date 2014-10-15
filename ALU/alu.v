`include "Arith/arith.v"
`include "Logic/logic.v"
`include "mux2to1.v" //`

//Rohit Patiyal
module Alu(output [31:0] AnswerOne, input [31:0] A, input [31:0] B, input A_or_L, input S_or_U, input OpCode);
	
	wire [31:0] ArithAnswerOne;
	
	wire [31:0] LogicAnserOne;

	genvar i;

	arith a1(ArithAnswerOne, A, B, S_or_U, OpCode);
	logic l1(LogicAnserOne, A, B, S_or_U, OpCode);


	//mux32 Mux1(AnswerOne, ArithAnswerOne, LogicAnswerOne, A_or_L);
	generate for(i=0; i<32; i=i+1) begin: multiple2to1muxs 
		mux2to1 Mux1(AnswerOne[i], ArithAnswerOne[i], LogicAnswerOne[i], A_or_L);
	end endgenerate

endmodule
