`define MEM_SIZE 256

`timescale 1ns/1ns

module InstructionMemory (Address, Instruction);
  input [31:0] Address;
  output [31:0] Instruction;

  reg [31:0] Imem [`MEM_SIZE-1:0];  
 
 initial begin
    
    $readmemh("instructions_list.txt", Imem);

  end
  assign Instruction = Imem[Address/4];
 
endmodule