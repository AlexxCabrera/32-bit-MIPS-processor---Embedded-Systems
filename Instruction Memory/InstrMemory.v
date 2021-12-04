`define MEM_SIZE 128
`define REG_INIT "InitReg.txt"
`define REG_VAL "RegVals.txt"

module InstrMemory (clk, Address, Instruction);
  input clk;
  input [31:0] Address;
  output [31:0] Instruction;

  reg [31:0] Imem [0:`MEM_SIZE-1];  

  parameter initRegisters = `REG_INIT;
  parameter regVals       = `REG_VAL;
 
 initial begin
    
    $readmemh("instructions_list.txt", Imem, 1, `MEM_SIZE - 83);             //MEM_SIZE - 83 can be modified to depending on adding or removing instructions

  end
  assign Instruction = Imem[Address];
 
endmodule
