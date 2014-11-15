module Encoder( output Run,
						 output R1in, output R1out,
						 output R2in, output R2out,
						 output Add, output Sub, output Mul,  output Div,
						 output SelectY, output Yin,
						 output Zin, output Zout,
						 output End,
						input [15:0] T, input [3:0]	Ins);
	
	assign Run = 1;
	assign R1in = T[0];
	assign R1out = T[2];
	assign R2in = T[4] + T[1];
	assign R2out = T[3];
	assign Add = T[3] & Ins[0] ;
	assign Sub = T[3] & Ins[1];
	assign Mul = T[3] & Ins[2];
	assign Div = T[3] & Ins[3];
 	assign SelectY = T[3];
	assign Zin = T[3];
	assign Zout = T[4];
	assign Yin = T[2];
	assign End = T[5];/*
module Etest;
reg [3:0] Ins;
	reg[15:0] T;
	wire Run;
	wire End;
	wire  R1in, R1out,R2in,  R2out, Add,  Sub,  Mul,   Div, SelectY,  Yin, Zin,  Zout;
	Encoder E(Run, R1in, R1out,R2in,  R2out, Add,  Sub,  Mul,   Div, SelectY,  Yin, Zin,  Zout, End, T, Ins);
initial
	begin
		$monitor($time, " %b %b %b %b  %b %b %b %b  %b %b %b %b  %b %b ----- %b %b", Run, R1in, R1out,R2in,  R2out, Add,  Sub,  Mul,   Div, SelectY,  Yin, Zin,  Zout, End, T, Ins);	
	end

initial
	begin
		T=16'd1; Ins = 3'd0;
	end					


endmodule
	
	/*always
		begin
			assign Run = 1;
		end*/
endmodule


/*
module Etest;
reg [3:0] Ins;
	reg[15:0] T;
	wire Run;
	wire End;
	wire  R1in, R1out,R2in,  R2out, Add,  Sub,  Mul,   Div, SelectY,  Yin, Zin,  Zout;
	Encoder E(Run, R1in, R1out,R2in,  R2out, Add,  Sub,  Mul,   Div, SelectY,  Yin, Zin,  Zout, End, T, Ins);
initial
	begin
		$monitor($time, " %b %b %b %b  %b %b %b %b  %b %b %b %b  %b %b ----- %b %b", Run, R1in, R1out,R2in,  R2out, Add,  Sub,  Mul,   Div, SelectY,  Yin, Zin,  Zout, End, T, Ins);	
	end

initial
	begin
		T=16'd1; Ins = 3'd0;
	end					


endmodule
*/

/*********************


Instruction[0] = Add
Instruction[1] = Sub
Instruction[1] = Mul
Instruction[2] = Div

********************/

/*********************

ControlSignal[0] = Run
ControlSignal[1] = PCout
ControlSignal[2] = MARin
ControlSignal[3] = Read
ControlSignal[4] = Select 4
ControlSignal[5] = Add
ControlSignal[6] = Zin
ControlSignal[7] = End


assign ControlSignals[1] = TimeStep[0]; 
	assign ControlSignals[2] = TimeStep[0] | ( TimeStep[3] & Instruction[0]);
	assign ControlSignals[3] = TimeStep[0] | ( TimeStep[3] & (Instruction[0] | Intruction[1]));
	assign ControlSignals[4] = TimeStep[0];
	assign ControlSignals[5] = TimeStep[0] |  (TimeStep[3] & (Instruction[0] | Intruction[1]));	
	assign ControlSignals[6] = TimeStep[0] | ( TimeStep[5] & Instruction[0]) | (TimeSteps[3] & Instruction[1]);
	assign ControlSignals[7] = 1


********************/
