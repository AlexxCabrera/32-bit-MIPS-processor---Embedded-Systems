`timescale 1ns/1ns

module InstructionMem(Address, Instruction);

input [31:0] Address;
output [31:0] Instruction;

reg [31:0] Imem[255:0];
    
initial
    $readmemh("instructions.txt", Imem);
    
  assign Instruction = Imem[Address/4]; 



endmodule
