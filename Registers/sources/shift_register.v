`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2024 11:00:07 PM
// Design Name: 
// Module Name: shift_register
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


module shift_register
#(parameter N = 4)(
    input SI,        //serial input
    input clk,
    output [N-1:0] Q,   // if we care about the whole output (all 4 bits)
    output SO         //serial output (the last bit in shifting)
    );
    reg [N-1:0] Q_reg , Q_next;
    
    
    always @(posedge clk)
    begin
       Q_reg <= Q_next;
    end
    
    always @(SI,Q_reg) 
    begin
         Q_next = {SI,Q_reg[N-1:1]};     // for shifting right, {} are used in verilog for concatenation ,, 
                                         //SI starts at the MSB position and moves towards the LSB position with each subsequent right shift operation in the shift register
         // Q_next = {Q_reg[N-2:0],SI};  // for shifting left    
    end
    
    
    assign SO = Q_reg [0];
    assign Q = Q_reg;
       
endmodule
