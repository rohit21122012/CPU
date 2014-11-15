`include "MU/tristate.v"
`include "MU/d-flipflop.v"
`include "MU/Mux.v"	//`
module Register(Bus_in,clk,reset,r_in,r_out,Bus_out);
input Bus_in,clk,reset,r_in,r_out;
output Bus_out;
wire Flip_out,D,qb;

	
	Mux M(Flip_out,Bus_in,r_in,D);
	//not dnot(Bus_out, D);
	dff F(Flip_out, qb, clk,reset, D);

	//not n1(Bus_out, ~Flip_out);
	tristate tr(Bus_out, Flip_out, r_out);

endmodule

/*
module RegisterTest;
	Register r1(Bus_in, clk, reset, r_in, r_out, Bus_out);
	reg Bus_in, clk, reset, r_in, r_out;
	output Bus_out;

	initial
		begin
		$display("\t\t      %5s | %5s | %5s |----| %5s | %5s |", "RESET", "RIN", "ROUT", "BUSIN", "BOUT");
		$monitor($time, ": %5b | %5b | %5b |----| %5b | %5b |", reset, r_in, r_out, Bus_in, Bus_out);
		
		reset = 1; clk = 1;
	
	#10	r_in = 0; r_out = 0; Bus_in = 0;	reset = 0;		//No Stroring and no retrieval
	#10	r_in = 0; r_out = 0; Bus_in = 1;					//No Stroring and no retrieval

	#10	r_in = 1; r_out = 0; Bus_in = 0;					//Storing But no Retreival
	#10	r_in = 0; r_out = 1; Bus_in = 0;					//No Storing But Retrieval
	#10	r_in = 0; r_out = 1; Bus_in = 1;					//No Storing But Retrieval

	#10	r_in = 1; r_out = 1; Bus_in = 1;					//Storing and Retreival
	#10	r_in = 1; r_out = 1; Bus_in = 0;					//Storing and Retreival

	#10	r_in = 1; r_out = 0; Bus_in = 1;					//Storing But no Retreival
	#10	r_in = 0; r_out = 1; Bus_in = 0;					//No Storing But Retrieval
	#10	r_in = 0; r_out = 1; Bus_in = 1;					//No Storing But Retrieval

	#10	r_in = 1; r_out = 1; Bus_in = 0;					//Storing and Retreival

	//#10	r_in = 1; r_out = 1; Bus_in = 1;		
	//#10	r_in = 0; r_out = 1; Bus_in = 0;		//No Storing but Retrieval
	
	//#10	r_in = 0; r_out = 1; Bus_in = 0;
		 $finish();
	end
	always	
		begin: CLOCKGEN
		#5 clk = ~clk;
	end
endmodule
*/	