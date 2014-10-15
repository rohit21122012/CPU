module mux(cout,s0,inp2,inp1);
input s0, inp1, inp2;
output cout;
wire w1,w2,w3;
not n1(w1,s0);
and a1(w2,inp1,w1);
and a2(w3,s0,inp2);
or(cout,w2,w3);
endmodule

module fulladd(sum, c_out, a, b, c_in);
output sum, c_out;
input a, b, c_in;
wire s1, c1, c2;
xor xr1(s1, a, b);
xor xr2(sum, s1, c_in);
and ad1(c1, a, b);
and ad2(c2, s1, c_in);
or or1(c_out, c2, c1);
endmodule

module two_compliment(dd1,dv1,dd,dv);
input [63:0] dd;
input [31:0] dv;
output [63:0]dd1;
output [31:0]dv1;
wire [63:0]dd2;
wire [31:0]dv2;
generate
      genvar 	 i;
      for(i=0;i<64;i=i+1)
	 assign dd2[i]=dd[i]^dd[63];
endgenerate
assign dd1=dd2 + dd[63];
generate
      genvar 	 j;
      for(j=0;j<32;j=j+1)
	 assign dv2[j]=dv[j]^dv[31];
endgenerate
assign dv1=dv2 + dv[31];
endmodule

module final_change(quot1,rema1,quot,rema,dd,dv);
input [63:0] dd;
input [31:0] dv,quot,rema;
output [31:0]quot1,rema1;
wire [31:0]quot2,rema2;
wire t;
xor (t,dd[63],dv[31]);
generate
      genvar 	 j;
      for(j=0;j<32;j=j+1)
	 assign quot2[j]=quot[j]^t;
endgenerate
assign quot1 =quot2 + t;
generate
      genvar 	 i;
      for(i=0;i<32;i=i+1)
	 assign rema2[i]=rema[i]^t;
endgenerate
assign rema1 =rema2 + t;
endmodule

module unitcell(r, q, d, m, carry_in, cont);
output q,r;
input d,m,cont,carry_in;
wire x1;
xor xr1(x1,cont,m);
fulladd f1(r,q,d,x1,carry_in);
endmodule

