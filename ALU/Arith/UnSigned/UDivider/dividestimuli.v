//b12015 ROHIT PATIYAL

`include "UDivider.v" //`
module stimuli;

	integer j,k,timer;

	//Set variables
	reg [31:0]Dividend;
	reg [31:0]Divisor;
	
	wire [31:0]Remainder;
	wire [31:0]Quotient;

	//Instantiate the divider
	UDivider myDiv(Quotient, Remainder, Dividend, Divisor);
	

	//Setup for monitoring the signal values
	initial
	begin
		$display("\n");
		$monitor($time, ":\tDividend %32b (%10d) |Divider   %32b (%10d) | \n\t\t\tQuotient %32b (%10d) |Remainder %32b (%10d) |\n\t\t\t-----------------------------------------------------------------------------------------------------------------\n",Dividend, Dividend, Divisor, Divisor, Quotient, Quotient,Remainder, Remainder);		
	end	
		
	//Stimulate inputs
	initial
	begin
			Dividend = 32'd8; Divisor = 32'd0;
		#2	Dividend = 32'd12314; Divisor = 32'd133;
		#2	Dividend = 32'd3; Divisor = 32'd8;
		#2	Dividend = 32'd0; Divisor = 32'd5;
		#2	Dividend = 32'd62000; Divisor = 32'd124;
	end	
endmodule
	
