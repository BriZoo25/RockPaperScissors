module ProjectSeven(
input [1:0]i,
output reg [6:0]o
);


// HEX out - rewire DE2
//  ---a---
// |       |
// f       b
// |       |
//  ---g---
// |       |
// e       c
// |       |
//  ---d---

always @(*)
begin
	case (i)	    // abcdefg
	2'd0: o = 7'b0000001;
   2'd1: o = 7'b1001111;
   2'd2: o = 7'b0010010;
  
    default: o = 7'b1111111;

	endcase
end

endmodule