`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2026 03:03:46 PM
// Design Name: 
// Module Name: forever_loop
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


module forever_loop;
  initial begin
    forever begin
      #5 $display ("Hello World !");
    end
  end
  initial
    #50 $finish;
endmodule