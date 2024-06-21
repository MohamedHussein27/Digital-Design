`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2024 01:27:34 PM
// Design Name: 
// Module Name: priority_encoder_4x2
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


module priority_encoder_4x2(
      input[3:0] w,
      output reg [1:0]y,
      output z
    );
    
    assign z = |w;
    
    always @(w)
    begin
       y=2'bxx;
       
       if(w[3])
          y=3;
       else if (w[2])
          y=2;
       else if (w[1])
          y=1;
       else if (w[0])
          y=0;
       else
          y=2'bxx;
          
      /*    
       casex(w)
         4'b1xxx:y=3;
         4'b01xx:y=2;
         4'b001x:y=1;
         4'b0001:y=0;
         default:y=2'bxx;
       endcase
       */
       
    end     
            
          
          
          
          
        
       
    
       
    
    
    
    
    
    
    
endmodule
