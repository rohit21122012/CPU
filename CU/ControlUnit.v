`include "CU/StepDecoder.v"
`include "CU/ControlStepCounter.v"
`include "CU/InstructionDecoder.v"
`include "CU/Encoder.v"
module ControlUnit(//input Run, 
						 output R1in, output R1out,
						 output R2in, output R2out,
						 output Add, output Sub, output Mul,  output Div,
						 output SelectY, output Yin,
						 output Zin, output Zout,
						 input End,
						 input Clock, 
						 input [1:0]InstructionCode);

	//wire Run, End;
	wire [15:0] TimeSteps;	
	wire [3:0] Instruction;
	wire [3:0] Counter;
	wire Run2, End2;
	ControlStepCounter csc(Counter, Clock,  End, Run2, End2);
	StepDecoder sd(TimeSteps, Counter);
	InstructionDecoder ir(Instruction, InstructionCode);
	Encoder e(Run2,R1in, R1out, R2in, R2out, Add,Sub,Mul,Div, SelectY, Yin, Zin, Zout,End2, TimeSteps, Instruction);
/*
	initial
		begin
		assign End = 	
	end
*/
endmodule

