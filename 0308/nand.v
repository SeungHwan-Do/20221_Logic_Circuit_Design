module nand1(in1, in2, out1);
	input in1, in2;
	output out1;
	
	assign tmp = in1&in2;
	assign out1 = ~tmp;
	
endmodule