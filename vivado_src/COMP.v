`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Angel Lopez, Peter Lankisch
//////////////////////////////////////////////////////////////////////////////////


module COMP(a, b, gt, lt, eq);
    parameter DATAWIDTH = 64;
    input [DATAWIDTH-1:0] a;
    input [DATAWIDTH-1:0] b;
    output reg gt, lt, eq;
    
    always @(a,b)begin
        if (a > b) begin
	    gt <= 1;
	    lt <= 0;
	    eq <= 0;
	end
	else if (a < b) begin
	    gt <= 0;
	    lt <= 1;
	    eq <= 0;
	end
	else begin
	    gt <= 0;
	    lt <= 0;
	    eq <= 1;
	end
    end
    
endmodule
