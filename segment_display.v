/*
* This module decodes a BCD
* number to its equivalent segment
* display code according to the
* implemented pin planning
*/
module segment_display (num, segment_code);
input [3:0] num;
output reg [7:0] segment_code;
always @ (num)
   begin
      case(num)
         0: 8'b11_00_00_00;
         1: 8'b11_11_10_01;
         2: 8'b10_10_01_00;
         3: 8'b10_11_00_00;
         4: 8'b10_01_10_01;
         5: 8'b10_01_00_10;
         6: 8'b10_00_00_10;
         7: 8'b11_11_10_00;
         8: 8'b10_00_00_00;
         9: 8'b10_01_00_00;
      endcase
   end
endmodule