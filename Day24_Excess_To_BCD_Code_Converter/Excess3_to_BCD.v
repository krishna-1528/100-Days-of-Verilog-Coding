`timescale 1ns / 1ps
//krishna
module Excess3_to_BCD(
                      input [2:0] E,
                      output [2:0] B,
                      output error
);

    assign error = (E < 3'b011);
    assign B = E - 3'b011;
    
endmodule
