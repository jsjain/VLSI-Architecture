module D_ff (input clk, input reset, input write, input decout1b, input d, output reg q);
      always @ ( negedge clk ) begin
            if(reset == 1)  q = 1'b0;
            else
            if (write == 1 && decout1b == 1) begin
                  q = d;
            end
      end
endmodule // D_ff

module Register (input clk, input reset, input write, input decout1b, input [31:0] writedata, output [31:0] outreg);
      D_ff d0 (clk, reset, write, decout1b, writedata[0], outreg[0]);
      D_ff d1 (clk, reset, write, decout1b, writedata[1], outreg[1]);
      D_ff d2 (clk, reset, write, decout1b, writedata[2], outreg[2]);
      D_ff d3 (clk, reset, write, decout1b, writedata[3], outreg[3]);
      D_ff d4 (clk, reset, write, decout1b, writedata[4], outreg[4]);
      D_ff d5 (clk, reset, write, decout1b, writedata[5], outreg[5]);
      D_ff d6 (clk, reset, write, decout1b, writedata[6], outreg[6]);
      D_ff d7 (clk, reset, write, decout1b, writedata[7], outreg[7]);
      D_ff d8 (clk, reset, write, decout1b, writedata[8], outreg[8]);
      D_ff d9 (clk, reset, write, decout1b, writedata[9], outreg[9]);
      D_ff d10 (clk, reset, write, decout1b, writedata[10], outreg[10]);
      D_ff d11 (clk, reset, write, decout1b, writedata[11], outreg[11]);
      D_ff d12 (clk, reset, write, decout1b, writedata[12], outreg[12]);
      D_ff d13 (clk, reset, write, decout1b, writedata[13], outreg[13]);
      D_ff d14 (clk, reset, write, decout1b, writedata[14], outreg[14]);
      D_ff d15 (clk, reset, write, decout1b, writedata[15], outreg[15]);
      D_ff d16 (clk, reset, write, decout1b, writedata[16], outreg[16]);
      D_ff d17 (clk, reset, write, decout1b, writedata[17], outreg[17]);
      D_ff d18 (clk, reset, write, decout1b, writedata[18], outreg[18]);
      D_ff d19 (clk, reset, write, decout1b, writedata[19], outreg[19]);
      D_ff d20 (clk, reset, write, decout1b, writedata[20], outreg[20]);
      D_ff d21 (clk, reset, write, decout1b, writedata[21], outreg[21]);
      D_ff d22 (clk, reset, write, decout1b, writedata[22], outreg[22]);
      D_ff d23 (clk, reset, write, decout1b, writedata[23], outreg[23]);
      D_ff d24 (clk, reset, write, decout1b, writedata[24], outreg[24]);
      D_ff d25 (clk, reset, write, decout1b, writedata[25], outreg[25]);
      D_ff d26 (clk, reset, write, decout1b, writedata[26], outreg[26]);
      D_ff d27 (clk, reset, write, decout1b, writedata[27], outreg[27]);
      D_ff d28 (clk, reset, write, decout1b, writedata[28], outreg[28]);
      D_ff d29 (clk, reset, write, decout1b, writedata[29], outreg[29]);
      D_ff d30 (clk, reset, write, decout1b, writedata[30], outreg[30]);
      D_ff d31 (clk, reset, write, decout1b, writedata[31], outreg[31]);

endmodule // Register

module registerSet (input clk, input reset, input write, input [31:0]regsel, input [31:0] writedata, output [31:0] outreg0, output [31:0] outreg1, output [31:0] outreg2, output [31:0] outreg3, output [31:0] outreg4, output [31:0] outreg5, output [31:0] outreg6, output [31:0] outreg7, output [31:0] outreg8, output [31:0] outreg9, output [31:0] outreg10, output [31:0] outreg11, output [31:0] outreg12, output [31:0] outreg13, output [31:0] outreg14, output [31:0] outreg15, output [31:0] outreg16, output [31:0] outreg17, output [31:0] outreg18, output [31:0] outreg19, output [31:0] outreg20, output [31:0] outreg21, output [31:0] outreg22, output [31:0] outreg23, output [31:0] outreg24, output [31:0] outreg25, output [31:0] outreg26, output [31:0] outreg27, output [31:0] outreg28, output [31:0] outreg29, output [31:0] outreg30, output [31:0] outreg31);


      Register r0 (clk, reset, write, regsel[0], writedata, outreg0);
      Register r1 (clk, reset, write, regsel[1], writedata, outreg1);
      Register r2 (clk, reset, write, regsel[2], writedata, outreg2);
      Register r3 (clk, reset, write, regsel[3], writedata, outreg3);
      Register r4 (clk, reset, write, regsel[4], writedata, outreg4);
      Register r5 (clk, reset, write, regsel[5], writedata, outreg5);
      Register r6 (clk, reset, write, regsel[6], writedata, outreg6);
      Register r7 (clk, reset, write, regsel[7], writedata, outreg7);
      Register r8 (clk, reset, write, regsel[8], writedata, outreg8);
      Register r9 (clk, reset, write, regsel[9], writedata, outreg9);
      Register r10 (clk, reset, write, regsel[10], writedata, outreg10);
      Register r11 (clk, reset, write, regsel[11], writedata, outreg11);
      Register r12 (clk, reset, write, regsel[12], writedata, outreg12);
      Register r13 (clk, reset, write, regsel[13], writedata, outreg13);
      Register r14 (clk, reset, write, regsel[14], writedata, outreg14);
      Register r15 (clk, reset, write, regsel[15], writedata, outreg15);
      Register r16 (clk, reset, write, regsel[16], writedata, outreg16);
      Register r17 (clk, reset, write, regsel[17], writedata, outreg17);
      Register r18 (clk, reset, write, regsel[18], writedata, outreg18);
      Register r19 (clk, reset, write, regsel[19], writedata, outreg19);
      Register r20 (clk, reset, write, regsel[20], writedata, outreg20);
      Register r21 (clk, reset, write, regsel[21], writedata, outreg21);
      Register r22 (clk, reset, write, regsel[22], writedata, outreg22);
      Register r23 (clk, reset, write, regsel[23], writedata, outreg23);
      Register r24 (clk, reset, write, regsel[24], writedata, outreg24);
      Register r25 (clk, reset, write, regsel[25], writedata, outreg25);
      Register r26 (clk, reset, write, regsel[26], writedata, outreg26);
      Register r27 (clk, reset, write, regsel[27], writedata, outreg27);
      Register r28 (clk, reset, write, regsel[28], writedata, outreg28);
      Register r29 (clk, reset, write, regsel[29], writedata, outreg29);
      Register r30 (clk, reset, write, regsel[30], writedata, outreg30);
      Register r31 (clk, reset, write, regsel[31], writedata, outreg31);

endmodule // registerSet

module decoder5to32 (input [4:0] inp, output reg [31:0]out);
      always @ (inp) begin
            case(inp)
            5'd0: out = 32'd1;
            5'd1: out = 32'd2;
            5'd2: out = 32'd4;
            5'd3: out = 32'd8;
            5'd4: out = 32'd16;
            5'd5: out = 32'd32;
            5'd6: out = 32'd64;
            5'd7: out = 32'd128;
            5'd8: out = 32'd256;
            5'd9: out= 32'd512;
            5'd10: out = 32'd1024;
            5'd11: out = 32'd2048;
            5'd12: out = 32'd4096;
            5'd13: out = 32'd8192;
            5'd14: out = 32'd16384;
            5'd15: out = 32'd32768;
            5'd16: out = 32'd65536;
            5'd17: out = 32'd131072;
            5'd18: out = 32'd262144;
            5'd19: out = 32'd524288;
            5'd20: out = 32'd1048576;
            5'd21: out = 32'd2097152;
            5'd22: out = 32'd4194304;
            5'd23: out = 32'd8388608;
            5'd24: out= 32'd16777216;
            5'd25: out = 32'd33554432;
            5'd26: out = 32'd67108864;
            5'd27: out = 32'd134217728;
            5'd28: out = 32'd268435456;
            5'd29: out = 32'd536870912;
            5'd30: out= 32'd1073741824;
            5'd31: out = 32'd2147483648;
            endcase
      end

endmodule // decoder5to32

module mux32x1 (input [31:0] register0, input [31:0] register1, input [31:0] register2, input [31:0] register3, input [31:0] register4, input [31:0] register5, input [31:0] register6, input [31:0] register7, input [31:0] register8, input [31:0] register9, input [31:0] register10, input [31:0] register11, input [31:0] register12, input [31:0] register13, input [31:0] register14, input [31:0] register15, input [31:0] register16, input [31:0] register17, input [31:0] register18, input [31:0] register19, input [31:0] register20, input [31:0] register21, input [31:0] register22, input [31:0] register23, input [31:0] register24, input [31:0] register25, input [31:0] register26, input [31:0] register27, input [31:0] register28, input [31:0] register29, input [31:0] register30, input [31:0] register31, input [4:0]sel, output reg [31:0] out);
      always @ ( register0, register2, register10, sel) begin
            case(sel)
            5'd0: out = register0;
            5'd1: out = register1;
            5'd2: out = register2;
            5'd3: out = register3;
            5'd4: out = register4;
            5'd5: out = register5;
            5'd6: out = register6;
            5'd7: out = register7;
            5'd8: out = register8;
            5'd9: out = register9;
            5'd10: out = register10;
            5'd11: out = register11;
            5'd12: out = register12;
            5'd13: out = register13;
            5'd14: out = register14;
            5'd15: out = register15;
            5'd16: out = register16;
            5'd17: out = register17;
            5'd18: out = register18;
            5'd19: out = register19;
            5'd20: out = register20;
            5'd21: out = register21;
            5'd22: out = register22;
            5'd23: out = register23;
            5'd24: out = register24;
            5'd25: out = register25;
            5'd26: out = register26;
            5'd27: out = register27;
            5'd28: out = register28;
            5'd29: out = register29;
            5'd30: out = register30;
            5'd31: out = register31;
            endcase
      end
endmodule // mux32x1


module Register_File (input clk, input reset, input write, input [4:0] rs_addr, input [4:0] rt_addr, input [4:0] write_addr, input [31:0] writeData, output [31:0] outreg1, output [31:0] outreg2);

      wire [31:0] register0, register1, register2, register3, register4, register5, register6, register7, register8, register9, register10, register11, register12, register13, register14, register15, register16, register17, register18, register19, register20, register21, register22, register23, register24, register25, register26, register27, register28, register29, register30, register31;
      wire [31:0] regsel;
      decoder5to32 deco ( write_addr, regsel);

      registerSet rs ( clk,  reset,  write, regsel, writeData, register0, register1, register2, register3, register4, register5, register6, register7, register8, register9, register10, register11, register12, register13, register14, register15, register16, register17, register18, register19, register20, register21, register22, register23, register24, register25, register26, register27, register28, register29, register30, register31);

      mux32x1 mx (register0, register1, register2, register3, register4, register5, register6, register7, register8, register9, register10, register11, register12, register13, register14, register15, register16, register17, register18, register19, register20, register21, register22, register23, register24, register25, register26, register27, register28, register29, register30, register31, rs_addr, outreg1);

      mux32x1 mx1 (register0, register1, register2, register3, register4, register5, register6, register7, register8, register9, register10, register11, register12, register13, register14, register15, register16, register17, register18, register19, register20, register21, register22, register23, register24, register25, register26, register27, register28, register29, register30, register31, rt_addr, outreg2);

endmodule // Register_File


module dflpflp_im (input reset, input d, output reg q);
      always @ (negedge reset) begin
            q = d;
      end
endmodule // dflipflip_im

module instr_reg (input reset, input [31:0]d, output[31:0]q);

      dflpflp_im d0 (reset, d[0], q[0]);
      dflpflp_im d1 (reset, d[1], q[1]);
      dflpflp_im d2 (reset, d[2], q[2]);
      dflpflp_im d3 (reset, d[3], q[3]);
      dflpflp_im d4 (reset, d[4], q[4]);
      dflpflp_im d5 (reset, d[5], q[5]);
      dflpflp_im d6 (reset, d[6], q[6]);
      dflpflp_im d7 (reset, d[7], q[7]);
      dflpflp_im d8 (reset, d[8], q[8]);
      dflpflp_im d9 (reset, d[9], q[9]);
      dflpflp_im d10 (reset, d[10], q[10]);
      dflpflp_im d11 (reset, d[11], q[11]);
      dflpflp_im d12 (reset, d[12], q[12]);
      dflpflp_im d13 (reset, d[13], q[13]);
      dflpflp_im d14 (reset, d[14], q[14]);
      dflpflp_im d15 (reset, d[15], q[15]);
      dflpflp_im d16 (reset, d[16], q[16]);
      dflpflp_im d17 (reset, d[17], q[17]);
      dflpflp_im d18 (reset, d[18], q[18]);
      dflpflp_im d19 (reset, d[19], q[19]);
      dflpflp_im d20 (reset, d[20], q[20]);
      dflpflp_im d21 (reset, d[21], q[21]);
      dflpflp_im d22 (reset, d[22], q[22]);
      dflpflp_im d23 (reset, d[23], q[23]);
      dflpflp_im d24 (reset, d[24], q[24]);
      dflpflp_im d25 (reset, d[25], q[25]);
      dflpflp_im d26 (reset, d[26], q[26]);
      dflpflp_im d27 (reset, d[27], q[27]);
      dflpflp_im d28 (reset, d[28], q[28]);
      dflpflp_im d29 (reset, d[29], q[29]);
      dflpflp_im d30 (reset, d[30], q[30]);
      dflpflp_im d31 (reset, d[31], q[31]);

endmodule // instr_reg

module mux16x1 (input [31:0] reg0, input [31:0] reg1, input [31:0] reg2, input [31:0] reg3, input [31:0] reg4, input [31:0] reg5, input [31:0] reg6, input [31:0] reg7, input [31:0] reg8, input [31:0] reg9, input [31:0] reg10, input [31:0] reg11, input [31:0] reg12, input [31:0] reg13, input [31:0] reg14, input [31:0] reg15, input [3:0] sel, output reg [31:0] outreg );

      always @ ( sel or reg0 or reg1 or reg2 or reg3 or reg4 or reg5 or reg6 or reg7 or reg8 or reg9 or reg10 or reg11 or reg12 or reg13 or reg14 or reg15) begin
                  case (sel)
                  4'd0: outreg = reg0;
                  4'd1: outreg = reg1;
                  4'd2: outreg = reg2;
                  4'd3: outreg = reg3;
                  4'd4: outreg = reg4;
                  4'd5: outreg = reg5;
                  4'd6: outreg = reg6;
                  4'd7: outreg = reg7;
                  4'd8: outreg = reg8;
                  4'd9: outreg = reg9;
                  4'd10: outreg = reg10;
                  4'd11: outreg = reg11;
                  4'd12: outreg = reg12;
                  4'd13: outreg = reg13;
                  4'd14: outreg = reg14;
                  4'd15: outreg = reg15;
                  endcase
      end

endmodule // mux16x1

module mux4x1_32bit (input [31:0] inreg0, inreg1, inreg2, inreg3, input [1:0]sel, output reg [31:0]outreg_final);
      always @ ( * ) begin
            case (sel)
                  4'd0: outreg_final = inreg0;
                  4'd1: outreg_final = inreg1;
                  4'd2: outreg_final = inreg2;
                  4'd3: outreg_final = inreg3;
            endcase
      end
endmodule // mux4x1_32bit

module mux64x1_32bit (input [31:0] inreg0, inreg1, inreg2, inreg3, inreg4, inreg5, inreg6, inreg7, inreg8, inreg9, inreg10, inreg11, inreg12, inreg13, inreg14, inreg15, inreg16, inreg17, inreg18, inreg19, inreg20, inreg21, inreg22, inreg23, inreg24, inreg25, inreg26, inreg27, inreg28, inreg29, inreg30, inreg31, inreg32, inreg33, inreg34, inreg35, inreg36, inreg37, inreg38, inreg39, inreg40, inreg41, inreg42, inreg43, inreg44, inreg45, inreg46, inreg47, inreg48, inreg49, inreg50, inreg51, inreg52, inreg53, inreg54, inreg55, inreg56, inreg57, inreg58, inreg59, inreg60, inreg61, inreg62, inreg63, input [5:0] sel, output [31:0] outfinal);
            wire [31:0] tempout1, tempout2, tempout3, tempout4;
            mux16x1 mx0 (inreg0, inreg1, inreg2, inreg3, inreg4, inreg5, inreg6, inreg7, inreg8, inreg9, inreg10, inreg11, inreg12, inreg13, inreg14, inreg15, sel[3:0], tempout1);
            mux16x1 mx1 (inreg16, inreg17, inreg18, inreg19, inreg20, inreg21, inreg22, inreg23, inreg24, inreg25, inreg26, inreg27, inreg28, inreg29, inreg30, inreg31, sel[3:0], tempout2);
            mux16x1 mx2 (inreg32, inreg33, inreg34, inreg35, inreg36, inreg37, inreg38, inreg39, inreg40, inreg41, inreg42, inreg43, inreg44, inreg45, inreg46, inreg47, sel [3:0], tempout3);
            mux16x1 mx3 (inreg48, inreg49, inreg50, inreg51, inreg52, inreg53, inreg54, inreg55, inreg56, inreg57, inreg58, inreg59, inreg60, inreg61, inreg62, inreg63, sel[3:0], tempout4);

            mux4x1_32bit mx4 (tempout1, tempout2, tempout3, tempout4, sel[5:4], outfinal);

endmodule // mux64x1

module dec6to64bit (input [5:0] inp, output reg [63:0] out);
      always @ (*) begin
            case (inp)
            6'd0: out = 64'd1;
            6'd1: out = 64'd2;
            6'd2: out = 64'd4;
            6'd3: out = 64'd8;
            6'd4: out = 64'd16;
            6'd5: out = 64'd32;
            6'd6: out = 64'd64;
            6'd7: out = 64'd128;
            6'd8: out = 64'd256;
            6'd9: out = 64'd512;
            6'd10: out = 64'd1024;
            6'd11: out = 64'd2048;
            6'd12: out = 64'd4096;
            6'd13: out = 64'd8192;
            6'd14: out = 64'd16384;
            6'd15: out = 64'd32768;
            6'd16: out = 64'd65536;
            6'd17: out = 64'd131072;
            6'd18: out = 64'd262144;
            6'd19: out = 64'd524288;
            6'd20: out = 64'd1048576;
            6'd21: out = 64'd2097152;
            6'd22: out = 64'd4194304;
            6'd23: out = 64'd8388608;
            6'd24: out = 64'd16777216;
            6'd25: out = 64'd33554432;
            6'd26: out = 64'd67108864;
            6'd27: out = 64'd134217728;
            6'd28: out = 64'd268435456;
            6'd29: out = 64'd536870912;
            6'd30: out = 64'd1073741824;
            6'd31: out = 64'd2147483648;
            6'd32: out = 64'd4294967296;
            6'd33: out = 64'd8589934592;
            6'd34: out = 64'd17179869184;
            6'd35: out = 64'd34359738368;
            6'd36: out = 64'd68719476736;
            6'd37: out = 64'd137438953472;
            6'd38: out = 64'd274877906944;
            6'd39: out = 64'd549755813888;
            6'd40: out = 64'd1099511627776;
            6'd41: out = 64'd2199023255552;
            6'd42: out = 64'd4398046511104;
            6'd43: out = 64'd8796093022208;
            6'd44: out = 64'd17592186044416;
            6'd45: out = 64'd35184372088832;
            6'd46: out = 64'd70368744177664;
            6'd47: out = 64'd140737488355328;
            6'd48: out = 64'd281474976710656;
            6'd49: out = 64'd562949953421312;
            6'd50: out = 64'd1125899906842624;
            6'd51: out = 64'd2251799813685248;
            6'd52: out = 64'd4503599627370496;
            6'd53: out = 64'd9007199254740992;
            6'd54: out = 64'd18014398509481984;
            6'd55: out = 64'd36028797018963968;
            6'd56: out = 64'd72057594037927936;
            6'd57: out = 64'd144115188075855872;
            6'd58: out = 64'd288230376151711744;
            6'd59: out = 64'd576460752303423488;
            6'd60: out = 64'd1152921504606846976;
            6'd61: out = 64'd2305843009213693952;
            6'd62: out = 64'd4611686018427387904;
            6'd63: out = 64'd9223372036854775808;
	endcase
      end
endmodule // dec6to64bit

module insruction_memory (input reset, input [5:0]pc, output [31:0] instruction_out);
      wire [31:0] tout0, tout1, tout2, tout3, tout4, tout5, tout6, tout7, tout8, tout9, tout10, tout11, tout12, tout13, tout14, tout15, tout16, tout17, tout18, tout19, tout20, tout21, tout22, tout23, tout24, tout25, tout26, tout27, tout28, tout29, tout30, tout31, tout32, tout33, tout34, tout35, tout36, tout37, tout38, tout39, tout40, tout41, tout42, tout43, tout44, tout45, tout46, tout47, tout48, tout49, tout50, tout51, tout52, tout53, tout54, tout55, tout56, tout57, tout58, tout59, tout60, tout61, tout62, tout63;

      instr_reg reg0 (reset, 32'h20020005, tout0);
      instr_reg reg1 (reset, 32'h20070003, tout1);
      instr_reg reg2 (reset, 32'h2003000c, tout2);
      instr_reg reg3 (reset, 32'h00e22025, tout3);
      instr_reg reg4 (reset, 32'h00642824, tout4);
      instr_reg reg5 (reset, 32'h00a42820, tout5);
      instr_reg reg6 (reset, 32'h10a70008, tout6);
      instr_reg reg7 (reset, 32'h0064302a, tout7);
      instr_reg reg8 (reset, 32'h10c00001, tout8);
      instr_reg reg9 (reset, 32'h2005000a, tout9);
      instr_reg reg10 (reset, 32'h00e2302a, tout10);
      instr_reg reg11 (reset, 32'h00c53820, tout11);
      instr_reg reg12 (reset, 32'h00e23822, tout12);
      instr_reg reg13 (reset, 32'h0800000f, tout13);
      instr_reg reg14 (reset, 32'h8c070000, tout14);
      instr_reg reg15 (reset, 32'hac470047, tout15);
      instr_reg reg16 (reset, 32'd0, tout16);
      instr_reg reg17 (reset, 32'd0, tout17);
      instr_reg reg18 (reset, 32'd0, tout18);
      instr_reg reg19 (reset, 32'd0, tout19);
      instr_reg reg20 (reset, 32'd0, tout20);
      instr_reg reg21 (reset, 32'd0, tout21);
      instr_reg reg22 (reset, 32'd0, tout22);
      instr_reg reg23 (reset, 32'd0, tout23);
      instr_reg reg24 (reset, 32'd0, tout24);
      instr_reg reg25 (reset, 32'd0, tout25);
      instr_reg reg26 (reset, 32'd0, tout26);
      instr_reg reg27 (reset, 32'd0, tout27);
      instr_reg reg28 (reset, 32'd0, tout28);
      instr_reg reg29 (reset, 32'd0, tout29);
      instr_reg reg30 (reset, 32'd0, tout30);
      instr_reg reg31 (reset, 32'd0, tout31);
      instr_reg reg32 (reset, 32'd0, tout32);
      instr_reg reg33 (reset, 32'd0, tout33);
      instr_reg reg34 (reset, 32'd0, tout34);
      instr_reg reg35 (reset, 32'd0, tout35);
      instr_reg reg36 (reset, 32'd0, tout36);
      instr_reg reg37 (reset, 32'd0, tout37);
      instr_reg reg38 (reset, 32'd0, tout38);
      instr_reg reg39 (reset, 32'd0, tout39);
      instr_reg reg40 (reset, 32'd0, tout40);
      instr_reg reg41 (reset, 32'd0, tout41);
      instr_reg reg42 (reset, 32'd0, tout42);
      instr_reg reg43 (reset, 32'd0, tout43);
      instr_reg reg44 (reset, 32'd0, tout44);
      instr_reg reg45 (reset, 32'd0, tout45);
      instr_reg reg46 (reset, 32'd0, tout46);
      instr_reg reg47 (reset, 32'd0, tout47);
      instr_reg reg48 (reset, 32'd0, tout48);
      instr_reg reg49 (reset, 32'd0, tout49);
      instr_reg reg50 (reset, 32'd0, tout50);
      instr_reg reg51 (reset, 32'd0, tout51);
      instr_reg reg52 (reset, 32'd0, tout52);
      instr_reg reg53 (reset, 32'd0, tout53);
      instr_reg reg54 (reset, 32'd0, tout54);
      instr_reg reg55 (reset, 32'd0, tout55);
      instr_reg reg56 (reset, 32'd0, tout56);
      instr_reg reg57 (reset, 32'd0, tout57);
      instr_reg reg58 (reset, 32'd0, tout58);
      instr_reg reg59 (reset, 32'd0, tout59);
      instr_reg reg60 (reset, 32'd0, tout60);
      instr_reg reg61 (reset, 32'd0, tout61);
      instr_reg reg62 (reset, 32'd0, tout62);
      instr_reg reg63 (reset, 32'd0, tout63);

      mux64x1_32bit mux64_1 (tout0, tout1, tout2, tout3, tout4, tout5, tout6, tout7, tout8, tout9, tout10, tout11, tout12, tout13, tout14, tout15, tout16, tout17, tout18, tout19, tout20, tout21, tout22, tout23, tout24, tout25, tout26, tout27, tout28, tout29, tout30, tout31, tout32, tout33, tout34, tout35, tout36, tout37, tout38, tout39, tout40, tout41, tout42, tout43, tout44, tout45, tout46, tout47, tout48, tout49, tout50, tout51, tout52, tout53, tout54, tout55, tout56, tout57, tout58, tout59, tout60, tout61, tout62, tout63, pc, instruction_out);

endmodule // insruction_memory

module data_register_set (input clk, input reset, input write, input [5:0] reg_addr, input [31:0] writedata, output [31:0] outreg0, outreg1, outreg2, outreg3, outreg4, outreg5, outreg6, outreg7, outreg8, outreg9, outreg10, outreg11, outreg12, outreg13, outreg14, outreg15, outreg16, outreg17, outreg18, outreg19, outreg20, outreg21, outreg22, outreg23, outreg24, outreg25, outreg26, outreg27, outreg28, outreg29, outreg30, outreg31, outreg32, outreg33, outreg34, outreg35, outreg36, outreg37, outreg38, outreg39, outreg40, outreg41, outreg42, outreg43, outreg44, outreg45, outreg46, outreg47, outreg48, outreg49, outreg50, outreg51, outreg52, outreg53, outreg54, outreg55, outreg56, outreg57, outreg58, outreg59, outreg60, outreg61, outreg62, outreg63);

      wire [63:0]regsel;
      dec6to64bit dec (reg_addr,regsel);
      Register r20 (clk, reset, write, regsel[0], writedata, outreg0);
      Register r21 (clk, reset, write, regsel[1], writedata, outreg1);
      Register r22 (clk, reset, write, regsel[2], writedata, outreg2);
      Register r23 (clk, reset, write, regsel[3], writedata, outreg3);
      Register r24 (clk, reset, write, regsel[4], writedata, outreg4);
      Register r25 (clk, reset, write, regsel[5], writedata, outreg5);
      Register r26 (clk, reset, write, regsel[6], writedata, outreg6);
      Register r27 (clk, reset, write, regsel[7], writedata, outreg7);
      Register r28 (clk, reset, write, regsel[8], writedata, outreg8);
      Register r29 (clk, reset, write, regsel[9], writedata, outreg9);
      Register r210 (clk, reset, write, regsel[10], writedata, outreg10);
      Register r211 (clk, reset, write, regsel[11], writedata, outreg11);
      Register r212 (clk, reset, write, regsel[12], writedata, outreg12);
      Register r213 (clk, reset, write, regsel[13], writedata, outreg13);
      Register r214 (clk, reset, write, regsel[14], writedata, outreg14);
      Register r215 (clk, reset, write, regsel[15], writedata, outreg15);
      Register r216 (clk, reset, write, regsel[16], writedata, outreg16);
      Register r217 (clk, reset, write, regsel[17], writedata, outreg17);
      Register r218 (clk, reset, write, regsel[18], writedata, outreg18);
      Register r219 (clk, reset, write, regsel[19], writedata, outreg19);
      Register r220 (clk, reset, write, regsel[20], writedata, outreg20);
      Register r221 (clk, reset, write, regsel[21], writedata, outreg21);
      Register r222 (clk, reset, write, regsel[22], writedata, outreg22);
      Register r223 (clk, reset, write, regsel[23], writedata, outreg23);
      Register r224 (clk, reset, write, regsel[24], writedata, outreg24);
      Register r225 (clk, reset, write, regsel[25], writedata, outreg25);
      Register r226 (clk, reset, write, regsel[26], writedata, outreg26);
      Register r227 (clk, reset, write, regsel[27], writedata, outreg27);
      Register r228 (clk, reset, write, regsel[28], writedata, outreg28);
      Register r229 (clk, reset, write, regsel[29], writedata, outreg29);
      Register r230 (clk, reset, write, regsel[30], writedata, outreg30);
      Register r231 (clk, reset, write, regsel[31], writedata, outreg31);
      Register r232 (clk, reset, write, regsel[32], writedata, outreg32);
      Register r233 (clk, reset, write, regsel[33], writedata, outreg33);
      Register r234 (clk, reset, write, regsel[34], writedata, outreg34);
      Register r235 (clk, reset, write, regsel[35], writedata, outreg35);
      Register r236 (clk, reset, write, regsel[36], writedata, outreg36);
      Register r237 (clk, reset, write, regsel[37], writedata, outreg37);
      Register r238 (clk, reset, write, regsel[38], writedata, outreg38);
      Register r239 (clk, reset, write, regsel[39], writedata, outreg39);
      Register r240 (clk, reset, write, regsel[40], writedata, outreg40);
      Register r241 (clk, reset, write, regsel[41], writedata, outreg41);
      Register r242 (clk, reset, write, regsel[42], writedata, outreg42);
      Register r243 (clk, reset, write, regsel[43], writedata, outreg43);
      Register r244 (clk, reset, write, regsel[44], writedata, outreg44);
      Register r245 (clk, reset, write, regsel[45], writedata, outreg45);
      Register r246 (clk, reset, write, regsel[46], writedata, outreg46);
      Register r247 (clk, reset, write, regsel[47], writedata, outreg47);
      Register r248 (clk, reset, write, regsel[48], writedata, outreg48);
      Register r249 (clk, reset, write, regsel[49], writedata, outreg49);
      Register r250 (clk, reset, write, regsel[50], writedata, outreg50);
      Register r251 (clk, reset, write, regsel[51], writedata, outreg51);
      Register r252 (clk, reset, write, regsel[52], writedata, outreg52);
      Register r253 (clk, reset, write, regsel[53], writedata, outreg53);
      Register r254 (clk, reset, write, regsel[54], writedata, outreg54);
      Register r255 (clk, reset, write, regsel[55], writedata, outreg55);
      Register r256 (clk, reset, write, regsel[56], writedata, outreg56);
      Register r257 (clk, reset, write, regsel[57], writedata, outreg57);
      Register r258 (clk, reset, write, regsel[58], writedata, outreg58);
      Register r259 (clk, reset, write, regsel[59], writedata, outreg59);
      Register r260 (clk, reset, write, regsel[60], writedata, outreg60);
      Register r261 (clk, reset, write, regsel[61], writedata, outreg61);
      Register r262 (clk, reset, write, regsel[62], writedata, outreg62);
      Register r263 (clk, reset, write, regsel[63], writedata, outreg63);

endmodule // data_register_set

module data_memory (input clk, input reset, input write, input [5:0]a, input [31:0] writedata, output [31:0] read_data);

      wire[31:0] outreg0, outreg1, outreg2, outreg3, outreg4, outreg5, outreg6, outreg7, outreg8, outreg9, outreg10, outreg11, outreg12, outreg13, outreg14, outreg15, outreg16, outreg17, outreg18, outreg19, outreg20, outreg21, outreg22, outreg23, outreg24, outreg25, outreg26, outreg27, outreg28, outreg29, outreg30, outreg31, outreg32, outreg33, outreg34, outreg35, outreg36, outreg37, outreg38, outreg39, outreg40, outreg41, outreg42, outreg43, outreg44, outreg45, outreg46, outreg47, outreg48, outreg49, outreg50, outreg51, outreg52, outreg53, outreg54, outreg55, outreg56, outreg57, outreg58, outreg59, outreg60, outreg61, outreg62, outreg63;

      data_register_set drs (clk, reset, write, a, writedata, outreg0, outreg1, outreg2, outreg3, outreg4, outreg5, outreg6, outreg7, outreg8, outreg9, outreg10, outreg11, outreg12, outreg13, outreg14, outreg15, outreg16, outreg17, outreg18, outreg19, outreg20, outreg21, outreg22, outreg23, outreg24, outreg25, outreg26, outreg27, outreg28, outreg29, outreg30, outreg31, outreg32, outreg33, outreg34, outreg35, outreg36, outreg37, outreg38, outreg39, outreg40, outreg41, outreg42, outreg43, outreg44, outreg45, outreg46, outreg47, outreg48, outreg49, outreg50, outreg51, outreg52, outreg53, outreg54, outreg55, outreg56, outreg57, outreg58, outreg59, outreg60, outreg61, outreg62, outreg63);

      mux64x1_32bit mux (outreg0, outreg1, outreg2, outreg3, outreg4, outreg5, outreg6, outreg7, outreg8, outreg9, outreg10, outreg11, outreg12, outreg13, outreg14, outreg15, outreg16, outreg17, outreg18, outreg19, outreg20, outreg21, outreg22, outreg23, outreg24, outreg25, outreg26, outreg27, outreg28, outreg29, outreg30, outreg31, outreg32, outreg33, outreg34, outreg35, outreg36, outreg37, outreg38, outreg39, outreg40, outreg41, outreg42, outreg43, outreg44, outreg45, outreg46, outreg47, outreg48, outreg49, outreg50, outreg51, outreg52, outreg53, outreg54, outreg55, outreg56, outreg57, outreg58, outreg59, outreg60, outreg61, outreg62, outreg63, a, read_data);
endmodule // data_memory

module left_shifter (input [31:0] in, output reg [31:0] out);
      always @ ( * ) begin
            out = in << 2;
      end
endmodule // left_shifter

module sign_extend (input [15:0] in, output reg [31:0] out);
      always @ ( * ) begin
            out[15:0] = in[15:0];
            out[31:16] = {16{in[15]}};
      end
endmodule // sign_extend

module maindec ( input [5:0] opcode, output reg jump, output reg memreg, output  reg memwrite, output reg branch, output reg alusrc, output reg regdst, output reg regwrite, output reg [1:0]aluop);
      always @ (* ) begin
            case (opcode)
                  6'b000000: begin // r type operations
                        memreg = 0;
                        memwrite = 0;
                        branch = 0;
                        alusrc = 0;
                        regdst = 1'b1;
                        regwrite = 1'b1;
                        jump = 1'b0;
                        aluop = 2'b10;
                  end
                  6'b100011: begin // load
                        memreg = 1'b1;
                        memwrite = 1'b0;
                        branch = 1'b0;
                        alusrc = 1'b1;
                        regdst = 1'b0;
                        regwrite = 1'b1;
                        jump = 1'b0;
                        aluop = 2'b00;
                  end
                  6'b101011: begin // store
                        memreg = 1'b1; // irrevelant
                        memwrite = 1'b1;
                        branch = 1'b0;
                        alusrc = 1'b1;
                        regdst = 1'b0;
                        regwrite = 1'b0;
                        jump = 1'b0;
                        aluop = 2'b00;
                  end
                  6'b000100: begin  //beq
                        memreg = 1'b1; // irrevelant
                        memwrite = 1'b0;
                        branch = 1'b1;
                        alusrc = 1'b0;
                        regdst = 1'b0; // irrevelant
                        regwrite = 1'b0; // irrevelant
                        jump = 1'b0;
                        aluop = 2'b01;
                  end
                  6'b001000: begin  // addi
                        memreg = 1'b0;
                        memwrite = 1'b0;
                        branch = 1'b0;
                        alusrc = 1'b1;
                        regdst = 1'b0;
                        regwrite = 1'b1;
                        jump = 1'b0;
                        aluop = 2'b00;
                  end
                  6'b000010: begin  // jump
                        memreg = 1'b0;
                        memwrite = 1'b0;
                        branch = 1'b0;
                        alusrc = 1'b0;
                        regdst = 1'b0;
                        regwrite = 1'b0;
                        jump = 1'b1;
                        aluop = 2'b00;
                  end
            endcase
      end
endmodule // maindec module for controllet unit

module aludec (input [5:0]func, input [1:0] aluop, output reg [2:0] alusel);

      always @ ( func or aluop ) begin
            case (aluop)
                  2'b00: alusel = 3'b010;
                  2'b10: begin
                        if(func == 6'b100000) begin alusel = 3'b010; end
                        else if(func == 6'b100010) begin alusel = 3'b110; end
                        else if(func == 6'b100100) begin alusel = 3'b000; end
                        else if(func == 6'b100101) begin alusel = 3'b001; end
                        else if(func == 6'b101010) begin alusel = 3'b111; end
                  end
                  2'b01: alusel = 3'b110;
            endcase
      end
	  
endmodule // aludec

module control_ckt (input [5:0] opcode, input [5:0]func, output jump, output memreg, output memwrite, output branch, output alusrc, output regdst, output regwrite, output [2:0]alucontrol);

      wire  [1:0]aluop;
      maindec md (opcode, jump,  memreg, memwrite, branch, alusrc, regdst, regwrite,aluop);
      aludec ad (func,  aluop, alucontrol);
endmodule // control_ckt

// alu 32 bit implementation

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

module alu_main (input [31:0]a, input [31:0]b, input [2:0]f, output cout, output [31:0]y, output of, output reg zf);
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

endmodule // alu_main

// alu 32 bit implementation ends ......

 // pcounter

module pc_inc (input [31:0]pc, input [31:0]in, output [31:0] pcplus4);
      assign pcplus4 = pc + in;
endmodule // pc_inc

module adder_simple (input [31:0]a, input [31:0]b, output [31:0] c);
      assign c = a + b;
endmodule // adder_simple

module mux2x1_5bit (input [4:0]a, input [4:0]b, input sel, output reg [4:0]out);
      always @ ( sel or a or b ) begin
                  case(sel)
                  2'b0: out = a;
                  2'b1: out = b;
                  endcase
            end
endmodule // mux2x1_5bit

module leftshift26b (input [25:0]a, output reg [27:0]b);
      always @ ( * ) begin
            b = a <<2;
      end
endmodule // leftshift26b
module datapath (input clk, input reset, input write, input[31:0] instr, input [31:0]readdata,input[2:0]alusel, input alusrc, input pcsrc, output [31:0] pc, output [31:0]aluresult, output [31:0] writedata, output zf,input jump,input regdst,input memreg);
      wire of,cout;
	wire [31:0] pcjump,pcplus4;
      wire [31:0] immext,lsfinal,pcbranch,outz,pcd,result,srca,srcb;
      wire [4:0] writereg;
      wire [27:0] left_shift;

      assign pcjump[31:28] = pcplus4[31:28];
      assign pcjump[27:0] = left_shift;

      leftshift26b ls26 (instr[25:0],left_shift);

      mux2x1 mux01 (pcplus4,  pcbranch,  pcsrc, outz);
      mux2x1 mux02 (outz,  pcjump,  jump, pcd);

      Register pcounter1 (clk, reset,1'b1,1'b1, pcd, pc);
      pc_inc pcinc (pc, 32'd4, pcplus4);

      sign_extend se (instr[15:0], immext);
      left_shifter ls (immext, lsfinal);
      adder_simple ads (lsfinal, pcplus4, pcbranch);

      mux2x1_5bit mux03 (instr[20:16], instr[15:11], regdst, writereg);

      mux2x1 mux04 (aluresult, readdata, memreg, result);

      Register_File rf (clk, reset, write, instr[25:21], instr [20:16], writereg, result, srca, writedata);

      mux2x1 mux05 ( writedata,immext, alusrc, srcb);

      alu_main alu (srca, srcb, alusel, cout, aluresult, of, zf);

endmodule // datapath


module mips (input clk, input reset, input [31:0] instr, input [31:0]readdata, output memwrite, output [31:0] pcf, output [31:0] aluresult, output[31:0] writedata);
      wire pcsrc, regdst, jump, branch, memreg, alusrc, write, zf;
	  
      wire [2:0] alusel;

	//wire pcsrc;
	assign pcsrc = branch & zf;
      control_ckt controller (instr[31:26],instr[5:0], jump, memreg, memwrite, branch, alusrc, regdst, regwrite, alusel);

      datapath d1 (clk, reset, regwrite, instr, readdata, alusel,alusrc,pcsrc, pcf, aluresult, writedata, zf,jump,regdst,memreg);

endmodule // mips

module top(input clk, input reset, output [31:0] pc,output [31:0]instr, output [31:0]aluresult, output [31:0] writedata, output [31:0] readdata);

      wire memwrite,write;
   mips m1( clk,  reset, instr, readdata, memwrite, pc, aluresult,writedata);
   insruction_memory im (reset, pc[7:2],instr);
   data_memory dm (clk, reset, memwrite, aluresult[5:0], writedata, readdata);
endmodule


module top_testmodule();
  reg clk, reset;
wire [31:0]aluresult,writedata,readdata,pc;
wire [31:0] instr;
  top t1 (clk,  reset,pc, instr, aluresult,writedata, readdata);
  initial
  begin
    clk = 1'b0;
    reset = 1'b1;
	#2 reset = 1'b0;
	end
	always
	#5 clk=~clk;
	
endmodule
