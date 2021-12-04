/*INCOMPLETE*/
module ALU(input [31:0] Read_data1, Read_data2, [3:0] ALU_Control,
output	[31:0] ALUresult);

always@()begin
	if(ALU_Control == 0000)begin //AND
		And a0(ALUresult,Read_data1,Read_data2); //this and is only 1 bit, look into it
	end
	else if(ALU_Control == 0001)begin //OR
		
	end
	else if(ALU_Control == 0010)begin //add
		thirtytwoBitAdder add0( .A(Read_data1), .B(Read_data2), .Cin(1'b0), .Sub(1'b0), .Sum(ALUresult), .Cout() );
	end
	else if(ALU_Control == 0110)begin //subtract
		thirtytwoBitAdder sub0( .A(Read_data1), .B(Read_data2), .Cin(1'b0), .Sub(1'b1), .Sum(ALUresult), .Cout() );
	end
	else if(ALU_Control == 0111)begin //set-on-less-than
		
	end
	else if(ALU_Control == 1100)begin //NOR

	end
end

endmodule
