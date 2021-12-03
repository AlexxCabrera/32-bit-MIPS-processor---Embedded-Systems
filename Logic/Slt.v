module Slt (Y, A, B);
input A, B;
output reg Y;

always@(A or B) begin
	if (A < B) begin
		Y = 1'b1;
end
	else
		Y = 1'b0;
end
endmodule
