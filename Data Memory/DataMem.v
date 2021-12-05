/*DataMem contains 256 memory slots with each slot holding 32 bits on data*/

module DataMem(input MemWrite, MemRead,[31:0] Address, [31:0] Write_data,
output reg [31:0] Read_data );

reg [31:0] memory [255:0]; // 2^32 slots are available in memory but for this project we are using 256 slots

always@(Address) begin
	if(MemWrite == 1) begin
		memory[Address] = Write_data; //writing data to address
	end
 
	if(MemRead == 1)begin
		Read_data = memory[Address]; //Reading data from address
	end
end

endmodule
