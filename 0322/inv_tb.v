`timescale 1ns/1ns
module inverter_tb();
  reg a;
  wire z;
  
  inv i1(a,z);
  
  initial begin
    a = 0;
	#100 $finish;
  end
  
  always begin
    #1 a = ~a;
  end
  
  initial begin
    $dumpfile("output.vcd");
	$dumpvars(0);
  end
endmodule