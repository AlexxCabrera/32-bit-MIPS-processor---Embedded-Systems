module Mux21Testbench;

reg in0, in1, s0;
wire out;

Mux21 test (. out(out), .in0(in0), .in1(in1), .s0(s0) );

initial begin
	
		   in0 = 1'b0;	in1 = 1'b1;	s0 = 1'b0;
		#5 in0 = 1'b0;	in1 = 1'b1;	s0 = 1'b1;
end

initial begin

	$monitor ("Time: %0d, in0 = %b, in1 = %b, s0 = %b, Output = %.2b", $time, in0, in1, s0, out);
end

endmodule
