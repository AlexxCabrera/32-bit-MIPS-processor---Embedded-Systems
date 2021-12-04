`include "Control.v"

module ControlTB;

  reg  [5:0] opcode;
  wire [2:0] ALUOp;
  wire RegDst, ALUSrc, MemtoReg, RegWrite;
  wire MemRead, MemWrite, Branch;
  reg [8:0] exp;
  Control test(.opcode(opcode), .ALUOp(ALUOp), .RegDst(RegDst),
    	       .ALUSrc(ALUSrc), .MemtoReg(MemtoReg), .RegWrite(RegWrite), 
	       .MemRead(MemRead), .MemWrite(MemWrite), .Branch(Branch));

  initial begin
    $monitor($time, ": Opcode: %b\t Control signal: %b%b%b%b%b%b%b%b", opcode, RegDst, RegWrite, ALUOp, MemWrite, MemRead, MemtoReg, Branch, ALUSrc);
    
	#5 opcode = 6'b000000;   
    	#5 opcode = 6'b001000; 	
    	#5 opcode = 6'b100011; 	 
    	#5 opcode = 6'b101011; 	 
	#5 opcode = 6'b000100; 	 
  end
endmodule
