module Adder(A, B, Sum);

input [31:0] A, B;
output [31:0] Sum;
wire [32:0] temp;

genvar i;			//Used for loop

generate			//Used to allow multiple module instatiations into one module
assign temp[0] = 0;
	for(i=0;i<32;i=i+1) begin
	:ADD

	FullAdder FA ( .A(A[i]), .B(B[i]), .Cin(temp[i]), .Cout(temp[i+1]), .Sum(Sum[i]) );

	//assign Sum = ((A ^ B) ^ Cin);
	end
	endgenerate
endmodule

module FullAdder (A, B, Cin, Cout, Sum);
input A, B, Cin, Cout;
output Sum;

	assign {Cout, Sum} = A + B + Cin;

endmodule
