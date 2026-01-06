module queue_random;
class pkt;
  rand int data[$];
  constraint size_c{
    data.size()inside{[5:10]};
  }
  constraint range_c{
    foreach (data[i])
      data[i]inside{[0:255]};
  }
  end class
    pkt p=new();
    initial begin
      p.randomize();
      $display("Randomized Queue = %p",p.data);
    end
  