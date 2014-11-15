`include "ALU/alu.v" //`
module ALUInterface(output [31:0] Answer, input [31:0] A, input [31:0] B, input Add, input Sub, input Mul, input Div);
	
	reg A_or_L, U_or_S;
	reg [2:0] OpCode;
	
	Alu TheAlu(Answer, A, B,0,0,OpCode);
	always @(Add or Sub or Mul or Div)
	   begin
		if(Add == 1)OpCode = 3'b000;
		else if (Sub == 1)OpCode = 3'b001;
		else if (Mul ==1 )OpCode = 3'b010;
		else if (Div == 1)OpCode = 3'b011;
		
	end

endmodule
/*
module ALUI;
	wire [31:0] O;
	reg [31:0] A;
	reg  [31:0] B;
	reg Add, Sub, Mul, Div;
	ALUInterface alui(O,A,B,Add, Sub, Mul, Div);

	initial
		begin
		$monitor($time, " %b  %d  %d",O, A, B);
		A = 32'd6; B = 32'd5; Add = 1'b0; Mul = 1'b1; Sub = 1'b0; Div = 1'b0;
	//#10	A = 32'd6; B = 32'd5; Sub = 1'b1;
	//#15	A = 32'd6; B = 32'd5; Shift = 1'b1;
	//#20	A = 32'd6; B = 32'd5; And = 1'b1;
	end
	

endmodule*/
