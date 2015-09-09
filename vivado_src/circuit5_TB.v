`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2015 09:06:37 PM
// Design Name: 
// Module Name: circuit5_TB
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


module circuit5_TB();




reg [63:0] a,b,c;

reg clk,rst;

    wire [31:0] z,x;
    
    circuit5   CIRC5_0(a,b,c,z,x,clk,rst);




    always begin
    clk<=0;
    #1;
    clk<=1;
    #1;
    end


        
        
        initial begin
             rst<=0;
             a<=1;
             b<=1;
             c<=1;
          
               
               #1;
               
               rst<=0;
                            a<=2;
                            b<=2;
                            c<=2;
                              
                 #1;
                 #4
        
             rst<=0;
                     a<=3;
                          b<=3;
                          c<=2;
              
               #4;
        
             


end


endmodule
