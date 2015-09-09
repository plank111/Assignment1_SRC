`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2015 11:14:51 PM
// Design Name: 
// Module Name: SHL_Testbench
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


module SHL_Testbench();

    reg [31:0] sh_amount, in_value;
    wire [31:0] out_value;
    


        SHL #(32) SHL_0(in_value, sh_amount, out_value);
        
        initial begin
              in_value <= 0'b0001; 
               sh_amount <= 1;
               
               #1;
               
               in_value <= 0'b0001; 
               sh_amount <= 3;
                              
                 #1;
        
              in_value <= 0'b0000010000; 
               sh_amount <= 4;
              
               #1;
        
               in_value <= 0'b1000000000000000000000000000000; 
               sh_amount <= 1;
               
               #1;
        
            in_value <= 0'b1000000000000000000000000000000; 
            sh_amount <= 2;
              
               #1;
               
               
               
           in_value <= 0'b1; 
           sh_amount <= 10;
              
               #1;


end





endmodule
