module Mux41Testbench;

reg [1:0]in0, in1, in2, in3;
reg [1:0]sel;
wire out;

Mux41 test( .out(out), .in0(in0), .in1(in1), .in2(in2), .in3(in3), .sel(sel) );

initial begin

	#0 in0 = 2'b00;	 in1 = 2'b01;	 in2 = 2'b10;	 in3 = 2'b11;	 sel[1] = 1'b0;	sel[0] = 1'b0;
	#5 in0 = 2'b00;	 in1 = 2'b01;	 in2 = 2'b10;	 in3 = 2'b11;	 sel[1] = 1'b0;	sel[0] = 1'b1;
	#5 in0 = 2'b00;	 in1 = 2'b01;	 in2 = 2'b10;	 in3 = 2'b11;	 sel[1] = 1'b1;	sel[0] = 1'b0;
	#5 in0 = 2'b00;	 in1 = 2'b01;	 in2 = 2'b10;	 in3 = 2'b11;	 sel[1] = 1'b1;	sel[0] = 1'b1;
end

initial begin

	$monitor ("Time: %0d, in0 = %b, in1 = %b, in2 = %b, in3 = %b, Select line = %b, Output = %b", $time, in0, in1, in2, in3, sel, out);
end

endmodule