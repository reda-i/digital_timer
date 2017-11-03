/*
* This module decodes a BCD
* number to its equivalent segment
* display code according to the
* implemented pin planning
*/
module segment_display (num, segment_code);
input [3:0] num;
output reg [7:0] segment_code;
endmodule