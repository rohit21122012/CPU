//Define 32 to 16 multiplexer
module multiplexer32to16(out , in1 , in2 ,control);

// I/O port declaration
output [31:0] out;
input [31:0] in1,in2;
input control;

//internal nets
wire control_not;
wire [31:0] anded_out_1,anded_out_2;

//internal gate circuitry
not (control_not,control);


and (anded_out_1[0] , control_not , in1[0]);
and (anded_out_1[1] , control_not , in1[1]);
and (anded_out_1[2] , control_not , in1[2]);
and (anded_out_1[3] , control_not , in1[3]);
and (anded_out_1[4] , control_not , in1[4]);
and (anded_out_1[5] , control_not , in1[5]);
and (anded_out_1[6] , control_not , in1[6]);
and (anded_out_1[7] , control_not , in1[7]);
and (anded_out_1[8] , control_not , in1[8]);
and (anded_out_1[9] , control_not , in1[9]);
and (anded_out_1[10] , control_not , in1[10]);
and (anded_out_1[11] , control_not , in1[11]);
and (anded_out_1[12] , control_not , in1[12]);
and (anded_out_1[13] , control_not , in1[13]);
and (anded_out_1[14] , control_not , in1[14]);
and (anded_out_1[15] , control_not , in1[15]);
and (anded_out_1[16] , control_not , in1[16]);
and (anded_out_1[17] , control_not , in1[17]);
and (anded_out_1[18] , control_not , in1[18]);
and (anded_out_1[19] , control_not , in1[19]);
and (anded_out_1[20] , control_not , in1[20]);
and (anded_out_1[21] , control_not , in1[21]);
and (anded_out_1[22] , control_not , in1[22]);
and (anded_out_1[23] , control_not , in1[23]);
and (anded_out_1[24] , control_not , in1[24]);
and (anded_out_1[25] , control_not , in1[25]);
and (anded_out_1[26] , control_not , in1[26]);
and (anded_out_1[27] , control_not , in1[27]);
and (anded_out_1[28] , control_not , in1[28]);
and (anded_out_1[29] , control_not , in1[29]);
and (anded_out_1[30] , control_not , in1[30]);
and (anded_out_1[31] , control_not , in1[31]);
and (anded_out_2[0] , control , in2[0]);
and (anded_out_2[1] , control , in2[1]);
and (anded_out_2[2] , control , in2[2]);
and (anded_out_2[3] , control , in2[3]);
and (anded_out_2[4] , control , in2[4]);
and (anded_out_2[5] , control , in2[5]);
and (anded_out_2[6] , control , in2[6]);
and (anded_out_2[7] , control , in2[7]);
and (anded_out_2[8] , control , in2[8]);
and (anded_out_2[9] , control , in2[9]);
and (anded_out_2[10] , control , in2[10]);
and (anded_out_2[11] , control , in2[11]);
and (anded_out_2[12] , control , in2[12]);
and (anded_out_2[13] , control , in2[13]);
and (anded_out_2[14] , control , in2[14]);
and (anded_out_2[15] , control , in2[15]);
and (anded_out_2[16] , control , in2[16]);
and (anded_out_2[17] , control , in2[17]);
and (anded_out_2[18] , control , in2[18]);
and (anded_out_2[19] , control , in2[19]);
and (anded_out_2[20] , control , in2[20]);
and (anded_out_2[21] , control , in2[21]);
and (anded_out_2[22] , control , in2[22]);
and (anded_out_2[23] , control , in2[23]);
and (anded_out_2[24] , control , in2[24]);
and (anded_out_2[25] , control , in2[25]);
and (anded_out_2[26] , control , in2[26]);
and (anded_out_2[27] , control , in2[27]);
and (anded_out_2[28] , control , in2[28]);
and (anded_out_2[29] , control , in2[29]);
and (anded_out_2[30] , control , in2[30]);
and (anded_out_2[31] , control , in2[31]);
or (out[0] , anded_out_1[0] , anded_out_2[0]);
or (out[1] , anded_out_1[1] , anded_out_2[1]);
or (out[2] , anded_out_1[2] , anded_out_2[2]);
or (out[3] , anded_out_1[3] , anded_out_2[3]);
or (out[4] , anded_out_1[4] , anded_out_2[4]);
or (out[5] , anded_out_1[5] , anded_out_2[5]);
or (out[6] , anded_out_1[6] , anded_out_2[6]);
or (out[7] , anded_out_1[7] , anded_out_2[7]);
or (out[8] , anded_out_1[8] , anded_out_2[8]);
or (out[9] , anded_out_1[9] , anded_out_2[9]);
or (out[10] , anded_out_1[10] , anded_out_2[10]);
or (out[11] , anded_out_1[11] , anded_out_2[11]);
or (out[12] , anded_out_1[12] , anded_out_2[12]);
or (out[13] , anded_out_1[13] , anded_out_2[13]);
or (out[14] , anded_out_1[14] , anded_out_2[14]);
or (out[15] , anded_out_1[15] , anded_out_2[15]);
or (out[16] , anded_out_1[16] , anded_out_2[16]);
or (out[17] , anded_out_1[17] , anded_out_2[17]);
or (out[18] , anded_out_1[18] , anded_out_2[18]);
or (out[19] , anded_out_1[19] , anded_out_2[19]);
or (out[20] , anded_out_1[20] , anded_out_2[20]);
or (out[21] , anded_out_1[21] , anded_out_2[21]);
or (out[22] , anded_out_1[22] , anded_out_2[22]);
or (out[23] , anded_out_1[23] , anded_out_2[23]);
or (out[24] , anded_out_1[24] , anded_out_2[24]);
or (out[25] , anded_out_1[25] , anded_out_2[25]);
or (out[26] , anded_out_1[26] , anded_out_2[26]);
or (out[27] , anded_out_1[27] , anded_out_2[27]);
or (out[28] , anded_out_1[28] , anded_out_2[28]);
or (out[29] , anded_out_1[29] , anded_out_2[29]);
or (out[30] , anded_out_1[30] , anded_out_2[30]);
or (out[31] , anded_out_1[31] , anded_out_2[31]);


endmodule

