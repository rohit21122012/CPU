//b12015 Rohit Patiyal 
`include "ALU/Logic/AND/AND_32bit.v"
`include "ALU/Logic/OR/OR_32bit.v" 
`include "ALU/Logic/XOR/XOR_32bit.v"  //`
`include "ALU/Logic/ASHIFTER/ASHIFTER_32bit.v" 
`include "ALU/Logic/LSHIFTER/LSHIFTER_32bit.v" 
module Logic(output [31:0] LogicAnswer, input [31:0] A,input [31:0] B, input [2:0] OpCode);

	wire [31:0] ANDAns;
	wire [31:0] ORAns;
	wire [31:0] XORAns;
	wire [31:0] LeftLSHIFTERAns;
	wire [31:0] RightLSHIFTERAns;
	wire [31:0] LeftASHIFTERAns;
	wire [31:0] RightASHIFTERAns;
	
	genvar i;
	
	AND_32bit l1(ANDAns, A, B);
	OR_32bit l2(ORAns, A, B);
	XOR_32bit l3(XORAns, A, B);
	LSHIFTER_32bit l4(LeftLSHIFTERAns, A, 1);
	LSHIFTER_32bit l5(RightLSHIFTERAns, A, 0);
	ASHIFTER_32bit l6(LeftASHIFTERAns, A, 1);
	ASHIFTER_32bit l7(RightASHIFTERAns, A, 0);


	generate for(i=0; i<32; i=i+1) begin: multiple2to1muxs 
		mux8to1 Mux1(LogicAnswer[i], ANDAns[i], ORAns[i], XORAns[i], LeftLSHIFTERAns[i], RightLSHIFTERAns[i], LeftASHIFTERAns[i], RightASHIFTERAns[i], 32'b0, OpCode); //'
	end endgenerate

endmodule
