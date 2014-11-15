module ControlStepCounter(output [3:0] Counter ,input Clock,input Reset, input Run2, input Reset2);
	
	wire Clock,  Reset, Run2, Reset2;
	reg [3:0] Counter;

	always @(posedge Clock or Reset or Reset2)
		begin : COUNTER
		
		if(Reset == 1'b1 || Reset2 == 1'b1) begin
			Counter <= 4'b0000;			
		end	
		else if( Run2 == 1'b1) begin
			Counter <= Counter + 1;			
		end

	end
	
endmodule
