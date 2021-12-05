`timescale 1ns/1ns

module Flipflop (clk, reset, q, d);
input clk, reset;
input [31:0] d;
output reg [31:0] q;

always @(posedge clk) begin

	if(!reset)
	q <= d;
	else 
	q <= 0;
	end
endmodule