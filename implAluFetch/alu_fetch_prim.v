// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Sat Apr 06 05:27:32 2024
//
// Verilog Description of module alu_fetch
//

module alu_fetch (reset, stop_run, rom_address, display, sel, CI);   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(10[8:17])
    input reset;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(11[2:7])
    input stop_run;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(12[2:10])
    input [7:0]rom_address;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(13[2:13])
    output [6:0]display;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(14[2:9])
    output [3:0]sel;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(15[2:5])
    output [23:0]CI;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(16[2:4])
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(89[8:11])
    
    wire GND_net, VCC_net, reset_c, rom_address_c_7, rom_address_c_6, 
        rom_address_c_5, rom_address_c_4, rom_address_c_3, rom_address_c_2, 
        rom_address_c_1, rom_address_c_0, display_c_1, sel_c_3, sel_c_2, 
        sel_c_1, sel_c_0, CI_c_23, CI_c_22, CI_c_21, CI_c_20, CI_c_19, 
        CI_c_18, CI_c_17, CI_c_16, CI_c_15, CI_c_14, CI_c_13, CI_c_12, 
        CI_c_11, CI_c_10, CI_c_9, CI_c_8, CI_c_7, CI_c_6, CI_c_5, 
        CI_c_4, CI_c_3, CI_c_2, CI_c_1, CI_c_0, n2108, n1913;
    wire [3:0]temp_control;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(85[8:20])
    
    wire clk_enable_30, n1989, n2105, n105, n114, n113;
    wire [23:0]pc_out;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(100[8:14])
    wire [23:0]address_bus;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(101[8:19])
    
    wire n4;
    wire [23:0]mbr_out;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(103[8:15])
    wire [23:0]ir_out;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(104[8:14])
    wire [23:0]rpg_in;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(105[8:14])
    wire [1:0]rpg_sel;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(107[8:15])
    wire [21:0]count;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(129[12:17])
    
    wire n20, n2146;
    wire [3:0]temp_control_3__N_61;
    
    wire n1910, n19, n22, rpg_in_23__N_36, clk_enable_20, n6, clk_enable_27, 
        n106, n94, n95, n103, n110, n108, n99, n2071, n96, 
        n102;
    wire [23:0]data_out_23__N_393;
    
    wire n2148, n2054, n2145, n2147, n2138, n2102, n867, n866, 
        n865, n864, n863, n2053, n862, n861, n2052, clk_enable_31, 
        n875, n1907, n2051, n2050, n2049, n2137, n112, n115, 
        n2048, n2047, n2046, n109, n2045, n8, n107, n4_adj_608, 
        n21, n4_adj_609, n2177, n2132, n111, n101, n100, n2090, 
        n104, n98, n2044, n2059, n97, n2107;
    
    VHI i2 (.Z(VCC_net));
    LUT4 n2137_bdd_2_lut (.A(n2137), .B(ir_out[23]), .Z(n2138)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n2137_bdd_2_lut.init = 16'h2222;
    OB CI_pad_4 (.I(CI_c_4), .O(CI[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(16[2:4])
    OSCH OSCinst0 (.STDBY(GND_net), .OSC(clk)) /* synthesis NOM_FREQ="26.60", syn_instantiated=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(111[11:15])
    defparam OSCinst0.NOM_FREQ = "26.60";
    LUT4 i1_4_lut (.A(count[13]), .B(count[15]), .C(count[14]), .D(n4_adj_609), 
         .Z(n4)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut.init = 16'hfcec;
    OB display_pad_6 (.I(GND_net), .O(display[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(14[2:9])
    FD1S1I rpg_in_23__I_0_i1 (.D(ir_out[0]), .CK(rpg_in_23__N_36), .CD(n1907), 
           .Q(rpg_in[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(164[2] 193[14])
    defparam rpg_in_23__I_0_i1.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_55 (.A(count[10]), .B(count[12]), .C(count[11]), 
         .D(n4_adj_608), .Z(n4_adj_609)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_55.init = 16'hfcec;
    LUT4 i1_4_lut_adj_56 (.A(count[6]), .B(count[9]), .C(n8), .D(count[7]), 
         .Z(n4_adj_608)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_56.init = 16'heccc;
    LUT4 temp_control_0__bdd_4_lut (.A(temp_control[0]), .B(temp_control[3]), 
         .C(temp_control[2]), .D(temp_control[1]), .Z(n2132)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D))))) */ ;
    defparam temp_control_0__bdd_4_lut.init = 16'h0117;
    FD1P3AX temp_control_i0 (.D(temp_control_3__N_61[0]), .SP(clk_enable_30), 
            .CK(clk), .Q(temp_control[0])) /* synthesis lse_init_val=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(131[4] 161[11])
    defparam temp_control_i0.GSR = "ENABLED";
    LUT4 i1112_2_lut_3_lut (.A(temp_control[1]), .B(temp_control[2]), .C(temp_control[0]), 
         .Z(temp_control_3__N_61[0])) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i1112_2_lut_3_lut.init = 16'h0101;
    FD1P3IX count_579__i1 (.D(n114), .SP(clk_enable_27), .CD(clk_enable_31), 
            .CK(clk), .Q(n21)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579__i1.GSR = "DISABLED";
    FD1P3IX count_579__i4 (.D(n111), .SP(clk_enable_27), .CD(clk_enable_31), 
            .CK(clk), .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579__i4.GSR = "DISABLED";
    FD1S3AY state_FSM_i0 (.D(n2147), .CK(clk), .Q(n867));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(166[4] 192[14])
    defparam state_FSM_i0.GSR = "ENABLED";
    OB CI_pad_5 (.I(CI_c_5), .O(CI[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(16[2:4])
    LUT4 i3_3_lut (.A(count[8]), .B(count[4]), .C(count[5]), .Z(n8)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i3_3_lut.init = 16'h8080;
    registro24_U0 MBR (.mbr_out({mbr_out}), .clk(clk), .n1913(n1913), 
            .data_out_23__N_393({data_out_23__N_393}));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(124[6:16])
    FD1S3AX state_FSM_i6 (.D(n2102), .CK(clk), .Q(n861));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(166[4] 192[14])
    defparam state_FSM_i6.GSR = "ENABLED";
    LUT4 i1_3_lut_rep_52 (.A(n865), .B(ir_out[22]), .C(ir_out[23]), .Z(n2146)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_3_lut_rep_52.init = 16'h0808;
    FD1S3AX state_FSM_i5 (.D(n2107), .CK(clk), .Q(n862));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(166[4] 192[14])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3AX state_FSM_i4 (.D(n2108), .CK(clk), .Q(n863));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(166[4] 192[14])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3AX state_FSM_i3 (.D(n2105), .CK(clk), .Q(n864));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(166[4] 192[14])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n866), .CK(clk), .Q(n865));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(166[4] 192[14])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n875), .CK(clk), .Q(n866));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(166[4] 192[14])
    defparam state_FSM_i1.GSR = "ENABLED";
    registro24_U2 IR (.ir_out({ir_out}), .clk(clk), .mbr_out({mbr_out}));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(125[5:15])
    LUT4 i1_2_lut_rep_51_4_lut (.A(n865), .B(ir_out[22]), .C(ir_out[23]), 
         .D(ir_out[18]), .Z(n2145)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_51_4_lut.init = 16'h0800;
    FD1P3IX count_579__i5 (.D(n110), .SP(clk_enable_27), .CD(clk_enable_31), 
            .CK(clk), .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579__i5.GSR = "DISABLED";
    CCU2D count_579_add_4_23 (.A0(count[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2054), .S0(n94));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579_add_4_23.INIT0 = 16'hfaaa;
    defparam count_579_add_4_23.INIT1 = 16'h0000;
    defparam count_579_add_4_23.INJECT1_0 = "NO";
    defparam count_579_add_4_23.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_53 (.A(n862), .B(n861), .C(n864), .Z(n2147)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_53.init = 16'hfefe;
    CCU2D count_579_add_4_21 (.A0(count[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2053), .COUT(n2054), .S0(n96), .S1(n95));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579_add_4_21.INIT0 = 16'hfaaa;
    defparam count_579_add_4_21.INIT1 = 16'hfaaa;
    defparam count_579_add_4_21.INJECT1_0 = "NO";
    defparam count_579_add_4_21.INJECT1_1 = "NO";
    FD1S1I rpg_sel_1__I_0_i2 (.D(ir_out[17]), .CK(rpg_in_23__N_36), .CD(n1907), 
           .Q(rpg_sel[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(164[2] 193[14])
    defparam rpg_sel_1__I_0_i2.GSR = "DISABLED";
    FD1S1I rpg_in_23__I_0_i2 (.D(ir_out[1]), .CK(rpg_in_23__N_36), .CD(n1907), 
           .Q(rpg_in[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(164[2] 193[14])
    defparam rpg_in_23__I_0_i2.GSR = "DISABLED";
    FD1S1I rpg_in_23__I_0_i3 (.D(ir_out[2]), .CK(rpg_in_23__N_36), .CD(n1907), 
           .Q(rpg_in[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(164[2] 193[14])
    defparam rpg_in_23__I_0_i3.GSR = "DISABLED";
    FD1S1I rpg_in_23__I_0_i4 (.D(ir_out[3]), .CK(rpg_in_23__N_36), .CD(n1907), 
           .Q(rpg_in[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(164[2] 193[14])
    defparam rpg_in_23__I_0_i4.GSR = "DISABLED";
    FD1S1I rpg_in_23__I_0_i5 (.D(ir_out[4]), .CK(rpg_in_23__N_36), .CD(n1907), 
           .Q(rpg_in[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(164[2] 193[14])
    defparam rpg_in_23__I_0_i5.GSR = "DISABLED";
    FD1S1I rpg_in_23__I_0_i6 (.D(ir_out[5]), .CK(rpg_in_23__N_36), .CD(n1907), 
           .Q(rpg_in[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(164[2] 193[14])
    defparam rpg_in_23__I_0_i6.GSR = "DISABLED";
    FD1S1I rpg_in_23__I_0_i7 (.D(ir_out[6]), .CK(rpg_in_23__N_36), .CD(n1907), 
           .Q(rpg_in[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(164[2] 193[14])
    defparam rpg_in_23__I_0_i7.GSR = "DISABLED";
    FD1S1I rpg_in_23__I_0_i8 (.D(ir_out[7]), .CK(rpg_in_23__N_36), .CD(n1907), 
           .Q(rpg_in[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(164[2] 193[14])
    defparam rpg_in_23__I_0_i8.GSR = "DISABLED";
    FD1S1I rpg_in_23__I_0_i9 (.D(ir_out[8]), .CK(rpg_in_23__N_36), .CD(n1907), 
           .Q(rpg_in[8]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(164[2] 193[14])
    defparam rpg_in_23__I_0_i9.GSR = "DISABLED";
    FD1S1I rpg_in_23__I_0_i10 (.D(ir_out[9]), .CK(rpg_in_23__N_36), .CD(n1907), 
           .Q(rpg_in[9]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(164[2] 193[14])
    defparam rpg_in_23__I_0_i10.GSR = "DISABLED";
    FD1S1I rpg_in_23__I_0_i11 (.D(ir_out[10]), .CK(rpg_in_23__N_36), .CD(n1907), 
           .Q(rpg_in[10]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(164[2] 193[14])
    defparam rpg_in_23__I_0_i11.GSR = "DISABLED";
    FD1S1I rpg_in_23__I_0_i12 (.D(ir_out[11]), .CK(rpg_in_23__N_36), .CD(n1907), 
           .Q(rpg_in[11]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(164[2] 193[14])
    defparam rpg_in_23__I_0_i12.GSR = "DISABLED";
    FD1S1I rpg_in_23__I_0_i13 (.D(ir_out[12]), .CK(rpg_in_23__N_36), .CD(n1907), 
           .Q(rpg_in[12]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(164[2] 193[14])
    defparam rpg_in_23__I_0_i13.GSR = "DISABLED";
    FD1S1I rpg_in_23__I_0_i14 (.D(ir_out[13]), .CK(rpg_in_23__N_36), .CD(n1907), 
           .Q(rpg_in[13]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(164[2] 193[14])
    defparam rpg_in_23__I_0_i14.GSR = "DISABLED";
    FD1S1I rpg_in_23__I_0_i15 (.D(ir_out[14]), .CK(rpg_in_23__N_36), .CD(n1907), 
           .Q(rpg_in[14]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(164[2] 193[14])
    defparam rpg_in_23__I_0_i15.GSR = "DISABLED";
    FD1S1I rpg_in_23__I_0_i16 (.D(ir_out[15]), .CK(rpg_in_23__N_36), .CD(n1907), 
           .Q(rpg_in[15]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(164[2] 193[14])
    defparam rpg_in_23__I_0_i16.GSR = "DISABLED";
    CCU2D count_579_add_4_19 (.A0(count[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2052), .COUT(n2053), .S0(n98), .S1(n97));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579_add_4_19.INIT0 = 16'hfaaa;
    defparam count_579_add_4_19.INIT1 = 16'hfaaa;
    defparam count_579_add_4_19.INJECT1_0 = "NO";
    defparam count_579_add_4_19.INJECT1_1 = "NO";
    LUT4 reduce_or_298_i1_4_lut (.A(ir_out[22]), .B(n867), .C(n865), .D(n2138), 
         .Z(n875)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B+(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(166[4] 192[14])
    defparam reduce_or_298_i1_4_lut.init = 16'hdcfc;
    CCU2D count_579_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2051), .COUT(n2052), .S0(n100), .S1(n99));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579_add_4_17.INIT0 = 16'hfaaa;
    defparam count_579_add_4_17.INIT1 = 16'hfaaa;
    defparam count_579_add_4_17.INJECT1_0 = "NO";
    defparam count_579_add_4_17.INJECT1_1 = "NO";
    FD1P3IX count_579__i6 (.D(n109), .SP(clk_enable_27), .CD(clk_enable_31), 
            .CK(clk), .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579__i6.GSR = "DISABLED";
    FD1P3IX count_579__i7 (.D(n108), .SP(clk_enable_27), .CD(clk_enable_31), 
            .CK(clk), .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579__i7.GSR = "DISABLED";
    OB display_pad_5 (.I(display_c_1), .O(display[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(14[2:9])
    CCU2D count_579_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2050), .COUT(n2051), .S0(n102), .S1(n101));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579_add_4_15.INIT0 = 16'hfaaa;
    defparam count_579_add_4_15.INIT1 = 16'hfaaa;
    defparam count_579_add_4_15.INJECT1_0 = "NO";
    defparam count_579_add_4_15.INJECT1_1 = "NO";
    FD1P3IX count_579__i2 (.D(n113), .SP(clk_enable_27), .CD(clk_enable_31), 
            .CK(clk), .Q(n20)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579__i2.GSR = "DISABLED";
    FD1P3IX count_579__i8 (.D(n107), .SP(clk_enable_27), .CD(clk_enable_31), 
            .CK(clk), .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579__i8.GSR = "DISABLED";
    FD1P3IX count_579__i9 (.D(n106), .SP(clk_enable_27), .CD(clk_enable_31), 
            .CK(clk), .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579__i9.GSR = "DISABLED";
    GSR GSR_INST (.GSR(clk_enable_27));
    CCU2D count_579_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2049), .COUT(n2050), .S0(n104), .S1(n103));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579_add_4_13.INIT0 = 16'hfaaa;
    defparam count_579_add_4_13.INIT1 = 16'hfaaa;
    defparam count_579_add_4_13.INJECT1_0 = "NO";
    defparam count_579_add_4_13.INJECT1_1 = "NO";
    OB CI_pad_6 (.I(CI_c_6), .O(CI[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(16[2:4])
    FD1P3IX count_579__i3 (.D(n112), .SP(clk_enable_27), .CD(clk_enable_31), 
            .CK(clk), .Q(n19)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579__i3.GSR = "DISABLED";
    FD1P3IX count_579__i0 (.D(n115), .SP(clk_enable_27), .CD(clk_enable_31), 
            .CK(clk), .Q(n22)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579__i0.GSR = "DISABLED";
    FD1P3IX count_579__i10 (.D(n105), .SP(clk_enable_27), .CD(clk_enable_31), 
            .CK(clk), .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579__i10.GSR = "DISABLED";
    CCU2D count_579_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2048), .COUT(n2049), .S0(n106), .S1(n105));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579_add_4_11.INIT0 = 16'hfaaa;
    defparam count_579_add_4_11.INIT1 = 16'hfaaa;
    defparam count_579_add_4_11.INJECT1_0 = "NO";
    defparam count_579_add_4_11.INJECT1_1 = "NO";
    CCU2D count_579_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2047), .COUT(n2048), .S0(n108), .S1(n107));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579_add_4_9.INIT0 = 16'hfaaa;
    defparam count_579_add_4_9.INIT1 = 16'hfaaa;
    defparam count_579_add_4_9.INJECT1_0 = "NO";
    defparam count_579_add_4_9.INJECT1_1 = "NO";
    CCU2D count_579_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2046), .COUT(n2047), .S0(n110), .S1(n109));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579_add_4_7.INIT0 = 16'hfaaa;
    defparam count_579_add_4_7.INIT1 = 16'hfaaa;
    defparam count_579_add_4_7.INJECT1_0 = "NO";
    defparam count_579_add_4_7.INJECT1_1 = "NO";
    FD1P3AX sel_i0_i4 (.D(temp_control[3]), .SP(clk_enable_31), .CK(clk), 
            .Q(sel_c_3));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(131[4] 161[11])
    defparam sel_i0_i4.GSR = "DISABLED";
    OB CI_pad_7 (.I(CI_c_7), .O(CI[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(16[2:4])
    LUT4 i1_3_lut_4_lut (.A(reset_c), .B(clk_enable_30), .C(n2090), .D(temp_control[0]), 
         .Z(clk_enable_20)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h4404;
    OB CI_pad_8 (.I(CI_c_8), .O(CI[8]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(16[2:4])
    OB CI_pad_9 (.I(CI_c_9), .O(CI[9]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(16[2:4])
    FD1P3AX sel_i0_i3 (.D(temp_control[2]), .SP(clk_enable_31), .CK(clk), 
            .Q(sel_c_2));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(131[4] 161[11])
    defparam sel_i0_i3.GSR = "DISABLED";
    CCU2D count_579_add_4_5 (.A0(n19), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2045), 
          .COUT(n2046), .S0(n112), .S1(n111));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579_add_4_5.INIT0 = 16'hfaaa;
    defparam count_579_add_4_5.INIT1 = 16'hfaaa;
    defparam count_579_add_4_5.INJECT1_0 = "NO";
    defparam count_579_add_4_5.INJECT1_1 = "NO";
    OB CI_pad_10 (.I(CI_c_10), .O(CI[10]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(16[2:4])
    FD1P3IX count_579__i11 (.D(n104), .SP(clk_enable_27), .CD(clk_enable_31), 
            .CK(clk), .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579__i11.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(ir_out[18]), .B(n2146), .C(n2148), .D(ir_out[21]), 
         .Z(n2108)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0008;
    FD1P3AX sel_i0_i2 (.D(temp_control[1]), .SP(clk_enable_31), .CK(clk), 
            .Q(sel_c_1));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(131[4] 161[11])
    defparam sel_i0_i2.GSR = "DISABLED";
    FD1P3IX count_579__i12 (.D(n103), .SP(clk_enable_27), .CD(clk_enable_31), 
            .CK(clk), .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579__i12.GSR = "DISABLED";
    FD1P3IX count_579__i13 (.D(n102), .SP(clk_enable_27), .CD(clk_enable_31), 
            .CK(clk), .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579__i13.GSR = "DISABLED";
    OB CI_pad_11 (.I(CI_c_11), .O(CI[11]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(16[2:4])
    OB CI_pad_12 (.I(CI_c_12), .O(CI[12]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(16[2:4])
    OB CI_pad_13 (.I(CI_c_13), .O(CI[13]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(16[2:4])
    FD1P3IX count_579__i14 (.D(n101), .SP(clk_enable_27), .CD(clk_enable_31), 
            .CK(clk), .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579__i14.GSR = "DISABLED";
    OB CI_pad_14 (.I(CI_c_14), .O(CI[14]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(16[2:4])
    FD1P3AX display_i0_i2 (.D(n2132), .SP(clk_enable_20), .CK(clk), .Q(display_c_1));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(131[4] 161[11])
    defparam display_i0_i2.GSR = "DISABLED";
    OB CI_pad_15 (.I(CI_c_15), .O(CI[15]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(16[2:4])
    LUT4 i907_1_lut (.A(reset_c), .Z(clk_enable_27)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(11[2:7])
    defparam i907_1_lut.init = 16'h5555;
    FD1P3IX count_579__i15 (.D(n100), .SP(clk_enable_27), .CD(clk_enable_31), 
            .CK(clk), .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579__i15.GSR = "DISABLED";
    registro24 PC (.\pc_out[0] (pc_out[0]), .clk(clk), .rom_address_c_0(rom_address_c_0), 
            .\pc_out[7] (pc_out[7]), .rom_address_c_7(rom_address_c_7), 
            .\pc_out[6] (pc_out[6]), .rom_address_c_6(rom_address_c_6), 
            .\pc_out[5] (pc_out[5]), .rom_address_c_5(rom_address_c_5), 
            .\pc_out[4] (pc_out[4]), .rom_address_c_4(rom_address_c_4), 
            .\pc_out[3] (pc_out[3]), .rom_address_c_3(rom_address_c_3), 
            .\pc_out[2] (pc_out[2]), .rom_address_c_2(rom_address_c_2), 
            .\pc_out[1] (pc_out[1]), .rom_address_c_1(rom_address_c_1));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(122[5:15])
    FD1P3IX count_579__i16 (.D(n99), .SP(clk_enable_27), .CD(clk_enable_31), 
            .CK(clk), .Q(count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579__i16.GSR = "DISABLED";
    CCU2D count_579_add_4_3 (.A0(n21), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n20), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2044), 
          .COUT(n2045), .S0(n114), .S1(n113));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579_add_4_3.INIT0 = 16'hfaaa;
    defparam count_579_add_4_3.INIT1 = 16'hfaaa;
    defparam count_579_add_4_3.INJECT1_0 = "NO";
    defparam count_579_add_4_3.INJECT1_1 = "NO";
    OB CI_pad_16 (.I(CI_c_16), .O(CI[16]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(16[2:4])
    FD1P3IX count_579__i17 (.D(n98), .SP(clk_enable_27), .CD(clk_enable_31), 
            .CK(clk), .Q(count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579__i17.GSR = "DISABLED";
    OB CI_pad_17 (.I(CI_c_17), .O(CI[17]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(16[2:4])
    OB CI_pad_18 (.I(CI_c_18), .O(CI[18]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(16[2:4])
    OB CI_pad_19 (.I(CI_c_19), .O(CI[19]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(16[2:4])
    FD1P3IX count_579__i18 (.D(n97), .SP(clk_enable_27), .CD(clk_enable_31), 
            .CK(clk), .Q(count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579__i18.GSR = "DISABLED";
    FD1P3IX count_579__i19 (.D(n96), .SP(clk_enable_27), .CD(clk_enable_31), 
            .CK(clk), .Q(count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579__i19.GSR = "DISABLED";
    OB CI_pad_20 (.I(CI_c_20), .O(CI[20]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(16[2:4])
    OB CI_pad_21 (.I(CI_c_21), .O(CI[21]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(16[2:4])
    OB CI_pad_22 (.I(CI_c_22), .O(CI[22]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(16[2:4])
    OB CI_pad_23 (.I(CI_c_23), .O(CI[23]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(16[2:4])
    FD1P3IX count_579__i20 (.D(n95), .SP(clk_enable_27), .CD(clk_enable_31), 
            .CK(clk), .Q(count[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579__i20.GSR = "DISABLED";
    OB sel_pad_0 (.I(sel_c_0), .O(sel[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(15[2:5])
    IB rom_address_pad_0 (.I(rom_address[0]), .O(rom_address_c_0));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(13[2:13])
    OB sel_pad_1 (.I(sel_c_1), .O(sel[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(15[2:5])
    OB sel_pad_2 (.I(sel_c_2), .O(sel[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(15[2:5])
    OB sel_pad_3 (.I(sel_c_3), .O(sel[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(15[2:5])
    OB display_pad_0 (.I(display_c_1), .O(display[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(14[2:9])
    OB display_pad_1 (.I(display_c_1), .O(display[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(14[2:9])
    FD1P3IX count_579__i21 (.D(n94), .SP(clk_enable_27), .CD(clk_enable_31), 
            .CK(clk), .Q(count[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579__i21.GSR = "DISABLED";
    OB display_pad_2 (.I(display_c_1), .O(display[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(14[2:9])
    IB rom_address_pad_1 (.I(rom_address[1]), .O(rom_address_c_1));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(13[2:13])
    OB display_pad_3 (.I(display_c_1), .O(display[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(14[2:9])
    IB rom_address_pad_2 (.I(rom_address[2]), .O(rom_address_c_2));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(13[2:13])
    LUT4 ir_out_23__I_0_246_i7_2_lut_rep_54 (.A(ir_out[19]), .B(ir_out[20]), 
         .Z(n2148)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(175[12:20])
    defparam ir_out_23__I_0_246_i7_2_lut_rep_54.init = 16'heeee;
    OB display_pad_4 (.I(display_c_1), .O(display[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(14[2:9])
    LUT4 ir_out_23__bdd_4_lut (.A(ir_out[18]), .B(ir_out[21]), .C(ir_out[20]), 
         .D(ir_out[19]), .Z(n2137)) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A ((C+(D))+!B))) */ ;
    defparam ir_out_23__bdd_4_lut.init = 16'h220e;
    LUT4 i1_2_lut_3_lut_4_lut_adj_57 (.A(ir_out[18]), .B(n2146), .C(n2148), 
         .D(ir_out[21]), .Z(n2102)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_57.init = 16'h0800;
    IB rom_address_pad_3 (.I(rom_address[3]), .O(rom_address_c_3));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(13[2:13])
    IB rom_address_pad_4 (.I(rom_address[4]), .O(rom_address_c_4));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(13[2:13])
    IB rom_address_pad_5 (.I(rom_address[5]), .O(rom_address_c_5));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(13[2:13])
    LUT4 i908_1_lut (.A(n863), .Z(n1907)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(166[4] 192[14])
    defparam i908_1_lut.init = 16'h5555;
    LUT4 i2_3_lut (.A(temp_control[3]), .B(temp_control[2]), .C(temp_control[1]), 
         .Z(n2059)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(143[6] 158[15])
    defparam i2_3_lut.init = 16'h1010;
    FD1P3IX temp_control_i3 (.D(n2071), .SP(clk_enable_30), .CD(n1910), 
            .CK(clk), .Q(temp_control[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(131[4] 161[11])
    defparam temp_control_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut (.A(n862), .B(n861), .C(n864), .D(n863), .Z(rpg_in_23__N_36)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut (.A(ir_out[21]), .B(n2148), .C(ir_out[18]), .D(n2146), 
         .Z(n2105)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0200;
    FD1P3IX temp_control_i2 (.D(n2059), .SP(clk_enable_30), .CD(n1910), 
            .CK(clk), .Q(temp_control[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(131[4] 161[11])
    defparam temp_control_i2.GSR = "ENABLED";
    LUT4 i1117_2_lut (.A(clk_enable_30), .B(temp_control[0]), .Z(n1989)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1117_2_lut.init = 16'h2222;
    LUT4 i911_2_lut (.A(clk_enable_30), .B(temp_control[0]), .Z(n1910)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(131[4] 161[11])
    defparam i911_2_lut.init = 16'h8888;
    IB rom_address_pad_6 (.I(rom_address[6]), .O(rom_address_c_6));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(13[2:13])
    IB rom_address_pad_7 (.I(rom_address[7]), .O(rom_address_c_7));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(13[2:13])
    IB reset_pad (.I(reset), .O(reset_c));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(11[2:7])
    FD1P3IX temp_control_i1 (.D(n2090), .SP(clk_enable_30), .CD(n1989), 
            .CK(clk), .Q(temp_control[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(131[4] 161[11])
    defparam temp_control_i1.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut_adj_58 (.A(n2145), .B(ir_out[21]), .C(ir_out[20]), 
         .D(ir_out[19]), .Z(n2107)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_58.init = 16'h2000;
    CCU2D count_579_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n22), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2044), .S1(n115));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(138[15:20])
    defparam count_579_add_4_1.INIT0 = 16'hF000;
    defparam count_579_add_4_1.INIT1 = 16'h0555;
    defparam count_579_add_4_1.INJECT1_0 = "NO";
    defparam count_579_add_4_1.INJECT1_1 = "NO";
    Universales RPG (.rpg_sel({rpg_sel}), .\rpg_in[0] (rpg_in[0]), .\rpg_in[1] (rpg_in[1]), 
            .\rpg_in[2] (rpg_in[2]), .\rpg_in[3] (rpg_in[3]), .CI_c_0(CI_c_0), 
            .CI_c_1(CI_c_1), .CI_c_2(CI_c_2), .CI_c_3(CI_c_3), .VCC_net(VCC_net), 
            .GND_net(GND_net), .\rpg_in[4] (rpg_in[4]), .\rpg_in[5] (rpg_in[5]), 
            .\rpg_in[6] (rpg_in[6]), .\rpg_in[7] (rpg_in[7]), .CI_c_4(CI_c_4), 
            .CI_c_5(CI_c_5), .CI_c_6(CI_c_6), .CI_c_7(CI_c_7), .\rpg_in[8] (rpg_in[8]), 
            .\rpg_in[9] (rpg_in[9]), .\rpg_in[10] (rpg_in[10]), .\rpg_in[11] (rpg_in[11]), 
            .CI_c_8(CI_c_8), .CI_c_9(CI_c_9), .CI_c_10(CI_c_10), .CI_c_11(CI_c_11), 
            .\rpg_in[12] (rpg_in[12]), .\rpg_in[13] (rpg_in[13]), .\rpg_in[14] (rpg_in[14]), 
            .\rpg_in[15] (rpg_in[15]), .CI_c_12(CI_c_12), .CI_c_13(CI_c_13), 
            .CI_c_14(CI_c_14), .CI_c_15(CI_c_15), .CI_c_16(CI_c_16), .CI_c_17(CI_c_17), 
            .CI_c_18(CI_c_18), .CI_c_19(CI_c_19), .CI_c_20(CI_c_20), .CI_c_21(CI_c_21), 
            .CI_c_22(CI_c_22), .CI_c_23(CI_c_23));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(119[7:18])
    LUT4 i4_4_lut (.A(count[19]), .B(count[21]), .C(count[20]), .D(n6), 
         .Z(clk_enable_30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    FD1P3AX sel_i0_i1 (.D(temp_control[0]), .SP(clk_enable_31), .CK(clk), 
            .Q(sel_c_0));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(131[4] 161[11])
    defparam sel_i0_i1.GSR = "DISABLED";
    ROM ROM_imp (.clk(clk), .n2177(n2177), .\address_bus[0] (address_bus[0]), 
        .\address_bus[1] (address_bus[1]), .\address_bus[2] (address_bus[2]), 
        .\address_bus[3] (address_bus[3]), .\address_bus[4] (address_bus[4]), 
        .\address_bus[5] (address_bus[5]), .\address_bus[6] (address_bus[6]), 
        .\address_bus[7] (address_bus[7]), .data_out_23__N_393({data_out_23__N_393}), 
        .reset_c(reset_c), .GND_net(GND_net), .VCC_net(VCC_net), .n1913(n1913));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(118[10:13])
    registro24_U1 MAR (.\address_bus[7] (address_bus[7]), .clk(clk), .\pc_out[7] (pc_out[7]), 
            .\address_bus[6] (address_bus[6]), .\pc_out[6] (pc_out[6]), 
            .\address_bus[5] (address_bus[5]), .\pc_out[5] (pc_out[5]), 
            .\address_bus[4] (address_bus[4]), .\pc_out[4] (pc_out[4]), 
            .\address_bus[3] (address_bus[3]), .\pc_out[3] (pc_out[3]), 
            .\address_bus[2] (address_bus[2]), .\pc_out[2] (pc_out[2]), 
            .\address_bus[1] (address_bus[1]), .\pc_out[1] (pc_out[1]), 
            .\address_bus[0] (address_bus[0]), .\pc_out[0] (pc_out[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(123[6:16])
    FD1S1I rpg_sel_1__I_0_i1 (.D(ir_out[16]), .CK(rpg_in_23__N_36), .CD(n1907), 
           .Q(rpg_sel[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(164[2] 193[14])
    defparam rpg_sel_1__I_0_i1.GSR = "DISABLED";
    LUT4 i1115_2_lut_rep_50 (.A(reset_c), .B(clk_enable_30), .Z(clk_enable_31)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1115_2_lut_rep_50.init = 16'h4444;
    LUT4 i1108_3_lut (.A(temp_control[3]), .B(temp_control[2]), .C(temp_control[1]), 
         .Z(n2071)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(143[6] 158[15])
    defparam i1108_3_lut.init = 16'h0404;
    LUT4 i1105_2_lut_3_lut (.A(temp_control[1]), .B(temp_control[2]), .C(temp_control[3]), 
         .Z(n2090)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i1105_2_lut_3_lut.init = 16'h0101;
    OB CI_pad_0 (.I(CI_c_0), .O(CI[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(16[2:4])
    LUT4 m1_lut (.Z(n2177)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 i1_4_lut_adj_59 (.A(count[16]), .B(count[18]), .C(count[17]), 
         .D(n4), .Z(n6)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_59.init = 16'hfcec;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(GND_net));
    OB CI_pad_1 (.I(CI_c_1), .O(CI[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(16[2:4])
    OB CI_pad_2 (.I(CI_c_2), .O(CI[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(16[2:4])
    OB CI_pad_3 (.I(CI_c_3), .O(CI[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(16[2:4])
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module \OSCH("26.60")(1,5) 
// module not written out since it is a black-box. 
//

//
// Verilog Description of module registro24_U0
//

module registro24_U0 (mbr_out, clk, n1913, data_out_23__N_393);
    output [23:0]mbr_out;
    input clk;
    input n1913;
    input [23:0]data_out_23__N_393;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(89[8:11])
    
    FD1S3IX registro_i23 (.D(data_out_23__N_393[23]), .CK(clk), .CD(n1913), 
            .Q(mbr_out[23])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i23.GSR = "ENABLED";
    FD1S3IX registro_i22 (.D(data_out_23__N_393[22]), .CK(clk), .CD(n1913), 
            .Q(mbr_out[22])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i22.GSR = "ENABLED";
    FD1S3IX registro_i21 (.D(data_out_23__N_393[21]), .CK(clk), .CD(n1913), 
            .Q(mbr_out[21])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i21.GSR = "ENABLED";
    FD1S3IX registro_i20 (.D(data_out_23__N_393[20]), .CK(clk), .CD(n1913), 
            .Q(mbr_out[20])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i20.GSR = "ENABLED";
    FD1S3IX registro_i19 (.D(data_out_23__N_393[19]), .CK(clk), .CD(n1913), 
            .Q(mbr_out[19])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i19.GSR = "ENABLED";
    FD1S3IX registro_i18 (.D(data_out_23__N_393[18]), .CK(clk), .CD(n1913), 
            .Q(mbr_out[18])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i18.GSR = "ENABLED";
    FD1S3IX registro_i17 (.D(data_out_23__N_393[17]), .CK(clk), .CD(n1913), 
            .Q(mbr_out[17])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i17.GSR = "ENABLED";
    FD1S3IX registro_i16 (.D(data_out_23__N_393[16]), .CK(clk), .CD(n1913), 
            .Q(mbr_out[16])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i16.GSR = "ENABLED";
    FD1S3IX registro_i15 (.D(data_out_23__N_393[15]), .CK(clk), .CD(n1913), 
            .Q(mbr_out[15])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i15.GSR = "ENABLED";
    FD1S3IX registro_i14 (.D(data_out_23__N_393[14]), .CK(clk), .CD(n1913), 
            .Q(mbr_out[14])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i14.GSR = "ENABLED";
    FD1S3IX registro_i13 (.D(data_out_23__N_393[13]), .CK(clk), .CD(n1913), 
            .Q(mbr_out[13])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i13.GSR = "ENABLED";
    FD1S3IX registro_i12 (.D(data_out_23__N_393[12]), .CK(clk), .CD(n1913), 
            .Q(mbr_out[12])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i12.GSR = "ENABLED";
    FD1S3IX registro_i11 (.D(data_out_23__N_393[11]), .CK(clk), .CD(n1913), 
            .Q(mbr_out[11])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i11.GSR = "ENABLED";
    FD1S3IX registro_i10 (.D(data_out_23__N_393[10]), .CK(clk), .CD(n1913), 
            .Q(mbr_out[10])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i10.GSR = "ENABLED";
    FD1S3IX registro_i9 (.D(data_out_23__N_393[9]), .CK(clk), .CD(n1913), 
            .Q(mbr_out[9])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i9.GSR = "ENABLED";
    FD1S3IX registro_i8 (.D(data_out_23__N_393[8]), .CK(clk), .CD(n1913), 
            .Q(mbr_out[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i8.GSR = "ENABLED";
    FD1S3IX registro_i0 (.D(data_out_23__N_393[0]), .CK(clk), .CD(n1913), 
            .Q(mbr_out[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i0.GSR = "ENABLED";
    FD1S3IX registro_i7 (.D(data_out_23__N_393[7]), .CK(clk), .CD(n1913), 
            .Q(mbr_out[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i7.GSR = "ENABLED";
    FD1S3IX registro_i6 (.D(data_out_23__N_393[6]), .CK(clk), .CD(n1913), 
            .Q(mbr_out[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i6.GSR = "ENABLED";
    FD1S3IX registro_i5 (.D(data_out_23__N_393[5]), .CK(clk), .CD(n1913), 
            .Q(mbr_out[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i5.GSR = "ENABLED";
    FD1S3IX registro_i4 (.D(data_out_23__N_393[4]), .CK(clk), .CD(n1913), 
            .Q(mbr_out[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i4.GSR = "ENABLED";
    FD1S3IX registro_i3 (.D(data_out_23__N_393[3]), .CK(clk), .CD(n1913), 
            .Q(mbr_out[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i3.GSR = "ENABLED";
    FD1S3IX registro_i2 (.D(data_out_23__N_393[2]), .CK(clk), .CD(n1913), 
            .Q(mbr_out[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i2.GSR = "ENABLED";
    FD1S3IX registro_i1 (.D(data_out_23__N_393[1]), .CK(clk), .CD(n1913), 
            .Q(mbr_out[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module registro24_U2
//

module registro24_U2 (ir_out, clk, mbr_out);
    output [23:0]ir_out;
    input clk;
    input [23:0]mbr_out;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(89[8:11])
    
    FD1S3AX registro_i7 (.D(mbr_out[7]), .CK(clk), .Q(ir_out[7])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=125, LSE_RLINE=125 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i7.GSR = "ENABLED";
    FD1S3AX registro_i6 (.D(mbr_out[6]), .CK(clk), .Q(ir_out[6])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=125, LSE_RLINE=125 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i6.GSR = "ENABLED";
    FD1S3AX registro_i5 (.D(mbr_out[5]), .CK(clk), .Q(ir_out[5])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=125, LSE_RLINE=125 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i5.GSR = "ENABLED";
    FD1S3AX registro_i4 (.D(mbr_out[4]), .CK(clk), .Q(ir_out[4])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=125, LSE_RLINE=125 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i4.GSR = "ENABLED";
    FD1S3AX registro_i3 (.D(mbr_out[3]), .CK(clk), .Q(ir_out[3])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=125, LSE_RLINE=125 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i3.GSR = "ENABLED";
    FD1S3AX registro_i0 (.D(mbr_out[0]), .CK(clk), .Q(ir_out[0])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=125, LSE_RLINE=125 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i0.GSR = "ENABLED";
    FD1S3AX registro_i2 (.D(mbr_out[2]), .CK(clk), .Q(ir_out[2])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=125, LSE_RLINE=125 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i2.GSR = "ENABLED";
    FD1S3AX registro_i1 (.D(mbr_out[1]), .CK(clk), .Q(ir_out[1])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=125, LSE_RLINE=125 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i1.GSR = "ENABLED";
    FD1S3AX registro_i23 (.D(mbr_out[23]), .CK(clk), .Q(ir_out[23])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=125, LSE_RLINE=125 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i23.GSR = "ENABLED";
    FD1S3AX registro_i22 (.D(mbr_out[22]), .CK(clk), .Q(ir_out[22])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=125, LSE_RLINE=125 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i22.GSR = "ENABLED";
    FD1S3AX registro_i21 (.D(mbr_out[21]), .CK(clk), .Q(ir_out[21])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=125, LSE_RLINE=125 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i21.GSR = "ENABLED";
    FD1S3AX registro_i20 (.D(mbr_out[20]), .CK(clk), .Q(ir_out[20])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=125, LSE_RLINE=125 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i20.GSR = "ENABLED";
    FD1S3AX registro_i19 (.D(mbr_out[19]), .CK(clk), .Q(ir_out[19])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=125, LSE_RLINE=125 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i19.GSR = "ENABLED";
    FD1S3AX registro_i18 (.D(mbr_out[18]), .CK(clk), .Q(ir_out[18])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=125, LSE_RLINE=125 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i18.GSR = "ENABLED";
    FD1S3AX registro_i17 (.D(mbr_out[17]), .CK(clk), .Q(ir_out[17])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=125, LSE_RLINE=125 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i17.GSR = "ENABLED";
    FD1S3AX registro_i16 (.D(mbr_out[16]), .CK(clk), .Q(ir_out[16])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=125, LSE_RLINE=125 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i16.GSR = "ENABLED";
    FD1S3AX registro_i15 (.D(mbr_out[15]), .CK(clk), .Q(ir_out[15])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=125, LSE_RLINE=125 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i15.GSR = "ENABLED";
    FD1S3AX registro_i14 (.D(mbr_out[14]), .CK(clk), .Q(ir_out[14])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=125, LSE_RLINE=125 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i14.GSR = "ENABLED";
    FD1S3AX registro_i13 (.D(mbr_out[13]), .CK(clk), .Q(ir_out[13])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=125, LSE_RLINE=125 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i13.GSR = "ENABLED";
    FD1S3AX registro_i12 (.D(mbr_out[12]), .CK(clk), .Q(ir_out[12])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=125, LSE_RLINE=125 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i12.GSR = "ENABLED";
    FD1S3AX registro_i11 (.D(mbr_out[11]), .CK(clk), .Q(ir_out[11])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=125, LSE_RLINE=125 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i11.GSR = "ENABLED";
    FD1S3AX registro_i10 (.D(mbr_out[10]), .CK(clk), .Q(ir_out[10])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=125, LSE_RLINE=125 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i10.GSR = "ENABLED";
    FD1S3AX registro_i9 (.D(mbr_out[9]), .CK(clk), .Q(ir_out[9])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=125, LSE_RLINE=125 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i9.GSR = "ENABLED";
    FD1S3AX registro_i8 (.D(mbr_out[8]), .CK(clk), .Q(ir_out[8])) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=125, LSE_RLINE=125 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i8.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module registro24
//

module registro24 (\pc_out[0] , clk, rom_address_c_0, \pc_out[7] , rom_address_c_7, 
            \pc_out[6] , rom_address_c_6, \pc_out[5] , rom_address_c_5, 
            \pc_out[4] , rom_address_c_4, \pc_out[3] , rom_address_c_3, 
            \pc_out[2] , rom_address_c_2, \pc_out[1] , rom_address_c_1);
    output \pc_out[0] ;
    input clk;
    input rom_address_c_0;
    output \pc_out[7] ;
    input rom_address_c_7;
    output \pc_out[6] ;
    input rom_address_c_6;
    output \pc_out[5] ;
    input rom_address_c_5;
    output \pc_out[4] ;
    input rom_address_c_4;
    output \pc_out[3] ;
    input rom_address_c_3;
    output \pc_out[2] ;
    input rom_address_c_2;
    output \pc_out[1] ;
    input rom_address_c_1;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(89[8:11])
    
    FD1S3AX registro_i1 (.D(rom_address_c_0), .CK(clk), .Q(\pc_out[0] )) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=122, LSE_RLINE=122 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i1.GSR = "ENABLED";
    FD1S3AX registro_i8 (.D(rom_address_c_7), .CK(clk), .Q(\pc_out[7] )) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=122, LSE_RLINE=122 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i8.GSR = "ENABLED";
    FD1S3AX registro_i7 (.D(rom_address_c_6), .CK(clk), .Q(\pc_out[6] )) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=122, LSE_RLINE=122 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i7.GSR = "ENABLED";
    FD1S3AX registro_i6 (.D(rom_address_c_5), .CK(clk), .Q(\pc_out[5] )) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=122, LSE_RLINE=122 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i6.GSR = "ENABLED";
    FD1S3AX registro_i5 (.D(rom_address_c_4), .CK(clk), .Q(\pc_out[4] )) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=122, LSE_RLINE=122 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i5.GSR = "ENABLED";
    FD1S3AX registro_i4 (.D(rom_address_c_3), .CK(clk), .Q(\pc_out[3] )) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=122, LSE_RLINE=122 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i4.GSR = "ENABLED";
    FD1S3AX registro_i3 (.D(rom_address_c_2), .CK(clk), .Q(\pc_out[2] )) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=122, LSE_RLINE=122 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i3.GSR = "ENABLED";
    FD1S3AX registro_i2 (.D(rom_address_c_1), .CK(clk), .Q(\pc_out[1] )) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=5, LSE_RCOL=15, LSE_LLINE=122, LSE_RLINE=122 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i2.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module Universales
//

module Universales (rpg_sel, \rpg_in[0] , \rpg_in[1] , \rpg_in[2] , 
            \rpg_in[3] , CI_c_0, CI_c_1, CI_c_2, CI_c_3, VCC_net, 
            GND_net, \rpg_in[4] , \rpg_in[5] , \rpg_in[6] , \rpg_in[7] , 
            CI_c_4, CI_c_5, CI_c_6, CI_c_7, \rpg_in[8] , \rpg_in[9] , 
            \rpg_in[10] , \rpg_in[11] , CI_c_8, CI_c_9, CI_c_10, CI_c_11, 
            \rpg_in[12] , \rpg_in[13] , \rpg_in[14] , \rpg_in[15] , 
            CI_c_12, CI_c_13, CI_c_14, CI_c_15, CI_c_16, CI_c_17, 
            CI_c_18, CI_c_19, CI_c_20, CI_c_21, CI_c_22, CI_c_23);
    input [1:0]rpg_sel;
    input \rpg_in[0] ;
    input \rpg_in[1] ;
    input \rpg_in[2] ;
    input \rpg_in[3] ;
    output CI_c_0;
    output CI_c_1;
    output CI_c_2;
    output CI_c_3;
    input VCC_net;
    input GND_net;
    input \rpg_in[4] ;
    input \rpg_in[5] ;
    input \rpg_in[6] ;
    input \rpg_in[7] ;
    output CI_c_4;
    output CI_c_5;
    output CI_c_6;
    output CI_c_7;
    input \rpg_in[8] ;
    input \rpg_in[9] ;
    input \rpg_in[10] ;
    input \rpg_in[11] ;
    output CI_c_8;
    output CI_c_9;
    output CI_c_10;
    output CI_c_11;
    input \rpg_in[12] ;
    input \rpg_in[13] ;
    input \rpg_in[14] ;
    input \rpg_in[15] ;
    output CI_c_12;
    output CI_c_13;
    output CI_c_14;
    output CI_c_15;
    output CI_c_16;
    output CI_c_17;
    output CI_c_18;
    output CI_c_19;
    output CI_c_20;
    output CI_c_21;
    output CI_c_22;
    output CI_c_23;
    
    
    SPR16X4C selector_1__I_05 (.DI0(\rpg_in[0] ), .DI1(\rpg_in[1] ), .DI2(\rpg_in[2] ), 
            .DI3(\rpg_in[3] ), .AD0(rpg_sel[0]), .AD1(rpg_sel[1]), .AD2(GND_net), 
            .AD3(GND_net), .CK(VCC_net), .WRE(VCC_net), .DO0(CI_c_0), 
            .DO1(CI_c_1), .DO2(CI_c_2), .DO3(CI_c_3));
    defparam selector_1__I_05.initval = "0x0000000000000000";
    SPR16X4C selector_1__I_04 (.DI0(\rpg_in[4] ), .DI1(\rpg_in[5] ), .DI2(\rpg_in[6] ), 
            .DI3(\rpg_in[7] ), .AD0(rpg_sel[0]), .AD1(rpg_sel[1]), .AD2(GND_net), 
            .AD3(GND_net), .CK(VCC_net), .WRE(VCC_net), .DO0(CI_c_4), 
            .DO1(CI_c_5), .DO2(CI_c_6), .DO3(CI_c_7));
    defparam selector_1__I_04.initval = "0x0000000000000000";
    SPR16X4C selector_1__I_03 (.DI0(\rpg_in[8] ), .DI1(\rpg_in[9] ), .DI2(\rpg_in[10] ), 
            .DI3(\rpg_in[11] ), .AD0(rpg_sel[0]), .AD1(rpg_sel[1]), .AD2(GND_net), 
            .AD3(GND_net), .CK(VCC_net), .WRE(VCC_net), .DO0(CI_c_8), 
            .DO1(CI_c_9), .DO2(CI_c_10), .DO3(CI_c_11));
    defparam selector_1__I_03.initval = "0x0000000000000000";
    SPR16X4C selector_1__I_02 (.DI0(\rpg_in[12] ), .DI1(\rpg_in[13] ), .DI2(\rpg_in[14] ), 
            .DI3(\rpg_in[15] ), .AD0(rpg_sel[0]), .AD1(rpg_sel[1]), .AD2(GND_net), 
            .AD3(GND_net), .CK(VCC_net), .WRE(VCC_net), .DO0(CI_c_12), 
            .DO1(CI_c_13), .DO2(CI_c_14), .DO3(CI_c_15));
    defparam selector_1__I_02.initval = "0x0000000000000000";
    SPR16X4C selector_1__I_01 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), 
            .DI3(GND_net), .AD0(rpg_sel[0]), .AD1(rpg_sel[1]), .AD2(GND_net), 
            .AD3(GND_net), .CK(VCC_net), .WRE(VCC_net), .DO0(CI_c_16), 
            .DO1(CI_c_17), .DO2(CI_c_18), .DO3(CI_c_19));
    defparam selector_1__I_01.initval = "0x0000000000000000";
    SPR16X4C selector_1__I_00 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), 
            .DI3(GND_net), .AD0(rpg_sel[0]), .AD1(rpg_sel[1]), .AD2(GND_net), 
            .AD3(GND_net), .CK(VCC_net), .WRE(VCC_net), .DO0(CI_c_20), 
            .DO1(CI_c_21), .DO2(CI_c_22), .DO3(CI_c_23));
    defparam selector_1__I_00.initval = "0x0000000000000000";
    
endmodule
//
// Verilog Description of module ROM
//

module ROM (clk, n2177, \address_bus[0] , \address_bus[1] , \address_bus[2] , 
            \address_bus[3] , \address_bus[4] , \address_bus[5] , \address_bus[6] , 
            \address_bus[7] , data_out_23__N_393, reset_c, GND_net, 
            VCC_net, n1913);
    input clk;
    input n2177;
    input \address_bus[0] ;
    input \address_bus[1] ;
    input \address_bus[2] ;
    input \address_bus[3] ;
    input \address_bus[4] ;
    input \address_bus[5] ;
    input \address_bus[6] ;
    input \address_bus[7] ;
    output [23:0]data_out_23__N_393;
    input reset_c;
    input GND_net;
    input VCC_net;
    output n1913;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(89[8:11])
    
    wire data_out_23__N_345;
    
    FD1S3AX data_out (.D(n2177), .CK(clk), .Q(data_out_23__N_345));   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam data_out.GSR = "ENABLED";
    PDPW8KC mux_353 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
            .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), .DI7(GND_net), 
            .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), .DI11(GND_net), 
            .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), .DI15(GND_net), 
            .DI16(GND_net), .DI17(GND_net), .ADW0(GND_net), .ADW1(GND_net), 
            .ADW2(GND_net), .ADW3(GND_net), .ADW4(GND_net), .ADW5(GND_net), 
            .ADW6(GND_net), .ADW7(GND_net), .ADW8(GND_net), .BE0(GND_net), 
            .BE1(GND_net), .CEW(VCC_net), .CLKW(GND_net), .CSW0(GND_net), 
            .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), 
            .ADR2(GND_net), .ADR3(GND_net), .ADR4(\address_bus[0] ), .ADR5(\address_bus[1] ), 
            .ADR6(\address_bus[2] ), .ADR7(\address_bus[3] ), .ADR8(\address_bus[4] ), 
            .ADR9(\address_bus[5] ), .ADR10(\address_bus[6] ), .ADR11(\address_bus[7] ), 
            .ADR12(GND_net), .CER(VCC_net), .OCER(VCC_net), .CLKR(clk), 
            .CSR0(GND_net), .CSR1(GND_net), .CSR2(GND_net), .RST(reset_c), 
            .DO9(data_out_23__N_393[18]), .DO10(data_out_23__N_393[19]), 
            .DO11(data_out_23__N_393[20]), .DO12(data_out_23__N_393[21]), 
            .DO13(data_out_23__N_393[22]), .DO14(data_out_23__N_393[23]));
    defparam mux_353.DATA_WIDTH_W = 18;
    defparam mux_353.DATA_WIDTH_R = 18;
    defparam mux_353.REGMODE = "NOREG";
    defparam mux_353.CSDECODE_W = "0b000";
    defparam mux_353.CSDECODE_R = "0b000";
    defparam mux_353.GSR = "DISABLED";
    defparam mux_353.RESETMODE = "ASYNC";
    defparam mux_353.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_353.INIT_DATA = "STATIC";
    defparam mux_353.INITVAL_00 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F00018000090001100019";
    defparam mux_353.INITVAL_01 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_353.INITVAL_02 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_353.INITVAL_03 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_353.INITVAL_04 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_353.INITVAL_05 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_353.INITVAL_06 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_353.INITVAL_07 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_353.INITVAL_08 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_353.INITVAL_09 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_353.INITVAL_0A = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_353.INITVAL_0B = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_353.INITVAL_0C = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_353.INITVAL_0D = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_353.INITVAL_0E = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_353.INITVAL_0F = "0x0000000000000000000000000000000000000000000000003F0003F0003F0003F0003F0003F0003F";
    defparam mux_353.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_353.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_353.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_353.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_353.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_353.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_353.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_353.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_353.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_353.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_353.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_353.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_353.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_353.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_353.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_353.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    PDPW8KC mux_352 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
            .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), .DI7(GND_net), 
            .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), .DI11(GND_net), 
            .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), .DI15(GND_net), 
            .DI16(GND_net), .DI17(GND_net), .ADW0(GND_net), .ADW1(GND_net), 
            .ADW2(GND_net), .ADW3(GND_net), .ADW4(GND_net), .ADW5(GND_net), 
            .ADW6(GND_net), .ADW7(GND_net), .ADW8(GND_net), .BE0(GND_net), 
            .BE1(GND_net), .CEW(VCC_net), .CLKW(GND_net), .CSW0(GND_net), 
            .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), 
            .ADR2(GND_net), .ADR3(GND_net), .ADR4(\address_bus[0] ), .ADR5(\address_bus[1] ), 
            .ADR6(\address_bus[2] ), .ADR7(\address_bus[3] ), .ADR8(\address_bus[4] ), 
            .ADR9(\address_bus[5] ), .ADR10(\address_bus[6] ), .ADR11(\address_bus[7] ), 
            .ADR12(GND_net), .CER(VCC_net), .OCER(VCC_net), .CLKR(clk), 
            .CSR0(GND_net), .CSR1(GND_net), .CSR2(GND_net), .RST(reset_c), 
            .DO0(data_out_23__N_393[9]), .DO1(data_out_23__N_393[10]), .DO2(data_out_23__N_393[11]), 
            .DO3(data_out_23__N_393[12]), .DO4(data_out_23__N_393[13]), 
            .DO5(data_out_23__N_393[14]), .DO6(data_out_23__N_393[15]), 
            .DO7(data_out_23__N_393[16]), .DO8(data_out_23__N_393[17]), 
            .DO9(data_out_23__N_393[0]), .DO10(data_out_23__N_393[1]), .DO11(data_out_23__N_393[2]), 
            .DO12(data_out_23__N_393[3]), .DO13(data_out_23__N_393[4]), 
            .DO14(data_out_23__N_393[5]), .DO15(data_out_23__N_393[6]), 
            .DO16(data_out_23__N_393[7]), .DO17(data_out_23__N_393[8]));
    defparam mux_352.DATA_WIDTH_W = 18;
    defparam mux_352.DATA_WIDTH_R = 18;
    defparam mux_352.REGMODE = "NOREG";
    defparam mux_352.CSDECODE_W = "0b000";
    defparam mux_352.CSDECODE_R = "0b000";
    defparam mux_352.GSR = "DISABLED";
    defparam mux_352.RESETMODE = "ASYNC";
    defparam mux_352.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_352.INIT_DATA = "STATIC";
    defparam mux_352.INITVAL_00 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF0000000005000F70000D";
    defparam mux_352.INITVAL_01 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_352.INITVAL_02 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_352.INITVAL_03 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_352.INITVAL_04 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_352.INITVAL_05 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_352.INITVAL_06 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_352.INITVAL_07 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_352.INITVAL_08 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_352.INITVAL_09 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_352.INITVAL_0A = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_352.INITVAL_0B = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_352.INITVAL_0C = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_352.INITVAL_0D = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_352.INITVAL_0E = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_352.INITVAL_0F = "0x0004D00037000170000700012000320004600065003EB3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_352.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_352.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_352.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_352.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_352.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_352.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_352.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_352.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_352.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_352.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_352.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_352.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_352.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_352.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_352.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_352.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    LUT4 i914_1_lut (.A(data_out_23__N_345), .Z(n1913)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i914_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module registro24_U1
//

module registro24_U1 (\address_bus[7] , clk, \pc_out[7] , \address_bus[6] , 
            \pc_out[6] , \address_bus[5] , \pc_out[5] , \address_bus[4] , 
            \pc_out[4] , \address_bus[3] , \pc_out[3] , \address_bus[2] , 
            \pc_out[2] , \address_bus[1] , \pc_out[1] , \address_bus[0] , 
            \pc_out[0] );
    output \address_bus[7] ;
    input clk;
    input \pc_out[7] ;
    output \address_bus[6] ;
    input \pc_out[6] ;
    output \address_bus[5] ;
    input \pc_out[5] ;
    output \address_bus[4] ;
    input \pc_out[4] ;
    output \address_bus[3] ;
    input \pc_out[3] ;
    output \address_bus[2] ;
    input \pc_out[2] ;
    output \address_bus[1] ;
    input \pc_out[1] ;
    output \address_bus[0] ;
    input \pc_out[0] ;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch1.vhd(89[8:11])
    
    FD1S3AX registro_i8 (.D(\pc_out[7] ), .CK(clk), .Q(\address_bus[7] )) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=123, LSE_RLINE=123 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i8.GSR = "ENABLED";
    FD1S3AX registro_i7 (.D(\pc_out[6] ), .CK(clk), .Q(\address_bus[6] )) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=123, LSE_RLINE=123 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i7.GSR = "ENABLED";
    FD1S3AX registro_i6 (.D(\pc_out[5] ), .CK(clk), .Q(\address_bus[5] )) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=123, LSE_RLINE=123 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i6.GSR = "ENABLED";
    FD1S3AX registro_i5 (.D(\pc_out[4] ), .CK(clk), .Q(\address_bus[4] )) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=123, LSE_RLINE=123 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i5.GSR = "ENABLED";
    FD1S3AX registro_i4 (.D(\pc_out[3] ), .CK(clk), .Q(\address_bus[3] )) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=123, LSE_RLINE=123 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i4.GSR = "ENABLED";
    FD1S3AX registro_i3 (.D(\pc_out[2] ), .CK(clk), .Q(\address_bus[2] )) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=123, LSE_RLINE=123 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i3.GSR = "ENABLED";
    FD1S3AX registro_i2 (.D(\pc_out[1] ), .CK(clk), .Q(\address_bus[1] )) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=123, LSE_RLINE=123 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i2.GSR = "ENABLED";
    FD1S3AX registro_i1 (.D(\pc_out[0] ), .CK(clk), .Q(\address_bus[0] )) /* synthesis LSE_LINE_FILE_ID=29, LSE_LCOL=6, LSE_RCOL=16, LSE_LLINE=123, LSE_RLINE=123 */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

