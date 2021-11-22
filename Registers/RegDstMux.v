module RegDstMux(input RegDst, [4:0] in0, [4:0] in1, output [4:0] out_Write_Register);

assign out_Write_Register = RegDst ? in1 : in0;

endmodule
