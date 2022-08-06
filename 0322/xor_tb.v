`timescale 1ns/1ns
module xor_tb();
  reg clock1, clock2;
  wire output1;
  
  xor1 x1(clock1, clock2, output1);
  
  initial begin
    clock1 = 0;
	clock2 = 0;
	#100 $finish;
  end
  
  always begin
    #1 clock1 = ~clock1;
  end
  
	always begin
	#2 clock2 = ~clock2;
	end
  
  initial begin
    $dumpfile("output.vcd");
	$dumpvars(0);
  end
endmodule