//Define OR_32bit
module OR_32bit(out , A ,B);

// I/O port declaration
output [31:0] out;
input [31:0] A,B;

or c0(out[0],A[0],B[0]);
or c1(out[1],A[1],B[1]);
or c2(out[2],A[2],B[2]);
or c3(out[3],A[3],B[3]);
or c4(out[4],A[4],B[4]);
or c5(out[5],A[5],B[5]);
or c6(out[6],A[6],B[6]);
or c7(out[7],A[7],B[7]);
or c8(out[8],A[8],B[8]);
or c9(out[9],A[9],B[9]);
or c10(out[10],A[10],B[10]);
or c11(out[11],A[11],B[11]);
or c12(out[12],A[12],B[12]);
or c13(out[13],A[13],B[13]);
or c14(out[14],A[14],B[14]);
or c15(out[15],A[15],B[15]);
or c16(out[16],A[16],B[16]);
or c17(out[17],A[17],B[17]);
or c18(out[18],A[18],B[18]);
or c19(out[19],A[19],B[19]);
or c20(out[20],A[20],B[20]);
or c21(out[21],A[21],B[21]);
or c22(out[22],A[22],B[22]);
or c23(out[23],A[23],B[23]);
or c24(out[24],A[24],B[24]);
or c25(out[25],A[25],B[25]);
or c26(out[26],A[26],B[26]);
or c27(out[27],A[27],B[27]);
or c28(out[28],A[28],B[28]);
or c29(out[29],A[29],B[29]);
or c30(out[30],A[30],B[30]);
or c31(out[31],A[31],B[31]);

endmodule

