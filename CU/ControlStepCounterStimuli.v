`include "ControlUnit.v" //`
module ControlStepCounterStimuli();
	//StepDecoder sd(TimeSteps, Counter);
	//ControlStepCounter csc(Counter, Clock, Run, Reset);

	reg [1:0] InstructionCode;
	reg Clock;
	reg  End;
	//wire Run;
	//wire End;
	wire  R1in, R1out,R2in,  R2out, Add,  Sub,  Mul,   Div, SelectY,  Yin, Zin,  Zout;
	ControlUnit CU( R1in, R1out,R2in,  R2out, Add,  Sub,  Mul,   Div, SelectY,  Yin, Zin,  Zout,End, Clock, InstructionCode);
	
 	//InstructionDecoder ir(Instruction, InstructionCode);
	initial
		begin
		$monitor($time, " %b %b %b  %b %b %b %b  %b %b %b %b  %b %b ----- %b", R1in, R1out,R2in,  R2out, Add,  Sub,  Mul,   Div, SelectY,  Yin, Zin,  Zout, End, InstructionCode);	
	end

	initial
		begin
		Clock = 1; InstructionCode = 2'b00;		End   = 1;	//Run = 0;'

			
		#10    End =0;	//Run	= 1;
		
		//#50 	Run	= 0;	
	
		 #50$finish;
	end

	always	
		begin: CLOCKGEN
		#5 Clock = ~Clock;
	end

endmodule
