`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Angel Lopez, Peter Lankisch
//////////////////////////////////////////////////////////////////////////////////


module SUB(a, b, diff);
    parameter DATAWIDTH = 64;
    input [DATAWIDTH-1:0] a;
    input [DATAWIDTH-1:0] b;
    output reg [DATAWIDTH-1:0] diff;

    always @(a,b)begin
        diff <= a-b;
    end
    
endmodule
