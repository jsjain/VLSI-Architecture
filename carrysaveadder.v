module full_adder_1b ( a ,b ,c ,sum ,carry );

output sum ;
output carry ;

input a ;
input b ;
input c ;

assign sum = a ^ b ^ c;
assign carry = (a&b) | (b&c) | (c&a);

endmodule
// if we use all partial products of 16 bits instead of variable bits
/*
module sixteen_bit_carrysaveadder(
input [15:0] in1,
input [15:0] in2,
inout [15:0] in3,
output [15:0] o1,
output [15:0] o2
);

  full_adder_1b f1 ( in1[0] ,in2[0] ,in3[0] ,o1[0] ,o2[0] );
  full_adder_1b f2 ( in1[1] ,in2[1] ,in3[1] ,o1[1] ,o2[1] );
  full_adder_1b f3 ( in1[2] ,in2[2] ,in3[2] ,o1[2] ,o2[2] );
  full_adder_1b f4 ( in1[3] ,in2[3] ,in3[3] ,o1[3] ,o2[3] );
  full_adder_1b f5 ( in1[4] ,in2[4] ,in3[4] ,o1[4] ,o2[4] );
  full_adder_1b f6 ( in1[5] ,in2[5] ,in3[5] ,o1[5] ,o2[5] );
  full_adder_1b f7 ( in1[6] ,in2[6] ,in3[6] ,o1[6] ,o2[6] );
  full_adder_1b f8 ( in1[7] ,in2[7] ,in3[7] ,o1[7] ,o2[7] );
  full_adder_1b f9 ( in1[8] ,in2[8] ,in3[8] ,o1[8] ,o2[8] );
  full_adder_1b f10 ( in1[9] ,in2[9] ,in3[9] ,o1[9] ,o2[9] );
  full_adder_1b f11 ( in1[10] ,in2[10] ,in3[10] ,o1[10] ,o2[10] );
  full_adder_1b f12 ( in1[11] ,in2[11] ,in3[11] ,o1[11] ,o2[11] );
  full_adder_1b f13 ( in1[12] ,in2[12] ,in3[12] ,o1[12] ,o2[12] );
  full_adder_1b f14 ( in1[13] ,in2[13] ,in3[13] ,o1[13] ,o2[13] );
  full_adder_1b f15 ( in1[14] ,in2[14] ,in3[14] ,o1[14] ,o2[14] );
  full_adder_1b f16 ( in1[15] ,in2[15] ,in3[15] ,o1[15] ,o2[15] );

endmodule */


module carrysaveadder_15_15_15_15_16(
input [14:0] in1,
input [14:0] in2,
inout [14:0] in3,
output [14:0] o1, // to store sum
output [15:0] o2 // to store carry
);

  full_adder_1b f1 ( in1[0] ,in2[0] ,in3[0] ,o1[0] ,o2[1] );
  full_adder_1b f2 ( in1[1] ,in2[1] ,in3[1] ,o1[1] ,o2[2] );
  full_adder_1b f3 ( in1[2] ,in2[2] ,in3[2] ,o1[2] ,o2[3] );
  full_adder_1b f4 ( in1[3] ,in2[3] ,in3[3] ,o1[3] ,o2[4] );
  full_adder_1b f5 ( in1[4] ,in2[4] ,in3[4] ,o1[4] ,o2[5] );
  full_adder_1b f6 ( in1[5] ,in2[5] ,in3[5] ,o1[5] ,o2[6] );
  full_adder_1b f7 ( in1[6] ,in2[6] ,in3[6] ,o1[6] ,o2[7] );
  full_adder_1b f8 ( in1[7] ,in2[7] ,in3[7] ,o1[7] ,o2[8] );
  full_adder_1b f9 ( in1[8] ,in2[8] ,in3[8] ,o1[8] ,o2[9] );
  full_adder_1b f10 ( in1[9] ,in2[9] ,in3[9] ,o1[9] ,o2[10] );
  full_adder_1b f11 ( in1[10] ,in2[10] ,in3[10] ,o1[10] ,o2[11] );
  full_adder_1b f12 ( in1[11] ,in2[11] ,in3[11] ,o1[11] ,o2[12] );
  full_adder_1b f13 ( in1[12] ,in2[12] ,in3[12] ,o1[12] ,o2[13] );
  full_adder_1b f14 ( in1[13] ,in2[13] ,in3[13] ,o1[13] ,o2[14] );
  full_adder_1b f15 ( in1[14] ,in2[14] ,in3[14] ,o1[14] ,o2[15] );
  assign o2[0] = 1'b0;


endmodule

module carrysaveadder_15_13_13_15_15(
input [14:0] in1,
input [12:0] in2,
inout [12:0] in3,
output [14:0] o1, // to store sum
output [14:0] o2 // to store carry
);
    full_adder_1b f1 ( in1[0] ,in2[0] ,in3[0] ,o1[0] ,o2[1] );
    full_adder_1b f2 ( in1[1] ,in2[1] ,in3[1] ,o1[1] ,o2[2] );
    full_adder_1b f3 ( in1[2] ,in2[2] ,in3[2] ,o1[2] ,o2[3] );
    full_adder_1b f4 ( in1[3] ,in2[3] ,in3[3] ,o1[3] ,o2[4] );
    full_adder_1b f5 ( in1[4] ,in2[4] ,in3[4] ,o1[4] ,o2[5] );
    full_adder_1b f6 ( in1[5] ,in2[5] ,in3[5] ,o1[5] ,o2[6] );
    full_adder_1b f7 ( in1[6] ,in2[6] ,in3[6] ,o1[6] ,o2[7] );
    full_adder_1b f8 ( in1[7] ,in2[7] ,in3[7] ,o1[7] ,o2[8] );
    full_adder_1b f9 ( in1[8] ,in2[8] ,in3[8] ,o1[8] ,o2[9] );
    full_adder_1b f10 ( in1[9] ,in2[9] ,in3[9] ,o1[9] ,o2[10] );
    full_adder_1b f11 ( in1[10] ,in2[10] ,in3[10] ,o1[10] ,o2[11] );
    full_adder_1b f12 ( in1[11] ,in2[11] ,in3[11] ,o1[11] ,o2[12] );
    full_adder_1b f13 ( in1[12] ,in2[12] ,in3[12] ,o1[12] ,o2[13] );
    full_adder_1b f14 ( in1[13], 1'b0, 1'b0, o1[13], o2[14]);
    assign o2[0] = 1'b0;
    assign o2[14] = 1'b0;
    assign o1[13] = in1[13];
    assign o1[14] = in1[14];

endmodule

module carrysaveadder_13_14_15_15_15(
input [14:0] in1,
input [13:0] in2,
inout [12:0] in3,
output [14:0] o1, // to store sum
output [14:0] o2 // to store carry
);

    full_adder_1b f1 ( in1[0] ,in2[0] ,in3[0] ,o1[0] ,o2[1] );
    full_adder_1b f2 ( in1[1] ,in2[1] ,in3[1] ,o1[1] ,o2[2] );
    full_adder_1b f3 ( in1[2] ,in2[2] ,in3[2] ,o1[2] ,o2[3] );
    full_adder_1b f4 ( in1[3] ,in2[3] ,in3[3] ,o1[3] ,o2[4] );
    full_adder_1b f5 ( in1[4] ,in2[4] ,in3[4] ,o1[4] ,o2[5] );
    full_adder_1b f6 ( in1[5] ,in2[5] ,in3[5] ,o1[5] ,o2[6] );
    full_adder_1b f7 ( in1[6] ,in2[6] ,in3[6] ,o1[6] ,o2[7] );
    full_adder_1b f8 ( in1[7] ,in2[7] ,in3[7] ,o1[7] ,o2[8] );
    full_adder_1b f9 ( in1[8] ,in2[8] ,in3[8] ,o1[8] ,o2[9] );
    full_adder_1b f10 ( in1[9] ,in2[9] ,in3[9] ,o1[9] ,o2[10] );
    full_adder_1b f11 ( in1[10] ,in2[10] ,in3[10] ,o1[10] ,o2[11] );
    full_adder_1b f12 ( in1[11] ,in2[11] ,in3[11] ,o1[11] ,o2[12] );
    full_adder_1b f13 ( in1[12] ,in2[12] ,in3[12] ,o1[12] ,o2[13] );
    full_adder_1b f14 ( in1[13] ,in2[13] ,1'b0 ,o1[13] ,o2[14] );

    assign o1[14] = in1[14];
    assign o2[0] = 1'b0;


endmodule

module carrysaveadder_10_10_13_13_13(
input [12:0] in1,
input [9:0] in2,
inout [9:0] in3,
output [12:0] o1, // to store sum
output [12:0] o2 // to store carry
);

    full_adder_1b f1 ( in1[0] ,in2[0] ,in3[0] ,o1[0] ,o2[1] );
    full_adder_1b f2 ( in1[1] ,in2[1] ,in3[1] ,o1[1] ,o2[2] );
    full_adder_1b f3 ( in1[2] ,in2[2] ,in3[2] ,o1[2] ,o2[3] );
    full_adder_1b f4 ( in1[3] ,in2[3] ,in3[3] ,o1[3] ,o2[4] );
    full_adder_1b f5 ( in1[4] ,in2[4] ,in3[4] ,o1[4] ,o2[5] );
    full_adder_1b f6 ( in1[5] ,in2[5] ,in3[5] ,o1[5] ,o2[6] );
    full_adder_1b f7 ( in1[6] ,in2[6] ,in3[6] ,o1[6] ,o2[7] );
    full_adder_1b f8 ( in1[7] ,in2[7] ,in3[7] ,o1[7] ,o2[8] );
    full_adder_1b f9 ( in1[8] ,in2[8] ,in3[8] ,o1[8] ,o2[9] );
    full_adder_1b f10 ( in1[9] ,in2[9] ,in3[9] ,o1[9] ,o2[10] );

    assign o1[10] = in1[10];
    assign o1[11] = in1[11];
    assign o1[12] = in1[12] ;
    assign o2[0] = 1'b0;
    assign o2[11] = 1'b0;
    assign o2[12] = 1'b0;

endmodule


module carrysaveadder_11_12_13_13_13(
input [12:0] in1,
input [11:0] in2,
inout [10:0] in3,
output [12:0] o1, // to store sum
output [12:0] o2 // to store carry
);

    full_adder_1b f1 ( in1[0] ,in2[0] ,in3[0] ,o1[0] ,o2[1] );
    full_adder_1b f2 ( in1[1] ,in2[1] ,in3[1] ,o1[1] ,o2[2] );
    full_adder_1b f3 ( in1[2] ,in2[2] ,in3[2] ,o1[2] ,o2[3] );
    full_adder_1b f4 ( in1[3] ,in2[3] ,in3[3] ,o1[3] ,o2[4] );
    full_adder_1b f5 ( in1[4] ,in2[4] ,in3[4] ,o1[4] ,o2[5] );
    full_adder_1b f6 ( in1[5] ,in2[5] ,in3[5] ,o1[5] ,o2[6] );
    full_adder_1b f7 ( in1[6] ,in2[6] ,in3[6] ,o1[6] ,o2[7] );
    full_adder_1b f8 ( in1[7] ,in2[7] ,in3[7] ,o1[7] ,o2[8] );
    full_adder_1b f9 ( in1[8] ,in2[8] ,in3[8] ,o1[8] ,o2[9] );
    full_adder_1b f10 ( in1[9] ,in2[9] ,in3[9] ,o1[9] ,o2[10] );
    full_adder_1b f11 ( in1[10] ,in2[10] ,in3[10] ,o1[10] ,o2[11] );
    full_adder_1b f12 ( in1[11] ,in2[11] ,1'b0 ,o1[11] ,o2[12] );

    assign o1[12] = in1[12];
    assign o2[0] = 1'b0;

endmodule


module carrysaveadder_8_9_10_10_10(
input [9:0] in1,
input [8:0] in2,
inout [7:0] in3,
output [9:0] o1, // to store sum
output [9:0] o2 // to store carry
);

    full_adder_1b f1 ( in1[0] ,in2[0] ,in3[0] ,o1[0] ,o2[1] );
    full_adder_1b f2 ( in1[1] ,in2[1] ,in3[1] ,o1[1] ,o2[2] );
    full_adder_1b f3 ( in1[2] ,in2[2] ,in3[2] ,o1[2] ,o2[3] );
    full_adder_1b f4 ( in1[3] ,in2[3] ,in3[3] ,o1[3] ,o2[4] );
    full_adder_1b f5 ( in1[4] ,in2[4] ,in3[4] ,o1[4] ,o2[5] );
    full_adder_1b f6 ( in1[5] ,in2[5] ,in3[5] ,o1[5] ,o2[6] );
    full_adder_1b f7 ( in1[6] ,in2[6] ,in3[6] ,o1[6] ,o2[7] );
    full_adder_1b f8 ( in1[7] ,in2[7] ,in3[7] ,o1[7] ,o2[8] );
    full_adder_1b f9 ( in1[8] ,in2[8],  1'b0, o1[8], o2[9] );

    assign o1[9] = in1[9];
    assign o2[0] = 1'b0;

endmodule


module partialproduct(
  input [7:0] in1,
  input in2,
  output [15:0] out);

  assign out[0] = in1[0] && in2;
  assign out[1] = in1[1] && in2;
  assign out[2] = in1[2] && in2;
  assign out[3] = in1[3] && in2;
  assign out[4] = in1[4] && in2;
  assign out[5] = in1[5] && in2;
  assign out[6] = in1[6] && in2;
  assign out[7] = in1[7] && in2;

endmodule

module eight_x_eight_mul(
  input [7:0] a,
  input [7:0] b,
  output [15:0] c
  );

 	wire [7:0] p0;
	wire [8:0] p1;
	wire [9:0] p2;
	wire [10:0] p3;
	wire [11:0] p4;
	wire [12:0] p5;
	wire [13:0] p6;
	wire [14:0] p7;
	wire [9:0] c1;
	wire [9:0] s1;
	wire [12:0] c2;
	wire [12:0] s2;
	wire [12:0] c3;
	wire [12:0] s3;
	wire [14:0] c4;
	wire [14:0] s4;
	wire [14:0] c5;
	wire [14:0] s5;
	wire [15:0] c6;
	wire [14:0] s6;
        wire fcout;

    and a00 (p0[0], a[0], b[0]);
    and a01 (p0[1], a[1], b[0]);
    and a02 (p0[2], a[2], b[0]);
    and a03 (p0[3], a[3], b[0]);
    and a04 (p0[4], a[4], b[0]);
    and a05 (p0[5], a[5], b[0]);
    and a06 (p0[6], a[6], b[0]);
    and a07 (p0[7], a[7], b[0]);
    
    and a10 (p1[1], a[0], b[1]);
    and a11 (p1[2], a[1], b[1]);
    and a12 (p1[3], a[2], b[1]);
    and a13 (p1[4], a[3], b[1]);
    and a14 (p1[5], a[4], b[1]);
    and a15 (p1[6], a[5], b[1]);
    and a16 (p1[7], a[6], b[1]);
    and a17 (p1[8], a[7], b[1]);
    and a18 (p1[0], 1'b0, b[1]);

    and a20 (p2[2], a[0], b[2]);
    and a21 (p2[3], a[1], b[2]);
    and a22 (p2[4], a[2], b[2]);
    and a23 (p2[5], a[3], b[2]);
    and a24 (p2[6], a[4], b[2]);
    and a25 (p2[7], a[5], b[2]);
    and a26 (p2[8], a[6], b[2]);
    and a27 (p2[9], a[7], b[2]);
    and a28 (p2[1], 1'b0, b[2]);
    and a29 (p2[0], 1'b0, b[2]);

    and a30 (p3[3], a[0], b[3]);
    and a31 (p3[4], a[1], b[3]);
    and a32 (p3[5], a[2], b[3]);
    and a33 (p3[6], a[3], b[3]);
    and a34 (p3[7], a[4], b[3]);
    and a35 (p3[8], a[5], b[3]);
    and a36 (p3[9], a[6], b[3]);
    and a37 (p3[10], a[7], b[3]);
    and a38 (p3[2], 1'b0, b[3]);
    and a39 (p3[1], 1'b0, b[3]);
    and a310 (p3[0], 1'b0, b[3]);

    and a40 (p4[4], a[0], b[4]);
    and a41 (p4[5], a[1], b[4]);
    and a42 (p4[6], a[2], b[4]);
    and a43 (p4[7], a[3], b[4]);
    and a44 (p4[8], a[4], b[4]);
    and a45 (p4[9], a[5], b[4]);
    and a46 (p4[10], a[6], b[4]);
    and a47 (p4[11], a[7], b[4]);
    and a48 (p4[3], 1'b0, b[4]);
    and a49 (p4[2], 1'b0, b[4]);
    and a410 (p4[1], 1'b0, b[4]);
    and a411 (p4[0], 1'b0, b[4]);

    and a50 (p5[5], a[0], b[5]);
    and a51 (p5[6], a[1], b[5]);
    and a52 (p5[7], a[2], b[5]);
    and a53 (p5[8], a[3], b[5]);
    and a54 (p5[9], a[4], b[5]);
    and a55 (p5[10], a[5], b[5]);
    and a56 (p5[11], a[6], b[5]);
    and a57 (p5[12], a[7], b[5]);
    and a58 (p5[4], 1'b0, b[5]);
    and a59 (p5[3], 1'b0, b[5]);
    and a510 (p5[2], 1'b0, b[5]);
    and a511 (p5[1], 1'b0, b[5]);
    and a512 (p5[0], 1'b0, b[5]);

    and a60 (p6[6], a[0], b[6]);
    and a61 (p6[7], a[1], b[6]);
    and a62 (p6[8], a[2], b[6]);
    and a63 (p6[9], a[3], b[6]);
    and a64 (p6[10], a[4], b[6]);
    and a65 (p6[11], a[5], b[6]);
    and a66 (p6[12], a[6], b[6]);
    and a67 (p6[13], a[7], b[6]);
    and a68 (p6[5], 1'b0, b[6]);
    and a69 (p6[4], 1'b0, b[6]);
    and a610 (p6[3], 1'b0, b[6]);
    and a611 (p6[2], 1'b0, b[6]);
    and a612 (p6[1], 1'b0, b[6]);
    and a615 (p6[0], 1'b0, b[6]);

    and a70 (p7[7], a[0], b[7]);
    and a71 (p7[8], a[1], b[7]);
    and a72 (p7[9], a[2], b[7]);
    and a73 (p7[10], a[3], b[7]);
    and a74 (p7[11], a[4], b[7]);
    and a75 (p7[12], a[5], b[7]);
    and a76 (p7[13], a[6], b[7]);
    and a77 (p7[14], a[7], b[7]);
    and a79 (p7[6], 1'b0, b[7]);
    and a710 (p7[5], 1'b0, b[7]);
    and a711 (p7[4], 1'b0, b[7]);
    and a712 (p7[3], 1'b0, b[7]);
    and a713 (p7[2], 1'b0, b[7]);
    and a714 (p7[1], 1'b0, b[7]);
    and a715 (p7[0], 1'b0, b[7]);

    carrysaveadder_8_9_10_10_10 csa1 (p2, p1, p0, s1, c1);
    carrysaveadder_11_12_13_13_13 csa2 (p5, p4, p3, s2, c2);
    carrysaveadder_10_10_13_13_13 csa3 (s2, c1, s1, s3, c3);
    carrysaveadder_13_14_15_15_15 csa4 (p7, p6, c2, s4, c4);
    carrysaveadder_15_13_13_15_15 csa5 (s4, c3, s3, s5, c5);
    carrysaveadder_15_15_15_15_16 csa6 (c5, s5, c4, s6, c6);

    carry_select_adder_16b cseladder ({1'b0,s6}, c6, 1'b0, fcout, c);
	assign c[15] = fcout;
    

endmodule

module testcsa;

	reg [7:0] A;
	reg [7:0] B;
	wire [15:0] Sum;
	eight_x_eight_mul mul (A, B, Sum);

initial begin
    #10 A = 0; B = 0;
    #10 A=22;B=22;
    #10 A=21;B=20;
    #10 A=10;B=15;
  end

endmodule