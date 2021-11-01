module AdderTestbench;

	reg A, B, Cin;
	wire S,Cout;

	Adder test(A,B,Cin,Sum,Cout);

	initial begin
		A = 0; B = 0; Cin = 0; #5;
		A = 0; B = 0; Cin = 1; #5;
		A = 0; B = 1; Cin = 0; #5;
		A = 0; B = 1; Cin = 1; #5;
		A = 1; B = 0; Cin = 0; #5;
		A = 1; B = 0; Cin = 1; #5;
		A = 1; B = 1; Cin = 0; #5;
		A = 1; B = 1; Cin = 1; #5;
	end

	initial begin
		$monitor($time, " A=%b B=%b Cin=%b Sum=%b Cout=%b", A, B, Cin, Sum, Cout);
	end
	
endmodule
