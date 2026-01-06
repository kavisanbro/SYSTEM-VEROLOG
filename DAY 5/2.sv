module array_example;

  int arr[6] = '{12,13,32,31,43,42};

  initial begin
    foreach (arr[i])
      $display("arr[%0d]=%0d", i, arr[i]);

    arr[2] = 49;
    arr.sort();

    $display("After modification and sort:");
    foreach (arr[i])
      $display("arr[%0d]=%0d", i, arr[i]);
  end

endmodule
