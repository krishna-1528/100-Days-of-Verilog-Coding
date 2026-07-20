`timescale 1ns / 1ps
//krishna
module decoder_2_4( input [1:0]I,
                    input En,
                    output reg [3:0]D                  
    );
    
    always@(*) begin
    
        if (!En) begin
            D = 4'b00_00;
        end
        
        else begin
            
            case(I)
            
                2'b00 : D = 4'b00_01;
                2'b01 : D = 4'b00_10;    
                2'b10 : D = 4'b01_00;
                2'b11 : D = 4'b10_00; 
              
                default : D = 4'b00_00;
             endcase
             
           end
           
         end       
    
endmodule
