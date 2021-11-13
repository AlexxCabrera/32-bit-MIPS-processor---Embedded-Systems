module SignExtendTB;
reg [15:0] in;
wire [31:0] out;

SignExtend sign0(in,out);

	initial begin
		in = 32791; #5; 
		in = 2; #5; 
	end

	initial begin
		$monitor($time, "In=%b Out=%b", in, out);
	end
endmodule