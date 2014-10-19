//b12015 ROHIT PATIYAL


`include "ALU/Arith/UnSigned/UDivider/BasicCell.v"	
`include "ALU/Arith/UnSigned/UDivider/stepof32.v"
`include "ALU/Arith/UnSigned/UDivider/laststepof32.v"
//`include "ALU/mux2to1.v"		//`

module UDivider(Quotient, Remainder, Dividend, Divisor);
	
	output [31:0] Quotient;
	output [31:0] Remainder;
	input [31:0] Divisor;
	input [31:0] Dividend;

	wire [31:0] TR[0:32];

	wire cin;
	wire cout;
	wire  garbage;

	stepof32 myStep1(TR[0], garbage, 0, Dividend[31], Divisor, 1);  
	stepof32 myStep2(TR[1], Quotient[31], TR[0], Dividend[30], Divisor, garbage);
	stepof32 myStep3(TR[2], Quotient[30], TR[1], Dividend[29], Divisor, Quotient[31]);
	stepof32 myStep4(TR[3], Quotient[29], TR[2], Dividend[28], Divisor, Quotient[30]);
	stepof32 myStep5(TR[4], Quotient[28], TR[3], Dividend[27], Divisor, Quotient[29]);
	stepof32 myStep6(TR[5], Quotient[27], TR[4], Dividend[26], Divisor, Quotient[28]);
	stepof32 myStep7(TR[6], Quotient[26], TR[5], Dividend[25], Divisor, Quotient[27]);
	stepof32 myStep8(TR[7], Quotient[25], TR[6], Dividend[24], Divisor, Quotient[26]);
	stepof32 myStep9(TR[8], Quotient[24], TR[7], Dividend[23], Divisor, Quotient[25]);
	stepof32 myStep10(TR[9], Quotient[23], TR[8], Dividend[22], Divisor, Quotient[24]);
	stepof32 myStep11(TR[10], Quotient[22], TR[9], Dividend[21], Divisor, Quotient[23]);
	stepof32 myStep12(TR[11], Quotient[21], TR[10], Dividend[20], Divisor, Quotient[22]);
	stepof32 myStep13(TR[12], Quotient[20], TR[11], Dividend[19], Divisor, Quotient[21]);
	stepof32 myStep14(TR[13], Quotient[19], TR[12], Dividend[18], Divisor, Quotient[20]);
	stepof32 myStep15(TR[14], Quotient[18], TR[13], Dividend[17], Divisor, Quotient[19]);
	stepof32 myStep16(TR[15], Quotient[17], TR[14], Dividend[16], Divisor, Quotient[18]);
	stepof32 myStep17(TR[16], Quotient[16], TR[15], Dividend[15], Divisor, Quotient[17]);
	stepof32 myStep18(TR[17], Quotient[15], TR[16], Dividend[14], Divisor, Quotient[16]);
	stepof32 myStep19(TR[18], Quotient[14], TR[17], Dividend[13], Divisor, Quotient[15]);
	stepof32 myStep20(TR[19], Quotient[13], TR[18], Dividend[12], Divisor, Quotient[14]);
	stepof32 myStep21(TR[20], Quotient[12], TR[19], Dividend[11], Divisor, Quotient[13]);
	stepof32 myStep22(TR[21], Quotient[11], TR[20], Dividend[10], Divisor, Quotient[12]);
	stepof32 myStep23(TR[22], Quotient[10], TR[21], Dividend[9], Divisor, Quotient[11]);
	stepof32 myStep24(TR[23], Quotient[9], TR[22], Dividend[8], Divisor, Quotient[10]);
	stepof32 myStep25(TR[24], Quotient[8], TR[23], Dividend[7], Divisor, Quotient[9]);
	stepof32 myStep26(TR[25], Quotient[7], TR[24], Dividend[6], Divisor, Quotient[8]);
	stepof32 myStep27(TR[26], Quotient[6], TR[25], Dividend[5], Divisor, Quotient[7]);
	stepof32 myStep28(TR[27], Quotient[5], TR[26], Dividend[4], Divisor, Quotient[6]);
	stepof32 myStep29(TR[28], Quotient[4], TR[27], Dividend[3], Divisor, Quotient[5]);
	stepof32 myStep30(TR[29], Quotient[3], TR[28], Dividend[2], Divisor, Quotient[4]);
	stepof32 myStep31(TR[30], Quotient[2], TR[29], Dividend[1], Divisor, Quotient[3]);
	stepof32 myStep32(TR[31], Quotient[1], TR[30], Dividend[0], Divisor, Quotient[2]);

	laststepof32 myStep33(Remainder,Quotient[0],TR[31],Divisor,Quotient[1]);	//Includes a step similar to stepof32
	//$display ("HEllo");
endmodule
