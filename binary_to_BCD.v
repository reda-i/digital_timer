/*
* It is necessary for our approach
* to display the output ona 7 seg display
* to know the every valuein the ones and
* the tens individually sothis module
* implements a binary to BCD converter
* to pass the output to the 7 seg display
* as digits.
*/
module binary_to_BCD (binary, tens, ones);
input [7:0] binary;
output reg [3:0] tens;
output reg [3:0] ones;

endmodule