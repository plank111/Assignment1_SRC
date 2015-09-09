`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2015 07:14:17 PM
// Design Name: 
// Module Name: 474a_circuit5
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


module circuit5(a,b,c,
                     z,x  , clk,rst);

  parameter  IN_WIDTH  = 64;
  parameter  OUT_WIDTH  = 32;
    
    input [IN_WIDTH-1:0] a,b,c ;
    input  clk, rst;
    output [OUT_WIDTH-1:0] z,x ; 
    
    wire dLTe , dEQe ; 
    wire gt;
    wire [IN_WIDTH-1:0] d,e,f,g,h, xrin , zrin ,greg , hreg;
    
    
    //adders for a b c d e f
    ADD #(IN_WIDTH) ADDER_0 (a, b, d);
     ADD #(IN_WIDTH) ADDER_1 (a, c, e);
      SUB #(IN_WIDTH) SUBTRACT_0 (a, b, f);
      COMP #(IN_WIDTH) COMPARATOR_0(d,e, gt, dLTe, dEQe);
     MUX2x1 #(IN_WIDTH) CONDITION_0(e, d, dLTe,g);
      MUX2x1 #(IN_WIDTH) CONDITION_1(f, g, dEQe , h);
      
      //registers for greg and hreg
      REG #(IN_WIDTH) REGISTER_0 (g, clk, rst, greg);
       REG #(IN_WIDTH) REGISTER_1 (h, clk, rst, hreg);
      
      //shift right and left modules by dLTe and dEQe
      SHL #(IN_WIDTH) SHIFTLEFT_0(hreg, {63'h0 ,dLTe}, xrin);
      SHR #(IN_WIDTH) SHIFTRIGHT_0(greg,{63'h0 ,dEQe} , zrin);
      
      //registers for output
       REG #(OUT_WIDTH) REGISTER_2 (xrin[OUT_WIDTH-1:0], clk, rst, x);
        REG #(OUT_WIDTH) REGISTER_3 (zrin[OUT_WIDTH-1:0], clk, rst, z);
      
 

endmodule
