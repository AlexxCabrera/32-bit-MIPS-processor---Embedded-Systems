module MultiplierInputs(output [15:0] C, input [15:0] A, [0:0] B);

assign C = {(A[15]&B),(A[14]&B),(A[13]&B),(A[12]&B),(A[11]&B),(A[10]&B),(A[9]&B),(A[8]&B),(A[7]&B),(A[6]&B),(A[5]&B),(A[4]&B),(A[3]&B),(A[2]&B),(A[1]&B),(A[0]&B)};

endmodule
