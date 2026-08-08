module Parity_Checker (
    input  wire [7:0] data_in,
    output wire  even,
    output wire  odd
);

    assign odd  = ^data_in;
    assign even = ~odd;

endmodule
