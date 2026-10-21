`timescale 1ns / 1ps
                //krishna
module sr_latch(        // SR Latch NAND Gate        

                input   S, // Set input
                input   R, // Reset input
                output  Q, // Output Q
                output  Qn // Complementary output Qn or say Q'
);

            assign Q  = ~(S | Qn);
            assign Qn = ~(R | Q);

endmodule
