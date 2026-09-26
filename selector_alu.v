	   module selector_alu (
    input wire [9:0] suma10,
    input wire [9:0] resta10,
    input wire [9:0] mult10,
    input wire [1:0] sel,
    output wire [9:0] Y
);



mux4_1 M0 (.D0(suma10[0]), .D1(resta10[0]), .D2(mult10[0]), .D3(1'b0), .S1(sel[1]), .S0(sel[0]), .Y(Y[0]));
mux4_1 M1 (.D0(suma10[1]), .D1(resta10[1]), .D2(mult10[1]), .D3(1'b0), .S1(sel[1]), .S0(sel[0]), .Y(Y[1]));
mux4_1 M2 (.D0(suma10[2]), .D1(resta10[2]), .D2(mult10[2]), .D3(1'b0), .S1(sel[1]), .S0(sel[0]), .Y(Y[2]));
mux4_1 M3 (.D0(suma10[3]), .D1(resta10[3]), .D2(mult10[3]), .D3(1'b0), .S1(sel[1]), .S0(sel[0]), .Y(Y[3]));
mux4_1 M4 (.D0(suma10[4]), .D1(resta10[4]), .D2(mult10[4]), .D3(1'b0), .S1(sel[1]), .S0(sel[0]), .Y(Y[4]));
mux4_1 M5 (.D0(suma10[5]), .D1(resta10[5]), .D2(mult10[5]), .D3(1'b0), .S1(sel[1]), .S0(sel[0]), .Y(Y[5]));
mux4_1 M6 (.D0(suma10[6]), .D1(resta10[6]), .D2(mult10[6]), .D3(1'b0), .S1(sel[1]), .S0(sel[0]), .Y(Y[6]));
mux4_1 M7 (.D0(suma10[7]), .D1(resta10[7]), .D2(mult10[7]), .D3(1'b0), .S1(sel[1]), .S0(sel[0]), .Y(Y[7]));
mux4_1 M8 (.D0(suma10[8]), .D1(resta10[8]), .D2(mult10[8]), .D3(1'b0), .S1(sel[1]), .S0(sel[0]), .Y(Y[8]));
mux4_1 M9 (.D0(suma10[9]), .D1(resta10[9]), .D2(mult10[9]), .D3(1'b0), .S1(sel[1]), .S0(sel[0]), .Y(Y[9]));

endmodule