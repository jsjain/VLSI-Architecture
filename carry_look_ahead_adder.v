module CLA_4b( input A, input B, input Cin, output cout, output out );
input [3:0] A;
input [3:0] B;
input Cin;
output [3:0] out;
output cout;

wire [3:0] G,P,C;

assign G = A & B;
assign P = A | B;

assign C[0] = G[0] | (P[0]&Cin);
assign C[1] = G[1] | (G[0]&P[1]) | (Cin&P[0]&P[1]);
assign C[2] = G[2] | (G[1]&P[2]) | (G[0]&P[0]&P[1]) | (Cin&P[1]&P[2]);
assign C[3] = G[3] | (G[2]&P[3]) | (G[1]&P[2]&P[3]) | (G[0]&P[1]&P[2]&P[3]) | (Cin&P[1]&P[2]&P[3]);
assign cout = C[3];
assign out[0] = Cin ^ A[0] ^ B[0];
assign out[1] = C[0] ^ A[1] ^ B[1];
assign out[2] = C[1] ^ A[2] ^ B[2];
assign out[3] = C[2] ^ A[3] ^ B[3];


endmodule

module Test_CLA_4bit;
    // Inputs
    reg [3:0] A;
    reg [3:0] B;
    reg Cin;

    // Outputs
    wire [3:0] out;
    wire cout;

    CLA_4b cl (A, B, Cin, cout, out);

    initial begin
    // Initialize Inputs
    A = 0;  B = 0;  Cin = 0;
    // Wait 100 ns for global reset to finish
    #100;

    // Add stimulus here
    A=4'b0001;B=4'b0000;Cin=1'b0;
    #10 A=4'b100;B=4'b0011;Cin=1'b0;
    #10 A=4'b0111;B=4'b0111;Cin=1'b1;
    #10 A=4'b1010;B=4'b0101;Cin=1'b0;
    end

endmodule

module mux2to11(input x, input y, input sel, output reg z);

  always @ (sel or x or y)
  begin: MUX
    case(sel)
      1'b0:z = x;
      1'b1:z = y;
    endcase
  end
endmodule

module mux2to14(input [3:0] x, input [3:0] y, input sel, output reg [3:0] z);
  always@ (sel or x or y)
  begin: MUX
    case(sel)
      1'b0:z = x;
      1'b1:z = y;
    endcase
  end
endmodule

module carry_select_adder_16b (A, B, Cin, Cout, Sum);
  input [15:0] A;
  input [15:0] B;
  input Cin;
  output Cout;
  output [15:0] Sum;
  wire [2:0] sel;
  wire cin1_0, cin1_1;
  wire [3:0] Sum1_0;
  wire [3:0] Sum1_1;
  wire [3:0] Sum2_0;
  wire [3:0] Sum2_1;
  wire [3:0] Sum3_0;
  wire [3:0] Sum3_1;
  CLA_4b cl1 (A[3:0], B[3:0], Cin, sel[0], Sum[3:0]);

  CLA_4b cl10 (A[7:4], B[7:4], 1'b0, cin1_0, Sum1_0[3:0]);
  CLA_4b cl11 (A[7:4], B[7:4], 1'b1, cin1_1, Sum1_1[3:0]);
  mux2to14 m1 ( Sum1_0[3:0] , Sum1_1[3:0], sel[0], Sum[7:4]);
  mux2to11 m11 (cin1_0, cin1_1, sel[0], sel[1]);

  CLA_4b cl20 (A[11:8], B[11:8], 1'b0, cin2_0, Sum2_0[3:0]);
  CLA_4b cl21 (A[11:8], B[11:8], 1'b1, cin2_1, Sum2_1[3:0]);
  mux2to14 mux2 (Sum2_0[3:0], Sum2_1[3:0], sel[1], Sum[11:8]);
  mux2to11 mux21 (cin2_0, cin2_1, sel[1], sel[2]);

  CLA_4b cl30 (A[15:12], B[15:12], 1'b0, cin3_0, Sum3_0[3:0]);
  CLA_4b cl31 (A[15:12], B[15:12], 1'b1, cin3_1, Sum3_1[3:0]);
  mux2to14 mux3 (Sum3_0[3:0], Sum3_1[3:0], sel[2], Sum[15:12]);
  mux2to11 mux31 (cin3_0, cin3_1, sel[2], Cout);

endmodule

module test;
  reg [15:0] A;
  reg [15:0] B;
  reg Cin;
  wire [15:0] Sum;
  wire Cout;

  carry_select_adder_16b csa (A, B, Cin, Cout, Sum);

  initial begin
    A = 0;
    B = 0;

    Cin = 0;
    #10;

    #10 A=22;B=22;Cin=1'b1;
    #10 A=21;B=20;Cin=1'b0;
  end
endmodule
