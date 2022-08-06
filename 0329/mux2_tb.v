`timescale 1ns/1ns
module mux2_tb();
  reg a, b, s;
  wire z1,z2,z3,z4,z5,z6,z7;
  
  mux2 m1(a,b,s,z1);
  mux2_2 m2(a,b,s,z2);
  mux2_3 m3(a,b,s,z3);
  mux2_4 m4(a,b,s,z4);
  mux2_5 m5(a,b,s,z5);
  mux2_6 m6(a,b,s,z6);
  mux2_7 m7(a,b,s,z7);
   
  initial begin
	a=0; b=0; s=0;
	
	#5 s = ~s;
	#10 $finish;
  end
  
  always begin
	#1 a = $random; b = $random;
	
	end
	
  initial begin
    $dumpfile("output.vcd");
	$dumpvars(0);
  end
endmodule