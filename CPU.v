`include "CU/ControlUnit.v" //`
`include "MU/Register32.v" //`
`include "ALU/ALUInterface.v" //`
`include "MU/ProgramCounter.v"
`include "MU/InstructionRegister.v"
module CPU(  output R1in, output R1out,
						 output R2in, output R2out,
						 output Add, output Sub, output Mul,  output Div,
						 output SelectY, output Yin,
						 output Zin, output Zout,output [31:0] Register, output [1:0] InstructionCode,output reset,
						 input Clock,input [1:0] StartAddress, input End, 
						 input [31:0] Number1, input [31:0] Number2);
	

	wire [31:0] Bus;
	wire Run, R1in, R1out,R2in,  R2out, Add,  Sub,  Mul,   Div, SelectY,  Yin, Zin,  Zout, End;
	wire [31:0] InputZ, OutputZ, OutputY, A;
	wire [1:0] InstructionAddress, StartAddress;
	//ProgramCounter PC();			//contains next instruction address and outputs the same  to the bus after updating the next
	//InstructionRegister IR();	//contains instructions to be performed and outputs the curent instruction after receiving address from the bus
	
	//StepDecoder sd(TimeSteps, Counter);
	//ControlStepCounter csc(Counter, Clock, Run, Reset);
	ProgramCounter Pc(InstructionAddress, StartAddress, Clock, End);
	InstructionRegister Ir(InstructionCode, InstructionAddress);
	ControlUnit CU( R1in, R1out,R2in,  R2out, Add,  Sub,  Mul,   Div, SelectY,  Yin, Zin,  Zout,End, Clock, InstructionAddress);
	
	mux32to16 m1(A,  32'd4, OutputY, SelectY);	//'
	ALUInterface Alu(InputZ, A, Bus,Add, Sub, And, Shift);
	//xor x[31:0](InputZ, A, Bus);	//'
	//and n4[31:0](Bus, 32'd5, 32'd5);	//'
	//not n3(CS, ~Add);
	//not n2[31:0](Bus, 32'd5); 	//'
	Register32 r1(Bus, Clock, End, R2in, R2out, Bus);
	Register32 r2(Bus, Clock, End, R1in, R1out, Bus);

	Register32 Y(OutputY, Clock, End, Yin, 1, Bus);
	Register32 Z(Bus, Clock, End, Zin, Zout, InputZ);
	not n1[31:0](Register, ~Bus);
	assign Bus = ((R1in)? Number1 : 32'dz);		//'
	assign Bus = ((R2in && Zout == 0)? Number2 : 32'dz);	//'
	
	assign reset = End;
	
endmodule


module CPUTest();
	reg Clock;
	reg [1:0] StartAddress;
	reg End;
	reg [31:0] Number1, Number2;
	output [1:0] InstructionCode;
	output R1in, R1out,R2in,  R2out, Add,  Sub,  Mul,   Div, SelectY,  Yin, Zin,  Zout, reset;
	output [31:0] Register;
	
	CPU c1( R1in, R1out,R2in,  R2out, Add,  Sub,  Mul,   Div, SelectY,  Yin, Zin,  Zout, Register, InstructionCode, reset, Clock,StartAddress, End, Number1, Number2);

	initial 
		begin
		$display($time, " %10s %4s %4s %4s %4s %4s %4s %4s %4s %4s %4s %4s %4s %5s -----%4s","Reg", "R1in", "R1ou", "R2in",  "R2ou", "Add",  "Sub",  "Mul",  "Div", "SelY",  "Yin", "Zin",  "Zout", "Reset", "Code");	

		$monitor($time, " %10d %4b %4b %4b %4b %4b %4b %4b %4b %4b %4b %4b %4b %5b -----%4b",Register, R1in, R1out,R2in,  R2out, Add,  Sub,  Mul,   Div, SelectY,  Yin, Zin,  Zout, reset, InstructionCode);	
		//$monitor($time, "%d %4b",Register, Clock);
		Clock = 1; StartAddress  = 2'b00; End   = 1;Number1 = 32'd5; Number2 = 32'd6; //'
		//#10    End = 1;
		#10    End = 0;
		#40    End = 1;Number1 = 32'd8; Number2 = 32'd3; //'
		#10    End = 0;
		#30   $finish;
	end

	always	
		begin: CLOCKGEN
		#5 Clock = ~Clock;
	end
endmodule

	/*********************

ControlSignal[0] = Run
ControlSignal[1] = PCout
ControlSignal[2] = MARin
ControlSignal[3] = Read
ControlSignal[4] = Select 4
ControlSignal[5] = Add
ControlSignal[6] = Zin
ControlSignal[7] = End

********************/
