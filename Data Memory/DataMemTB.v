module DataMemTB;

	reg MemWrite, MemRead;
	reg [7:0] Address;
	reg [31:0] Write_data;
	wire [31:0] Read_data;


	DataMem dataTest(MemWrite, MemRead, Address, Write_data, Read_data);

	initial begin
		MemWrite = 1; MemRead = 0; Address = 5; 	Write_data = 32; #5;
		MemWrite = 1; MemRead = 0; Address = 15; 	Write_data = 104; #5;
		MemWrite = 0; MemRead = 1; Address = 5; 	Write_data = 0; #5;
		MemWrite = 0; MemRead = 1; Address = 15; 	Write_data = 0; #5;
	end

	initial begin
		$monitor($time, " MemWrite= %d MemRead= %d Address= %d Write_data= %d Read_data= %d", MemWrite,MemRead,Address,Write_data,Read_data);
	end

endmodule 
