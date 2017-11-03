module clk_generator (clk_50MHz, clk_2MHz);
input clk_50MHz;
reg [24:0] counter;
output reg clk_2MHz;
//this implementation assumes that the output clk starts as active low
initial
   begin
      counter <= 0;
      clk_2MHz <= 0;
   end
always @(posedge clk_50MHz)
   begin
      if(counter == 12499999)
         begin
            clk_2MHz <= ~clk_2MHz;
            counter <= 0;
         end
       else
         begin
            counter <= counter + 1;
         end
         
   end
endmodule
/*
*credits for this idea of clk generation goes to
*@Peter Green
*electronics stack exchange
*/      