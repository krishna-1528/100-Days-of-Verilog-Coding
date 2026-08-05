`timescale 1ns / 1ps
//krishna
module Parity_Generator #(
    parameter WIDTH = 8
)
(
    input  wire [WIDTH-1:0] data_in,    
    output wire even_parity, 
    output wire odd_parity   
);

    assign even_parity = ^data_in;
    assign odd_parity  = ~even_parity;
   
endmodule
