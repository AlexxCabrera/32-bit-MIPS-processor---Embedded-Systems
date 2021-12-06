`timescale 1ns/1ns

module Xor (Y, A, B);
input A, B;
output reg  Y;

always @ (A or B) begin
    	if (A == 0 & B == 0) begin
        Y = 0;
   	end   
   	if (A == 1 & B == 1) begin
        Y = 0; 
  	end    
   	if (A == 1 & B == 0) begin
	Y = 1;
	end
   	if (A == 0 & B == 1) begin
	Y = 1;
	end
        
 end
endmodule
