module struct;
  struct{
    logic [7:0] id;
    logic enable;
    logic write;
  }ctrl_signal;
  initial begin
    ctrl_signal.id = 8'hA5;
    ctrl_signal.enable = 1'b1;
    ctrl_signal.write = 1'b0;
    $display("ID = %h",ctrl_signal.id);
    $display(" Enable = %b",ctrl_signal enable);
    $display(" Write = %b",ctrl_signal write);
  end
endmodule