module alu8_top(
    input  [7:0] A,
    input  [7:0] B,
    input  [2:0] SEL,
    input        DIR,
    output reg [7:0] Y,
    output       COUT,
    output       BORROW,
    output       ZERO
);

// Internal wires
wire [7:0] SUM;
wire [7:0] DIFF;
wire [7:0] AND_OUT;
wire [7:0] OR_OUT;
wire [7:0] XOR_OUT;
wire [7:0] NOT_OUT;
wire [7:0] SHIFT_OUT;

// Module Instantiations
adder8 U1 (
    .A(A),
    .B(B),
    .SUM(SUM),
    .COUT(COUT)
);

subtractor8 U2 (
    .A(A),
    .B(B),
    .DIFF(DIFF),
    .BORROW(BORROW)
);

and8 U3 (
    .A(A),
    .B(B),
    .Y(AND_OUT)
);

or8 U4 (
    .A(A),
    .B(B),
    .Y(OR_OUT)
);

xor8 U5 (
    .A(A),
    .B(B),
    .Y(XOR_OUT)
);

not8 U6 (
    .A(A),
    .Y(NOT_OUT)
);

shifter8 U7 (
    .A(A),
    .DIR(DIR),
    .Y(SHIFT_OUT)
);

// ALU Operation Selection
always @(*) begin
    case (SEL)
        3'b000: Y = SUM;        // Addition
        3'b001: Y = DIFF;       // Subtraction
        3'b010: Y = AND_OUT;    // AND
        3'b011: Y = OR_OUT;     // OR
        3'b100: Y = XOR_OUT;    // XOR
        3'b101: Y = NOT_OUT;    // NOT
        3'b110: Y = SHIFT_OUT;  // Shift
        3'b111: Y = 8'b00000000;// Reserved
        default: Y = 8'b00000000;
    endcase
end

// Zero Flag
assign ZERO = (Y == 8'b00000000);

endmodule
