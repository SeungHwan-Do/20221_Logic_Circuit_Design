module mux2(in1,in2,s,out);
	input in1, in2, s;
	output out;
	
	not (sn, s);
	and (a0, in1, sn);
	and (a1, in2, s);
	or (out, a0, a1);
	
endmodule

module mux2_2(in1,in2,s,out);
	input in1, in2, s;
	output out;
	
	and (a0, in1, ~s);
	and (a1, in2, s);
	or (out, a0, a1);
	
endmodule

module mux2_3(in1,in2,s,out);
	input in1, in2, s;
	output out;
	
	and (a0, in1, ~s),
	(a1, in2, s);
	or (out, a0, a1);

endmodule

module mux2_4(in1,in2,s,out);
	input in1, in2, s;
	output out;
	
	assign out = (in1&~s) | (in2&s) ;
	
endmodule

module mux2_5(in1,in2,s,out);
	input in1, in2, s;
	output out;
	
	assign out = (s==0)?in1:in2;
	
endmodule

module mux2_6(in1,in2,s,out);
	input in1, in2, s;
	output reg out;
	
	always@(*) begin
		if (s == 0)
		out = in1;
		else
		out = in2;
	end
	
endmodule

module mux2_7(in1,in2,s,out);
	input in1, in2, s;
	output reg out;
	
	always@(*) begin
		case(s)
			0: out =in1;
			1: out =in2;
		endcase
	end
	
endmodule
