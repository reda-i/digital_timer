module counter_99 (count, clk, reset);
input clk;
input reset;
//This implementation assumes that the counter resets on active low
output reg [7:0] count;
initial
   begin
      //start counter with 0;
      count <= 8'b00_00_00_00;
   end
always @ (posedge clk, negedge reset)
   begin
      if(~reset)
         begin
         //reset counter on active low
            count <= 8'b00_00_00_00;
         end
      else
         begin
            //if counter is not 99 increment else reset
            if(count != 8'd99)
               begin
                  count <= count + 1;
               end
             else
               begin
                  count <= 8'b00_00_00_00;
               end
          end
   end
endmodule