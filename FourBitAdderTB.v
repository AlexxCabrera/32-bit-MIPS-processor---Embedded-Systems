module FourBitAdderTB;

	reg [3:0] A, B;
	reg [0:0] Cin;
	wire [0:0] Cout;
	wire[3:0] Sum;

	FourBitAdder test1(A,B,Cin,Sum,Cout);

	initial begin
		A = 2; B = 6; Cin = 0; #5;
		A = 6; B = 2; Cin = 0; #5;
		A = 3; B = 1; Cin = 0; #5;
		A = 15; B = 1; Cin = 0; #5;
		A = 3; B = 10; Cin = 0; #5;

	end

	initial begin
		$monitor($time, " A=%d B=%d Cin=%d Sum=%d Cout=%d", A, B, Cin, Sum, Cout);
	end
	
endmodule