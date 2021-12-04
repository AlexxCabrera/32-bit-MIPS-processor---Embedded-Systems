//Not complete

`include "InstrMemory.v"
`include "Mux5_41.v"
`include "Mux32_21.v"
`include "registers.v"
`include "SignExtend.v"
`include "ALUcontrol.v"

module CPU (clk, ALUout, data, next_pc);
input clk;
output [31:0] ALUout, data, next_pc;

reg [31:0] current_pc;
wire [31:0] rdData1, rdData2, x;
wire RegDst0, RegDst1, RegWrite, ALUSrc, MemtoReg0, MemtoReg1, zero;
wire MemRead, MemWrite, Branch, Branch_NE, Branch_S, jump;
wire [31:0] SignExtend, ALUout, MemData, WriteData, jumpAddr, mux1_out, mux2_out;
wire [3:0] ALUCtrl;
wire [2:0] ALUOp;
wire [4:0] WriteReg;
wire [31:0] fullAdd1_out, shift, pc_4;

	initial current_pc <= 32'b0;
	
	//Instantiations
	//Instruction Memory
	InstrMemory Imem ( .clk(clk), .Instructions(data), .Address(current_pc) );
	
	//Mux 5-bits 4 to 1
	Mux5_21 mux0 ( .in0(data[20:16]), .in1(data[15:11]), .in2(5'd31), .sel({RegDst0, RegDet1}), .out(WriteReg) );	

	//Mux 32-bits 2 to 1
	Mux32_21 mux1 (.in0(rdData2), .in1(SignExtend), .sel(ALUSrc), .out(x) );

	//Registers
	registers regFile (.clk(clk), .read_register1(data[25:21]), .read_register2(data[20:16]), .writeReg(WriteReg), .RegWrite(RegWrite), .writeData(WriteData) );

	//Sign Extension
	SignExtend se (.in(data[15:0]), .out(SignExtend) );

	//ALU
	ALU alu ( 
	
endmodule
	
