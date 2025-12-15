module string_methods;

  string s = "Kaviyarasan";

  initial begin
    $display("Original  : %s", s);
    $display("Uppercase : %s", s.toupper());
    $display("Lowercase : %s", s.tolower());
    $display("Length    : %0d", s.len());
  end

endmodule
