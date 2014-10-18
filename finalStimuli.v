`include "ALU/alu.v" //`
module finalStimuli;

	output [31:0] answer;

	reg [8*20:0] Operation;
	reg A_or_L;
	reg S_or_U;
	reg [2:0] OpCode;
	reg [31:0] A;
	reg [31:0] B;
	
	
	Alu TheAlu(answer, A, B, A_or_L, S_or_U, OpCode);


	initial
	begin
		$display("\t__________________________________________________________________________________________________");
		$display("\t|%4s| %4s| %6s| %20s| %15s| %15s| %20s|", "A/L", "S/U", "OPCode","Operation", "Operand1", "Operand2", "Answer");		
	
		//$monitor($time, "OPERATION %20s \tOPERAND1: (%d)\t OPERAND2: (%d) C: (%d)\t\t\tAnswer: (%d)",operation,A,B,OpCode,answer);
		$monitor("\t|%4d| %4d| %6d| %20s| %15d| %15d| %20d|",A_or_L, S_or_U, OpCode, Operation, A, B, answer);
	end

	initial
	begin

	//	 	A_or_L = 0;  S_or_U = 0; OpCode = 3'b00; Operation= "ADD"; A=32'd64; B=32'd16; 	
	//	#1 	A_or_L = 0;  S_or_U = 0; OpCode = 3'b01; Operation= "SUB"; A=32'd64; B=32'd16; 	
	//	#1 	A_or_L = 0;  S_or_U = 0; OpCode = 3'b10; Operation= "MUL"; A=32'd64; B=32'd16; 	
	//	#1 	A_or_L = 0;  S_or_U = 0; OpCode = 3'b11; Operation= "DIV"; A=32'd64; B=32'd16; 	
	//	#1 	A_or_L = 0;  S_or_U = 1; OpCode = 3'b00; Operation= "ADD"; A=32'd64; B=32'd16; 	
	//	#1 	A_or_L = 0;  S_or_U = 1; OpCode = 3'b01; Operation= "SUB"; A=32'd64; B=32'd16; 	
		#1 	A_or_L = 0;  S_or_U = 1; OpCode = 3'b10; Operation= "MUL"; A=32'd64; B=32'd16; 		
	//	#1 	A_or_L = 0;  S_or_U = 1; OpCode = 3'b11; Operation= "DIV"; A=32'd64; B=32'd16; 	
	//	#1	A_or_L = 1;	 S_or_U = 0; OpCode = 3'b00; Operation= "AND"; A=32'd64; B=32'd16; 	
	//	#1	A_or_L = 1;	 S_or_U = 0; OpCode = 3'b01; Operation= "OR";  A=32'd64; B=32'd16; 			
	//	#1	A_or_L = 1;	 S_or_U = 0; OpCode = 3'b10; Operation= "XOR"; A=32'd64; B=32'd16; 	
		
		#1  $display("\t__________________________________________________________________________________________________");

	end

endmodule
