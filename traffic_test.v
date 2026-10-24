module traffic_test;

reg clk,rst;
wire[2:0] light;
wire[2:0]count;
traffic_light tl(clk,rst,light,count);

initial
begin
  clk=0;
  rst=1;
  #10 rst=0;
  #100 $finish;
end 

always #5 clk= ~clk;

endmodule

 