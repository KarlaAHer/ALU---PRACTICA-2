module adder10Bits (
    input wire [9:0] A,
    input wire [9:0] B,
    output wire [9:0] S
);

wire [8:0] c;

fullAdder FA0 (.A(A[0]), .B(B[0]), .Cin(1'b0), .S(S[0]), .Cout(c[0]));
fullAdder FA1 (.A(A[1]), .B(B[1]), .Cin(c[0]), .S(S[1]), .Cout(c[1]));
fullAdder FA2 (.A(A[2]), .B(B[2]), .Cin(c[1]), .S(S[2]), .Cout(c[2]));
fullAdder FA3 (.A(A[3]), .B(B[3]), .Cin(c[2]), .S(S[3]), .Cout(c[3]));
fullAdder FA4 (.A(A[4]), .B(B[4]), .Cin(c[3]), .S(S[4]), .Cout(c[4]));
fullAdder FA5 (.A(A[5]), .B(B[5]), .Cin(c[4]), .S(S[5]), .Cout(c[5]));
fullAdder FA6 (.A(A[6]), .B(B[6]), .Cin(c[5]), .S(S[6]), .Cout(c[6]));
fullAdder FA7 (.A(A[7]), .B(B[7]), .Cin(c[6]), .S(S[7]), .Cout(c[7]));
fullAdder FA8 (.A(A[8]), .B(B[8]), .Cin(c[7]), .S(S[8]), .Cout(c[8]));
fullAdder FA9 (.A(A[9]), .B(B[9]), .Cin(c[8]), .S(S[9]), .Cout());

endmodule