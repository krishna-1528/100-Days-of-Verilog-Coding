`timescale 1ns / 1ps
//krishna
module eight_bit_alu(
    input  [7:0] a,
    input  [7:0] b,
    input  [3:0] sel,        // opcode
    output [7:0] alu_out,    // output result
    output reg   cout,
    output       zero        // zero flag
);

    reg [7:0] result;

    assign alu_out = result;
    assign zero = (result == 8'b0);

    always @(*) begin

        cout = 1'b0;

        case(sel)

            // Arithmetic Operations
            4'b0000: {cout, result} = a + b;
            4'b0001: {cout, result} = a - b;
            4'b0010: result = a * b;
            4'b0011: result = (b != 0) ? (a / b) : 8'b0;

            // Logical Operations
            4'b0100: result = a & b;
            4'b0101: result = a | b;
            4'b0110: result = a ^ b;
            4'b0111: result = ~(a & b);
            4'b1000: result = ~(a | b);
            4'b1001: result = ~(a ^ b);
            4'b1010: result = ~a;

            // Shift/Rotate Operations
            4'b1011: result = a << 1;
            4'b1100: result = a >> 1;
            4'b1101: result = {a[6:0], a[7]};
            4'b1110: result = {a[0], a[7:1]};

            // Comparison Operation
            4'b1111: result = (a > b) ? 8'd1 : 8'd0;

            default: result = a + b;

        endcase
    end

endmodule
