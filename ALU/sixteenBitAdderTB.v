module sixteenBitAdderTB;

	reg [15:0] A, B;
	reg [0:0] Cin;
	wire Cout;
	wire[15:0] Sum;

	sixteenBitAdder SBATB0(A,B,Cin,Sum,Cout);

	initial begin
		A = 2; 		B = 6; 		Cin = 0; #5; //8
		A = 16; 	B = 23; 	Cin = 0; #5; //39
		A = 124; 	B = 215; 	Cin = 0; #5; //339
		A = 1504; 	B = 4120; 	Cin = 0; #5; //5624
		A = 15031; 	B = 10154; 	Cin = 0; #5; //25185
		A = 65535; 	B = 1; 		Cin = 0; #5; //65536
	end

	initial begin
		$monitor($time, " A=%d B=%d Cin=%d Sum=%d Cout=%d", A, B, Cin, Sum, Cout);
	end
	
endmodule