module Adder(
input 	A, B, Cin,
output	Sum);

	assign Sum = ((A ^ B) ^ Cin);
	
endmodule
