`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2024 01:01:17 PM
// Design Name: 
// Module Name: mux_4x1_nbit
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


module mux_4x1_nbit
    #(parameter N=3)(
    input [N-1:0] w0,w1,w2,w3,
    input [1:0]s,
    output reg [N-1:0]f 
    );
    
    always @(w0,w1,w2,w3)
    begin
      /* 
       if(s==2'b00)
           f=w0;
       else if(s==2'b01)
           f=w1;
       else if(s==2'b10)
           f=w2;
       else if (s==2'b11)
           f=w3;
       else
          f='bx; */
          
       case(s)
          2'b00:f = w0;
          2'b01:f = w1;
          2'b10:f = w2;
          2'b11:f = w3;
       endcase   
             
                           
    end
           
    
    
    
endmodule
