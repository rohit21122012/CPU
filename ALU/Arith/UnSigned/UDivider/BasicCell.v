//b12015 ROHIT PATIYAL
module BasicCell(r,c_out,d,m,c_in,a);
	
	input d, m, a, c_in;
	output r, c_out;
		
	wire x1;

	xor xor1(x1,a,m);
	fulladd fa(r,c_out,d,x1,c_in);			//1 bit adder

endmodule
