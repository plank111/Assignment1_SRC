`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Angel Lopez, Peter Lankisch
//////////////////////////////////////////////////////////////////////////////////


module REG_Testbench();
    reg [1:0] d_t;
    reg Clk_t, Rst_t;
    wire [1:0] q_t;
    
    REG #(2) REG_0(d_t, Clk_t, Rst_t, q_t);
    
    always begin
        Clk_t <= 0;
        #1;
        Clk_t <= 1;
        #1;
    end
    
    initial begin
        Rst_t <= 1;
        #4;
        Rst_t <=0;
        d_t <= 1;
        #4;
        d_t <= 3;
        #4;
        d_t <= 2;
        #4;
        d_t <= 0;
        #4;
        d_t <= 3;
        Rst_t <= 1;
        #4;
    end

endmodule
