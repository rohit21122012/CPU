module lastlayer(finalremainder,remainder,m);

output [31:0] finalremainder;
input [31:0] remainder,m;
wire [31:0] r,q;
wire check;
fulladd ff1(r[0],q[0],remainder[0],m[0],0);
fulladd ff2(r[1],q[1],remainder[1],m[1],q[0]);
fulladd ff3(r[2],q[2],remainder[2],m[2],q[1]);
fulladd ff4(r[3],q[3],remainder[3],m[3],q[2]);
fulladd ff5(r[4],q[4],remainder[4],m[4],q[3]);
fulladd ff6(r[5],q[5],remainder[5],m[5],q[4]);
fulladd ff7(r[6],q[6],remainder[6],m[6],q[5]);
fulladd ff8(r[7],q[7],remainder[7],m[7],q[6]);
fulladd ff9(r[8],q[8],remainder[8],m[8],q[7]);
fulladd ff10(r[9],q[9],remainder[9],m[9],q[8]);
fulladd ff11(r[10],q[10],remainder[10],m[10],q[9]);
fulladd ff12(r[11],q[11],remainder[11],m[11],q[10]);
fulladd ff13(r[12],q[12],remainder[12],m[12],q[11]);
fulladd ff14(r[13],q[13],remainder[13],m[13],q[12]);
fulladd ff15(r[14],q[14],remainder[14],m[14],q[13]);
fulladd ff16(r[15],q[15],remainder[15],m[15],q[14]);
fulladd ff17(r[16],q[16],remainder[16],m[16],q[15]);
fulladd ff18(r[17],q[17],remainder[17],m[17],q[16]);
fulladd ff19(r[18],q[18],remainder[18],m[18],q[17]);
fulladd ff20(r[19],q[19],remainder[19],m[19],q[18]);
fulladd ff21(r[20],q[20],remainder[20],m[20],q[19]);
fulladd ff22(r[21],q[21],remainder[21],m[21],q[20]);
fulladd ff23(r[22],q[22],remainder[22],m[22],q[21]);
fulladd ff24(r[23],q[23],remainder[23],m[23],q[22]);
fulladd ff25(r[24],q[24],remainder[24],m[24],q[23]);
fulladd ff26(r[25],q[25],remainder[25],m[25],q[24]);
fulladd ff27(r[26],q[26],remainder[26],m[26],q[25]);
fulladd ff28(r[27],q[27],remainder[27],m[27],q[26]);
fulladd ff29(r[28],q[28],remainder[28],m[28],q[27]);
fulladd ff30(r[29],q[29],remainder[29],m[29],q[28]);
fulladd ff31(r[30],q[30],remainder[30],m[30],q[29]);
fulladd ff32(r[31],q[31],remainder[31],m[31],q[30]);

assign check=remainder[31];
mux m1(finalremainder[0],check,r[0],remainder[0]);
mux m2(finalremainder[1],check,r[1],remainder[1]);
mux m3(finalremainder[2],check,r[2],remainder[2]);
mux m4(finalremainder[3],check,r[3],remainder[3]);
mux m5(finalremainder[4],check,r[4],remainder[4]);
mux m6(finalremainder[5],check,r[5],remainder[5]);
mux m7(finalremainder[6],check,r[6],remainder[6]);
mux m8(finalremainder[7],check,r[7],remainder[7]);
mux m9(finalremainder[8],check,r[8],remainder[8]);
mux m10(finalremainder[9],check,r[9],remainder[9]);
mux m11(finalremainder[10],check,r[10],remainder[10]);
mux m12(finalremainder[11],check,r[11],remainder[11]);
mux m13(finalremainder[12],check,r[12],remainder[12]);
mux m14(finalremainder[13],check,r[13],remainder[13]);
mux m15(finalremainder[14],check,r[14],remainder[14]);
mux m16(finalremainder[15],check,r[15],remainder[15]);
mux m17(finalremainder[16],check,r[16],remainder[16]);
mux m18(finalremainder[17],check,r[17],remainder[17]);
mux m19(finalremainder[18],check,r[18],remainder[18]);
mux m20(finalremainder[19],check,r[19],remainder[19]);
mux m21(finalremainder[20],check,r[20],remainder[20]);
mux m22(finalremainder[21],check,r[21],remainder[21]);
mux m23(finalremainder[22],check,r[22],remainder[22]);
mux m24(finalremainder[23],check,r[23],remainder[23]);
mux m25(finalremainder[24],check,r[24],remainder[24]);
mux m26(finalremainder[25],check,r[25],remainder[25]);
mux m27(finalremainder[26],check,r[26],remainder[26]);
mux m28(finalremainder[27],check,r[27],remainder[27]);
mux m29(finalremainder[28],check,r[28],remainder[28]);
mux m30(finalremainder[29],check,r[29],remainder[29]);
mux m31(finalremainder[30],check,r[30],remainder[30]);
mux m32(finalremainder[31],check,r[31],remainder[31]);

endmodule