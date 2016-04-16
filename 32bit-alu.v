module mux2x1 (input [31:0]a, input [31:0]b, input sel, output reg [31:0]z );
      always @ (sel or a or b)
      begin: mux
            case(sel)
            1'b0: z = a;
            1'b1: z = b;
            endcase
      end

endmodule // mux2x1

module mux4x1 (input [31:0]a, input [31:0]b, input [31:0]c, input [31:0]d, input [1:0]sel, output reg [31:0]y);
      always @ ( sel or a or b or c or d ) begin
            begin: mux4x1
                  case(sel)
                  2'b00: y = a;
                  2'b01: y = b;
                  2'b10: y = c;
                  2'b11: y = d;
                  endcase
            end
      end

endmodule // mux4x1

module adder1b (input a, input b,  input c, output s, output cout);
      assign s = a ^ b ^c ;
      assign cout = (a & b) | (b&c) | (c&a);
endmodule // adder1b

module adder32b (input [31:0]a, input [31:0]b, input f, output [31:0]s, output cout, output reg of);
      wire [30:0]c;
      wire check;
      adder1b a0 (a[0],  b[0],  f,  s[0], c[0]);
      adder1b a1 (a[1], b[1], c[0], s[1], c[1]);
      adder1b a2 (a[2], b[2], c[1], s[2], c[2]);
      adder1b a3 (a[3], b[3], c[2], s[3], c[3]);
      adder1b a4 (a[4], b[4], c[3], s[4], c[4]);
      adder1b a5 (a[5], b[5], c[4], s[5], c[5]);
      adder1b a6 (a[6], b[6], c[5], s[6], c[6]);
      adder1b a7 (a[7], b[7], c[6], s[7], c[7]);
      adder1b a8 (a[8], b[8], c[7], s[8], c[8]);
      adder1b a9 (a[9], b[9], c[8], s[9], c[9]);
      adder1b a10 (a[10], b[10], c[9], s[10], c[10]);
      adder1b a11 (a[11], b[11], c[10], s[11], c[11]);
      adder1b a12 (a[12], b[12], c[11], s[12], c[12]);
      adder1b a13 (a[13], b[13], c[12], s[13], c[13]);
      adder1b a14 (a[14], b[14], c[13], s[14], c[14]);
      adder1b a15 (a[15], b[15], c[14], s[15], c[15]);
      adder1b a16 (a[16], b[16], c[15], s[16], c[16]);
      adder1b a17 (a[17], b[17], c[16], s[17], c[17]);
      adder1b a18 (a[18], b[18], c[17], s[18], c[18]);
      adder1b a19 (a[19], b[19], c[18], s[19], c[19]);
      adder1b a20 (a[20], b[20], c[19], s[20], c[20]);
      adder1b a21 (a[21], b[21], c[20], s[21], c[21]);
      adder1b a22 (a[22], b[22], c[21], s[22], c[22]);
      adder1b a23 (a[23], b[23], c[22], s[23], c[23]);
      adder1b a24 (a[24], b[24], c[23], s[24], c[24]);
      adder1b a25 (a[25], b[25], c[24], s[25], c[25]);
      adder1b a26 (a[26], b[26], c[25], s[26], c[26]);
      adder1b a27 (a[27], b[27], c[26], s[27], c[27]);
      adder1b a28 (a[28], b[28], c[27], s[28], c[28]);
      adder1b a29 (a[29], b[29], c[28], s[29], c[29]);
      adder1b a30 (a[30], b[30], c[29], s[30], c[30]);
      adder1b a31 (a[31], b[31], c[30], s[31], cout);

       assign check = cout ^ s[31];
	always @ (*) begin
      if(check == 1'b1 & (a[31] == b[31]))  of = 1'b1;
      else  of = 1'b0;
	end

endmodule // adder32b

module zeroextend (input a, output [31:0]b);

            assign b[0] = a;

            assign b[31:1] = 31'd0;

endmodule // signextend

module main (input [31:0]a, input [31:0]b, input [2:0]f, output cout, output [31:0]y, output of, output reg zf);
      wire [31:0] bout;
      wire [31:0] orgate;
      wire [31:0] andgate;
		wire [31:0]temp ;

		wire [31:0] s;
            mux2x1 mx (b, ~b, f[2], bout);
            assign andgate = a & bout;
            assign orgate = a | bout;
            adder32b adder (a, bout, f[2], s, cout, of);
			zeroextend  sx  (s[31], temp);
			mux4x1 mx41 (andgate, orgate, s, temp, f[1:0], y);
			always @ (*) begin
			if(y == 32'd0)  zf = 1'b1;
			else  zf = 1'b0;
end

endmodule // main


module testalu;
	reg [31:0] a;
	reg [31:0] b;
	reg [2:0]f;
	wire cout;
	wire [31:0] y;
	wire of;
	wire zf;
	main m (a, b, f, cout, y, of, zf);
initial
 begin
//a =32'h00000000; b =32'h00000000; f = 3'b010; //add
//#10  a = 32'h80000000; b = 32'h80000000; f = 3'b010;
#10 a = 32'd0; b = 32'd0; f = 3'b000; //add
#10 a = 32'd0; b = -32'd1; f = 3'b010;
#10 a = 32'd1; b = -32'd1; f= 3'b010;
#10 a = 32'h000000FF; b = 32'h00000001; f = 3'b010;
#10 a = 32'h00000000; b = 32'h00000000; f = 3'b110; //sub
#10 a = 32'h00000000; b = 32'hFFFFFFFF; f = 3'b110;
#10 a = 32'd1; b= 32'd1;f=3'b110;
#10 a=32'h00000100; b=32'd1; f = 3'b110;
#10 a=32'd0;b=32'd0;f=3'b111; // slt
#10 a=32'd0;b=32'd1;f=3'b111;
#10 a=32'd0;b=-32'd1;f=3'b111;
#10 a=32'd1;b=32'd0;f=3'b111;
#10 a=-32'd1;b=32'd0;f=3'b111;
#10 a=32'hFFFFFFFF;b=32'hFFFFFFFF;f=3'b000; // and
#10 a=32'hFFFFFFFF;b=32'h12345678;f=3'b000;
#10 a=32'h12345678;b=32'h87654321;f=3'b000;
#10 a=32'h00000000;b=32'hFFFFFFFF;f=3'b000;
#10 a=32'hFFFFFFFF;b=32'hFFFFFFFF;f=3'b001; // or
#10 a=32'h12345678;b=32'h87654321;f=3'b001;
#10 a=32'h00000000;b=32'hFFFFFFFF;f=3'b001;
#10 a=32'h00000000;b=32'h00000000;f=3'b001;


  end
	endmodule
