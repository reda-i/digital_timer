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
output reg [7:0] seg_0, seg_1, seg_2;
wire clk_2MHz;
wire [7:0] count;
wire [3:0] ones, tens, hundreds;
clk_generator(clk_2MHz,clk_50MHz);
counter_99(count,clk_2MHz,reset);
binary_to_BCD(count,hundreds,tens,ones);
segment_display HEX_0 (ones, seg_0);
segment_display HEX_1 (tens, seg_1);
segment_display HEX_2 (hundreds, seg_2);
endmodule