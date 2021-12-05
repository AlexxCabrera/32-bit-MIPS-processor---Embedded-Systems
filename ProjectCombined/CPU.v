`timescale 1ns/1ns

module CPU(clk, reset);
input clk;
input reset;

wire [31:0] PC, Instruction, ReadData, WriteData, ALUOut;
wire RegDst, RegWrite, ALUSrc, PCSrc, MemtoReg, MemWrite, MemRead, Zero, Jump;
wire [3:0] ALUCtrl;

//Datapath
Datapath DP (.clk(clk), .reset(reset), .RegDst(RegDst), .RegWrite(RegWrite), .ALUSrc(ALUSrc), .MemtoReg(MemtoReg), .PCSrc(PCSrc), .ALUCtrl(ALUCtrl), 
		.ReadData(ReadData), .Instruction(Instruction), .PC(PC), .Jump(Jump), .Zero(Zero), .WriteData(WriteData), .ALUOut(ALUOut) );
//Control
Control CTRL ( .Opcode(Instruction[31:26]), .Funct(Instruction[5:0]), .Zero(Zero), .MemtoReg(MemtoReg), .MemWrite(MemWrite), .ALUSrc(ALUSrc), .RegDst(RegDst), .RegWrite(RegWrite), .Jump(Jump), .PCSrc(PCSrc), .ALUCtrl(ALUCtrl) );

//Data Memory
DataMem DM (.clk(clk), .MemWrite(MemWrite), .MemRead(MemRead), .Address(ALUOut), .Write_data(WriteData), .Read_data(ReadData) );

//Instruction Memory
InstructionMemory IM (.Address(PC), .Instruction(Instruction) );

endmodule