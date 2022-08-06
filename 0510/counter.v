module counter(count, rst, on, clk);
	output reg [3:0]count;
	input rst,on,clk;
	
	always@(posedge clk) begin
	if(rst ==1)
		count = 0;
		else if(on==1) begin
		if(count<9)
			count = count + 1;
		else count = 0;
		end
	end
endmodule
