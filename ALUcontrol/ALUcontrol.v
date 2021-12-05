module ALUcontrol(input /*clk,*/[1:0] ALUOp, [5:0] funct,
output reg [3:0] ALUInput);

always@(/*posedge clk*/ ALUOp, funct)begin

	if(ALUOp == 2'b00) begin //load or store
			ALUInput = 4'b0010;
	end

	else if(ALUOp == 2'b01)begin //Branch eq
			ALUInput = 4'b0110;
	end

	else if(ALUOp == 2'b11) begin //add immediate
			ALUInput = 4'b0010;
	end

	else if(ALUOp == 2'b11)begin //Type-R: and, or, nor, add, sub, slt, div, mult, mfhi, mflo
		//and instruction
		if(funct == 6'b100100)begin 
			ALUInput = 4'b0000;
		end
		//or instruction
		if(funct == 6'b100101)begin 
			ALUInput = 4'b0001;
		end
		//nor instruction
		if(funct == 6'b100111)begin 
			ALUInput = 4'b1100;
		end
		//add instruction
		if(funct == 6'b100000)begin 
			ALUInput = 4'b0010;
		end
		//sub instruction
		if(funct == 6'b100010)begin 
			ALUInput = 4'b0110;
		end
		//slt instruction
		if(funct == 6'b101010)begin 
			ALUInput = 4'b0111;
		end
		//div instruction
		if(funct == 6'b011010)begin 
			ALUInput = 4'b0010;
		end
		//mult instruction
		if(funct == 6'b011000)begin 
			ALUInput = 4'b0110;
		end
		//mfhi instruction
		if(funct == 6'b010000)begin 
			ALUInput = 4'b0111;
		end
		//mflo instruction
		if(funct == 6'b010010)begin 
			ALUInput = 4'b1100;
		end
	end
end



endmodule 
