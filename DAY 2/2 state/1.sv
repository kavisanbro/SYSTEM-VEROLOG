module two_state;
  bit kavi;
  int liyaa;
  initial begin
    kavi = 1;
    liyaa = 0;
    $display("initial: kavi = %b,liyaa = 0d",kavi,liyaa);
    repeat (5) begin
      liyaa = liyaa + 1;
      kavi = ~kavi;
      $display("step: kavi = %0b, liyaa = %0d",kavi,liyaa);
    end
  end
endmodule