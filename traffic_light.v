module traffic_light(clk,rst,light,count);
input clk,rst;
output reg [2:0] light;
output reg [2:0] count;

parameter RED=3'b100, YELLOW=3'b010, GREEN=3'b001;

always@(posedge clk)
  begin
   if(rst)
   begin
     light<=RED;
     count<=0;
   end
   else
     begin
      case(light)
      
      RED: begin
       if(count==4)
       begin
        light<=YELLOW;
        count<=0;
       end
       else
        count<=count+1;
       end
 
      YELLOW: begin
      if(count==1)
      begin
       light<=GREEN;
       count<=0;
      end
      else
       count<=count+1;
      end

      GREEN: begin
      if(count==4)
      begin
       light<=RED;
       count<=0;
      end
      else
       count<=count+1;
      end

      default: begin
       light<=RED;
       count<=0;
      end
     endcase
  end
end
endmodule

