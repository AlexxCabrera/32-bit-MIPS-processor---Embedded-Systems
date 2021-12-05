`timescale 1ns/1ns

module SLL (input [31:0] A, output [31:0] Out);

assign Out = A << 2;

endmodule
