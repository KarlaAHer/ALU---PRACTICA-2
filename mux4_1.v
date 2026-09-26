module mux4_1 (
    input wire D0,
    input wire D1,
    input wire D2,
    input wire D3,
    input wire S1,
    input wire S0,
    output wire Y
);

wire nS1, nS0;
wire w0, w1, w2, w3;

// Negaciones
not U1(nS1, S1);
not U2(nS0, S0);

// Productos
and U3(w0, nS1, nS0, D0);
and U4(w1, nS1, S0, D1);
and U5(w2, S1, nS0, D2);
and U6(w3, S1, S0, D3);

// Suma lógica
or U7(Y, w0, w1, w2, w3);

endmodule