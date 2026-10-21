`timescale 1ns / 1ps
                //krishna
module sr_latch(        // SR Latch NAND Gate        

                input   S, // Set input
                input   R, // Reset input
                output  Q, // Output Q
                output  Qn // Complementary output Qn or say Q'
);

            assign Q  = ~(R | Qn);
            assign Qn = ~(S | Q);

endmodule
