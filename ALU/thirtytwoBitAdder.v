//32-bit adder Adder/Subtractor 
module thirtytwoBitAdder(
input [31:0] A, [31:0] B, [0:0] Cin, Sub,
output [31:0] Sum, [0:0] Cout);

wire C0;
wire [31:0] Bn;

//If Sub=1 then B's bits are flipped
thirtytwoBitXOR invert(B,Sub,Bn);

sixteenBitAdder SBA0(A[15:0], 	Bn[15:0], (Cin||Sub), 	Sum[15:0], 	C0);sixteenBitAdder SBA1(A[31:16], 	Bn[31:16], C0, 		Sum[31:16],	Cout);

endmodule

