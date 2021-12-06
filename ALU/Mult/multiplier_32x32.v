`timescale 1ns/1ns

module multiplier_32x32(
output [63:0] product,
input [31:0] A, [31:0] B
);

wire C0,C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16,C17,C18,C19,C20,C21,C22,C23,C24,C25,C26,C27,C28,C29;

wire [31:0] A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30;
wire [31:0] B0;

MultiplierInputs_32 BM0(B0,A,B[0]);
MultiplierInputs_32 AM0(A0,A,B[1]);
MultiplierInputs_32 AM1(A1,A,B[2]);
MultiplierInputs_32 AM2(A2,A,B[3]);
MultiplierInputs_32 AM3(A3,A,B[4]);
MultiplierInputs_32 AM4(A4,A,B[5]);
MultiplierInputs_32 AM5(A5,A,B[6]);
MultiplierInputs_32 AM6(A6,A,B[7]);
MultiplierInputs_32 AM7(A7,A,B[8]);
MultiplierInputs_32 AM8(A8,A,B[9]);
MultiplierInputs_32 AM9(A9,A,B[10]);
MultiplierInputs_32 AM10(A10,A,B[11]);
MultiplierInputs_32 AM11(A11,A,B[12]);
MultiplierInputs_32 AM12(A12,A,B[13]);
MultiplierInputs_32 AM13(A13,A,B[14]);
MultiplierInputs_32 AM14(A14,A,B[15]);
MultiplierInputs_32 AM15(A15,A,B[16]);
MultiplierInputs_32 AM16(A16,A,B[17]);
MultiplierInputs_32 AM17(A17,A,B[18]);
MultiplierInputs_32 AM18(A18,A,B[19]);
MultiplierInputs_32 AM19(A19,A,B[20]);
MultiplierInputs_32 AM20(A20,A,B[21]);
MultiplierInputs_32 AM21(A21,A,B[22]);
MultiplierInputs_32 AM22(A22,A,B[23]);
MultiplierInputs_32 AM23(A23,A,B[24]);
MultiplierInputs_32 AM24(A24,A,B[25]);
MultiplierInputs_32 AM25(A25,A,B[26]);
MultiplierInputs_32 AM26(A26,A,B[27]);
MultiplierInputs_32 AM27(A27,A,B[28]);
MultiplierInputs_32 AM28(A28,A,B[29]);
MultiplierInputs_32 AM29(A29,A,B[30]);
MultiplierInputs_32 AM30(A30,A,B[31]);

wire [31:0] Sum0,Sum1,Sum2,Sum3,Sum4,Sum5,Sum6,Sum7,Sum8,Sum9,Sum10,Sum11,Sum12,Sum13,Sum14,Sum15,Sum16,Sum17,Sum18,Sum19,Sum20,Sum21,Sum22,Sum23,Sum24,Sum25,Sum26,Sum27,Sum28,Sum29,Sum30;

thirtytwoBitAdder AdMul0(A0, {1'b0, B0[31:1]}, 1'b0, Sum0, C0);
thirtytwoBitAdder AdMul1(A1, {C0, Sum0[31:1]}, 1'b0, Sum1, C1);
thirtytwoBitAdder AdMul2(A2, {C1, Sum1[31:1]}, 1'b0, Sum2, C2);
thirtytwoBitAdder AdMul3(A3, {C2, Sum2[31:1]}, 1'b0, Sum3, C3);
thirtytwoBitAdder AdMul4(A4, {C3, Sum3[31:1]}, 1'b0, Sum4, C4);
thirtytwoBitAdder AdMul5(A5, {C4, Sum4[31:1]}, 1'b0, Sum5, C5);
thirtytwoBitAdder AdMul6(A6, {C5, Sum5[31:1]}, 1'b0, Sum6, C6);
thirtytwoBitAdder AdMul7(A7, {C6, Sum6[31:1]}, 1'b0, Sum7, C7);
thirtytwoBitAdder AdMul8(A8, {C7, Sum7[31:1]}, 1'b0, Sum8, C8);
thirtytwoBitAdder AdMul9(A9, {C8, Sum8[31:1]}, 1'b0, Sum9, C9);
thirtytwoBitAdder AdMul10(A10, {C9, Sum9[31:1]}, 1'b0, Sum10, C10);
thirtytwoBitAdder AdMul11(A11, {C10, Sum10[31:1]}, 1'b0, Sum11, C11);
thirtytwoBitAdder AdMul12(A12, {C11, Sum11[31:1]}, 1'b0, Sum12, C12);
thirtytwoBitAdder AdMul13(A13, {C12, Sum12[31:1]}, 1'b0, Sum13, C13);
thirtytwoBitAdder AdMul14(A14, {C13, Sum13[31:1]}, 1'b0, Sum14, C14);
thirtytwoBitAdder AdMul15(A15, {C14, Sum14[31:1]}, 1'b0, Sum15, C15);
thirtytwoBitAdder AdMul16(A16, {C15, Sum15[31:1]}, 1'b0, Sum16, C16);
thirtytwoBitAdder AdMul17(A17, {C16, Sum16[31:1]}, 1'b0, Sum17, C17);
thirtytwoBitAdder AdMul18(A18, {C17, Sum17[31:1]}, 1'b0, Sum18, C18);
thirtytwoBitAdder AdMul19(A19, {C18, Sum18[31:1]}, 1'b0, Sum19, C19);
thirtytwoBitAdder AdMul120(A20, {C19, Sum19[31:1]}, 1'b0, Sum20, C20);
thirtytwoBitAdder AdMul121(A21, {C20, Sum20[31:1]}, 1'b0, Sum21, C21);
thirtytwoBitAdder AdMul122(A22, {C21, Sum21[31:1]}, 1'b0, Sum22, C22);
thirtytwoBitAdder AdMul123(A23, {C22, Sum22[31:1]}, 1'b0, Sum23, C23);
thirtytwoBitAdder AdMul124(A24, {C23, Sum23[31:1]}, 1'b0, Sum24, C24);
thirtytwoBitAdder AdMul125(A25, {C24, Sum24[31:1]}, 1'b0, Sum25, C25);
thirtytwoBitAdder AdMul126(A26, {C25, Sum25[31:1]}, 1'b0, Sum26, C26);
thirtytwoBitAdder AdMul127(A27, {C26, Sum26[31:1]}, 1'b0, Sum27, C27);
thirtytwoBitAdder AdMul128(A28, {C27, Sum27[31:1]}, 1'b0, Sum28, C28);
thirtytwoBitAdder AdMul129(A29, {C28, Sum28[31:1]}, 1'b0, Sum29, C29);
thirtytwoBitAdder AdMul130(A30, {C29, Sum29[31:1]}, 1'b0, Sum30, Cout);

assign product = A * B; /*{Cout, Sum30[31], Sum30[30], Sum30[29], Sum30[28], Sum30[27], Sum30[26], Sum30[25], Sum30[24], Sum30[23], Sum30[22], Sum30[21], Sum30[20], Sum30[19], Sum30[18], Sum30[17], Sum30[16],
			Sum30[15], Sum30[14], Sum30[13], Sum30[12], Sum30[11], Sum30[10], Sum30[9], Sum30[8], Sum30[7], Sum30[6], Sum30[5], Sum30[4], Sum30[3], Sum30[2], Sum30[1], Sum30[0],
			Sum29[0], Sum28[0], Sum27[0], Sum26[0], Sum25[0], Sum24[0], Sum23[0], Sum22[0], Sum21[0] ,Sum20[0], Sum19[0], Sum18[0], Sum17[0], Sum16[0], Sum15[0], Sum14[0],
			Sum13[0],Sum12[0],Sum11[0],Sum10[0],Sum9[0],Sum8[0],Sum7[0],Sum6[0],Sum5[0],Sum4[0],Sum3[0],Sum2[0],Sum1[0],Sum0[0],(A[0]&B[0])};*/

endmodule
