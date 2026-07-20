`timescale 1ns / 1ps
//krishna
module tb();

reg E;
reg [1:0]P;
wire [3:0]Q;


decoder_2_4 dut(.En(E), 
                .I(P), 
                .D(Q));

initial begin
   
    $display("Time  |  Enable  |  Inputs  |  Outputs");
   
    $monitor("%t, %b, %b,  %b", $time, E, P, Q);

    
    E = 0; P = 2'b00; #10;
    E = 0; P = 2'b01; #10;

  
    E = 1; P = 2'b00; #10;
    E = 1; P = 2'b01; #10; 
    E = 1; P = 2'b10; #10; 
    E = 1; P = 2'b11; #10; 

    
    E = 0; P = 2'b00; #10;

    $finish;
end

endmodule
