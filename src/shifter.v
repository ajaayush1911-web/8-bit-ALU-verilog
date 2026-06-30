module shifter8 (
    input  [7:0] A,
    input        DIR,      // 0 = Left Shift, 1 = Right Shift
    output [7:0] Y
);

assign Y = (DIR == 1'b0) ? (A << 1) : (A >> 1);

endmodule