`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2024 05:57:33 PM
// Design Name: 
// Module Name: compare_storage_elements_tb
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


module compare_storage_elements_tb(

    );
    
    reg clk,D;
    wire Q_latch,Q_FF_pos,Q_FF_neg;
    
    
    compare_storage_elements uut(
        .D(D),
        .clk(clk),
        .Qa(Q_latch),
        .Qb(Q_FF_pos),
        .Qc(Q_FF_neg)
        );
        
    localparam T = 20;
    always
    begin
        clk = 1'b0;
        #(T/2);
        clk = 1'b1;
        #(T/2);
    end    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
endmodule
