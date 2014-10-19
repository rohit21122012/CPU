//Define 32 bit 2s complement
module complement2s(X , x);

// I/O port declaration
output [31:0] X;
input [31:0] x;
reg [31:0]reg1 = 32'd1;
reg reg0 = 1'd0;
//internal nets
wire [31:0]x_not ;
wire shit,shit1;
//internal gate circuitry
not (x_not[0],x[0]);
not (x_not[1],x[1]);
not (x_not[2],x[2]);
not (x_not[3],x[3]);
not (x_not[4],x[4]);
not (x_not[5],x[5]);
not (x_not[6],x[6]);
not (x_not[7],x[7]);
not (x_not[8],x[8]);
not (x_not[9],x[9]);
not (x_not[10],x[10]);
not (x_not[11],x[11]);
not (x_not[12],x[12]);
not (x_not[13],x[13]);
not (x_not[14],x[14]);
not (x_not[15],x[15]);
not (x_not[16],x[16]);
not (x_not[17],x[17]);
not (x_not[18],x[18]);
not (x_not[19],x[19]);
not (x_not[20],x[20]);
not (x_not[21],x[21]);
not (x_not[22],x[22]);
not (x_not[23],x[23]);
not (x_not[24],x[24]);
not (x_not[25],x[25]);
not (x_not[26],x[26]);
not (x_not[27],x[27]);
not (x_not[28],x[28]);
not (x_not[29],x[29]);
not (x_not[30],x[30]);
not (x_not[31],x[31]);

UAdder add( X ,shit1, shit , x_not ,reg1 ,reg0 );

endmodule

