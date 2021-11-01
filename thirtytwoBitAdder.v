module thirtytwoBitAdder(
input [31:0] A, [31:0] B, [0:0] Cin,
output [31:0] Sum, [0:0] Cout);

wire C0;

sixteenBitAdder SBA0(A[15:0], 	B[15:0], 	Cin, 	Sum[15:0], 	C0);

endmodule
