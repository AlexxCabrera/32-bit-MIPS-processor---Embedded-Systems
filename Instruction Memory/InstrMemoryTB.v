`include "InstrMemory.v"

module InstrMemoryTB;

  reg clk;
  reg [31:0] Address;
  wire [31:0] Instruction;

  always #1 clk = ~clk;   

  InstrMemory test(.clk(clk), .Address(Address), .Instruction(Instruction));
  
  initial begin
    Address = 0; clk = 0;
end
  initial begin
    #1 Address = Address + 1;
    $display($time, ": Address = %h, Instruction= %h", Address, Instruction);
   
  end
endmodule
