
module alu (
	input wire   [4:0] A,
	input wire [4:0] B,
	input wire [1:0] sel,
	output wire [9:0] Y,
	output wire error);
	
	wire [4:0] suma5, resta5;
	wire carry5,borrow5;
	wire[9:0]  suma10, resta10, mult10;
	wire ov_suma, ov_resta;
	
	adder5Bits sm (.A(A), . B(B), . Cin(1'b0),.S(suma5), .Cout(carry5));
	subtractor5Bits rs (.A(A), .B(B), .Bin(1'b0), .D(resta5), .Bout(borrow5));
	multiplier5Bits mp (.A(A), .B(B), .P(mult10));

	assign suma10 = {{5{suma5[4]}}, suma5};
	assign resta10 = {{5{resta5[4]}}, resta5};

	assign ov_suma = ~(A[4] ^ B[4]) & (A[4] ^ suma5[4]);
	assign ov_resta = (A[4] ^ B[4]) & (A[4] ^ resta5[4]);

	assign error = ((sel == 2'b00) & ov_suma) | ((sel == 2'b01) & ov_resta) | (sel == 2'b11);

	selector_alu SELECTOR (.suma10(suma10), .resta10(resta10), .mult10(mult10), .sel(sel), .Y(Y));

endmodule
