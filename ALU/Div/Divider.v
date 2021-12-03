module Divider(
input 	[31:0] A, B,
output	[31:0] result, remainder);
	
assign results = B/A;
assign remainder = B%A;
	
endmodule
