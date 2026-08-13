`timescale 1ns / 1ps
//krishna
module tb;

    reg [3:0] A;
    reg [3:0] B;
    reg Cin; 
    wire [3:0] S;
    wire Cout;
    wire PG;
    wire GG;
    reg [4:0] expected;
    integer i, j, k;
    integer error_count = 0;

    carry_look_adder dut (
                            .S(S), 
                            .Cout(Cout), 
                            .PG(PG), 
                            .GG(GG), 
                            .A(A), 
                            .B(B), 
                            .Cin(Cin)
    );

    initial begin
    $display("CLA Adder Testbench");
        
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                for (k = 0; k < 2; k = k + 1) begin
                   A = i;
                    B = j;
                    Cin = k;
                    #10;
                   expected = A + B + Cin;
                     if ({Cout, S} !== expected) begin
                        $display("ERROR | Got: Cout S | Expected");
                        $display("%t, %b,%b,%b,%b,%b,%b", $time, A, B, Cin, Cout, S, expected);        
                        error_count = error_count + 1;
                    end
                end
            end
        end
        
        if (error_count == 0) begin
         $display("SUCCESS: All 512 test cases passed perfectly!");
        end else begin
        $display("FAILURE: %0d errors found during simulation.", error_count);
        end 
        $finish;
    end  
endmodule
