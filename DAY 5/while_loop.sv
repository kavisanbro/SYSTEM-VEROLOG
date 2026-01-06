`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2026 02:31:19 PM
// Design Name: 
// Module Name: while_loop
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


module while_loop;
  int num = 1;
  initial begin
    while (num <= 5) begin
      $display("Number = %0d", num);
      num = num + 1;
    end
    $finish;
  end
endmodule