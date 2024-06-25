`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2024 10:28:45 PM
// Design Name: 
// Module Name: simple_register_load
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


module simple_register_load
#(parameter N = 4)(
input [N-1 : 0] I ,
input load,
input clk,
output [N-1 : 0] Q
    );
    reg [N-1 : 0] Q_reg , Q_next;
    always @(posedge clk)
    begin
        Q_reg <= Q_next;                 //using non blocking assignment with sequential elements
    end
    always @(I,load)
    begin
        if (load)                       //used a MUX to select if the input to the reg will be I or Q_reg
            Q_next = I;
        else
            Q_next = Q_reg; 
    end   
    
 assign Q = Q_reg;    
    
endmodule
