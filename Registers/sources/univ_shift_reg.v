`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2024 12:09:19 AM
// Design Name: 
// Module Name: univ_shift_reg
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


module univ_shift_reg
#(parameter N = 4)(
    input MSB_in,LSB_in,        //MSB_in for RSL , LSB_in for LSL
    input clk,
    input [N-1:0] I,
    input [1:0] s,
    input reset_n,        // ones it is triggered the FF goes off regardless of the clk (asynchronous)
    output [N-1:0] Q  
    );
    reg [N-1:0] Q_reg , Q_next;
    
    
    always @(posedge clk, negedge reset_n)
    begin
        if (!reset_n)
             Q_reg <= 1'b0;
        else
             Q_reg <= Q_next ;
    end
    
                     
    // next state logic
    always @(*)  // in always statement you can write always(*) and vivado will figure it out for you
    begin
         Q_next = Q_reg;
         case(s)                              //case statement
              2'b00:  Q_next = Q_reg;
              2'b01:  Q_next = {MSB_in,Q_reg[N-1:1]};
              2'b10:  Q_next = {Q_reg[N-2:0],LSB_in};
              2'b11:  Q_next = I;
              default:  Q_next = Q_reg;
         endcase     
    
    end
    assign Q = Q_reg;  
    
    
    
    
    
    
    
    
endmodule
