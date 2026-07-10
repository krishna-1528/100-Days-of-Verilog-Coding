`timescale 1ns / 1ps
//Krishna PAtel
module half_adder( 
    input a, b, 
    output s, c
);
    
    
    assign s = (a ^ b);
    assign c = (a & b);
    
endmodule

