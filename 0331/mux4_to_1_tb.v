`timescale 1ns/1ns
module mux4_tb();
  reg IN0,IN1,IN2,IN3;
  reg s1,s0;
  
  wire OUTPUT;
  
  mux4_to_1 yourmux(OUTPUT,IN0,IN1,IN2,IN3, s1 ,s0);
   
  initial begin
	IN0 = 1; IN1 = 0; IN2 = 1; IN3 = 0;
	#1 $display("IN0 = %b, IN1 = %b, IN2 = %b, IN3 = %b \n",IN0,IN1,IN2,IN3);
	
	s1 = 0; s0 = 0;
	#1 $display("S1 = %b, S0 = %b, OUTPUT = %b \n",s1, s0,OUTPUT);
	
	s1 =0; s0= 1;
	#1 $display("S1 = %b, S0 = %b, OUTPUT = %b \n",s1, s0,OUTPUT);
	
	s1 = 1; s0 = 0;
	#1 $display("S1 = %b, S0 = %b, OUTPUT = %b \n",s1, s0,OUTPUT);
	
	s1 = 1; s0 = 1;
	#1 $display("S1 = %b, S0 = %b, OUTPUT = %b \n",s1, s0,OUTPUT);
  end
  
  initial begin
    $dumpfile("output.vcd");
	$dumpvars(0);
  end
endmodule