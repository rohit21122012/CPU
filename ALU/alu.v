`include "ALU/Arith/arith.v"
`include "ALU/Logic/logic.v"
`include "ALU/Arith/UnSigned/UDivider/fulladd.v"
`include "ALU/mux8to1.v"
`include "ALU/mux4to1.v"
`include "ALU/mux2to1.v" //`

//Rohit Patiyal
module Alu(output [31:0] AnswerOne, input [31:0] A, input [31:0] B, input A_or_L, input S_or_U, input [2:0] OpCode);
	
	wire [31:0] ArithAnswer;
	wire [31:0] LogicAnswer;

	genvar i;

	arith a1(ArithAnswer, A, B, S_or_U, OpCode[1:0]);
	Logic l1(LogicAnswer, A, B, OpCode);


	//mux32 Mux1(AnswerOne, ArithAnswerOne, LogicAnswerOne, A_or_L);
	generate for(i=0; i<32; i=i+1) begin: multiple2to1muxs 
		mux2to1 Mux1(AnswerOne[i], ArithAnswer[i], LogicAnswer[i], A_or_L);
	end endgenerate

endmodule
