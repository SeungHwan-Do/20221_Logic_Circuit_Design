module file_readmemh;
	reg [19:0] data [0:6];
	
	initial begin
	data[0]=0;
	data[1]=0;
	$readmemh("vectors.txt", data);
	end
	
	integer i;
	
	initial begin
		$display("rdata:");
		for(i=0; i<4 ; i=i+1)
			$display("%d:%b", i,data[i]);
	end
	initial begin
    $dumpfile("output.vcd");
	$dumpvars(0);
	end
endmodule