module tristate(a,b,c);
	output a;
	input b, c;
	
	assign a = (c == 1) ? b : 1'bz;	//'

endmodule

module tritest();
	output a;
	reg b,c;
	tristate t1(a, b, c);

/*	initial begin
	  $monitor("%g a = %b b = %b c = %b", $time, a, b, c);
		c = 0;	b  = 0;
	#1 	c = 0;	b = 1;
	#1 	b = 0;	c = 0; 
	#1 	b = 1;	c = 1;
	#1 	b = 0; 	c = 1;
	#1 	$finish;
	end*/
endmodule
