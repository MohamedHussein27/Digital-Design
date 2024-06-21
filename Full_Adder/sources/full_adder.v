`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2024 10:04:43 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
     input x1,y1,c_in,
     output s,c_out
    );
    wire c1, s1 , c2 , s2 ;
    
    half_adder HA1 (    
    .x(x1),
    .y(y1),
    .c(c1),
    .s(s1)
    );
    
    half_adder HA2 (
    .x(s1),
    .y(c_in),
    .c(c2),
    .s(s)
    );
    
    
    assign c_out = c2 | c1 ;
    
endmodule
