//b12015 ROHIT PATIYAL
module laststepof32(  output [31:0] Remainder,
		 			  output QuotientBit,
		 			  input [31:0] Dividend,
		 			  input [31:0] Divisor,
		 			  input Cin);
	wire [30:0] carry;
	wire [31:0] carry2;
	wire [31:0] Sum;
	wire [31:0] NewSum;
	genvar i;

	BasicCell bc1(Sum[0],carry[0],Dividend[0],Divisor[0],Cin,Cin);
	generate for(i = 1; i<=30; i=i+1)	begin: level
		BasicCell bc(Sum[i], carry[i], Dividend[i], Divisor[i],carry[i-1],Cin);
	end endgenerate
	BasicCell bc2(Sum[31],QuotientBit,Dividend[31],Divisor[31],carry[30],Cin);
	
	fulladd fa(NewSum[0],carry2[0],Sum[0],Divisor[0],0);
	generate for(i = 1; i<=31; i=i+1) begin: level2
		fulladd fa2(NewSum[i],carry2[i],Sum[i], Divisor[i], carry2[i-1]);
	end endgenerate			
	
	mux2to1 mu(Remainder[0], NewSum[0], Sum[0],Sum[31]);
	generate for(i = 1; i<=31; i=i+1) begin: level3
		mux2to1 mu(Remainder[i], NewSum[i], Sum[i],Sum[31]);
	end endgenerate	

endmodule