/*INCOMPLETE*/
module DataMem(input MemWrite, MemRead,[31:0] Address, [31:0] Write_data
output [31:0] Read_data );

reg [31:0] memory [255:0]; // 2^32 slots are available in memory but for this project we are using 256 slots

endmodule
