`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Angel Lopez, Peter Lankisch
//////////////////////////////////////////////////////////////////////////////////


module SHL(a, sh_amt, d);
    parameter DATAWIDTH = 64;
    input [DATAWIDTH-1:0] a;
    input [DATAWIDTH-1:0] sh_amt;
    output reg [DATAWIDTH-1:0] d;

    always @(a, sh_amt)begin
        d <= a<<sh_amt;
    end
    
endmodule
