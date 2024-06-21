`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2024 06:12:23 PM
// Design Name: 
// Module Name: decoder_generic
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


module decoder_generic
     #(parameter n = 4)
(
     input [n-1:0]w,
     input en,
     output reg [0 : 2**n-1]y
    );
    always @(w,en)
    begin
       y = 'b0;
       
       if(en)
          y[w]=1'b1;
       else 
          y = 'b0;
     end        
    
    
    
    
    
    
    
endmodule
