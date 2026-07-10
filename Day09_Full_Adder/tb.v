`timescale 1ns / 1ps

module tb();

reg P, Q, Z;
wire R, K;


full_adder dut(.A(P), .Cin(Z), .B(Q), .S(R), .Cout(K));

initial begin

   
    $display("Time | Input1  Input2  Input3 | Sum Cout");
    
   
    $monitor("%0t, %b, %b, %b, %b, %b", $time, P, Q, Z, R, K);

    
    P=0; Q=0; Z=0; #10;
    P=0; Q=0; Z=1; #10;
    P=0; Q=1; Z=0; #10;
    P=0; Q=1; Z=1; #10;
    P=1; Q=0; Z=0; #10;
    P=1; Q=0; Z=1; #10;
    P=1; Q=1; Z=0; #10;
    P=1; Q=1; Z=1; #10;

    $finish;
end
endmodule
