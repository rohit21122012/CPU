`include "ALU/alu.v" //`
module finalStimuli;

	output [31:0] answer;


	reg A_or_L;
	reg S_or_U;
	reg [1:0] OpCode;
	reg [31:0] A;
	reg [31:0] B;
	
	
	Alu TheAlu(answer, A, B, A_or_L, S_or_U, OpCode);


	initial
	begin
		$monitor($time, "\tOPERATOR1: (%d)\t OPERATOR2: (%d) C: (%d)\t\t\tAnswer: (%d)",A,B,OpCode,answer);
	end

	initial
	begin
			$display("-------------------------------------------------------------------------------------------------------------------------");
			$display("UAddition");
	    	A=32'd62; B=32'd15; A_or_L = 0; S_or_U = 0; OpCode = 2'b00;	//ALU : Unsigned : Addition'
			
	#1 		$display("-------------------------------------------------------------------------------------------------------------------------");
			$display("UMultiplication");  
			A=32'd5; B=32'd3; A_or_L = 0; S_or_U = 0; OpCode = 2'b10;	//ALU : Unsigned : Multiplication'

	#1 		$display("-------------------------------------------------------------------------------------------------------------------------");
			$display("UDivision");  
			A=32'd61; B=32'd11; A_or_L = 0; S_or_U = 0; OpCode = 2'b11;	//ALU : Unsigned : Division'

	//#2    	A=32'd6265; B=312'd15; A_or_L = 0; S_or_U = 0; OpCode = 2'b00;	//ALU : Unsigned : Addition'

	end

endmodule
