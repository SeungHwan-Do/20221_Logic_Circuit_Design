`timescale 1ns/1ns
module demux4_tb();
  reg [1:0]select;
  reg [3:0]in;
  wire [3:0]out5249_0,out5249_1, out5249_2,out5249_3;
  
  demux4 dm1(out5249_0, out5249_1,out5249_2,out5249_3,in,select);
   
  initial begin
	in = $random;
	#32 $finish;
  end
  
  always begin
   for(select=0;select<4;select = select+1)
  #2 ;
  end
  always begin
	# 4 in = $random;
	end
  initial begin
    $dumpfile("output.vcd");
	$dumpvars(0);
  end
endmodule