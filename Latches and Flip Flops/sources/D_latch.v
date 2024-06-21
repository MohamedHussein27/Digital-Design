`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2024 05:33:20 PM
// Design Name: 
// Module Name: D_latch
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


module D_latch(
     input clk,
     input D,
     output reg  Q
    );
    
    always @(clk,D)
    begin
       Q=Q;
       if(clk)
          Q=D;
       else
          Q=Q;
    end         
    
    
    
    
    
endmodule
