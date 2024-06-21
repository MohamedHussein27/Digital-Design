`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2024 12:56:28 PM
// Design Name: 
// Module Name: mux_2x1_nbit
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


module mux_2x1_nbit
   #(parameter N = 3) 
   (
     input [N-1:0] w0,w1,
     input s ,
     output reg [N-1:0]f 

    );
    
    always @(w0,w1,s)
    begin
        f = s?w1:w0;
    end
    
        
     
endmodule
