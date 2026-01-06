`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: seyon semicon
// Engineer: kaviyarsan
// 
// Create Date: 01/06/2026 11:14:52 AM
// Design Name: 
// Module Name: array_datatype
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
////////////////////////////////////////////////////////////////////////////////

module sv_datatypes_arrays_demo;
  bit        flag;        
  logic      valid;       
  logic [7:0] addr;       
  typedef enum logic [1:0] {
    IDLE,
    READ,
    WRITE,
    DONE
  } state_t;
  state_t curr_state;
  typedef struct packed {
    logic [7:0]  address;
    logic [31:0] data;
    logic        we;
  } packet_t;
  packet_t pkt;
  logic [7:0] mem [0:3];
  int dyn_arr[];
  int assoc_arr[string];
  int q[$];
  class trans;
    rand int payload[4];
    constraint c1 {
      foreach (payload[i])
        payload[i] inside {[10:50]};
    }
  endclass
  trans tr;
  initial begin
    $display("---- SYSTEMVERILOG DATA TYPES + ARRAYS DEMO ----");
    flag  = 1;
    valid = 1'b1;
    addr  = 8'hA5;
    curr_state = READ;
    pkt.address = 8'h10;
    pkt.data    = 32'hDEADBEEF;
    pkt.we      = 1'b1;
    mem[0] = 8'h11;
    mem[1] = 8'h22;
    mem[2] = 8'h33;
    mem[3] = 8'h44;
    dyn_arr = new[4];
    dyn_arr = '{100,200,300,400};
    assoc_arr["AXI"] = 32;
    assoc_arr["SPI"] = 8;
    q.push_back(10);
    q.push_back(20);
    q.push_front(5);
    tr = new();
    tr.randomize();
    $display("Flag=%0d Valid=%0b Addr=%h", flag, valid, addr);
    $display("State=%0d Packet Addr=%h Data=%h WE=%b",
              curr_state, pkt.address, pkt.data, pkt.we);

    foreach (mem[i])
      $display("mem[%0d]=%h", i, mem[i]);

    foreach (dyn_arr[i])
      $display("dyn_arr[%0d]=%0d", i, dyn_arr[i]);

    foreach (assoc_arr[key])
      $display("assoc_arr[%s]=%0d", key, assoc_arr[key]);

    foreach (q[i])
      $display("queue[%0d]=%0d", i, q[i]);

    foreach (tr.payload[i])
      $display("rand payload[%0d]=%0d", i, tr.payload[i]);

    $display("---- END ----");
  end

endmodule           
