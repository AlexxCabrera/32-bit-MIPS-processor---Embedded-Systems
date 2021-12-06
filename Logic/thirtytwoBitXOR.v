`timescale 1ns/1ns

module thirtytwoBitXOR (Y, A, B);
input [31:0] A, B;
output [31:0] Y;

	Xor xo0(.Y(Y[0]),.A(A[0]),.B(B[0]));
	Xor xo1(.Y(Y[1]),.A(A[1]),.B(B[1]));
	Xor xo2(.Y(Y[2]),.A(A[2]),.B(B[2]));
	Xor xo3(.Y(Y[3]),.A(A[3]),.B(B[3]));
	Xor xo4(.Y(Y[4]),.A(A[4]),.B(B[4]));
	Xor xo5(.Y(Y[5]),.A(A[5]),.B(B[5]));
	Xor xo6(.Y(Y[6]),.A(A[6]),.B(B[6]));
	Xor xo7(.Y(Y[7]),.A(A[7]),.B(B[7]));
	Xor xo8(.Y(Y[8]),.A(A[8]),.B(B[8]));
	Xor xo9(.Y(Y[9]),.A(A[9]),.B(B[9]));
	Xor xo10(.Y(Y[10]),.A(A[10]),.B(B[10]));
	Xor xo11(.Y(Y[11]),.A(A[11]),.B(B[11]));
	Xor xo12(.Y(Y[12]),.A(A[12]),.B(B[12]));
	Xor xo13(.Y(Y[13]),.A(A[13]),.B(B[13]));
	Xor xo14(.Y(Y[14]),.A(A[14]),.B(B[14]));
	Xor xo15(.Y(Y[15]),.A(A[15]),.B(B[15]));
	Xor xo16(.Y(Y[16]),.A(A[16]),.B(B[16]));
	Xor xo17(.Y(Y[17]),.A(A[17]),.B(B[17]));
	Xor xo18(.Y(Y[18]),.A(A[18]),.B(B[18]));
	Xor xo19(.Y(Y[19]),.A(A[19]),.B(B[19]));
	Xor xo20(.Y(Y[20]),.A(A[20]),.B(B[20]));
	Xor xo21(.Y(Y[21]),.A(A[21]),.B(B[21]));
	Xor xo22(.Y(Y[22]),.A(A[22]),.B(B[22]));
	Xor xo23(.Y(Y[23]),.A(A[23]),.B(B[23]));
	Xor xo24(.Y(Y[24]),.A(A[24]),.B(B[24]));
	Xor xo25(.Y(Y[25]),.A(A[25]),.B(B[25]));
	Xor xo26(.Y(Y[26]),.A(A[26]),.B(B[26]));
	Xor xo27(.Y(Y[27]),.A(A[27]),.B(B[27]));
	Xor xo28(.Y(Y[28]),.A(A[28]),.B(B[28]));
	Xor xo29(.Y(Y[29]),.A(A[29]),.B(B[29]));
	Xor xo30(.Y(Y[30]),.A(A[30]),.B(B[30]));
	Xor xo31(.Y(Y[31]),.A(A[31]),.B(B[31]));

endmodule
