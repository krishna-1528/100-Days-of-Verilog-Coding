`timescale 1ns / 1ps

module tb();
//krishna
reg l, m, n, o;
reg [1:0] p;       
wire q;

mux_4_1 dut(
    .I({l, m, n, o}), 
    .S(p), 
    .Y(q)
);

initial begin
    
    $display("Time | I0 I1 I2 I3 | S  | O/P");
   
    $monitor("%t  |  %b  %b  %b  %b | %b |  %b", $time, l, m, n, o, p, q);

    
    {l, m, n, o, p} = 6'b1000_00; #10; 
    {l, m, n, o, p} = 6'b0100_01; #10; 
    {l, m, n, o, p} = 6'b0010_10; #10;     
    {l, m, n, o, p} = 6'b0001_11; #10; 

    $finish;
end
endmodule
