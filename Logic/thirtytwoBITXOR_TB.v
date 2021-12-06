`timescale 1ns/1ns

module thirtytwoBitXOR_TB;
reg [31:0] A, B;
wire [31:0] Y;

thirtytwoBitXOR test (Y, A, B);

initial begin   
 A = 32'b00000000; B = 32'b00000000;
 #1 A = 32'b00000000; B = 32'b00000000; 
 #1 A = 32'b11110000; B = 32'b11111111; 
 #1 A = 32'b00001111; B = 32'b11111111; 
 #1 A = 32'b11111111; B = 32'b10101010; 
end
initial begin  
  $monitor ("%t | A = %b| B = %b| Y = %b", $time, A, B, Y); 
  $dumpfile("dump.vcd"); 
  $dumpvars();
end
endmodule
