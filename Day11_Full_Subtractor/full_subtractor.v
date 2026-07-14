module full_subtractor( input a, b, bin,
                        output diff, bout);
            
            //Krishna Patel
            
assign diff = ((a^b) ^ bin);
assign bout = (~a & b) | (~(a ^ b) & bin);         
            
endmodule
