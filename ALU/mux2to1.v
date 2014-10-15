//b12015 ROHIT PATIYAL
module mux2to1(o,a,b,c);
	input a,b,c;
	output o;
	wire x1, x2;
	and a1(x1,a,c);
	and a2(x2,b,~c);
	or o1(o,x1,x2);
endmodule
