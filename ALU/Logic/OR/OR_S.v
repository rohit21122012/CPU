module stimulus;
reg [31:0]A;
reg [31:0]B;
wire [31:0]O;

OR_32bit F(O , A ,B);
initial
begin
     $monitor(":\nA  = %b,\nB  = %b\nO  = %b", A, B,O);
end	 
initial
begin
         A=32'd32; B=32'd45;
end
endmodule