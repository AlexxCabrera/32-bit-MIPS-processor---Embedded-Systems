module Mux21 (input in0, in1, s0, output out);

assign out = s0 ? in1 : in0;

endmodule