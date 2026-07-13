module half_sub( input a,b, 
                 output d,bout
);
  //Krishna Patel
assign d = (a^b);                 
assign bout = (~a&b);                 
                 
endmodule
