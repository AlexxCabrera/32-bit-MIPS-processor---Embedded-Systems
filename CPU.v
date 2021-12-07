module CPU(input [31:0] line, [0:0] clk);

wire [0:0] 	RegDst, Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite;
wire [1:0] 	ALUOp;
wire [3:0] 	ALUinput;
wire [4:0] 	writeReg;
wire [31:0] 	instructionWire, readData1, readData2, ALUresult, Read_data, writeData, ALUin, shiftOut,
		addALUresult, pcOut, mux2Out, Address,extendedImm,ALUin2;

PC PCCPU(.In(line),.Out(pcOut));

InstructionMem instMemCPU(.Address(pcOut), .Instruction(instructionWire));

Control controlCPU (.opCode(instructionWire[31:26]), .RegDst(RegDst), .Branch(Branch), .MemRead(MemRead), .MemtoReg( MemtoReg), .ALUOp(ALUOp), .MemWrite(MemWrite),
.ALUSrc(ALUSrc), .RegWrite(RegWrite) );

regIn_mux mux0(.in0(instructionWire[20:16]), .in1(instructionWire[15:11]), .sel(RegDst), .out(writeReg));

registers regCPU (.read_register1(instructionWire[25:21]),.read_register2(instructionWire[20:16]),.writeReg(writeReg),.RegWrite(RegWrite),
.writeData(writeData), .clk(clk), .readData1(readData1), .readData2(readData2) ); 

SignExtend SE0(.in(instructionWire[15:0]),.out(extendedImm));

addALU addALUCPU(.sum(addALUresult), .A(pcOut+1), .B(extendedImm));

AluOut_mux mux2(.in0(pcOut+1),.in1(addALUresult), .sel((Branch)),.out(mux2Out));

regOut_mux mux1(.in0(readData2), .in1(extendedImm), .sel(ALUSrc), .out(ALUin2));

ALUcontrol ALUcontrolCPU(.ALUOp(ALUOp), .funct(instructionWire[5:0]),.ALUInput(ALUinput));

ALU ALUCPU( .Read_data1(readData1), .Read_data2(ALUin2),.ALU_Control(ALUinput),.ALUresult(ALUresult) );

DataMem dataMemCPU (.MemWrite(MemWrite), .MemRead(MemRead),.Address(ALUresult), .Write_data(readData2),
.Read_data(Read_data));

dataMem_mux mux3(.in0(ALUresult), .in1(Read_data), .sel(MemtoReg), .out(writeData));

registers regCPU_WB (.read_register1(instructionWire[25:21]),.read_register2(instructionWire[20:16]),.writeReg(writeReg),.RegWrite(RegWrite),
.writeData(writeData), .clk(clk), .readData1(readData1), .readData2(readData2) ); 

endmodule 
