`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Angel Lopez, Peter Lankisch
//////////////////////////////////////////////////////////////////////////////////


module MUX2x1(a, b, sel, d);
    parameter DATAWIDTH = 64;
    input [DATAWIDTH-1:0] a;
    input [DATAWIDTH-1:0] b;
    input sel;
    output reg [DATAWIDTH-1:0] d;

    always @(a, b, sel) begin
        if (!sel) begin
	    d <= a;
	end
	else begin
	    d <= b;
	end
    end
    
endmodule
