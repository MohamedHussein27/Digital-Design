`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2024 01:17:17 PM
// Design Name: 
// Module Name: mux_generic_1bit
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


module mux_generic_1bit
    #(parameter INS=8)(
     input [INS-1:0]w,
     input [$clog2(INS)-1:0]s,
     output reg f
    );
    
    integer k;
    
    
    always @(w,s)
    begin
        f = 'bx;
        for(k=0;k < INS;k=k+1)
            if(k==s)
               f = w[k];
    end           
    
    
    
    
    
endmodule
