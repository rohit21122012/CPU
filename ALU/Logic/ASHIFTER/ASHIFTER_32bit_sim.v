//Define the stimulus (top level module)
module stimulus;

//Set up variables
reg C;
reg [31:0] D;
wire [31:0] S; 

//Instantiate Shifter
ASHIFTER_32bit shifter_fn(S, D, C);

//Setup the monitoring for signal values
initial
begin
 	$monitor($time,": C = %b, D=%b --output--  OUT = %b", C, D, S);	
end

// Stimulate inputs
initial
begin

             C = 0; D=32'b10010110100101101001011010010110 ;

	#5   C = 1; D=32'b10111010001110100011101000111011 ;
	
	#10  C = 0; D=32'b11100110111001101110011011100110 ;
	
	#15  C = 1; D=32'b00110010001100100011001000110010 ;
end

endmodule
