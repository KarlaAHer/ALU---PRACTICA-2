module multiplier5Bits (
    input wire [4:0] A,
    input wire [4:0] B,
    output wire [9:0] P
);

// Obtener la magnitud de los operandos
wire [4:0] magA, magB;

assign magA = A[4] ? (~A + 5'd1) : A;
assign magB = B[4] ? (~B + 5'd1) : B;


// Productos parciales
wire [9:0] PP0, PP1, PP2, PP3, PP4;

assign PP0 = {5'b00000, (magB & {5{magA[0]}})};
assign PP1 = {4'b0000,  (magB & {5{magA[1]}}), 1'b0};
assign PP2 = {3'b000,   (magB & {5{magA[2]}}), 2'b00};
assign PP3 = {2'b00,    (magB & {5{magA[3]}}), 3'b000};
assign PP4 = {1'b0,     (magB & {5{magA[4]}}), 4'b0000};


// Sumar los productos parciales
wire [9:0] r01, r23, r0123;
wire [9:0] producto_abs;

adder10Bits SUMA1 (.A(PP0),   .B(PP1), .S(r01));
adder10Bits SUMA2 (.A(PP2),   .B(PP3), .S(r23));
adder10Bits SUMA3 (.A(r01),   .B(r23), .S(r0123));
adder10Bits SUMA4 (.A(r0123), .B(PP4), .S(producto_abs));


// Determinar el signo final
wire signo;

assign signo = A[4] ^ B[4];


// Resultado final en complemento a dos
assign P = signo ? (~producto_abs + 10'd1) : producto_abs;

endmodule