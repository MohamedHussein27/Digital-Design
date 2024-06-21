`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2024 03:06:47 PM
// Design Name: 
// Module Name: adder_subtactor_nbit
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


module adder_subtactor_nbit
    #(parameter n = 4)
    (
     input [n-1:0] x ,y,
     input add_n,
     output [n-1:0] s,
     output c_out,
     output overflow
    );
    wire [n-1:0] y_xored ;
    generate
        genvar k ;
        for (k=0;k<n;k=k+1)
        begin : bit
           assign y_xored[k] = y[k]^add_n;
        end
    endgenerate       
    
    rca_nbit #(.n(n)) A0 (
              .x(x),
              .y(y_xored),
              .c_in(add_n),
              .s(s),
              .c_out(c_out)
              );
    
    
    
    
    
    
    
    
endmodule
