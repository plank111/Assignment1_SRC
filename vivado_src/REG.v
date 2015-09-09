`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Angel Lopez, Peter Lankisch
//////////////////////////////////////////////////////////////////////////////////


module REG(d, Clk, Rst, q);
    parameter DATAWIDTH = 64;
    input [DATAWIDTH-1:0] d;
    input Clk, Rst;
    output reg [DATAWIDTH-1:0] q;
    
    always @(posedge Clk)begin
        if (Rst)begin
            q <= 0;
        end
        else begin
            q <= d;
        end
    end
    
endmodule
