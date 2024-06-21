`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2024 11:43:52 AM
// Design Name: 
// Module Name: multi_adders
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


module multi_adders(
      input[15:0] a,b,
      output [15:0] s_ab,
      output c_out_ab,
      
      input [31:0] x,y,
      output [31:0] s_xy,
      output c_out_xy
    );
     
    rca_nbit #(.n(16)) adder_16(
        .x(a),
        .y(b),
        .s(s_ab),
        .c_out(c_out_ab),
        .c_in(0)
    );
    
    rca_nbit #(.n(32)) adder_32(
        .x(x),
        .y(y),
        .s(s_xy),
        .c_out(c_out_xy),
        .c_in(0)
    );
    
    
    
    
    
endmodule
