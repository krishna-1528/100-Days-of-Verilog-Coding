`timescale 1ns / 1ps
//krishna
module logical_shifter (
                            input        [7:0] data_in,   
                            input        [2:0] shift_amt, 
                            output reg   [7:0] right,
                            output reg   [7:0] left
                       );     

    always @(*) begin
      
       right = data_in >> shift_amt;
       left  = data_in << shift_amt;
    end

endmodule

