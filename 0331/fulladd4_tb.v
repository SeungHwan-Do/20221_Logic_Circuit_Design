`timescale 1ns/1ns
module add4_tb();
  reg [3:0]a,b;
  wire [3:0]s_5249;
  wire cout;
  fulladd4 fa1(s_5249, cout, a, b, 1'b0);
 
  initial begin
	a=0;
	b=0;
	#17 $finish;
  end
	
  always begin
	#1 $display("%d %d %d %d",a,b,s_5249,cout);
  end
  
  always begin
    #1 a = $random;
  end
  
  always begin
	#1 b = $random;
  end
  
  initial begin
    $dumpfile("output.vcd");
	$dumpvars(0);
  end
endmodule