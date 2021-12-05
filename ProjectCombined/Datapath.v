//`include "Adder.v"
//`include "ALU.v"
//`include "Flipflop.v"
//`include "Mux21.v"
//`include "registers.v"
//`include "SignExtend.v"
//`include "SLT.v"

`timescale 1ns/1ns

module Datapath (clk, reset, RegDst, RegWrite, MemtoReg, ReadData, WriteData, ALUSrc, PCSrc, ALUCtrl, Instruction, PC, ALUOut, Jump, Zero);
input clk, reset, RegDst, RegWrite, MemtoReg, ALUSrc, PCSrc, Jump;
input [3:0] ALUCtrl;
input [31:0] ReadData, Instruction;
output Zero;
output [31:0] WriteData, PC, ALUOut; 

wire [31:0] NextPC, IncPC, BranchPC, PreBranchPC, MuxOut, ALUOp, ExImm, ExImmPost, Data, ALUOp1;
wire [4:0] tempRegWrite;

//PC
Flipflop FF (.clk(clk), .reset(reset), .q(PC), .d(NextPC) );						//Program Counter registers
Adder ADD0 (.A(PC), .B(32'b100), .Sum(IncPC) );								//Increments PC by 4
SLT SLT0 (.A(ExImm), .Out(ExImmPost) );									//Shift add 2
Adder ADD1 (.A(ExImmPost), .B(IncPC), .Sum(PreBranchPC) );						//Sign extend PC
Mux21 MUX0 (.in0(IncPC), .in1(PreBranchPC), .sel(PCSrc), .out(BranchPC) );				//Branch
Mux21 MUX1 (BranchPC, {IncPC[31:28], Instruction[25:0], 2'b00}, Jump, NextPC);				//Jump

//Register File
registers RF (.clk(clk), .RegWrite(RegWrite), .read_register1(Instruction[25:21]), .read_register2(Instruction[20:16]), 
		.writeReg(tempRegWrite), .writeData(MuxOut), .readData1(Data), .readData2(WriteData) );
Mux5_21 MUX2 (.in0(Instruction[20:16]), .in1(Instruction[15:11]), .sel(RegDst), .out(tempRegWrite) );	//Write Op Mux
Mux21 MUX3 (.in0(ALUOut), .in1(ReadData), .sel(MemtoReg), .out(MuxOut) );				//Mux Result

//ALU
ALU ALU0 (.a(Data), .b(ALUOp1), .funct(ALUCtrl), .shamt(Instruction[10:6]), .out(ALUOut), .zero(Zero) );
SignExtend SE0 (.in(Instruction[15:0]), .out(ExImm) );
Mux21 MUX4 (.in0(WriteData), .in1(ExImm), .sel(ALUSrc), .out(ALUOp1) );					//ALU Op Select

endmodule