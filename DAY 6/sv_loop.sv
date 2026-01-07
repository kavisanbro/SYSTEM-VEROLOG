`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2026 12:10:24 PM
// Design Name: 
// Module Name: sv_loop
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


module sv_loop;

 bit clk;

  always #10 clk = ~clk;
  initial begin
  	bit [3:0] counter;

    $display ("Counter = %0d", counter);      
  	for (counter = 2; counter < 14; counter = counter + 2) begin
    	@(posedge clk);
    	$display ("Counter = %0d", counter);      
    	  	end
    $display ("Counter = %0d", counter);      
    $finish;
  end
endmodule