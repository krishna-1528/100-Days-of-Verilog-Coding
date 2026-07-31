`timescale 1ns / 1ps
//krishna
module BCD_to_Excess3(
                      input [3:0]I,
                      output [3:0]Y
    );
    
    assign Y = I + 4'b00_11;
    
endmodule
