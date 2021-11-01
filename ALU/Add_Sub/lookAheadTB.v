module lookAheadbench;

	reg [3:0] A, B;
	reg [0:0] Cin;
	wire [3:0] C;

	lookAhead lookAheadTest(A,B,Cin,C);

	initial begin
		A = 2; B = 6; Cin = 0; #15;
		A = 6; B = 2; Cin = 0; #15;
	end

	initial begin
		$monitor($time, " A=%d B=%d Cin=%d Co=%b", A, B, Cin, C);
	end
	
endmodule
	
