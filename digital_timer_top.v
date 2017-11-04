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
module digital_timer_top (seg_0,seg_1,clk_50MHz,reset);
input clk_50MHz;
input reset;
output [7:0] seg_0, seg_1;
wire clk_2Hz;
wire [7:0] count;
wire [3:0] ones, tens, hundreds;
clk_generator clk_2_50(clk_2Hz,clk_50MHz);
counter_99 digital_counter(count,clk_2Hz,reset);
binary_to_BCD bcd_encoder(count,hundreds,tens,ones);
segment_display HEX_0 (seg_0, ones);
segment_display HEX_1 (seg_1, tens);
endmodule