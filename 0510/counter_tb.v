`timescale 1ns/1ns
module counter_tb();
	wire [3:0]count;
	reg rst, on , clk;
	
	counter c1(count,rst,on,clk);
	
	initial begin
	rst = 0; clk =0; on = 1;
	#100 rst=1;
	#50
	rst =0; 
	#100 on=0;
	#50;$finish;
	end
	always begin
	#2 clk = ~clk;
	end
	/*always begin
	#10 on = ~on;
	end*/
	
  initial begin
    $dumpfile("output.vcd");
	$dumpvars(0);
  end
endmodule