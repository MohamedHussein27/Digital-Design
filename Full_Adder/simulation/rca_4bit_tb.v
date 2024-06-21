`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2024 10:40:49 AM
// Design Name: 
// Module Name: rca_4bit_tb
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


module rca_4bit_tb(

    );
    
    reg [3:0] x,y;
    reg c_in;
    wire [3:0] s;
    wire c_out;
    
    rca_4bit uut (
       .x(x),
       .y(y),
       .s(s),
       .c_in(c_in),
       .c_out(c_out)
    );
    
    
    initial
    begin
         #100 $finish;
    end
    
    
    initial
    begin
        x = 4'd5;
        y = 4'd6;
        c_in = 1'b0;
        
    end
          
    
    
    
    
    
    
endmodule
