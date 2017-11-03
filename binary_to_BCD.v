/*
* It is necessary for our approach
* to display the output on a 7 seg display
* to know the every valuein the ones and
* the tens individually sothis module
* implements a binary to BCD converter
* to pass the output to the 7 seg display
* as digits.
* We are using the famous shift and add 3
* algorithm for the conversion 
*/
module binary_to_BCD (binary,hundreds, tens, ones);
input [7:0] binary;
output reg [3:0] hundreds;
output reg [3:0] tens;
output reg [3:0] ones;
integer i;
always @ (binary)
   begin
      hundreds = 4'b0000;
      tens = 4'b0000;
      ones = 4'b0000;
      for(i = 0; i < 8; i = i + 1)
         begin
         //in case the one of the outputs is >= 5 add 3
            if(hundreds >= 5)
               hundreds = hundreds + 3;
            if( tens >= 5)
               tens = tens + 3;
            if(ones >= 5)
               ones = ones + 3;
           //shift to the left by one every cycle   
            hundreds = hundreds << 1;
           //shift the tens to the hundreds
            hundreds[0] = tens[3];
            tens = tens << 1;
           //shift the ones to the tens
            tens[0] = ones [3];
            ones = ones << 1;
           //shift binary input to the ones
            ones[0] = binary [i];
         end
   end
endmodule 
               
               

endmodule