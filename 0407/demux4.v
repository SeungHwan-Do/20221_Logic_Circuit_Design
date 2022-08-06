module demux4(out0,out1,out2,out3,in,s);
	input [3:0]in;
	input [1:0]s;
	output reg [3:0]out0,out1,out2,out3;
	
	always@ (*)begin
		case(s)
			0: begin out0 = in; out1 = 0; out2 = 0; out3 = 0; 
			end
			1: begin out1 = in; out0 = 0; out2 = 0; out3 = 0; 
			end
			2: begin out2 = in; out0 = 0; out1 = 0; out3 = 0; 
			end
			3: begin out3 = in; out0 = 0; out1 = 0; out2 = 0; 
			end
		endcase
	end
endmodule
