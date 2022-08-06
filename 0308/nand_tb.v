`timescale 1ns/1ns
module nand_tb();
  reg a,b;
  wire out1;
  
  nand1 n1(a,b,out1);
  
  initial begin
    a = 0;
	b = 1;
	#100 $finish;
  end
  
  always begin
    #2 a = ~a;
	#2 b = ~b;
	
  end
  
  initial begin
    $dumpfile("output.vcd");
	$dumpvars(0);
	$display("Hello World!");
  end
endmodule