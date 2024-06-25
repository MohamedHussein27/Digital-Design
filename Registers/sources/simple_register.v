`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2024 10:04:57 PM
// Design Name: 
// Module Name: simple_register
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


module simple_register
#(parameter N = 4)(
input [N-1 : 0] I ,
input clk,
output [N-1 : 0] Q
    );
    //register part (FF)
    reg [N-1 : 0] Q_reg , Q_next;
   
    always @(posedge clk)
    begin
        Q_reg <= Q_next;                 //using non blocking assignment with sequential elements
    end
    //actual logic (next state logic)
    always @(I)
    begin
       Q_reg = I;
    end   
    //output logic
    assign Q = Q_reg;    
  // in registers: seperate the registers (FF) from the actual logic and the output logic   
 // this is the way to make a basic register >> just remove parameter N    
endmodule
