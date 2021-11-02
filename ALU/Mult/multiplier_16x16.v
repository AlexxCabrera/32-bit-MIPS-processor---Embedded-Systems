module multiplier_16x16(
output [31:0] product,
input [15:0] A, [15:0] B
);

wire C0,C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13;

wire [15:0] A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14;
wire [15:0] B0;

MultiplierInputs BM0(B0,A,B[0]);
MultiplierInputs AM0(A0,A,B[1]);
MultiplierInputs AM1(A1,A,B[2]);
MultiplierInputs AM2(A2,A,B[3]);
MultiplierInputs AM3(A3,A,B[4]);
MultiplierInputs AM4(A4,A,B[5]);
MultiplierInputs AM5(A5,A,B[6]);
MultiplierInputs AM6(A6,A,B[7]);
MultiplierInputs AM7(A7,A,B[8]);
MultiplierInputs AM8(A8,A,B[9]);
MultiplierInputs AM9(A9,A,B[10]);
MultiplierInputs AM10(A10,A,B[11]);
MultiplierInputs AM11(A11,A,B[12]);
MultiplierInputs AM12(A12,A,B[13]);
MultiplierInputs AM13(A13,A,B[14]);
MultiplierInputs AM14(A14,A,B[15]);

wire [15:0] Sum0,Sum1,Sum2,Sum3,Sum4,Sum5,Sum6,Sum7,Sum8,Sum9,Sum10,Sum11,Sum12,Sum13,Sum14;

sixteenBitAdder AdMul0(A0, {1'b0,B0 [15:1]}, 1'b0, Sum0, C0);
sixteenBitAdder AdMul1(A1, {C0, Sum0[15:1]}, 1'b0, Sum1, C1);
sixteenBitAdder AdMul2(A2, {C1, Sum1[15:1]}, 1'b0, Sum2, C2);
sixteenBitAdder AdMul3(A3, {C2, Sum2[15:1]}, 1'b0, Sum3, C3);
sixteenBitAdder AdMul4(A4, {C3, Sum3[15:1]}, 1'b0, Sum4, C4);
sixteenBitAdder AdMul5(A5, {C4, Sum4[15:1]}, 1'b0, Sum5, C5);
sixteenBitAdder AdMul6(A6, {C5, Sum5[15:1]}, 1'b0, Sum6, C6);
sixteenBitAdder AdMul7(A7, {C6, Sum6[15:1]}, 1'b0, Sum7, C7);
sixteenBitAdder AdMul8(A8, {C7, Sum7[15:1]}, 1'b0, Sum8, C8);
sixteenBitAdder AdMul9(A9, {C8, Sum8[15:1]}, 1'b0, Sum9, C9);
sixteenBitAdder AdMul10(A10, {C9, Sum9[15:1]}, 1'b0, Sum10, C10);
sixteenBitAdder AdMul11(A11, {C10, Sum10[15:1]}, 1'b0, Sum11, C11);
sixteenBitAdder AdMul12(A12, {C11, Sum11[15:1]}, 1'b0, Sum12, C12);
sixteenBitAdder AdMul13(A13, {C12, Sum12[15:1]}, 1'b0, Sum13, C13);
sixteenBitAdder AdMul14(A14, {C13, Sum13[15:1]}, 1'b0, Sum14, Cout);

assign product = {Cout, Sum14[15], Sum14[14], Sum14[13], Sum14[12],Sum14[11], Sum14[10], Sum14[9], Sum14[8],Sum14[7],Sum14[6], Sum14[5], Sum14[4],Sum14[3],Sum14[2], Sum14[1], Sum14[0],
Sum13[0],Sum12[0],Sum11[0],Sum10[0],Sum9[0],Sum8[0],Sum7[0],Sum6[0],Sum5[0],Sum4[0],Sum3[0],Sum2[0],Sum1[0],Sum0[0],(A[0]&B[0])};

endmodule
