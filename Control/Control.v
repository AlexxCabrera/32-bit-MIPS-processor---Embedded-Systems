module Control(input [5:0] opCode, output reg RegDst, Branch, MemRead, MemtoReg, [1:0] ALUOp, [0:0] MemWrite, ALUSrc, RegWrite);


always@(*) begin

	//reseting signals
	RegDst 	 = 1'b0;
	Branch 	 = 1'b0;
	MemRead  = 1'b0;
	MemtoReg = 1'b0;
	ALUOp 	 = 2'b00;
	MemWrite = 1'b0;
	ALUSrc 	 = 1'b0;
	RegWrite = 1'b0;

	//Type-R: and, or, nor, add, sub, slt, div, mult, mfhi, mflo
	if(opCode == 6'b000000) begin
		RegDst 	 = 1'b1;
		Branch 	 = 1'b0;
		MemRead  = 1'b0;
		MemtoReg = 1'b0;
		ALUOp 	 = 2'b11;
		MemWrite = 1'b0;
		ALUSrc 	 = 1'b0;
		RegWrite = 1'b1;
	end

	//beq
	if(opCode == 6'b000100) begin
		RegDst 	 = 1'bx;
		Branch 	 = 1'b1;
		MemRead  = 1'b0;
		MemtoReg = 1'bx;
		ALUOp 	 = 2'b01;
		MemWrite = 1'b0;
		ALUSrc 	 = 1'b0;
		RegWrite = 1'b0;
	end

	//LW, SW
	if(opCode == 6'b100011 || opCode == 6'b101011) begin
		RegDst 	 = 1'b0;
		Branch 	 = 1'b0;
		MemRead  = 1'b1;
		MemtoReg = 1'b1;
		ALUOp 	 = 2'b00;
		MemWrite = 1'b0;
		ALUSrc 	 = 1'b1;
		RegWrite = 1'b1;
	end

	//Addi
	if(opCode == 6'b001000) begin
		RegDst 	 = 1'b0;
		Branch 	 = 1'b0;
		MemRead  = 1'b0;
		MemtoReg = 1'b0;
		ALUOp 	 = 2'b10;
		MemWrite = 1'b0;
		ALUSrc 	 = 1'b1;
		RegWrite = 1'b1;
	end

	//Type-J: j
	if(opCode == 6'b000010) begin
		RegDst 	 = 1'b0;
		Branch 	 = 1'b0;
		MemRead  = 1'b0;
		MemtoReg = 1'b0;
		ALUOp 	 = 2'b0;
		MemWrite = 1'b0;
		ALUSrc 	 = 1'b0;
		RegWrite = 1'b0;
	end

end

endmodule 
