`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2024 12:01:12 AM
// Design Name: 
// Module Name: adder_subtractor_tb1
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


module adder_subtractor_tb1(

    );
 //declare local and wire identifiers   
    parameter n = 4;
    reg [n-1:0] x ,y;
    reg add_n;
    wire [n-1:0] s;
    wire c_out,overflow;
    
 //instantiate the module under test
    adder_subtractor_with_overflow #(.n(n)) uutt (
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
       #40 $finish;
    end
    
 //generate stimuli, using initial and always
    initial
    begin
        add_n = 1'b0;
        x = 4'd5;
        y = 4'd6;
        
        #10
        add_n = 1'b1;      
    end
    
  //display the output response (text or graphics or both)

    
    
    
    
endmodule
