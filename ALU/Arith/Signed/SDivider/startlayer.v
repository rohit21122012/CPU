module startlayer(qbit,remainder,dividend,divisor,cont);

output qbit;
output [31:0] remainder;
input [31:0] dividend,divisor;
input cont;

wire [31:0] w;

unitcell ucell1(remainder[0],w[0],dividend[0],divisor[0],cont,cont);
unitcell ucell2(remainder[1],w[1],dividend[1],divisor[1],w[0],cont);
unitcell ucell3(remainder[2],w[2],dividend[2],divisor[2],w[1],cont);
unitcell ucell4(remainder[3],w[3],dividend[3],divisor[3],w[2],cont);
unitcell ucell5(remainder[4],w[4],dividend[4],divisor[4],w[3],cont);
unitcell ucell6(remainder[5],w[5],dividend[5],divisor[5],w[4],cont);
unitcell ucell7(remainder[6],w[6],dividend[6],divisor[6],w[5],cont);
unitcell ucell8(remainder[7],w[7],dividend[7],divisor[7],w[6],cont);
unitcell ucell9(remainder[8],w[8],dividend[8],divisor[8],w[7],cont);
unitcell ucell10(remainder[9],w[9],dividend[9],divisor[9],w[8],cont);
unitcell ucell11(remainder[10],w[10],dividend[10],divisor[10],w[9],cont);
unitcell ucell12(remainder[11],w[11],dividend[11],divisor[11],w[10],cont);
unitcell ucell13(remainder[12],w[12],dividend[12],divisor[12],w[11],cont);
unitcell ucell14(remainder[13],w[13],dividend[13],divisor[13],w[12],cont);
unitcell ucell15(remainder[14],w[14],dividend[14],divisor[14],w[13],cont);
unitcell ucell16(remainder[15],w[15],dividend[15],divisor[15],w[14],cont);
unitcell ucell17(remainder[16],w[16],dividend[16],divisor[16],w[15],cont);
unitcell ucell18(remainder[17],w[17],dividend[17],divisor[17],w[16],cont);
unitcell ucell19(remainder[18],w[18],dividend[18],divisor[18],w[17],cont);
unitcell ucell20(remainder[19],w[19],dividend[19],divisor[19],w[18],cont);
unitcell ucell21(remainder[20],w[20],dividend[20],divisor[20],w[19],cont);
unitcell ucell22(remainder[21],w[21],dividend[21],divisor[21],w[20],cont);
unitcell ucell23(remainder[22],w[22],dividend[22],divisor[22],w[21],cont);
unitcell ucell24(remainder[23],w[23],dividend[23],divisor[23],w[22],cont);
unitcell ucell25(remainder[24],w[24],dividend[24],divisor[24],w[23],cont);
unitcell ucell26(remainder[25],w[25],dividend[25],divisor[25],w[24],cont);
unitcell ucell27(remainder[26],w[26],dividend[26],divisor[26],w[25],cont);
unitcell ucell28(remainder[27],w[27],dividend[27],divisor[27],w[26],cont);
unitcell ucell29(remainder[28],w[28],dividend[28],divisor[28],w[27],cont);
unitcell ucell30(remainder[29],w[29],dividend[29],divisor[29],w[28],cont);
unitcell ucell31(remainder[30],w[30],dividend[30],divisor[30],w[29],cont);
unitcell ucell32(remainder[31],w[31],dividend[31],divisor[31],w[30],cont);

assign qbit=w[31];

endmodule

