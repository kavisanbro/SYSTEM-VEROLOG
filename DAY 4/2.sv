module pa_ua;
  bit [3:0] [7:0] kavi [2] [4];
  initial begin
    foreach(each[i] [j])
      foreach(kavi[i][j])begin
        kavi [i] [j] = $random
        $display("kavi [%0d] [%0d] = 0%0h",i,j,kavi [i] [j]);
      end
    $display("kavi = %p",kavi);
    $display("kavi [0] [0] [2] =0x%0h",kavi [0] [0] [2]);
  end
endmodule

    
          
          