module div(q,remainder,dividend,divisor);

output [31:0] q,remainder;
input [63:0] dividend;
input [31:0] divisor;
wire [31:0]r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,rt1,rt2,rt3,rt4,rt5,rt6,rt7,rt8,rt9,rt10,rt11,rt12,rt13,rt14,rt15,rt16,rt17,rt18,rt19,rt20,rt21,rt22,rt23,rt24,rt25,rt26,rt27,rt28,rt29,rt30,rt31,rt32,temp;
wire t;

startlayer flay1(t,rt1,dividend[63:32],divisor,1);
assign r1={rt1[30:0],dividend[31]};
startlayer flay2(q[31],rt2,r1,divisor,t);
assign r2={rt2[30:0],dividend[30]};
startlayer flay3(q[30],rt3,r2,divisor,q[31]);
assign r3={rt3[30:0],dividend[29]};
startlayer flay4(q[29],rt4,r3,divisor,q[30]);
assign r4={rt4[30:0],dividend[28]};
startlayer flay5(q[28],rt5,r4,divisor,q[29]);
assign r5={rt5[30:0],dividend[27]};
startlayer flay6(q[27],rt6,r5,divisor,q[28]);
assign r6={rt6[30:0],dividend[26]};
startlayer flay7(q[26],rt7,r6,divisor,q[27]);
assign r7={rt7[30:0],dividend[25]};
startlayer flay8(q[25],rt8,r7,divisor,q[26]);
assign r8={rt8[30:0],dividend[24]};
startlayer flay9(q[24],rt9,r8,divisor,q[25]);
assign r9={rt9[30:0],dividend[23]};
startlayer flay10(q[23],rt10,r9,divisor,q[24]);
assign r10={rt10[30:0],dividend[22]};
startlayer flay11(q[22],rt11,r10,divisor,q[23]);
assign r11={rt11[30:0],dividend[21]};
startlayer flay12(q[21],rt12,r11,divisor,q[22]);
assign r12={rt12[30:0],dividend[20]};
startlayer flay13(q[20],rt13,r12,divisor,q[21]);
assign r13={rt13[30:0],dividend[19]};
startlayer flay14(q[19],rt14,r13,divisor,q[20]);
assign r14={rt14[30:0],dividend[18]};
startlayer flay15(q[18],rt15,r14,divisor,q[19]);
assign r15={rt15[30:0],dividend[17]};
startlayer flay16(q[17],rt16,r15,divisor,q[18]);
assign r16={rt16[30:0],dividend[16]};
startlayer flay17(q[16],rt17,r16,divisor,q[17]);
assign r17={rt17[30:0],dividend[15]};
startlayer flay18(q[15],rt18,r17,divisor,q[16]);
assign r18={rt18[30:0],dividend[14]};
startlayer flay19(q[14],rt19,r18,divisor,q[15]);
assign r19={rt19[30:0],dividend[13]};
startlayer flay20(q[13],rt20,r19,divisor,q[14]);
assign r20={rt20[30:0],dividend[12]};
startlayer flay21(q[12],rt21,r20,divisor,q[13]);
assign r21={rt21[30:0],dividend[11]};
startlayer flay22(q[11],rt22,r21,divisor,q[12]);
assign r22={rt22[30:0],dividend[10]};
startlayer flay23(q[10],rt23,r22,divisor,q[11]);
assign r23={rt23[30:0],dividend[9]};
startlayer flay24(q[9],rt24,r23,divisor,q[10]);
assign r24={rt24[30:0],dividend[8]};
startlayer flay25(q[8],rt25,r24,divisor,q[9]);
assign r25={rt25[30:0],dividend[7]};
startlayer flay26(q[7],rt26,r25,divisor,q[8]);
assign r26={rt26[30:0],dividend[6]};
startlayer flay27(q[6],rt27,r26,divisor,q[7]);
assign r27={rt27[30:0],dividend[5]};
startlayer flay28(q[5],rt28,r27,divisor,q[6]);
assign r28={rt28[30:0],dividend[4]};
startlayer flay29(q[4],rt29,r28,divisor,q[5]);
assign r29={rt29[30:0],dividend[3]};
startlayer flay30(q[3],rt30,r29,divisor,q[4]);
assign r30={rt30[30:0],dividend[2]};
startlayer flay31(q[2],rt31,r30,divisor,q[3]);
assign r31={rt31[30:0],dividend[1]};
startlayer flay32(q[1],rt32,r31,divisor,q[2]);
assign r32={rt32[30:0],dividend[0]};
startlayer flay33(q[0],temp,r32,divisor,q[1]);

lastlayer finally(remainder,temp,divisor);

endmodule


module stimulus;

reg [63:0] dd;
reg [31:0] dv;
wire [31:0] quot,rema,quot1,rema1;
wire [63:0]dd1;
wire [31:0]dv1;
two_compliment comp(dd1,dv1,dd,dv);
div div1(quot,rema,dd1,dv1);
final_change chn(quot1,rema1,quot,rema,dd,dv);
initial
begin
	   dd=64'd4; dv=32'd2;
        #5 dd=-64'd8; dv=32'd3;
end

initial
begin
  $monitor($time, ": Dividend =%b, Divisor=%b.... Quotient=%b, Remainder=%b",dd,dv,quot1,rema1);
end
endmodule


