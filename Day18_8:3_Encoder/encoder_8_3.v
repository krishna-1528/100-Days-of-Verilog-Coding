`timescale 1ns / 1ps
//krishna
module encoder_8_3(
                     input En,
                     input [7:0] E,
                     output [2:0] Y  
);
    
    assign Y = (!En)   ? 3'b000 :
               (E[7])  ? 3'b111 :
               (E[6])  ? 3'b110 :
               (E[5])  ? 3'b101 :
               (E[4])  ? 3'b100 :
               (E[3])  ? 3'b011 :
               (E[2])  ? 3'b010 :
               (E[1])  ? 3'b001 : 3'b000;
    
endmodule

