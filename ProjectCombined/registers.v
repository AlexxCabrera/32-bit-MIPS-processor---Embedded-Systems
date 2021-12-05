module registers(input clk, [4:0] read_register1, [4:0] read_register2, [4:0] writeReg, [0:0] RegWrite, [31:0] writeData, 
output reg [31:0] readData1, readData2);

reg [31:0] registers [31:0];

always@(posedge clk)begin
	readData1 = registers[read_register1];
	readData2 = registers[read_register2];
	if(RegWrite == 1) begin
		registers[writeReg] = writeData;
	end
end

endmodule
