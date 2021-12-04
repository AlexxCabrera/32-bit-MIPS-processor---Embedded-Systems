module Control(opcode, RegDst, Branch, MemRead, MemtoReg, ALUOp, MemWrite, ALUSrc, RegWrite);

input [5:0] opcode;
output reg [2:0] ALUOp;
output reg RegDst, Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite;

//R-TYPES OPCODES
parameter ADD 	= 6'b000000;
parameter SUB 	= 6'b000000;
parameter AND	= 6'b000000;
parameter OR 	= 6'b000000;
parameter NOR	= 6'b000000;
parameter DIV	= 6'b000000;
parameter MULT	= 6'b000000;
parameter SLT	= 6'b000000;
parameter MFHI	= 6'b000000;
parameter MFLO	= 6'b000000;

//I-TYPES
parameter ADDI 	= 6'b001000;
parameter LW 	= 6'b100011;
parameter SW	= 6'b101011;
parameter BEQ 	= 6'b000100;

//J-TYPE
parameter J	= 6'b000010;

always@(*) begin

	//reseting signals
	RegDst 	 = 1'b0;
	Branch 	 = 1'b0;
	MemRead  = 1'b0;
	MemtoReg = 1'b0;
	ALUOp 	 = 3'b0;
	MemWrite = 1'b0;
	ALUSrc 	 = 1'b0;
	RegWrite = 1'b0;

	case(opcode) 
	//ADD
	ADD: begin
	RegDst 		= 1'b1;
	MemtoReg 	= 1'b0;
	ALUOp		= 3'b010;
	Branch		= 1'b0;
	MemRead		= 1'b0;
	MemWrite	= 1'b0;
	ALUSrc		= 1'b1;
	RegWrite	= 1'b1;
	end

	//SUB
	SUB: begin
	RegDst 		= 1'b1;
	MemtoReg 	= 1'b0;
	ALUOp		= 3'b110;
	Branch		= 1'b0;
	MemRead		= 1'b0;
	MemWrite	= 1'b0;
	ALUSrc		= 1'b1;
	RegWrite	= 1'b1;
	end

	//AND
	AND: begin
	RegDst 		= 1'b1;
	MemtoReg 	= 1'b0;
	ALUOp		= 3'b000;
	Branch		= 1'b0;
	MemRead		= 1'b0;
	MemWrite	= 1'b0;
	ALUSrc		= 1'b1;
	RegWrite	= 1'b1;
	end

	//OR
	OR: begin
	RegDst 		= 1'b1;
	MemtoReg 	= 1'b0;
	ALUOp		= 3'b001;
	Branch		= 1'b0;
	MemRead		= 1'b0;
	MemWrite	= 1'b0;
	ALUSrc		= 1'b1;
	RegWrite	= 1'b1;
	end

	//NOR
	NOR: begin
	RegDst 		= 1'b1;
	MemtoReg 	= 1'b0;
	ALUOp		= 3'b000;
	Branch		= 1'b0;
	MemRead		= 1'b0;
	MemWrite	= 1'b0;
	ALUSrc		= 1'b1;
	RegWrite	= 1'b1;
	end

	//MULT
	MULT: begin
	RegDst 		= 1'b1;
	MemtoReg 	= 1'b0;
	ALUOp		= 3'b000;
	Branch		= 1'b0;
	MemRead		= 1'b0;
	MemWrite	= 1'b0;
	ALUSrc		= 1'b1;
	RegWrite	= 1'b1;
	end

	//DIV
	DIV: begin
	RegDst 		= 1'b1;
	MemtoReg 	= 1'b0;
	ALUOp		= 3'b000;
	Branch		= 1'b0;
	MemRead		= 1'b0;
	MemWrite	= 1'b0;
	ALUSrc		= 1'b1;
	RegWrite	= 1'b1;
	end

	//SLT
	SLT: begin
	RegDst 		= 1'b1;
	MemtoReg 	= 1'b0;
	ALUOp		= 3'b000;
	Branch		= 1'b0;
	MemRead		= 1'b0;
	MemWrite	= 1'b0;
	ALUSrc		= 1'b1;
	RegWrite	= 1'b1;
	end

	//MFHI
	MFHI: begin
	RegDst 		= 1'b1;
	MemtoReg 	= 1'b0;
	ALUOp		= 3'b000;
	Branch		= 1'b0;
	MemRead		= 1'b0;
	MemWrite	= 1'b0;
	ALUSrc		= 1'b1;
	RegWrite	= 1'b1;
	end
	
	//MFLO
	MFLO: begin
	RegDst 		= 1'b1;
	MemtoReg 	= 1'b0;
	ALUOp		= 3'b000;
	Branch		= 1'b0;
	MemRead		= 1'b0;
	MemWrite	= 1'b0;
	ALUSrc		= 1'b1;
	RegWrite	= 1'b1;
	end

	//ADDI
	ADDI: begin
	RegDst 		= 1'b0;
	MemtoReg 	= 1'b0;
	ALUOp		= 3'b001;
	Branch		= 1'b0;
	MemRead		= 1'b0;
	MemWrite	= 1'b0;
	ALUSrc		= 1'b0;
	RegWrite	= 1'b1;
	end

	//LW
	LW: begin
	RegDst 		= 1'b0;
	MemtoReg 	= 1'b1;
	ALUOp		= 3'b010;
	Branch		= 1'b0;
	MemRead		= 1'b1;
	MemWrite	= 1'b0;
	ALUSrc		= 1'b1;
	RegWrite	= 1'b1;
	end

	//SW
	SW: begin
	RegDst 		= 1'b0;
	MemtoReg 	= 1'b0;
	ALUOp		= 3'b010;
	Branch		= 1'b0;
	MemRead		= 1'b0;
	MemWrite	= 1'b1;
	ALUSrc		= 1'b1;
	RegWrite	= 1'b0;
	end

	//BEQ
	BEQ: begin
	RegDst 		= 1'b0;
	MemtoReg 	= 1'b0;
	ALUOp		= 3'b110;
	Branch		= 1'b1;
	MemRead		= 1'b0;
	MemWrite	= 1'b0;
	ALUSrc		= 1'b0;
	RegWrite	= 1'b1;
	end

	//J
	J: begin
	RegDst 		= 1'b0;
	MemtoReg 	= 1'b0;
	ALUOp		= 3'b000;
	Branch		= 1'b0;
	MemRead		= 1'b0;
	MemWrite	= 1'b0;
	ALUSrc		= 1'b0;
	RegWrite	= 1'b0;
	end
	endcase
end
endmodule 
