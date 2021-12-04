module ALU(input [31:0] Read_data1, Read_data2, [3:0] ALU_Control,
output	reg [31:0] ALUresult);

wire [31:0] tempAND, tempOR, tempADD, tempSUB, tempSLT, tempNOR;


and_32 and0(.Y(tempAND),.A(Read_data1),.B(Read_data2));
Or_32 or0(.Y(tempOR),.A(Read_data1),.B(Read_data2));
thirtytwoBitAdder add0( .A(Read_data1), .B(Read_data2), .Cin(1'b0), .Sub(1'b0), .Sum(tempADD), .Cout() );
thirtytwoBitAdder sub0( .A(Read_data1), .B(Read_data2), .Cin(1'b0), .Sub(1'b1), .Sum(tempSUB), .Cout() );
Slt slt0(.Y(tempSLT), .A(Read_data1), .B(Read_data2));
Nor_32 nor0(.Y(tempNOR),.A(Read_data1),.B(Read_data2));

always@(ALU_Control)begin

	if(ALU_Control == 0000)begin //AND
		ALUresult = tempAND;
	end

	else if(ALU_Control == 0001)begin //OR
		ALUresult = tempOR;
	end

	else if(ALU_Control == 0010)begin //add
		ALUresult =  tempADD;
	end

	else if(ALU_Control == 0110)begin //subtract
		ALUresult =  tempSUB;
	end

	else if(ALU_Control == 0111)begin //set-on-less-than
		ALUresult =  tempSLT;
	end

	else if(ALU_Control == 1100)begin //NOR
		ALUresult =  tempNOR;
	end
end

endmodule
