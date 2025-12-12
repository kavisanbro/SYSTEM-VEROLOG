module bit_type;
  bit a;
  bit b;
  bit y;
  bit [3:0]data;
  initial begin
    a = 1;
    b = 0;
    data = 4'b1101;
    y = a & b;
    $display ("a = %0b",a);
    $display ("b = %0b",b);
    $display ("data = %0b",data);
    $sisplay ("y = %0b (a & b)",y);
  end
endmodule