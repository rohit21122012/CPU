//b12015 ROHIT PATIYAL
module mux4to1(o,a,b,c,d,cin);
	input a,b,c,d;
	input [1:0] cin;
	output o;
	wire x1, x2,x3, x4;
	and a1(x1,a,~cin[1],~cin[0]);
	and a2(x2,b,~cin[1],cin[0]);
	and a3(x3,c,cin[1],~cin[0]);
	and a4(x4,d,cin[1],cin[0]);
	or o1(o,x1,x2,x3,x4);
endmodule
