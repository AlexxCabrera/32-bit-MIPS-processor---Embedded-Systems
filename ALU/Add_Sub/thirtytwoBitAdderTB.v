module thirtytwoBitAdderTB;

	reg [31:0] A, B;
	reg [0:0] Cin, Sub;
	wire [0:0] Cout;
	wire[31:0] Sum;

	thirtytwoBitAdder TBA_TB0(A,B,Cin,Sub,Sum,Cout);

	initial begin
		Sub = 0;
		A = 2; 		B = 6; 		Cin = 0; #5; //8
		A = 16; 	B = 23; 	Cin = 0; #5; //39
		A = 124; 	B = 215; 	Cin = 0; #5; //339
		A = 1504; 	B = 4120; 	Cin = 0; #5; //5624
		A = 15031; 	B = 10154; 	Cin = 0; #5; //25185
		A = 65535; 	B = 1; 		Cin = 0; #5; //65536
		A = 65535; 	B = 65153; 	Cin = 0; #5; //130688
		A = 4294967295; B = 1; 		Cin = 0; #5; //4294967296

		Sub = 1;
		A = 6; 		B = 3; 		Cin = 0; #5; //3
		A = 23; 	B = 12; 	Cin = 0; #5; //11
		A = 124; 	B = 015; 	Cin = 0; #5; //109
		A = 1504; 	B = 0120; 	Cin = 0; #5; //1384
		A = 15031; 	B = 00154; 	Cin = 0; #5; //14877
		A = 6553; 	B = 1; 		Cin = 0; #5; //6552
		A = 65535; 	B = 65153; 	Cin = 0; #5; //382
		A = 429496729; 	B = 1; 		Cin = 0; #5; //429496728
	end

	initial begin
		$monitor($time, " A=%d B=%d Cin=%d Sum=%d Cout=%d", A, B, Cin, Sum, Cout);
	end
	
endmodule
