module unpacked_array;
  byte 	kavi [2][4]; 	
	initial begin
      foreach (kavi[i])
        foreach (kavi[i][j]) begin
            kavi[i][j] = $random;
          $display ("kavi[%0d][%0d] = 0x%0h", i, j, kavi[i][j]);
			end
      $display ("kavi = %p", kavi);
	end
endmodule
