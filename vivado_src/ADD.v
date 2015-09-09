`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Angel Lopez, Peter Lankisch
//////////////////////////////////////////////////////////////////////////////////


module ADD(a, b, sum);
    parameter DATAWIDTH = 64;
    input [DATAWIDTH-1:0] a;
    input [DATAWIDTH-1:0] b;
    output reg [DATAWIDTH-1:0] sum;
    
    always @(a,b)begin
        sum <= a+b;
    end
    
endmodule
