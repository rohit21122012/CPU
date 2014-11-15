module ProgramCounter(output [1:0] next,input[1:0] start, input Clock, input End);
	reg [1:0] current;
	reg [1:0] next;
	wire [1:0] null;

	always@(posedge Clock && End)
		begin
		
		if(current == 2'b00) begin
			current = 2'b01;			
		end	
		else if(current == 2'b01) begin
			current = 2'b10;			
		end
		else if(current == 2'b10) begin
			current = 2'b11;			
		end
		else if(current == 2'b11) begin
			current = 2'bzz;
		end
		else begin
			current = start;
		end
		assign next = current;
	end
endmodule

/*
module PCTest();
	output [1:0] next;
	reg [1:0] current;
	reg End;
	reg Clock;
	reg [1:0]PCounter;
	ProgramCounter Pc(next, PCounter, Clock, End);

	initial 
		begin
			$monitor($time, "  %b   %b", next, Clock);

			End = 1;Clock = 1;PCounter = 2'b01;
	
		#40 $finish;	
	end

	always	
		begin: CLOCKGEN
		#5 Clock = ~Clock;
	end
endmodule*/