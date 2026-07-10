`timescale 1ns / 1ps

module tb();

reg p, q;
wire m, n;

half_adder dut(.a(p), .b(q), .s(m), .c(n));

initial begin

    $display("Time | Input1 Input2 | Sum | Carry");
    
  
    $monitor("%0t, %b, %b, %b, %b", $time, p, q, m, n);
    
    p=0; q=0; #10;
    p=0; q=1; #10;
    p=1; q=0; #10;
    p=1; q=1; #10;
    
    $finish;

end
endmodule