`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2024 11:03:37 PM
// Design Name: 
// Module Name: rca_4bit
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


module rca_4bit(
    input [3:0] x , y,
    input c_in ,
    output [3:0] s,
    output c_out
    );
    
    wire [3:1] c;
    
    
   
    full_adder FA0 (
        .x1(x[0]),
        .y1(y[0]),
        .c_in(c_in),
        .s(s[0]),
        .c_out(c[1])
    );
 
    full_adder FA1 (
        .x1(x[1]),
        .y1(y[1]),
        .c_in(c[1]),
        .s(s[1]),
        .c_out(c[2])
    );    
    
    full_adder FA2 (
        .x1(x[2]),
        .y1(y[2]),
        .c_in(c[2]),
        .s(s[2]),
        .c_out(c[3])
    );    

    full_adder FA3 (
        .x1(x[3]),
        .y1(y[3]),
        .c_in(c[3]),
        .s(s[3]),
        .c_out(c_out)
    );    
endmodule
