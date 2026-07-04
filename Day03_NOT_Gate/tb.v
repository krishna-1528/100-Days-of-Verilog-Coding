`timescale 1ns / 1ps
//krishna patel
module tb();

reg m;
wire o;

not_gate dut(.a(m), .y(o));

initial begin

    $display("Time | Input1 | Output");
    
    
    $monitor("%t, %b, %b", $time, m, o);
    
    m=0; #10;
    m=1; #10;
    
    $finish;

end
endmodule
