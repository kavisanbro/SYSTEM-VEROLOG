module continue_even;

  int i;

  initial begin
    for (i = 1; i <= 10; i++) begin
      if (i % 2 != 0)
        continue;              // Skip odd numbers
      $display("Even number = %0d", i);
    end
  end

endmodule
