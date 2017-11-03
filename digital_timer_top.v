/*
* The module should behave in the following
* pattern:
* 1- get the slower clk from high clk input
* 2- count on posedge of slow clk
* 3- convert counter output to BCD values
* 4- send the BCD values to segment display decoder
* for testing purposes we will temporarely add 
* a third segment display to make sure that
* the hundereds never exceed 0
*/
module digital_timer_top (seg_0,seg_1,seg_2,clk_50MHz,reset);
input clk_50MHz;
input reset;
output reg [3:0] seg_0, seg_1, seg_2;
endmodule