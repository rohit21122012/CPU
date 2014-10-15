//b12015 ROHIT PATIYAL
module stepof32(  output [31:0] Remainder,
	 			  output QuotientBit,
	 			  input [31:0] Dividend,
	 			  input DividendBit,
	 			  input [31:0] Divisor,
	 			  input Cin);
		
	wire [30:0] carry;
	genvar i;

	BasicCell bc1(Remainder[1],carry[0],Dividend[0],Divisor[0],Cin,Cin);
	generate for(i = 1; i<=30; i=i+1)	begin: level
		BasicCell bc(Remainder[i+1], carry[i], Dividend[i], Divisor[i],carry[i-1],Cin);
	end endgenerate
	BasicCell bc2(garbage,QuotientBit,Dividend[31],Divisor[31],carry[30],Cin);
	not n(Remainder[0], ~DividendBit);

endmodule