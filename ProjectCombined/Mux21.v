`timescale 1ns/1ns
module Mux21 (in0, in1, sel, out);
input [31:0] in0, in1;
input sel;
 output [31:0] out;

assign out = sel ? in1 : in0;

endmodule
