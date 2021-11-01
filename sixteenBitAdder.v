module sixteenBitAdder(
input [15:0] A, [15:0] B, [0:0] Cin,
output [15:0] Sum, [0:0] Cout);

wire C0;
wire C1;
wire C2;

FourBitAdder FBA0(A[3:0], 	B[3:0],	 	Cin, 	Sum[3:0], 	C0);FourBitAdder FBA1(A[7:4], 	B[7:4], 	C0, 	Sum[7:4], 	C1);
FourBitAdder FBA2(A[11:8], 	B[11:8], 	C1, 	Sum[11:8], 	C2);FourBitAdder FBA3(A[15:12], 	B[15:12], 	C2, 	Sum[15:12],	Cout);

endmodule

