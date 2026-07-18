`timescale 1ns / 1ps

module tb();

reg [7:0] P;
reg [2:0] Q;
wire T;


mux_8_1 dut(.I(P), .S(Q), .Y(T));

initial begin
    $display("Time  | Inputs   | Select Lines | Output");
      $monitor("%t | %b | %b | %b", $time, P, Q, T);

  
    {P, Q} = 11'b00000000_000; #10;
    {P, Q} = 11'b00000000_001; #10;
    {P, Q} = 11'b00000000_010; #10;
    {P, Q} = 11'b00000000_011; #10;
    {P, Q} = 11'b00000000_100; #10;
    {P, Q} = 11'b00000000_101; #10;
    {P, Q} = 11'b00000000_110; #10;
    {P, Q} = 11'b00000000_111; #10;
    {P, Q} = 11'b10000000_111; #10; 

    $finish;
end 

endmodule
