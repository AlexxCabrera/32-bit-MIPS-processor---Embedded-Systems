`timescale 1ns/1ns

module ALU( input [31:0] a, 
            input [31:0] b,
            input [3:0] funct,
            input [4:0] shamt,
            output reg [31:0] out, 
            output reg zero);

always @ (*) begin

    case (funct)
        4'b0000: out = a + b;                             // ADD
        4'b0001: out = a - b;                             // SUB
        4'b0010: out = a & b;                             // AND
        4'b0011: out = a | b;                             // OR
        4'b0100: out = a ^ b;                             // XOR
        4'b0101: out = b << shamt;                        // SLL
        4'b0110: out = b >> shamt;                        // SRL
        4'b1000: out = $signed(a) < $signed(b) ? 1 : 0;   // SLT
        4'b1010: out = ~ (a | b);                         // NOR 

    endcase
         zero = (out == 8'b0);
     end
endmodule