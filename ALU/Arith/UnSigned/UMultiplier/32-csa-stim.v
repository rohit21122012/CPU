//Define the stimulus (top level module)
module stimulus;

//Set up variables
reg [31:0]A, B ;
wire [63:0] O;

//Instantiate 
UMultiplier mult_fn(O, A, B);

//Setup the monitoring for signal values
initial
begin
 	$monitor($time,":%d A = %b, %d B = %b  \n  %d OUT = %b \n\n",A,A,B,B,O,O);	
end

// Stimulate inputs
initial
begin

	A = 32'b00000000000000000000000000001000; B=32'b0000000000000000000000000000010;
 	
end

endmodule
