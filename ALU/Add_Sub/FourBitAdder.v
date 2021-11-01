module FourBitAdder(
input [3:0] A, [3:0] B, [0:0] Cin,
output [3:0] Sum, [0:0] Cout );

wire [3:0] Carry;

lookAhead LA0(A, B, Cin, Carry);

Adder first	(A[0], B[0], Cin, 	Sum[0]);
Adder second	(A[1], B[1], Carry[0], 	Sum[1]);
Adder third	(A[2], B[2], Carry[1], 	Sum[2]);
Adder fourth	(A[3], B[3], Carry[2], 	Sum[3]);

assign Cout = Carry[3];

endmodule 