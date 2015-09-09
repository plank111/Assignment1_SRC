`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2015 06:02:22 PM
// Design Name: 
// Module Name: 474a_circuit4
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


module circuit4(a,b,c,d,e,f,g,h,i,j,l,m,n,o,p,final_value,clk,rst);
    
parameter    IN_WIDTH = 8;
parameter    OUT_WIDTH = 32;
    
    input [IN_WIDTH-1:0] a,b,c,d,e,f,g,h,i,j,l,m,n,o,p;
    input clk,rst;
    output [OUT_WIDTH-1:0] final_value; //final is a keyword 
    
    wire [OUT_WIDTH-1:0] t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14;
     
     
     
    ADD #(OUT_WIDTH) ADDER_0 ({24'h0,a},{24'h0,b},t1);
    ADD #(OUT_WIDTH) ADDER_1 (t1,{24'h0,c},t2);
    ADD #(OUT_WIDTH) ADDER_2 (t2,{24'h0,d},t3);
    ADD #(OUT_WIDTH) ADDER_3 (t3,{24'h0,e},t4);
    ADD #(OUT_WIDTH) ADDER_4 (t4,{24'h0,f},t5);
    ADD #(OUT_WIDTH) ADDER_5 (t5,{24'h0,g},t6);
    ADD #(OUT_WIDTH) ADDER_6 (t6,{24'h0,h},t7);
    ADD #(OUT_WIDTH) ADDER_7 (t7,{24'h0,i},t8);
    ADD #(OUT_WIDTH) ADDER_8 (t8,{24'h0,j},t9);
    ADD #(OUT_WIDTH) ADDER_9 (t9,{24'h0,l},t10);
    ADD #(OUT_WIDTH) ADDER_10 (t10,{24'h0,m},t11);
    ADD #(OUT_WIDTH) ADDER_11 (t11,{24'h0,n},t12);
    ADD #(OUT_WIDTH) ADDER_12 (t12,{24'h0,o},t13);
    ADD #(OUT_WIDTH) ADDER_13 (t13,{24'h0,p},t14);
    REG #(OUT_WIDTH) REGISTER_0 (t14, clk, rst, final_value);
    
   
endmodule
