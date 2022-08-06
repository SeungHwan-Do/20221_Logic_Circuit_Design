module fulladd(out, c_out, a, b, c_in);
	output out,c_out;
	input a,b,c_in;
	
	assign out = (a^b^c_in);
	assign c_out = (a*b)+(c_in*(a^b));
	
endmodule