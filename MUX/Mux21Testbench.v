module Mux21Testbench;

reg in0, in1, sel;
wire out;

	Mux21 test (. out(out), .in0(in0), .in1(in1), .sel(sel) );

initial begin
	
		   in0 = 1'b0;	in1 = 1'b1;	sel = 1'b0;
		#5 in0 = 1'b0;	in1 = 1'b1;	sel = 1'b1;
end

initial begin

	$monitor ("Time: %0d, in0 = %b, in1 = %b, s0 = %b, Output = %.2b", $time, in0, in1, sel, out);
end

endmodule
