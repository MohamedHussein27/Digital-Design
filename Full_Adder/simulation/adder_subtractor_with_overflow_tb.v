`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2024 10:58:35 AM
// Design Name: 
// Module Name: adder_subtractor_with_overflow_tb
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


module adder_subtractor_with_overflow_tb(

    );
      
       parameter n = 4;
       reg [n-1:0] x ,y;
       reg add_n;
       wire [n-1:0] s;
       wire c_out,over_flow;
       
  
       adder_subtractor_with_overflow #(.n(n)) uutt (
            .x(x),
            .y(y),
            .add_n(add_n),
            .s(s),
            .c_out(c_out),
            .over_flow(over_flow)         
       );
       
   
     initial
     begin 
          #40 $finish;
     end
       
     initial
     begin
           add_n = 1'b0;
           x = 4'd5;
           y = 4'd3;
           
           #20
           add_n = 1'b1;
           
                 
     end

endmodule
