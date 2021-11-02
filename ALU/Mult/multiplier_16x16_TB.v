module multiplier_16x16_TB;

	reg [15:0] A, B;
	wire[31:0] product;

	multiplier_16x16 MulTB0(product,A,B);

	initial begin
		A = 2; 		B = 6;		#5; //12
		A = 16; 	B = 23;		#5; //368
		A = 124; 	B = 215; 	#5; //26660
		A = 25; 	B = 62;		#5; //1550
		A = 156; 	B = 233;	#5; //36348
		A = 6; 		B = 3;		#5; //18
		A = 1504; 	B = 4120; 	#5; //6196480
	end

	initial begin
		$monitor($time, " A=%d B=%d Product=%d", A, B, product);
	end
	
endmodule
