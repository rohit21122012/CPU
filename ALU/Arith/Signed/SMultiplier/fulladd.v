//b12015 ROHIT PATIYAL
//Define 1-bit full adder
module fulladd(sum, c_out, a, b, c_in);

// I/O port declaration
output sum, c_out;
input a, b, c_in;

//internal nets
wire s1, c1, c2;

//Instantiate logic gate primitives
xor xr1(s1, a, b);
xor xr2(sum, s1, c_in);

and ad1(c1, a, b);
and ad2(c2, s1, c_in);
or or1(c_out, c2, c1);

endmodule
