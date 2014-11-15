`include "MU/Register.v" //`
module Register32(Bus_out,clk,reset,R_in,R_out,Bus_in);
input [31:0] Bus_in;
input clk,reset;
input  R_in;
input  R_out;
output  [31:0] Bus_out;

reg [31:0] Temp_Bus_out;
	Register R1(Bus_in[0],clk, reset,R_in, R_out, Bus_out[0]);
	Register R2(Bus_in[1],clk, reset,R_in, R_out, Bus_out[1]);
	Register R3(Bus_in[2],clk, reset,R_in, R_out, Bus_out[2]);
	Register R4(Bus_in[3],clk, reset,R_in, R_out, Bus_out[3]);
	Register R5(Bus_in[4],clk, reset,R_in, R_out, Bus_out[4]);
	Register R6(Bus_in[5],clk, reset,R_in, R_out, Bus_out[5]);
	Register R7(Bus_in[6],clk, reset,R_in, R_out, Bus_out[6]);
	Register R8(Bus_in[7],clk, reset,R_in, R_out, Bus_out[7]);
	Register R9(Bus_in[8],clk, reset,R_in, R_out, Bus_out[8]);
	Register R10(Bus_in[9],clk, reset,R_in, R_out, Bus_out[9]);
	Register R11(Bus_in[10],clk,reset,R_in, R_out, Bus_out[10]);
	Register R12(Bus_in[11],clk,reset,R_in, R_out, Bus_out[11]);
	Register R13(Bus_in[12],clk,reset,R_in, R_out, Bus_out[12]);
	Register R14(Bus_in[13],clk,reset,R_in, R_out, Bus_out[13]);
	Register R15(Bus_in[14],clk,reset,R_in, R_out, Bus_out[14]);
	Register R16(Bus_in[15],clk,reset,R_in, R_out, Bus_out[15]);
	Register R17(Bus_in[16],clk,reset,R_in, R_out, Bus_out[16]);
	Register R18(Bus_in[17],clk,reset,R_in, R_out, Bus_out[17]);
	Register R19(Bus_in[18],clk,reset,R_in, R_out, Bus_out[18]);
	Register R20(Bus_in[19],clk,reset,R_in, R_out, Bus_out[19]);
	Register R21(Bus_in[20],clk,reset,R_in, R_out, Bus_out[20]);
	Register R22(Bus_in[21],clk,reset,R_in, R_out, Bus_out[21]);
	Register R23(Bus_in[22],clk,reset,R_in, R_out, Bus_out[22]);
	Register R24(Bus_in[23],clk,reset,R_in, R_out, Bus_out[23]);
	Register R25(Bus_in[24],clk,reset,R_in, R_out, Bus_out[24]);
	Register R26(Bus_in[25],clk,reset,R_in, R_out, Bus_out[25]);
	Register R27(Bus_in[26],clk,reset,R_in, R_out, Bus_out[26]);
	Register R28(Bus_in[27],clk,reset,R_in, R_out, Bus_out[27]);
	Register R29(Bus_in[28],clk,reset,R_in, R_out, Bus_out[28]);
	Register R30(Bus_in[29],clk,reset,R_in, R_out, Bus_out[29]);
	Register R31(Bus_in[30],clk,reset,R_in, R_out, Bus_out[30]);
	Register R32(Bus_in[31],clk,reset,R_in, R_out, Bus_out[31]);


endmodule

/*
module RegisterTest;
	Register32 r1(Bus_out, clk, reset, r_in, r_out, Bus_in);
	reg [31: 0] Bus_in;
	reg  clk, reset, r_in, r_out;
	output [31: 0] Bus_out;

	initial
		begin
		$display("\t\t      %5s | %5s | %5s |----| %5s | %5s |", "RESET", "RIN", "ROUT", "BUSIN", "BOUT");
		$monitor($time, ": %5d | %5d | %5d |----| %5d | %5d |", reset, r_in, r_out, Bus_in, Bus_out);
		
		reset = 1; clk = 1;

	#10	r_in = 0; r_out = 0; Bus_in = 32'd21;	reset = 0;		//No Stroring and no retrieval'

	#10	r_in = 1; r_out = 0; Bus_in = 32'd21;					//Storing But no Retreival'
	#10	r_in = 0; r_out = 1; Bus_in = 32'd21;					//No Storing But Retrieval'
	#10	r_in = 1; r_out = 1; Bus_in = 32'd9;					//Storing and Retreival'

		 $finish();
	end
	always	
		begin: CLOCKGEN
		#5 clk = ~clk;
	end
endmodule	

*/