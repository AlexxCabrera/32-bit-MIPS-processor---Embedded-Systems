/*INCOMPLETE*/
module ALU(input [31:0] Read_data1, Read_data2, [3:0] ALU_Control,
output	[31:0] ALUresult);

always@()begin
	if(ALU_Control == 0000)begin //AND

	end
	else if(ALU_Control == 0001)begin //OR

	end
	else if(ALU_Control == 0010)begin //add

	end
	else if(ALU_Control == 0110)begin //subtract

	end
	else if(ALU_Control == 0111)begin //set-on-less-than

	end
	else if(ALU_Control == 1100)begin //NOR

	end
end

endmodule
