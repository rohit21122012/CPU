module InstructionDecoder(output [3:0] Instruction, input [1:0] InstructionCode);

	and and1(Instruction[0], ~InstructionCode[1], ~InstructionCode[0]);
	and and2(Instruction[1], ~InstructionCode[1], InstructionCode[0]);
	and and3(Instruction[2], InstructionCode[1], ~InstructionCode[0]);
	and and4(Instruction[3], InstructionCode[1], InstructionCode[0]);

endmodule


/*********************


Instruction[0] = Add
Instruction[1] = Jump


********************/
