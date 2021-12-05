module ALU(input [31:0] Read_data1, Read_data2, [3:0] ALU_Control,
output	reg [31:0] ALUresult);

wire [31:0] tempAND, tempOR, tempADD, tempSUB, tempSLT, tempNOR, tempDIV, tempMULT;
	reg [31:0] HI, LO;


and_32 and0(.Y(tempAND),.A(Read_data1),.B(Read_data2));
Or_32 or0(.Y(tempOR),.A(Read_data1),.B(Read_data2));
thirtytwoBitAdder add0( .A(Read_data1), .B(Read_data2), .Cin(1'b0), .Sub(1'b0), .Sum(tempADD), .Cout() );
thirtytwoBitAdder sub0( .A(Read_data1), .B(Read_data2), .Cin(1'b0), .Sub(1'b1), .Sum(tempSUB), .Cout() );
Slt slt0(.Y(tempSLT), .A(Read_data1), .B(Read_data2));
Nor_32 nor0(.Y(tempNOR),.A(Read_data1),.B(Read_data2));
multiplier_16x16 mult0(.Product(tempMULT), .A(Read_data1), .B(Read_Data2) );
//Divider div0(.result(tempDIV), .remainder(tempDIVrem), .A(Read_data1), .B(Read_data2) ); remainder and result?

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

	else if(ALU_Control == 0010)begin //div
		ALUresult =  tempDIV;
	end

	else if(ALU_Control == 0110)begin //mult
		ALUresult =  tempMULT;
	end

	else if(ALU_Control == 0111)begin // mfhi
		ALUresult =  HI;
	end

	else if(ALU_Control == 1100)begin // mfLo
		ALUresult =  LO;
	end
end

endmodule
