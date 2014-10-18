//b12015 ROHIT PATIYAL
module mux8to1(o, i1, i2, i3, i4, i5, i6, i7, i8, cin);
	input i1, i2, i3, i4, i5, i6, i7, i8;
	input [2:0] cin;
	output o;
	wire x1, x2,x3, x4, x5, x6, x7, x8;

	and a1(x1, i1, ~cin[2], ~cin[1], ~cin[0]);
	and a1(x2, i2, ~cin[2], ~cin[1], cin[0]);
	and a1(x3, i3, ~cin[2], cin[1], ~cin[0]);
	and a1(x4, i4, ~cin[2], cin[1], cin[0]);
	and a1(x5, i5, cin[2], ~cin[1], ~cin[0]);
	and a1(x6, i6, cin[2], ~cin[1], cin[0]);
	and a1(x7, i7, cin[2], cin[1], ~cin[0]);
	and a1(x8, i8, cin[2], cin[1], cin[0]);

	or o1(o,x1, x2,x3, x4, x5, x6, x7, x8);
endmodule
