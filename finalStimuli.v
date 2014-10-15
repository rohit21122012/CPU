`include "ALU/alu.v" //`
module finalStimuli;

	output [31:0] answerone;


	reg A_or_L;
	reg S_or_U;
	reg [1:0] OpCode;
	reg [31:0] A;
	reg [31:0] B;
	
	
	Alu TheAlu(answer, A, B, A_or_L, S_or_U, OpCode);


	initial
	begin
		//$display("000-Unsigned Adder\n001-Signed Adder\n010-Unsigned Subtracter\n011-Signed Subtracter\n100-Unsigned Multiplicator\n101-Signed Multiplication\n110-UnSigned Division\n111-Signed Division");
		$monitor("\tOPERATOR1: %35b(%d)\t OPERATOR2: %35b(%d) C: %3b(%d)\n\t\t\tAnswer:%32b(%d)",A,A,B,B,OpCode, OpCode, answerone,answerone);
		
	end

	initial
	begin
		
	    A=32'd62; B=32'd15; A_or_L = 0; S_or_U = 0; OpCode = 2'b00;	//ALU : Unsigned : Addition

	end

endmodule
