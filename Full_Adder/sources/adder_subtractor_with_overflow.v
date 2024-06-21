`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2024 05:55:36 PM
// Design Name: 
// Module Name: adder_subtractor_with_overflow
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


module adder_subtractor_with_overflow
  #(parameter n = 4)
   (
    input [n-1:0] x ,y,
    input add_n,
    output [n-1:0] s,
    output c_out,
    output over_flow
   );
   wire [n-1:0] y_xored ;
   generate
       genvar k ;
       for (k=0;k<n;k=k+1)
       begin : bit
          assign y_xored[k] = y[k]^add_n;
       end
   endgenerate       
   
   rca_nbit #(.n(n)) A0 (
             .x(x),
             .y(y_xored),
             .c_in(add_n),
             .s(s),
             .c_out(c_out)
             );
   
   assign over_flow = ( x[n-1] & y_xored[n-1] & ~s[n-1] ) | ( ~x[n-1] & ~y_xored[n-1] & s[n-1] );
   
   
   
   
   
   
endmodule