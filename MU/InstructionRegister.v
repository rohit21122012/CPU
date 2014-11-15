module InstructionRegister(output [1:0] Instruction,input [1:0] InstructionAddress);
	reg [1:0] Instruction;
	reg [2:0] Memory [3:0];

	initial 
		begin
		 Memory[0] = 2'b00;
		 Memory[1] = 2'b01;
		 Memory[2] = 2'b10;
		 Memory[3] = 2'b11;
		
	end
	
	always @(*)
		begin
		Instruction = {Memory[InstructionAddress]};
	end
endmodule

/*
module IRTest();
	output [1:0] next;
	reg End;
	reg Clock;
	reg [1:0] PCounter;
	InstructionRegister IR(next, PCounter);

	initial 
		begin
			$monitor($time, "  %b   %b", next, PCounter);

			PCounter = 2'b11;
	
		#40 $finish;	
	end

	always	
		begin: CLOCKGEN
		#5 Clock = ~Clock;
	end
endmodule*/
