`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Angel Lopez, Peter Lankisch
//////////////////////////////////////////////////////////////////////////////////

module COMP_Testbench();
    reg [31:0] a_t, b_t;
    wire gt_t, lt_t, eq_t;
    
    COMP #(32) COMP_0(a_t, b_t, gt_t, lt_t, eq_t);
    
    initial begin
        a_t <= 5;
        b_t <= 2;
        #1;
        
        a_t <= 2;
        b_t <= 5;
        #1;
        
        a_t <= 5;
        b_t <= 5;
        #1;
        
    end
endmodule
