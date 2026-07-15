
`timescale 1ns / 1ps

module tb();

reg p, q, m;
wire o;


mux_2_1 dut (
    .I({q, p}), 
    .S(m), 
    .Y(o)
);

initial begin
    $display("Time  |  I0  I1  S  |  Y");
    $monitor("%t %b %b %b %b", $time, p, q, m, o);

   
    {p, q, m} = 3'b010; #10; 
    {p, q, m} = 3'b011; #10; 
    {p, q, m} = 3'b111; #10;
    {p, q, m} = 3'b101; #10;
   
    $finish;
end

endmodule
