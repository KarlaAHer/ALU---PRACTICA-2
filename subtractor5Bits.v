module subtractor5Bits (
    input wire [4:0] A,
    input wire [4:0] B,
    input wire Bin,
    output wire [4:0] D,
    output wire Bout
);

wire b1, b2, b3, b4;

full_subtractor FS0 (
    .A(A[0]),
    .B(B[0]),
    .Bin(Bin),
    .D(D[0]),
    .Bout(b1)
);

full_subtractor FS1 (
    .A(A[1]),
    .B(B[1]),
    .Bin(b1),
    .D(D[1]),
    .Bout(b2)
);

full_subtractor FS2 (
    .A(A[2]),
    .B(B[2]),
    .Bin(b2),
    .D(D[2]),
    .Bout(b3)
);

full_subtractor FS3 (
    .A(A[3]),
    .B(B[3]),
    .Bin(b3),
    .D(D[3]),
    .Bout(b4)
);

full_subtractor FS4 (
    .A(A[4]),
    .B(B[4]),
    .Bin(b4),
    .D(D[4]),
    .Bout(Bout)
);

endmodule