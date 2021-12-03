/*INCOMPLETE*/
module Control(input [5:0] funct, output reg RegDst, Branch, MemRead, MemtoReg,ALUOp, MemWrite, ALUSrc, RegWrite);
	

always@(funct) begin

	//reseting signals
	RegDst 	 = 1'b0;
	Branch 	 = 1'b0;
	MemRead  = 1'b0;
	MemtoReg = 1'b0;
	ALUOp 	 = 1'b0;
	MemWrite = 1'b0;
	ALUSrc 	 = 1'b0;
	RegWrite = 1'b0;

	//Type-R: and, or, nor, add, sub, slt, div, mult, mfhi, mflo
	if() begin

	end

	//Type-I: addi, lw, sw, beq, 
	if() begin

	end

	//Type-J: j
	if() begin

	end

end

endmodule 
