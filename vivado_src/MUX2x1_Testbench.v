`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Angel Lopez, Peter Lankisch
//////////////////////////////////////////////////////////////////////////////////


module MUX2x1_Testbench();
    reg [31:0] A_t, B_t;
    wire [31:0] S_t;
    reg SEL_t;

    MUX2x1 #(32) MUX2x1_0(A_t, B_t, SEL_t, S_t);
   
    // Test vectors (A good testbench would have many more)
    initial begin
       A_t <= 5; 
       B_t <= 10;
       SEL_t <= 0;
       #1;

       A_t <= 50; 
       B_t <= 7;
       SEL_t <= 1;
       #1;

       A_t <= 0; 
       B_t <= 0;
       SEL_t <= 0;
       #1;

       A_t <= 1000000; 
       B_t <= 34991;
       SEL_t <= 1;
       #1;
       
       SEL_t <= 0;
       #1;
    end

endmodule
