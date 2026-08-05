`timescale 1ns / 1ps
//krishna
module tb();

    reg [7:0] P;
    wire even_out;
    wire odd_out;

    Parity_Generator #(.WIDTH(8)) dut (
        .data_in(P),
        .even_parity(even_out),
        .odd_parity(odd_out)
    );

    initial begin
        $display("Time | Test Data | Even O/P | Odd O/P");
        $monitor("%t, %b, %b, %b", $time, P, even_out, odd_out);
        
        P = 8'b0000_0000; #10;
        P = 8'b1010_0100; #10;
        P = 8'b1100_1100; #10;
        
        $finish;
end
endmodule
