`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2015 10:41:47 AM
// Design Name: 
// Module Name: SUB_Testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SUB_Testbench();


   reg [31:0] A_t, B_t;
   wire [31:0] SUM_t, SUB_t, MUL_t;

   ADD #(32) ADD_0(A_t, B_t, SUM_t);
   SUB #(32) SUB_0(A_t, B_t, SUB_t);
   MUL #(32) MUL_0(A_t, B_t, MUL_t);
   
   // Test vectors (A good testbench would have many more)
   initial begin
      A_t <= 5; 
      B_t <= 10;
      #1;

      A_t <= 50; 
      B_t <= 7;
      #1;

      A_t <= 0; 
      B_t <= 0;
      #1;

      A_t <= 1000000; 
      B_t <= 34991;
      #1;
   end
endmodule


   
endmodule
