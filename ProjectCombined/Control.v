`timescale 1ns/1ns

module Control (input [5:0] Opcode, 
               input [5:0] Funct,
               input Zero,
               output reg  MemtoReg,
               output reg  MemWrite,
               output reg  ALUSrc,
               output reg  RegDst,
               output reg  RegWrite,
               output reg  Jump,
               output 	   PCSrc,
               output reg  [3:0] ALUCtrl
               );
               
reg [7:0] temp;
reg Branch, x;

always @(*) begin 

    case (Opcode) 
        6'b000000: begin                          // R-type
                    temp <= 8'b11000000;        

                    case (Funct)
                    6'b100000: ALUCtrl <= 4'b0000;    // ADD
                    6'b100010: ALUCtrl <= 4'b0001;    // SUB
                    6'b100100: ALUCtrl <= 4'b0010;    // AND
                    6'b100101: ALUCtrl <= 4'b0011;    // OR
                    6'b100110: ALUCtrl <= 4'b0100;    // XOR
                    6'b100111: ALUCtrl <= 4'b1010;    // NOR
                    6'b101010: ALUCtrl <= 4'b1000;    // SLT
                    6'b000000: ALUCtrl <= 4'b0101;    // SLL
                    6'b000010: ALUCtrl <= 4'b0110;    // SRL

                endcase

            end

        6'b100011: begin                          // LW
                        temp <= 8'b10100100;     
                        ALUCtrl <= 4'b0000;
                    end

        6'b101011: begin                          // SW
                         temp <= 8'b00101000;      
                         ALUCtrl <= 4'b0000;
                    end  

        6'b000100: begin                          // BEQ
                         temp <= 8'b00010000;      
                        ALUCtrl <= 4'b0001; 
                    end      

        6'b000101: begin                          // BNE
                        temp <= 8'b00010001;  
                        ALUCtrl <= 4'b0001; 
                    end

        6'b001000: begin                          // ADDI
                        temp <= 8'b10100000;  
                        ALUCtrl <= 4'b0000; 
                    end  

        6'b001100: begin                          // ANDI
                        temp <= 8'b10100000;  
                        ALUCtrl <= 4'b0010; 
                    end 

        6'b001101: begin                          // ORI
                        temp <= 8'b10100000;  
                        ALUCtrl <= 4'b0011; 
                    end  

        6'b001110: begin                          // XORI
                        temp <= 8'b10100000;  
                        ALUCtrl <= 4'b0100; 
                    end       


        6'b000010: begin                          // J
                        temp <= 8'b00000010;  
                        ALUCtrl <= 4'b0010; 
                    end 
                                 
        default:   temp <= 12'bxxxxxxxxxxxx;      // NOP
    endcase
   

    
    temp = {RegWrite, RegDst,ALUSrc, Branch, MemWrite, MemtoReg, Jump, x};
 
end 

assign PCSrc = Branch & (Zero ^ x);

endmodule
