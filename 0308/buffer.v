module buffer(a, z);
	input a;
	output z;
	
	inv i1(a, b);
	inv i2(b, z);
	
endmodule

module inv(a,z);
  input a;
  output z;

  assign z = ~a;
endmodule
