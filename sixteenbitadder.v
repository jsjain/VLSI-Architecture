module full_adder_1b ( a ,b ,c ,sum ,carry );

output sum ;
output carry ;

input a ;
input b ;
input c ;


assign sum = a ^ b ^ c;
assign carry = (a&b) | (b&c) | (c&a);

endmodule

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

wire [15:0] t [7:0];

and a00 (t[0][0], a[0], b[0]);
and a01 (t[0][1], a[1], b[0]);
and a02 (t[0][2], a[2], b[0]);
and a03 (t[0][3], a[3], b[0]);
and a04 (t[0][4], a[4], b[0]);
and a05 (t[0][5], a[5], b[0]);
and a06 (t[0][6], a[6], b[0]);
and a07 (t[0][7], a[7], b[0]);
and a08 (t[0][8], 1'b0, b[0]);
and a09 (t[0][9], 1'b0, b[0]);
and a010 (t[0][10], 1'b0, b[0]);
and a011 (t[0][11], 1'b0, b[0]);
and a012 (t[0][12], 1'b0, b[0]);
and a013 (t[0][13], 1'b0, b[0]);
and a014 (t[0][14], 1'b0, b[0]);
and a015 (t[0][15], 1'b0, b[0]);


and a10 (t[1][1], a[0], b[1]);
and a11 (t[1][2], a[1], b[1]);
and a12 (t[1][3], a[2], b[1]);
and a13 (t[1][4], a[3], b[1]);
and a14 (t[1][5], a[4], b[1]);
and a15 (t[1][6], a[5], b[1]);
and a16 (t[1][7], a[6], b[1]);
and a17 (t[1][8], a[7], b[1]);
and a18 (t[1][9], 1'b0, b[1]);
and a19 (t[1][10], 1'b0, b[1]);
and a110 (t[1][11], 1'b0, b[1]);
and a111 (t[1][12], 1'b0, b[1]);
and a112 (t[1][13], 1'b0, b[1]);
and a113 (t[1][14], 1'b0, b[1]);
and a114 (t[1][15], 1'b0, b[1]);
and a115 (t[1][0], 1'b0, b[1]);


and a20 (t[2][2], a[0], b[2]);
and a21 (t[2][3], a[1], b[2]);
and a22 (t[2][4], a[2], b[2]);
and a23 (t[2][5], a[3], b[2]);
and a24 (t[2][6], a[4], b[2]);
and a25 (t[2][7], a[5], b[2]);
and a26 (t[2][8], a[6], b[2]);
and a27 (t[2][9], a[7], b[2]);
and a28 (t[2][10], 1'b0, b[2]);
and a29 (t[2][11], 1'b0, b[2]);
and a210 (t[2][12], 1'b0, b[2]);
and a211 (t[2][13], 1'b0, b[2]);
and a212 (t[2][14], 1'b0, b[2]);
and a213 (t[2][15], 1'b0, b[2]);
and a214 (t[2][1], 1'b0, b[2]);
and a215 (t[2][0], 1'b0, b[2]);

and a30 (t[3][3], a[0], b[3]);
and a31 (t[3][4], a[1], b[3]);
and a32 (t[3][5], a[2], b[3]);
and a33 (t[3][6], a[3], b[3]);
and a34 (t[3][7], a[4], b[3]);
and a35 (t[3][8], a[5], b[3]);
and a36 (t[3][9], a[6], b[3]);
and a37 (t[3][10], a[7], b[3]);
and a38 (t[3][11], 1'b0, b[3]);
and a39 (t[3][12], 1'b0, b[3]);
and a310 (t[3][13], 1'b0, b[3]);
and a311 (t[3][14], 1'b0, b[3]);
and a312 (t[3][15], 1'b0, b[3]);
and a313 (t[3][2], 1'b0, b[3]);
and a314 (t[3][1], 1'b0, b[3]);
and a315 (t[3][0], 1'b0, b[3]);

and a40 (t[4][4], a[0], b[4]);
and a41 (t[4][5], a[1], b[4]);
and a42 (t[4][6], a[2], b[4]);
and a43 (t[4][7], a[3], b[4]);
and a44 (t[4][8], a[4], b[4]);
and a45 (t[4][9], a[5], b[4]);
and a46 (t[4][10], a[6], b[4]);
and a47 (t[4][11], a[7], b[4]);
and a48 (t[4][12], 1'b0, b[4]);
and a49 (t[4][13], 1'b0, b[4]);
and a410 (t[4][14], 1'b0, b[4]);
and a411 (t[4][15], 1'b0, b[4]);
and a412 (t[4][3], 1'b0, b[4]);
and a413 (t[4][2], 1'b0, b[4]);
and a414 (t[4][1], 1'b0, b[4]);
and a415 (t[4][0], 1'b0, b[4]);

  
endmodule