`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2024 12:00:10 AM
// Design Name: 
// Module Name: adder_subtractor_tb
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


module adder_subtractor_tb(

    );
 //declare local and wire identifiers   
    parameter n = 4;
    reg [n-1:0] x ,y;
    reg add_n;
    wire [n-1:0] s;
    wire c_out,overflow;
    
 //instantiate the module under test
    adder_subtractor_with_overflow #(.n(n)) uut (
         .x(x),
         .y(y),
         .add_n(add_n),
         .s(s),
         .c_out(c_out),
         .overflow(overflow)     
    );
    
 //specify a stopwatch to stop the simulation
    initial
    begin 
        #100 $finish;
    end
    
 //generate stimuli, using initial and always
    initial
    begin
        add_n = 1'b0;
        x = 4'd5;
        y = 4'd6;
             
    end
    
  //display the output response (text or graphics or both)
    initial
    begin
      $monitor("time = %3d : x = %d \t y = %d \t add_n = %1b \t result = %3d \t cout = %1b \t overflow = %1b",
      $time , x , y, add_n , s , c_out , overflow
      );
    end  
    
    
    
    
    
endmodule
