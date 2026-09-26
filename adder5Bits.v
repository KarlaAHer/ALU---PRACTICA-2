module adder5Bits (
    input wire [4:0] A,
    input wire [4:0] B,
    input wire Cin,
    output wire [4:0] S,
    output wire Cout
);

wire c1, c2, c3, c4;

fullAdder FA0 (
    .A(A[0]),
    .B(B[0]),
    .Cin(Cin),
    .S(S[0]),
    .Cout(c1)
);

fullAdder FA1 (
    .A(A[1]),
    .B(B[1]),
    .Cin(c1),
    .S(S[1]),
    .Cout(c2)
);

fullAdder FA2 (
    .A(A[2]),
    .B(B[2]),
    .Cin(c2),
    .S(S[2]),
    .Cout(c3)
);

fullAdder FA3 (
    .A(A[3]),
    .B(B[3]),
    .Cin(c3),
    .S(S[3]),
    .Cout(c4)
);

fullAdder FA4 (
    .A(A[4]),
    .B(B[4]),
    .Cin(c4),
    .S(S[4]),
    .Cout(Cout)
);

endmodule