`include "And.v"
module AndTB;
reg a, b;
wire y;
	And test(.Y(y), .A(a), .B(b));
	initial begin
    	   a = 0; b = 0;
 	#1 a = 0; b = 1;
	#1 a = 1; b = 0;
 	#1 a = 1; b = 1;
end
initial begin
    $monitor ("%t | a = %d, b = %d, y = %d", $time, a, b, y);
end
endmodule
