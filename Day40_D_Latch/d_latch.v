`timescale 1ns / 1ps
                //krishna<3

module d_latch(
        input en, d,
        output reg q = 0  // Initialized to 0 to avoid 'X' state at matches 
);
    
    always @(*) begin
        if (en) begin
            q = d;
        end
    end
    
endmodule
