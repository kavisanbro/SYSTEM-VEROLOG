`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2026 02:26:07 PM
// Design Name: 
// Module Name: for_each
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


module for_each;
   bit [7:0] array [8];   
   initial begin  
      foreach (array [index]) begin
         array[index] = index;
      end
      foreach (array [index]) begin
         $display ("array[%0d] = 0x%0d", index, array[index]);
      end
   end
endmodule
