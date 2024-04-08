// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Sun Apr 07 23:55:23 2024
//
// Verilog Description of module alu_fetch
//

module alu_fetch (reset, stop_run, display, sel, CI);   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(11[8:17])
    input reset;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    input stop_run;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(13[2:10])
    output [6:0]display;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    output [3:0]sel;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    output [23:0]CI;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(73[8:11])
    wire clk_0 /* synthesis is_clock=1, SET_AS_NETWORK=clk_0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(74[8:13])
    wire address_bus_7__N_99 /* synthesis is_clock=1, SET_AS_NETWORK=address_bus_7__N_99 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(91[8:19])
    
    wire GND_net, VCC_net, reset_c, display_c_6, display_c_5, display_c_4, 
        display_c_3, display_c_2, display_c_1, display_c_0, sel_c_3, 
        sel_c_2, sel_c_1, sel_c_0, CI_c_23, CI_c_22, CI_c_21, CI_c_20, 
        CI_c_19, CI_c_18, CI_c_17, CI_c_16, CI_c_15, CI_c_14, CI_c_13, 
        CI_c_12, CI_c_11, CI_c_10, CI_c_9, CI_c_8, CI_c_7, CI_c_6, 
        CI_c_5, CI_c_4, CI_c_3, CI_c_2, CI_c_1, CI_c_0;
    wire [13:0]Q;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(76[8:9])
    
    wire n83;
    wire [15:0]Qbcd;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(77[8:12])
    wire [3:0]temp_control;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(78[8:20])
    wire [6:0]u;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(79[8:9])
    wire [6:0]d;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(79[10:11])
    wire [6:0]c;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(79[12:13])
    
    wire n3050, n2885;
    wire [7:0]MAR;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(83[8:11])
    wire [23:0]MBR;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(84[8:11])
    wire [7:0]address_bus;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(91[8:19])
    
    wire clk_enable_52, n2915, n3067, n3649, n2936, n3492, n3750, 
        n3749;
    wire [17:0]\ALU_imp.count ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(114[12:17])
    wire [24:0]\ALU_imp.count1 ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(115[12:18])
    
    wire n3748, n3786, n3500, n3747, n82, n123, n122, n3499, 
        n121, n3761, n120, n20, n116, n110, n119, n3755, clk_enable_67, 
        n3889, clk_0_N_218, n3355, n108, n128, n3769, n126, n127, 
        n107, n106, n125, n124;
    wire [7:0]Q_7__N_38;
    
    wire MAR_7__N_65, n3754, n6, address_bus_7__N_91, address_bus_7__N_92, 
        address_bus_7__N_93, address_bus_7__N_94, address_bus_7__N_95, 
        address_bus_7__N_96, address_bus_7__N_97, address_bus_7__N_98, 
        MBR_23__N_90, CI_23__N_36, n115, n118, n117, n3512, n3781, 
        n3741, n25, bcd_out_15__N_336, bcd_out_15__N_338, n3780, n84, 
        n85, n86, clk_enable_54, n3767, n90, n2963, n4, n89, 
        n2992, bcd_out_15__N_393, n23, n88, n3760, bcd_out_15__N_439, 
        bcd_out_15__N_411, bcd_out_15__N_415, bcd_out_15__N_417, n3739, 
        n21, n22, n18, n17, n16, n3759, n87;
    wire [6:0]DISPLAY_6__N_449;
    
    wire n3498;
    wire [6:0]DISPLAY_6__N_449_adj_583;
    
    wire n3491, n15;
    wire [6:0]DISPLAY_6__N_449_adj_586;
    
    wire n3507, n3013, n3506, n2894;
    wire [23:0]data_out_23__N_456;
    
    wire n93, n2950, n1420, n3497, n3757, n2280, n2895, n2893, 
        n3668, clk_enable_61, n1387, n1465, n1468, n1470, n1473, 
        n1474, n92, n3321, n3514, n3765, n2886, n130, n78, n95, 
        n94, n3505, n129, n3490, n3779, n2935, n3513, n24, n3778, 
        n3666, n91, n3647, n3496, n6_adj_578, n5, n3777, n18_adj_579, 
        n3776, n81, n3775, n3774, n3819, n3773, n3818, n3073, 
        n114, n3495, n3724, n113, n3494, n3489, n112, n3070, 
        n3486, n79, n3722, n3483, n111, n3485, n3817, n3807, 
        n109, n19, clk_enable_65, n3516, n3738, n3068, n3804, 
        n3504, n2891, n3503, n2892, n3484, n3803, n3345, n3502, 
        n3493, n3488, n3501, n6_adj_580, n3236, n3802, n3801, 
        n3772, n3721, n10, clk_enable_49, n3800, n2973, n3487, 
        n3764, n3771, n80, n3888, n2896, n3763, n3762, n2882, 
        n2881;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i1277_1_lut_2_lut_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_415), 
         .C(bcd_out_15__N_411), .D(n3773), .Z(DISPLAY_6__N_449_adj_586[4])) /* synthesis lut_function=(A+(B (C (D)+!C !(D))+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1277_1_lut_2_lut_4_lut_4_lut_4_lut.init = 16'hebaf;
    OSCH OSCinst0 (.STDBY(GND_net), .OSC(clk)) /* synthesis NOM_FREQ="26.60", syn_instantiated=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(99[11:15])
    defparam OSCinst0.NOM_FREQ = "26.60";
    FD1P3IX \ALU_imp.count1_1368__i21  (.D(n109), .SP(clk_enable_65), .CD(n3073), 
            .CK(clk), .Q(\ALU_imp.count1 [21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368__i21 .GSR = "DISABLED";
    FD1P3AX state_FSM__i5 (.D(CI_23__N_36), .SP(clk_enable_52), .CK(clk), 
            .Q(n1470));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(159[4] 202[14])
    defparam state_FSM__i5.GSR = "ENABLED";
    FD1P3AX state_FSM__i4 (.D(MBR_23__N_90), .SP(clk_enable_52), .CK(clk), 
            .Q(CI_23__N_36));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(159[4] 202[14])
    defparam state_FSM__i4.GSR = "ENABLED";
    LUT4 i1763_4_lut (.A(c[6]), .B(d[6]), .C(temp_control[2]), .D(temp_control[1]), 
         .Z(n2881)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(134[6] 151[15])
    defparam i1763_4_lut.init = 16'hcac0;
    FD1P3AX state_FSM__i3 (.D(n1473), .SP(clk_enable_52), .CK(clk), .Q(MBR_23__N_90));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(159[4] 202[14])
    defparam state_FSM__i3.GSR = "ENABLED";
    FD1P3AX clk_0_638 (.D(clk_0_N_218), .SP(clk_enable_65), .CK(clk), 
            .Q(clk_0)) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(117[4] 154[11])
    defparam clk_0_638.GSR = "DISABLED";
    LUT4 i1774_3_lut (.A(n2891), .B(u[4]), .C(temp_control[3]), .Z(n2892)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(134[6] 151[15])
    defparam i1774_3_lut.init = 16'hcaca;
    FD1P3IX \ALU_imp.count1_1368__i12  (.D(n118), .SP(clk_enable_65), .CD(n3073), 
            .CK(clk), .Q(\ALU_imp.count1 [12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368__i12 .GSR = "DISABLED";
    FD1P3AX state_FSM__i2 (.D(n3750), .SP(clk_enable_52), .CK(clk), .Q(n1473));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(159[4] 202[14])
    defparam state_FSM__i2.GSR = "ENABLED";
    FD1S1I MAR_7__I_0_i1 (.D(Q[0]), .CK(MAR_7__N_65), .CD(n3802), .Q(MAR[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MAR_7__I_0_i1.GSR = "DISABLED";
    FD1P3IX \ALU_imp.count1_1368__i14  (.D(n116), .SP(clk_enable_65), .CD(n3073), 
            .CK(clk), .Q(\ALU_imp.count1 [14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368__i14 .GSR = "DISABLED";
    FD1P3IX \ALU_imp.count1_1368__i5  (.D(n125), .SP(clk_enable_65), .CD(n3073), 
            .CK(clk), .Q(n20)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368__i5 .GSR = "DISABLED";
    FD1P3IX \ALU_imp.count1_1368__i9  (.D(n121), .SP(clk_enable_65), .CD(n3073), 
            .CK(clk), .Q(\ALU_imp.count1 [9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368__i9 .GSR = "DISABLED";
    LUT4 i1768_3_lut (.A(n2885), .B(u[5]), .C(temp_control[3]), .Z(n2886)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(134[6] 151[15])
    defparam i1768_3_lut.init = 16'hcaca;
    FD1P3IX \ALU_imp.count1_1368__i13  (.D(n117), .SP(clk_enable_65), .CD(n3073), 
            .CK(clk), .Q(\ALU_imp.count1 [13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368__i13 .GSR = "DISABLED";
    FD1P3IX \ALU_imp.count_1370__i0  (.D(n95), .SP(clk_enable_65), .CD(clk_enable_49), 
            .CK(clk), .Q(n18)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[15:20])
    defparam \ALU_imp.count_1370__i0 .GSR = "DISABLED";
    FD1P3IX \ALU_imp.count_1370__i1  (.D(n94), .SP(clk_enable_65), .CD(clk_enable_49), 
            .CK(clk), .Q(n17)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[15:20])
    defparam \ALU_imp.count_1370__i1 .GSR = "DISABLED";
    CCU2D Q_7__I_0_7 (.A0(Q[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bcd_out_15__N_338), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3485), .COUT(n3486), .S0(Q_7__N_38[5]), .S1(Q_7__N_38[6]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam Q_7__I_0_7.INIT0 = 16'h5aaa;
    defparam Q_7__I_0_7.INIT1 = 16'h5aaa;
    defparam Q_7__I_0_7.INJECT1_0 = "NO";
    defparam Q_7__I_0_7.INJECT1_1 = "NO";
    FD1S1I CI_23__I_0_822_i1 (.D(MBR[0]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(CI_c_0));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam CI_23__I_0_822_i1.GSR = "DISABLED";
    FD1P3AX sel_i0_i1 (.D(temp_control[0]), .SP(clk_enable_49), .CK(clk), 
            .Q(sel_c_0));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(117[4] 154[11])
    defparam sel_i0_i1.GSR = "DISABLED";
    FD1P3IX \ALU_imp.count1_1368__i15  (.D(n115), .SP(clk_enable_65), .CD(n3073), 
            .CK(clk), .Q(\ALU_imp.count1 [15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368__i15 .GSR = "DISABLED";
    FD1P3IX \ALU_imp.count1_1368__i17  (.D(n113), .SP(clk_enable_65), .CD(n3073), 
            .CK(clk), .Q(\ALU_imp.count1 [17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368__i17 .GSR = "DISABLED";
    FD1P3IX \ALU_imp.count_1370__i2  (.D(n93), .SP(clk_enable_65), .CD(clk_enable_49), 
            .CK(clk), .Q(n16)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[15:20])
    defparam \ALU_imp.count_1370__i2 .GSR = "DISABLED";
    CCU2D \ALU_imp.count1_1368_add_4_5  (.A0(n22), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n21), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3497), .COUT(n3498), .S0(n127), .S1(n126));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368_add_4_5 .INIT0 = 16'hfaaa;
    defparam \ALU_imp.count1_1368_add_4_5 .INIT1 = 16'hfaaa;
    defparam \ALU_imp.count1_1368_add_4_5 .INJECT1_0 = "NO";
    defparam \ALU_imp.count1_1368_add_4_5 .INJECT1_1 = "NO";
    FD1P3IX \ALU_imp.count1_1368__i6  (.D(n124), .SP(clk_enable_65), .CD(n3073), 
            .CK(clk), .Q(n19)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368__i6 .GSR = "DISABLED";
    OB display_pad_5 (.I(display_c_5), .O(display[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    FD1P3IX \ALU_imp.count_1370__i3  (.D(n92), .SP(clk_enable_65), .CD(clk_enable_49), 
            .CK(clk), .Q(n15)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[15:20])
    defparam \ALU_imp.count_1370__i3 .GSR = "DISABLED";
    FD1P3AX display_i0_i7 (.D(n2882), .SP(clk_enable_54), .CK(clk), .Q(display_c_6));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(117[4] 154[11])
    defparam display_i0_i7.GSR = "DISABLED";
    FD1P3IX \ALU_imp.count_1370__i4  (.D(n91), .SP(clk_enable_65), .CD(clk_enable_49), 
            .CK(clk), .Q(\ALU_imp.count [4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[15:20])
    defparam \ALU_imp.count_1370__i4 .GSR = "DISABLED";
    FD1P3AX display_i0_i6 (.D(n2886), .SP(clk_enable_54), .CK(clk), .Q(display_c_5));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(117[4] 154[11])
    defparam display_i0_i6.GSR = "DISABLED";
    FD1P3AX display_i0_i5 (.D(n2892), .SP(clk_enable_54), .CK(clk), .Q(display_c_4));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(117[4] 154[11])
    defparam display_i0_i5.GSR = "DISABLED";
    FD1P3AX display_i0_i4 (.D(n2894), .SP(clk_enable_54), .CK(clk), .Q(display_c_3));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(117[4] 154[11])
    defparam display_i0_i4.GSR = "DISABLED";
    FD1P3IX \ALU_imp.count_1370__i5  (.D(n90), .SP(clk_enable_65), .CD(clk_enable_49), 
            .CK(clk), .Q(\ALU_imp.count [5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[15:20])
    defparam \ALU_imp.count_1370__i5 .GSR = "DISABLED";
    FD1P3AX display_i0_i3 (.D(n2896), .SP(clk_enable_54), .CK(clk), .Q(display_c_2));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(117[4] 154[11])
    defparam display_i0_i3.GSR = "DISABLED";
    FD1P3IX \ALU_imp.count_1370__i6  (.D(n89), .SP(clk_enable_65), .CD(clk_enable_49), 
            .CK(clk), .Q(\ALU_imp.count [6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[15:20])
    defparam \ALU_imp.count_1370__i6 .GSR = "DISABLED";
    FD1P3IX \ALU_imp.count1_1368__i7  (.D(n123), .SP(clk_enable_65), .CD(n3073), 
            .CK(clk), .Q(n18_adj_579)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368__i7 .GSR = "DISABLED";
    FD1P3IX \ALU_imp.count_1370__i7  (.D(n88), .SP(clk_enable_65), .CD(clk_enable_49), 
            .CK(clk), .Q(\ALU_imp.count [7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[15:20])
    defparam \ALU_imp.count_1370__i7 .GSR = "DISABLED";
    PFUMX i2567 (.BLUT(n3749), .ALUT(n3748), .C0(n1470), .Z(n3750));
    FD1P3IX \ALU_imp.count1_1368__i16  (.D(n114), .SP(clk_enable_65), .CD(n3073), 
            .CK(clk), .Q(\ALU_imp.count1 [16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368__i16 .GSR = "DISABLED";
    FD1P3IX \ALU_imp.count_1370__i8  (.D(n87), .SP(clk_enable_65), .CD(clk_enable_49), 
            .CK(clk), .Q(\ALU_imp.count [8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[15:20])
    defparam \ALU_imp.count_1370__i8 .GSR = "DISABLED";
    LUT4 i1773_4_lut (.A(c[4]), .B(d[4]), .C(temp_control[2]), .D(temp_control[1]), 
         .Z(n2891)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(134[6] 151[15])
    defparam i1773_4_lut.init = 16'hcacf;
    LUT4 m0_lut (.Z(n3888)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    LUT4 i1803_1_lut_rep_94 (.A(reset_c), .Z(clk_enable_65)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1803_1_lut_rep_94.init = 16'h5555;
    FD1P3IX \ALU_imp.count1_1368__i19  (.D(n111), .SP(clk_enable_65), .CD(n3073), 
            .CK(clk), .Q(\ALU_imp.count1 [19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368__i19 .GSR = "DISABLED";
    FD1P3IX \ALU_imp.count_1370__i9  (.D(n86), .SP(clk_enable_65), .CD(clk_enable_49), 
            .CK(clk), .Q(\ALU_imp.count [9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[15:20])
    defparam \ALU_imp.count_1370__i9 .GSR = "DISABLED";
    FD1P3IX \ALU_imp.count1_1368__i0  (.D(n130), .SP(clk_enable_65), .CD(n3073), 
            .CK(clk), .Q(n25)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368__i0 .GSR = "DISABLED";
    IB reset_pad (.I(reset), .O(reset_c));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    OB CI_pad_0 (.I(CI_c_0), .O(CI[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_1 (.I(CI_c_1), .O(CI[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_2 (.I(CI_c_2), .O(CI[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_3 (.I(CI_c_3), .O(CI[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_4 (.I(CI_c_4), .O(CI[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_5 (.I(CI_c_5), .O(CI[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_6 (.I(CI_c_6), .O(CI[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_7 (.I(CI_c_7), .O(CI[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB display_pad_4 (.I(display_c_4), .O(display[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    FD1P3AX state_FSM__i6 (.D(n3649), .SP(clk_enable_52), .CK(clk), .Q(n1468));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(159[4] 202[14])
    defparam state_FSM__i6.GSR = "ENABLED";
    OB CI_pad_8 (.I(CI_c_8), .O(CI[8]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_9 (.I(CI_c_9), .O(CI[9]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_10 (.I(CI_c_10), .O(CI[10]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    FD1P3IX \ALU_imp.count_1370__i10  (.D(n85), .SP(clk_enable_65), .CD(clk_enable_49), 
            .CK(clk), .Q(\ALU_imp.count [10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[15:20])
    defparam \ALU_imp.count_1370__i10 .GSR = "DISABLED";
    CCU2D \ALU_imp.count1_1368_add_4_3  (.A0(n24), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n23), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3496), .COUT(n3497), .S0(n129), .S1(n128));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368_add_4_3 .INIT0 = 16'hfaaa;
    defparam \ALU_imp.count1_1368_add_4_3 .INIT1 = 16'hfaaa;
    defparam \ALU_imp.count1_1368_add_4_3 .INJECT1_0 = "NO";
    defparam \ALU_imp.count1_1368_add_4_3 .INJECT1_1 = "NO";
    OB CI_pad_11 (.I(CI_c_11), .O(CI[11]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    CCU2D \ALU_imp.count_1370_add_4_9  (.A0(\ALU_imp.count [7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\ALU_imp.count [8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3490), .COUT(n3491), .S0(n88), 
          .S1(n87));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[15:20])
    defparam \ALU_imp.count_1370_add_4_9 .INIT0 = 16'hfaaa;
    defparam \ALU_imp.count_1370_add_4_9 .INIT1 = 16'hfaaa;
    defparam \ALU_imp.count_1370_add_4_9 .INJECT1_0 = "NO";
    defparam \ALU_imp.count_1370_add_4_9 .INJECT1_1 = "NO";
    OB CI_pad_12 (.I(CI_c_12), .O(CI[12]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_13 (.I(CI_c_13), .O(CI[13]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    LUT4 i1776_3_lut (.A(n2893), .B(u[3]), .C(temp_control[3]), .Z(n2894)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(134[6] 151[15])
    defparam i1776_3_lut.init = 16'hcaca;
    FD1S1A address_bus_7__I_0_i2 (.D(address_bus_7__N_97), .CK(address_bus_7__N_99), 
           .Q(address_bus[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam address_bus_7__I_0_i2.GSR = "DISABLED";
    FD1S1A address_bus_7__I_0_i3 (.D(address_bus_7__N_96), .CK(address_bus_7__N_99), 
           .Q(address_bus[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam address_bus_7__I_0_i3.GSR = "DISABLED";
    FD1S1A address_bus_7__I_0_i4 (.D(address_bus_7__N_95), .CK(address_bus_7__N_99), 
           .Q(address_bus[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam address_bus_7__I_0_i4.GSR = "DISABLED";
    FD1S1A address_bus_7__I_0_i5 (.D(address_bus_7__N_94), .CK(address_bus_7__N_99), 
           .Q(address_bus[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam address_bus_7__I_0_i5.GSR = "DISABLED";
    FD1S1A address_bus_7__I_0_i6 (.D(address_bus_7__N_93), .CK(address_bus_7__N_99), 
           .Q(address_bus[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam address_bus_7__I_0_i6.GSR = "DISABLED";
    FD1S1A address_bus_7__I_0_i7 (.D(address_bus_7__N_92), .CK(address_bus_7__N_99), 
           .Q(address_bus[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam address_bus_7__I_0_i7.GSR = "DISABLED";
    FD1S1A address_bus_7__I_0_i8 (.D(address_bus_7__N_91), .CK(address_bus_7__N_99), 
           .Q(address_bus[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam address_bus_7__I_0_i8.GSR = "DISABLED";
    FD1S1I MAR_7__I_0_i2 (.D(Q[1]), .CK(MAR_7__N_65), .CD(n3802), .Q(MAR[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MAR_7__I_0_i2.GSR = "DISABLED";
    FD1S1I MAR_7__I_0_i3 (.D(Q[2]), .CK(MAR_7__N_65), .CD(n3802), .Q(MAR[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MAR_7__I_0_i3.GSR = "DISABLED";
    FD1S1I MAR_7__I_0_i4 (.D(Q[3]), .CK(MAR_7__N_65), .CD(n3802), .Q(MAR[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MAR_7__I_0_i4.GSR = "DISABLED";
    FD1S1I MAR_7__I_0_i5 (.D(Q[4]), .CK(MAR_7__N_65), .CD(n3802), .Q(MAR[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MAR_7__I_0_i5.GSR = "DISABLED";
    FD1S1I MAR_7__I_0_i6 (.D(Q[5]), .CK(MAR_7__N_65), .CD(n3802), .Q(MAR[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MAR_7__I_0_i6.GSR = "DISABLED";
    FD1S1I MAR_7__I_0_i7 (.D(bcd_out_15__N_338), .CK(MAR_7__N_65), .CD(n3802), 
           .Q(MAR[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MAR_7__I_0_i7.GSR = "DISABLED";
    FD1S1I MAR_7__I_0_i8 (.D(bcd_out_15__N_336), .CK(MAR_7__N_65), .CD(n3802), 
           .Q(MAR[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MAR_7__I_0_i8.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i2 (.D(data_out_23__N_456[1]), .CK(MBR_23__N_90), 
           .CD(n3067), .Q(MBR[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MBR_23__I_0_i2.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i3 (.D(data_out_23__N_456[2]), .CK(MBR_23__N_90), 
           .CD(n3067), .Q(MBR[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MBR_23__I_0_i3.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i4 (.D(data_out_23__N_456[3]), .CK(MBR_23__N_90), 
           .CD(n3067), .Q(MBR[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MBR_23__I_0_i4.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i5 (.D(data_out_23__N_456[4]), .CK(MBR_23__N_90), 
           .CD(n3067), .Q(MBR[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MBR_23__I_0_i5.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i6 (.D(data_out_23__N_456[5]), .CK(MBR_23__N_90), 
           .CD(n3067), .Q(MBR[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MBR_23__I_0_i6.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i7 (.D(data_out_23__N_456[6]), .CK(MBR_23__N_90), 
           .CD(n3067), .Q(MBR[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MBR_23__I_0_i7.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i8 (.D(data_out_23__N_456[7]), .CK(MBR_23__N_90), 
           .CD(n3067), .Q(MBR[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MBR_23__I_0_i8.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i9 (.D(data_out_23__N_456[8]), .CK(MBR_23__N_90), 
           .CD(n3067), .Q(MBR[8]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MBR_23__I_0_i9.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i10 (.D(data_out_23__N_456[9]), .CK(MBR_23__N_90), 
           .CD(n3067), .Q(MBR[9]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MBR_23__I_0_i10.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i11 (.D(data_out_23__N_456[10]), .CK(MBR_23__N_90), 
           .CD(n3067), .Q(MBR[10]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MBR_23__I_0_i11.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i12 (.D(data_out_23__N_456[11]), .CK(MBR_23__N_90), 
           .CD(n3067), .Q(MBR[11]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MBR_23__I_0_i12.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i13 (.D(data_out_23__N_456[12]), .CK(MBR_23__N_90), 
           .CD(n3067), .Q(MBR[12]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MBR_23__I_0_i13.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i14 (.D(data_out_23__N_456[13]), .CK(MBR_23__N_90), 
           .CD(n3067), .Q(MBR[13]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MBR_23__I_0_i14.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i15 (.D(data_out_23__N_456[14]), .CK(MBR_23__N_90), 
           .CD(n3067), .Q(MBR[14]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MBR_23__I_0_i15.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i16 (.D(data_out_23__N_456[15]), .CK(MBR_23__N_90), 
           .CD(n3067), .Q(MBR[15]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MBR_23__I_0_i16.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i17 (.D(data_out_23__N_456[16]), .CK(MBR_23__N_90), 
           .CD(n3067), .Q(MBR[16]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MBR_23__I_0_i17.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i18 (.D(data_out_23__N_456[17]), .CK(MBR_23__N_90), 
           .CD(n3067), .Q(MBR[17]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MBR_23__I_0_i18.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i19 (.D(data_out_23__N_456[18]), .CK(MBR_23__N_90), 
           .CD(n3067), .Q(MBR[18]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MBR_23__I_0_i19.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i20 (.D(data_out_23__N_456[19]), .CK(MBR_23__N_90), 
           .CD(n3067), .Q(MBR[19]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MBR_23__I_0_i20.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i21 (.D(data_out_23__N_456[20]), .CK(MBR_23__N_90), 
           .CD(n3067), .Q(MBR[20]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MBR_23__I_0_i21.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i22 (.D(data_out_23__N_456[21]), .CK(MBR_23__N_90), 
           .CD(n3067), .Q(MBR[21]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MBR_23__I_0_i22.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i23 (.D(data_out_23__N_456[22]), .CK(MBR_23__N_90), 
           .CD(n3067), .Q(MBR[22]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MBR_23__I_0_i23.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i24 (.D(data_out_23__N_456[23]), .CK(MBR_23__N_90), 
           .CD(n3067), .Q(MBR[23]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MBR_23__I_0_i24.GSR = "DISABLED";
    FD1S1I Q_7__I_0_821_i2 (.D(Q_7__N_38[1]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(Q[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam Q_7__I_0_821_i2.GSR = "DISABLED";
    FD1S1I Q_7__I_0_821_i3 (.D(Q_7__N_38[2]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(Q[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam Q_7__I_0_821_i3.GSR = "DISABLED";
    FD1S1I Q_7__I_0_821_i4 (.D(Q_7__N_38[3]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(Q[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam Q_7__I_0_821_i4.GSR = "DISABLED";
    FD1S1I Q_7__I_0_821_i5 (.D(Q_7__N_38[4]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(Q[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam Q_7__I_0_821_i5.GSR = "DISABLED";
    FD1S1I Q_7__I_0_821_i6 (.D(Q_7__N_38[5]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(Q[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam Q_7__I_0_821_i6.GSR = "DISABLED";
    FD1S1I Q_7__I_0_821_i7 (.D(Q_7__N_38[6]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(bcd_out_15__N_338)) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam Q_7__I_0_821_i7.GSR = "DISABLED";
    FD1S1I Q_7__I_0_821_i8 (.D(Q_7__N_38[7]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(bcd_out_15__N_336)) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam Q_7__I_0_821_i8.GSR = "DISABLED";
    FD1S1I CI_23__I_0_822_i2 (.D(MBR[1]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(CI_c_1));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam CI_23__I_0_822_i2.GSR = "DISABLED";
    FD1S1I CI_23__I_0_822_i3 (.D(MBR[2]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(CI_c_2));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam CI_23__I_0_822_i3.GSR = "DISABLED";
    FD1S1I CI_23__I_0_822_i4 (.D(MBR[3]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(CI_c_3));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam CI_23__I_0_822_i4.GSR = "DISABLED";
    FD1S1I CI_23__I_0_822_i5 (.D(MBR[4]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(CI_c_4));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam CI_23__I_0_822_i5.GSR = "DISABLED";
    FD1S1I CI_23__I_0_822_i6 (.D(MBR[5]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(CI_c_5));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam CI_23__I_0_822_i6.GSR = "DISABLED";
    FD1S1I CI_23__I_0_822_i7 (.D(MBR[6]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(CI_c_6));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam CI_23__I_0_822_i7.GSR = "DISABLED";
    FD1S1I CI_23__I_0_822_i8 (.D(MBR[7]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(CI_c_7));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam CI_23__I_0_822_i8.GSR = "DISABLED";
    FD1S1I CI_23__I_0_822_i9 (.D(MBR[8]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(CI_c_8));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam CI_23__I_0_822_i9.GSR = "DISABLED";
    FD1S1I CI_23__I_0_822_i10 (.D(MBR[9]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(CI_c_9));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam CI_23__I_0_822_i10.GSR = "DISABLED";
    FD1S1I CI_23__I_0_822_i11 (.D(MBR[10]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(CI_c_10));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam CI_23__I_0_822_i11.GSR = "DISABLED";
    FD1S1I CI_23__I_0_822_i12 (.D(MBR[11]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(CI_c_11));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam CI_23__I_0_822_i12.GSR = "DISABLED";
    FD1S1I CI_23__I_0_822_i13 (.D(MBR[12]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(CI_c_12));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam CI_23__I_0_822_i13.GSR = "DISABLED";
    FD1S1I CI_23__I_0_822_i14 (.D(MBR[13]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(CI_c_13));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam CI_23__I_0_822_i14.GSR = "DISABLED";
    FD1S1I CI_23__I_0_822_i15 (.D(MBR[14]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(CI_c_14));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam CI_23__I_0_822_i15.GSR = "DISABLED";
    FD1S1I CI_23__I_0_822_i16 (.D(MBR[15]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(CI_c_15));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam CI_23__I_0_822_i16.GSR = "DISABLED";
    FD1S1I CI_23__I_0_822_i17 (.D(MBR[16]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(CI_c_16));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam CI_23__I_0_822_i17.GSR = "DISABLED";
    FD1S1I CI_23__I_0_822_i18 (.D(MBR[17]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(CI_c_17));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam CI_23__I_0_822_i18.GSR = "DISABLED";
    FD1S1I CI_23__I_0_822_i19 (.D(MBR[18]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(CI_c_18));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam CI_23__I_0_822_i19.GSR = "DISABLED";
    FD1S1I CI_23__I_0_822_i20 (.D(MBR[19]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(CI_c_19));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam CI_23__I_0_822_i20.GSR = "DISABLED";
    FD1S1I CI_23__I_0_822_i21 (.D(MBR[20]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(CI_c_20));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam CI_23__I_0_822_i21.GSR = "DISABLED";
    FD1S1I CI_23__I_0_822_i22 (.D(MBR[21]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(CI_c_21));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam CI_23__I_0_822_i22.GSR = "DISABLED";
    FD1S1I CI_23__I_0_822_i23 (.D(MBR[22]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(CI_c_22));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam CI_23__I_0_822_i23.GSR = "DISABLED";
    FD1S1I CI_23__I_0_822_i24 (.D(MBR[23]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(CI_c_23));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam CI_23__I_0_822_i24.GSR = "DISABLED";
    bcdDisplay unidades (.u({u}), .clk_0(clk_0), .n2992(n2992), .n3668(n3668), 
            .n2973(n2973), .n2963(n2963), .n3803(n3803), .n3512(n3512), 
            .n3775(n3775), .\Q[0] (Q[0]), .reset_c(reset_c), .n3781(n3781), 
            .\DISPLAY_6__N_449[6] (DISPLAY_6__N_449[6]), .n3757(n3757), 
            .n3724(n3724), .n3722(n3722), .n3721(n3721), .\Q[1] (Q[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(104[11:21])
    CCU2D \ALU_imp.count1_1368_add_4_1  (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n25), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3496), .S1(n130));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368_add_4_1 .INIT0 = 16'hF000;
    defparam \ALU_imp.count1_1368_add_4_1 .INIT1 = 16'h0555;
    defparam \ALU_imp.count1_1368_add_4_1 .INJECT1_0 = "NO";
    defparam \ALU_imp.count1_1368_add_4_1 .INJECT1_1 = "NO";
    CCU2D \ALU_imp.count_1370_add_4_7  (.A0(\ALU_imp.count [5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\ALU_imp.count [6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3489), .COUT(n3490), .S0(n90), 
          .S1(n89));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[15:20])
    defparam \ALU_imp.count_1370_add_4_7 .INIT0 = 16'hfaaa;
    defparam \ALU_imp.count_1370_add_4_7 .INIT1 = 16'hfaaa;
    defparam \ALU_imp.count_1370_add_4_7 .INJECT1_0 = "NO";
    defparam \ALU_imp.count_1370_add_4_7 .INJECT1_1 = "NO";
    CCU2D \ALU_imp.count1_1368_add_4_25  (.A0(\ALU_imp.count1 [23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\ALU_imp.count1 [24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3507), .S0(n107), .S1(n106));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368_add_4_25 .INIT0 = 16'hfaaa;
    defparam \ALU_imp.count1_1368_add_4_25 .INIT1 = 16'hfaaa;
    defparam \ALU_imp.count1_1368_add_4_25 .INJECT1_0 = "NO";
    defparam \ALU_imp.count1_1368_add_4_25 .INJECT1_1 = "NO";
    CCU2D \ALU_imp.count1_1368_add_4_23  (.A0(\ALU_imp.count1 [21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\ALU_imp.count1 [22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3506), .COUT(n3507), .S0(n109), 
          .S1(n108));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368_add_4_23 .INIT0 = 16'hfaaa;
    defparam \ALU_imp.count1_1368_add_4_23 .INIT1 = 16'hfaaa;
    defparam \ALU_imp.count1_1368_add_4_23 .INJECT1_0 = "NO";
    defparam \ALU_imp.count1_1368_add_4_23 .INJECT1_1 = "NO";
    CCU2D \ALU_imp.count1_1368_add_4_21  (.A0(\ALU_imp.count1 [19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\ALU_imp.count1 [20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3505), .COUT(n3506), .S0(n111), 
          .S1(n110));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368_add_4_21 .INIT0 = 16'hfaaa;
    defparam \ALU_imp.count1_1368_add_4_21 .INIT1 = 16'hfaaa;
    defparam \ALU_imp.count1_1368_add_4_21 .INJECT1_0 = "NO";
    defparam \ALU_imp.count1_1368_add_4_21 .INJECT1_1 = "NO";
    CCU2D \ALU_imp.count1_1368_add_4_19  (.A0(\ALU_imp.count1 [17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\ALU_imp.count1 [18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3504), .COUT(n3505), .S0(n113), 
          .S1(n112));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368_add_4_19 .INIT0 = 16'hfaaa;
    defparam \ALU_imp.count1_1368_add_4_19 .INIT1 = 16'hfaaa;
    defparam \ALU_imp.count1_1368_add_4_19 .INJECT1_0 = "NO";
    defparam \ALU_imp.count1_1368_add_4_19 .INJECT1_1 = "NO";
    CCU2D \ALU_imp.count1_1368_add_4_17  (.A0(\ALU_imp.count1 [15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\ALU_imp.count1 [16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3503), .COUT(n3504), .S0(n115), 
          .S1(n114));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368_add_4_17 .INIT0 = 16'hfaaa;
    defparam \ALU_imp.count1_1368_add_4_17 .INIT1 = 16'hfaaa;
    defparam \ALU_imp.count1_1368_add_4_17 .INJECT1_0 = "NO";
    defparam \ALU_imp.count1_1368_add_4_17 .INJECT1_1 = "NO";
    CCU2D \ALU_imp.count1_1368_add_4_15  (.A0(\ALU_imp.count1 [13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\ALU_imp.count1 [14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3502), .COUT(n3503), .S0(n117), 
          .S1(n116));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368_add_4_15 .INIT0 = 16'hfaaa;
    defparam \ALU_imp.count1_1368_add_4_15 .INIT1 = 16'hfaaa;
    defparam \ALU_imp.count1_1368_add_4_15 .INJECT1_0 = "NO";
    defparam \ALU_imp.count1_1368_add_4_15 .INJECT1_1 = "NO";
    VLO i1 (.Z(GND_net));
    LUT4 i2508_2_lut_2_lut_3_lut_4_lut_3_lut (.A(reset_c), .B(n3772), .C(Q[0]), 
         .Z(n3668)) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i2508_2_lut_2_lut_3_lut_4_lut_3_lut.init = 16'hebeb;
    LUT4 i2156_2_lut_rep_45_3_lut_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_439), 
         .C(n3779), .D(n3780), .Z(n3757)) /* synthesis lut_function=(!(A+(B (D)+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i2156_2_lut_rep_45_3_lut_4_lut_4_lut_4_lut.init = 16'h1044;
    LUT4 i2547_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n3760), .C(n3769), 
         .D(bcd_out_15__N_415), .Z(n2915)) /* synthesis lut_function=(A (B)+!A (B+!(C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i2547_2_lut_3_lut_4_lut_4_lut.init = 16'hcddc;
    CCU2D \ALU_imp.count_1370_add_4_5  (.A0(n15), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\ALU_imp.count [4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3488), .COUT(n3489), .S0(n92), .S1(n91));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[15:20])
    defparam \ALU_imp.count_1370_add_4_5 .INIT0 = 16'hfaaa;
    defparam \ALU_imp.count_1370_add_4_5 .INIT1 = 16'hfaaa;
    defparam \ALU_imp.count_1370_add_4_5 .INJECT1_0 = "NO";
    defparam \ALU_imp.count_1370_add_4_5 .INJECT1_1 = "NO";
    LUT4 i2149_2_lut_rep_65_3_lut_4_lut_4_lut (.A(reset_c), .B(n3801), .C(bcd_out_15__N_393), 
         .D(n3786), .Z(n3777)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i2149_2_lut_rep_65_3_lut_4_lut_4_lut.init = 16'h4440;
    LUT4 i1778_3_lut (.A(n2895), .B(u[2]), .C(temp_control[3]), .Z(n2896)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(134[6] 151[15])
    defparam i1778_3_lut.init = 16'hcaca;
    FD1P3IX \ALU_imp.count1_1368__i18  (.D(n112), .SP(clk_enable_65), .CD(n3073), 
            .CK(clk), .Q(\ALU_imp.count1 [18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368__i18 .GSR = "DISABLED";
    LUT4 i1777_4_lut (.A(c[2]), .B(d[2]), .C(temp_control[2]), .D(temp_control[1]), 
         .Z(n2895)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(134[6] 151[15])
    defparam i1777_4_lut.init = 16'hcacf;
    OB display_pad_6 (.I(display_c_6), .O(display[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    OB CI_pad_14 (.I(CI_c_14), .O(CI[14]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_15 (.I(CI_c_15), .O(CI[15]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_16 (.I(CI_c_16), .O(CI[16]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_17 (.I(CI_c_17), .O(CI[17]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    FD1P3IX \ALU_imp.count1_1368__i20  (.D(n110), .SP(clk_enable_65), .CD(n3073), 
            .CK(clk), .Q(\ALU_imp.count1 [20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368__i20 .GSR = "DISABLED";
    OB CI_pad_18 (.I(CI_c_18), .O(CI[18]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_19 (.I(CI_c_19), .O(CI[19]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    FD1P3AX temp_control_FSM__i5 (.D(temp_control[2]), .SP(clk_enable_67), 
            .CK(clk), .Q(temp_control[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(134[6] 151[15])
    defparam temp_control_FSM__i5.GSR = "ENABLED";
    FD1P3IX \ALU_imp.count_1370__i11  (.D(n84), .SP(clk_enable_65), .CD(clk_enable_49), 
            .CK(clk), .Q(\ALU_imp.count [11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[15:20])
    defparam \ALU_imp.count_1370__i11 .GSR = "DISABLED";
    OB CI_pad_20 (.I(CI_c_20), .O(CI[20]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_21 (.I(CI_c_21), .O(CI[21]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    LUT4 bcd_out_15__N_432_bdd_4_lut_4_lut_then_3_lut (.A(reset_c), .B(n3778), 
         .C(bcd_out_15__N_415), .Z(n3818)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam bcd_out_15__N_432_bdd_4_lut_4_lut_then_3_lut.init = 16'hefef;
    LUT4 i2550_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n3764), .C(n3776), 
         .D(bcd_out_15__N_439), .Z(n2973)) /* synthesis lut_function=(A (B)+!A (B+!(C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i2550_2_lut_3_lut_4_lut_4_lut.init = 16'hcddc;
    OB CI_pad_22 (.I(CI_c_22), .O(CI[22]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    LUT4 i2104_2_lut_rep_91_2_lut (.A(reset_c), .B(Q[0]), .Z(n3803)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i2104_2_lut_rep_91_2_lut.init = 16'h4444;
    OB CI_pad_23 (.I(CI_c_23), .O(CI[23]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i2152_2_lut_rep_43_3_lut_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_415), 
         .C(bcd_out_15__N_411), .D(n3773), .Z(n3755)) /* synthesis lut_function=(!(A+(B (D)+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i2152_2_lut_rep_43_3_lut_4_lut_4_lut_4_lut.init = 16'h1044;
    OB sel_pad_0 (.I(sel_c_0), .O(sel[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    OB sel_pad_1 (.I(sel_c_1), .O(sel[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    LUT4 i2151_2_lut_rep_42_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_415), 
         .C(bcd_out_15__N_411), .D(n3773), .Z(n3754)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i2151_2_lut_rep_42_4_lut_4_lut_4_lut.init = 16'h1450;
    LUT4 n2922_bdd_4_lut_2564_4_lut (.A(reset_c), .B(Q[0]), .C(n3771), 
         .D(n3764), .Z(n3724)) /* synthesis lut_function=(A+!(B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam n2922_bdd_4_lut_2564_4_lut.init = 16'habbf;
    LUT4 i2154_2_lut_3_lut_3_lut (.A(reset_c), .B(n3774), .C(n3778), .Z(Qbcd[5])) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i2154_2_lut_3_lut_3_lut.init = 16'h1414;
    LUT4 i1964_2_lut_2_lut (.A(reset_c), .B(clk_enable_52), .Z(n3073)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1964_2_lut_2_lut.init = 16'h4444;
    LUT4 bcd_out_15__N_432_bdd_4_lut_4_lut_else_3_lut (.A(reset_c), .B(n3778), 
         .C(bcd_out_15__N_415), .D(bcd_out_15__N_411), .Z(n3817)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam bcd_out_15__N_432_bdd_4_lut_4_lut_else_3_lut.init = 16'hfffb;
    FD1P3IX \ALU_imp.count1_1368__i22  (.D(n108), .SP(clk_enable_65), .CD(n3073), 
            .CK(clk), .Q(\ALU_imp.count1 [22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368__i22 .GSR = "DISABLED";
    LUT4 Qbcd_7__bdd_4_lut_2561_4_lut (.A(reset_c), .B(n3762), .C(n3761), 
         .D(n3767), .Z(n3738)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam Qbcd_7__bdd_4_lut_2561_4_lut.init = 16'h0203;
    LUT4 Qbcd_7__bdd_4_lut_2565_4_lut (.A(reset_c), .B(n3762), .C(n3760), 
         .D(n3767), .Z(n3739)) /* synthesis lut_function=(A (C)+!A !(B (D)+!B ((D)+!C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam Qbcd_7__bdd_4_lut_2565_4_lut.init = 16'ha0f4;
    OB sel_pad_2 (.I(sel_c_2), .O(sel[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    LUT4 n2922_bdd_4_lut_4_lut (.A(reset_c), .B(n3767), .C(n3762), .D(n3760), 
         .Z(n3741)) /* synthesis lut_function=(A+!(B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam n2922_bdd_4_lut_4_lut.init = 16'habbf;
    LUT4 i2155_2_lut_rep_47_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_439), 
         .C(n3779), .D(n3780), .Z(n3759)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i2155_2_lut_rep_47_4_lut_4_lut_4_lut.init = 16'h1450;
    OB sel_pad_3 (.I(sel_c_3), .O(sel[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    OB display_pad_0 (.I(display_c_0), .O(display[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    LUT4 Qbcd_3__bdd_4_lut_2557_4_lut (.A(reset_c), .B(n3771), .C(n3764), 
         .D(Q[0]), .Z(n3722)) /* synthesis lut_function=(A (C)+!A !(B (D)+!B ((D)+!C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam Qbcd_3__bdd_4_lut_2557_4_lut.init = 16'ha0f4;
    OB display_pad_1 (.I(display_c_1), .O(display[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    LUT4 Qbcd_3__bdd_4_lut_2554_4_lut (.A(reset_c), .B(n3771), .C(n3772), 
         .D(Q[0]), .Z(n3721)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam Qbcd_3__bdd_4_lut_2554_4_lut.init = 16'h0203;
    FD1P3IX \ALU_imp.count1_1368__i24  (.D(n106), .SP(clk_enable_65), .CD(n3073), 
            .CK(clk), .Q(\ALU_imp.count1 [24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368__i24 .GSR = "DISABLED";
    LUT4 i2162_2_lut_rep_53_3_lut_3_lut (.A(reset_c), .B(n3775), .C(Q[1]), 
         .Z(n3765)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i2162_2_lut_rep_53_3_lut_3_lut.init = 16'h1414;
    OB display_pad_2 (.I(display_c_2), .O(display[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    LUT4 i1_2_lut_rep_95 (.A(CI_c_22), .B(CI_c_23), .Z(n3807)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(178[6] 191[15])
    defparam i1_2_lut_rep_95.init = 16'h2222;
    LUT4 n570_bdd_2_lut_3_lut (.A(CI_c_22), .B(CI_c_23), .C(n3747), .Z(n3748)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(178[6] 191[15])
    defparam n570_bdd_2_lut_3_lut.init = 16'hfdfd;
    OB display_pad_3 (.I(display_c_3), .O(display[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    LUT4 i1775_3_lut_4_lut (.A(c[3]), .B(temp_control[1]), .C(temp_control[2]), 
         .D(d[3]), .Z(n2893)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(134[6] 151[15])
    defparam i1775_3_lut_4_lut.init = 16'hfb0b;
    LUT4 i1813_3_lut_4_lut (.A(c[3]), .B(temp_control[1]), .C(temp_control[2]), 
         .D(d[0]), .Z(n2935)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(134[6] 151[15])
    defparam i1813_3_lut_4_lut.init = 16'hfb0b;
    LUT4 i1_2_lut (.A(CI_c_19), .B(n3647), .Z(n3649)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(178[6] 191[15])
    defparam i1_2_lut.init = 16'h4444;
    LUT4 i3_4_lut (.A(CI_c_21), .B(n6), .C(n3807), .D(CI_c_20), .Z(n3647)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(178[6] 191[15])
    defparam i3_4_lut.init = 16'h0040;
    LUT4 i2_2_lut (.A(CI_c_18), .B(n1470), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(178[6] 191[15])
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_57 (.A(n1473), .B(n1468), .Z(address_bus_7__N_99)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_57.init = 16'heeee;
    LUT4 i1084_4_lut (.A(MAR[1]), .B(CI_c_1), .C(n1468), .D(n1473), 
         .Z(address_bus_7__N_97)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(159[4] 202[14])
    defparam i1084_4_lut.init = 16'hcac0;
    LUT4 i1086_4_lut (.A(MAR[2]), .B(CI_c_2), .C(n1468), .D(n1473), 
         .Z(address_bus_7__N_96)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(159[4] 202[14])
    defparam i1086_4_lut.init = 16'hcac0;
    LUT4 i1088_4_lut (.A(MAR[3]), .B(CI_c_3), .C(n1468), .D(n1473), 
         .Z(address_bus_7__N_95)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(159[4] 202[14])
    defparam i1088_4_lut.init = 16'hcac0;
    ROM ROM_imp (.clk(clk), .n3889(n3889), .address_bus({address_bus}), 
        .reset_c(reset_c), .GND_net(GND_net), .VCC_net(VCC_net), .data_out_23__N_456({data_out_23__N_456}));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(110[10:13])
    LUT4 i1090_4_lut (.A(MAR[4]), .B(CI_c_4), .C(n1468), .D(n1473), 
         .Z(address_bus_7__N_94)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(159[4] 202[14])
    defparam i1090_4_lut.init = 16'hcac0;
    LUT4 i1092_4_lut (.A(MAR[5]), .B(CI_c_5), .C(n1468), .D(n1473), 
         .Z(address_bus_7__N_93)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(159[4] 202[14])
    defparam i1092_4_lut.init = 16'hcac0;
    FD1P3AX display_i0_i1 (.D(n2936), .SP(clk_enable_54), .CK(clk), .Q(display_c_0));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(117[4] 154[11])
    defparam display_i0_i1.GSR = "DISABLED";
    LUT4 i1094_4_lut (.A(MAR[6]), .B(CI_c_6), .C(n1468), .D(n1473), 
         .Z(address_bus_7__N_92)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(159[4] 202[14])
    defparam i1094_4_lut.init = 16'hcac0;
    LUT4 i1098_4_lut (.A(MAR[7]), .B(CI_c_7), .C(n1468), .D(n1473), 
         .Z(address_bus_7__N_91)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(159[4] 202[14])
    defparam i1098_4_lut.init = 16'hcac0;
    LUT4 i1936_1_lut (.A(MBR_23__N_90), .Z(n3067)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(159[4] 202[14])
    defparam i1936_1_lut.init = 16'h5555;
    FD1S1I Q_7__I_0_821_i1 (.D(Q_7__N_38[0]), .CK(CI_23__N_36), .CD(n3068), 
           .Q(Q[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam Q_7__I_0_821_i1.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(\ALU_imp.count1 [14]), .B(\ALU_imp.count1 [13]), .C(\ALU_imp.count1 [12]), 
         .D(n3514), .Z(n4)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(115[12:18])
    defparam i1_4_lut.init = 16'heeea;
    FD1S1A address_bus_7__I_0_i1 (.D(address_bus_7__N_98), .CK(address_bus_7__N_99), 
           .Q(address_bus[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam address_bus_7__I_0_i1.GSR = "DISABLED";
    LUT4 i2_4_lut (.A(\ALU_imp.count1 [10]), .B(\ALU_imp.count1 [8]), .C(\ALU_imp.count1 [11]), 
         .D(\ALU_imp.count1 [9]), .Z(n3514)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(115[12:18])
    defparam i2_4_lut.init = 16'ha080;
    FD1P3IX \ALU_imp.count_1370__i12  (.D(n83), .SP(clk_enable_65), .CD(clk_enable_49), 
            .CK(clk), .Q(\ALU_imp.count [12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[15:20])
    defparam \ALU_imp.count_1370__i12 .GSR = "DISABLED";
    FD1P3AX sel_i0_i4 (.D(temp_control[3]), .SP(clk_enable_49), .CK(clk), 
            .Q(sel_c_3));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(117[4] 154[11])
    defparam sel_i0_i4.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i1 (.D(data_out_23__N_456[0]), .CK(MBR_23__N_90), 
           .CD(n3067), .Q(MBR[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[2] 203[14])
    defparam MBR_23__I_0_i1.GSR = "DISABLED";
    FD1P3IX \ALU_imp.count1_1368__i8  (.D(n122), .SP(clk_enable_65), .CD(n3073), 
            .CK(clk), .Q(\ALU_imp.count1 [8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368__i8 .GSR = "DISABLED";
    FD1P3AX sel_i0_i3 (.D(temp_control[2]), .SP(clk_enable_49), .CK(clk), 
            .Q(sel_c_2));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(117[4] 154[11])
    defparam sel_i0_i3.GSR = "DISABLED";
    FD1P3IX \ALU_imp.count_1370__i13  (.D(n82), .SP(clk_enable_65), .CD(clk_enable_49), 
            .CK(clk), .Q(\ALU_imp.count [13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[15:20])
    defparam \ALU_imp.count_1370__i13 .GSR = "DISABLED";
    FD1P3AX sel_i0_i2 (.D(temp_control[1]), .SP(clk_enable_49), .CK(clk), 
            .Q(sel_c_1));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(117[4] 154[11])
    defparam sel_i0_i2.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_58 (.A(clk_0), .B(clk_enable_67), .Z(clk_0_N_218)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_58.init = 16'h6666;
    LUT4 i2221_4_lut (.A(\ALU_imp.count [16]), .B(\ALU_imp.count [17]), 
         .C(n3355), .D(\ALU_imp.count [15]), .Z(clk_enable_67)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i2221_4_lut.init = 16'hccc8;
    FD1P3IX \ALU_imp.count_1370__i14  (.D(n81), .SP(clk_enable_65), .CD(clk_enable_49), 
            .CK(clk), .Q(\ALU_imp.count [14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[15:20])
    defparam \ALU_imp.count_1370__i14 .GSR = "DISABLED";
    CCU2D \ALU_imp.count_1370_add_4_19  (.A0(\ALU_imp.count [17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3495), .S0(n78));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[15:20])
    defparam \ALU_imp.count_1370_add_4_19 .INIT0 = 16'hfaaa;
    defparam \ALU_imp.count_1370_add_4_19 .INIT1 = 16'h0000;
    defparam \ALU_imp.count_1370_add_4_19 .INJECT1_0 = "NO";
    defparam \ALU_imp.count_1370_add_4_19 .INJECT1_1 = "NO";
    CCU2D \ALU_imp.count_1370_add_4_3  (.A0(n17), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n16), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3487), .COUT(n3488), .S0(n94), .S1(n93));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[15:20])
    defparam \ALU_imp.count_1370_add_4_3 .INIT0 = 16'hfaaa;
    defparam \ALU_imp.count_1370_add_4_3 .INIT1 = 16'hfaaa;
    defparam \ALU_imp.count_1370_add_4_3 .INJECT1_0 = "NO";
    defparam \ALU_imp.count_1370_add_4_3 .INJECT1_1 = "NO";
    CCU2D \ALU_imp.count_1370_add_4_17  (.A0(\ALU_imp.count [15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\ALU_imp.count [16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3494), .COUT(n3495), .S0(n80), 
          .S1(n79));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[15:20])
    defparam \ALU_imp.count_1370_add_4_17 .INIT0 = 16'hfaaa;
    defparam \ALU_imp.count_1370_add_4_17 .INIT1 = 16'hfaaa;
    defparam \ALU_imp.count_1370_add_4_17 .INJECT1_0 = "NO";
    defparam \ALU_imp.count_1370_add_4_17 .INJECT1_1 = "NO";
    CCU2D \ALU_imp.count_1370_add_4_1  (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n18), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3487), .S1(n95));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[15:20])
    defparam \ALU_imp.count_1370_add_4_1 .INIT0 = 16'hF000;
    defparam \ALU_imp.count_1370_add_4_1 .INIT1 = 16'h0555;
    defparam \ALU_imp.count_1370_add_4_1 .INJECT1_0 = "NO";
    defparam \ALU_imp.count_1370_add_4_1 .INJECT1_1 = "NO";
    CCU2D \ALU_imp.count_1370_add_4_15  (.A0(\ALU_imp.count [13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\ALU_imp.count [14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3493), .COUT(n3494), .S0(n82), 
          .S1(n81));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[15:20])
    defparam \ALU_imp.count_1370_add_4_15 .INIT0 = 16'hfaaa;
    defparam \ALU_imp.count_1370_add_4_15 .INIT1 = 16'hfaaa;
    defparam \ALU_imp.count_1370_add_4_15 .INJECT1_0 = "NO";
    defparam \ALU_imp.count_1370_add_4_15 .INJECT1_1 = "NO";
    CCU2D \ALU_imp.count1_1368_add_4_13  (.A0(\ALU_imp.count1 [11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\ALU_imp.count1 [12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3501), .COUT(n3502), .S0(n119), 
          .S1(n118));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368_add_4_13 .INIT0 = 16'hfaaa;
    defparam \ALU_imp.count1_1368_add_4_13 .INIT1 = 16'hfaaa;
    defparam \ALU_imp.count1_1368_add_4_13 .INJECT1_0 = "NO";
    defparam \ALU_imp.count1_1368_add_4_13 .INJECT1_1 = "NO";
    CCU2D Q_7__I_0_9 (.A0(bcd_out_15__N_336), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3486), .S0(Q_7__N_38[7]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam Q_7__I_0_9.INIT0 = 16'h5aaa;
    defparam Q_7__I_0_9.INIT1 = 16'h0000;
    defparam Q_7__I_0_9.INJECT1_0 = "NO";
    defparam Q_7__I_0_9.INJECT1_1 = "NO";
    LUT4 i2217_4_lut (.A(\ALU_imp.count [13]), .B(\ALU_imp.count [14]), 
         .C(n3345), .D(\ALU_imp.count [12]), .Z(n3355)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i2217_4_lut.init = 16'hccc8;
    CCU2D Q_7__I_0_5 (.A0(Q[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Q[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3484), 
          .COUT(n3485), .S0(Q_7__N_38[3]), .S1(Q_7__N_38[4]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam Q_7__I_0_5.INIT0 = 16'h5aaa;
    defparam Q_7__I_0_5.INIT1 = 16'h5aaa;
    defparam Q_7__I_0_5.INJECT1_0 = "NO";
    defparam Q_7__I_0_5.INJECT1_1 = "NO";
    CCU2D \ALU_imp.count1_1368_add_4_11  (.A0(\ALU_imp.count1 [9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\ALU_imp.count1 [10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3500), .COUT(n3501), .S0(n121), 
          .S1(n120));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368_add_4_11 .INIT0 = 16'hfaaa;
    defparam \ALU_imp.count1_1368_add_4_11 .INIT1 = 16'hfaaa;
    defparam \ALU_imp.count1_1368_add_4_11 .INJECT1_0 = "NO";
    defparam \ALU_imp.count1_1368_add_4_11 .INJECT1_1 = "NO";
    FD1P3IX \ALU_imp.count1_1368__i10  (.D(n120), .SP(clk_enable_65), .CD(n3073), 
            .CK(clk), .Q(\ALU_imp.count1 [10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368__i10 .GSR = "DISABLED";
    CCU2D \ALU_imp.count1_1368_add_4_9  (.A0(n18_adj_579), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\ALU_imp.count1 [8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3499), .COUT(n3500), .S0(n123), 
          .S1(n122));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368_add_4_9 .INIT0 = 16'hfaaa;
    defparam \ALU_imp.count1_1368_add_4_9 .INIT1 = 16'hfaaa;
    defparam \ALU_imp.count1_1368_add_4_9 .INJECT1_0 = "NO";
    defparam \ALU_imp.count1_1368_add_4_9 .INJECT1_1 = "NO";
    CCU2D Q_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Q[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n3483), 
          .S1(Q_7__N_38[0]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam Q_7__I_0_1.INIT0 = 16'hF000;
    defparam Q_7__I_0_1.INIT1 = 16'h5555;
    defparam Q_7__I_0_1.INJECT1_0 = "NO";
    defparam Q_7__I_0_1.INJECT1_1 = "NO";
    LUT4 i2209_4_lut (.A(\ALU_imp.count [10]), .B(\ALU_imp.count [11]), 
         .C(n3516), .D(\ALU_imp.count [9]), .Z(n3345)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i2209_4_lut.init = 16'hccc8;
    FD1P3AY state_FSM__i1 (.D(n3888), .SP(clk_enable_52), .CK(clk), .Q(n1474));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(159[4] 202[14])
    defparam state_FSM__i1.GSR = "ENABLED";
    CCU2D Q_7__I_0_3 (.A0(Q[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Q[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3483), 
          .COUT(n3484), .S0(Q_7__N_38[1]), .S1(Q_7__N_38[2]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam Q_7__I_0_3.INIT0 = 16'h5aaa;
    defparam Q_7__I_0_3.INIT1 = 16'h5aaa;
    defparam Q_7__I_0_3.INJECT1_0 = "NO";
    defparam Q_7__I_0_3.INJECT1_1 = "NO";
    FD1P3IX \ALU_imp.count_1370__i15  (.D(n80), .SP(clk_enable_65), .CD(clk_enable_49), 
            .CK(clk), .Q(\ALU_imp.count [15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[15:20])
    defparam \ALU_imp.count_1370__i15 .GSR = "DISABLED";
    FD1P3AX display_i0_i2 (.D(n2280), .SP(clk_enable_54), .CK(clk), .Q(display_c_1));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(117[4] 154[11])
    defparam display_i0_i2.GSR = "DISABLED";
    CCU2D \ALU_imp.count1_1368_add_4_7  (.A0(n20), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n19), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3498), .COUT(n3499), .S0(n125), .S1(n124));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368_add_4_7 .INIT0 = 16'hfaaa;
    defparam \ALU_imp.count1_1368_add_4_7 .INIT1 = 16'hfaaa;
    defparam \ALU_imp.count1_1368_add_4_7 .INJECT1_0 = "NO";
    defparam \ALU_imp.count1_1368_add_4_7 .INJECT1_1 = "NO";
    LUT4 i4_4_lut (.A(\ALU_imp.count [6]), .B(\ALU_imp.count [8]), .C(\ALU_imp.count [7]), 
         .D(n6_adj_580), .Z(n3516)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    CCU2D \ALU_imp.count_1370_add_4_13  (.A0(\ALU_imp.count [11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\ALU_imp.count [12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3492), .COUT(n3493), .S0(n84), 
          .S1(n83));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[15:20])
    defparam \ALU_imp.count_1370_add_4_13 .INIT0 = 16'hfaaa;
    defparam \ALU_imp.count_1370_add_4_13 .INIT1 = 16'hfaaa;
    defparam \ALU_imp.count_1370_add_4_13 .INJECT1_0 = "NO";
    defparam \ALU_imp.count_1370_add_4_13 .INJECT1_1 = "NO";
    FD1P3AX temp_control_FSM__i4 (.D(temp_control[1]), .SP(clk_enable_67), 
            .CK(clk), .Q(temp_control[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(134[6] 151[15])
    defparam temp_control_FSM__i4.GSR = "ENABLED";
    CCU2D \ALU_imp.count_1370_add_4_11  (.A0(\ALU_imp.count [9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\ALU_imp.count [10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n3491), .COUT(n3492), .S0(n86), 
          .S1(n85));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[15:20])
    defparam \ALU_imp.count_1370_add_4_11 .INIT0 = 16'hfaaa;
    defparam \ALU_imp.count_1370_add_4_11 .INIT1 = 16'hfaaa;
    defparam \ALU_imp.count_1370_add_4_11 .INJECT1_0 = "NO";
    defparam \ALU_imp.count_1370_add_4_11 .INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_59 (.A(\ALU_imp.count [4]), .B(\ALU_imp.count [5]), 
         .Z(n6_adj_580)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_59.init = 16'h8888;
    FD1P3IX \ALU_imp.count_1370__i16  (.D(n79), .SP(clk_enable_65), .CD(clk_enable_49), 
            .CK(clk), .Q(\ALU_imp.count [16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[15:20])
    defparam \ALU_imp.count_1370__i16 .GSR = "DISABLED";
    FD1P3IX \ALU_imp.count1_1368__i23  (.D(n107), .SP(clk_enable_65), .CD(n3073), 
            .CK(clk), .Q(\ALU_imp.count1 [23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368__i23 .GSR = "DISABLED";
    FD1P3IX \ALU_imp.count1_1368__i11  (.D(n119), .SP(clk_enable_65), .CD(n3073), 
            .CK(clk), .Q(\ALU_imp.count1 [11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368__i11 .GSR = "DISABLED";
    FD1P3AX temp_control_FSM__i3 (.D(temp_control[0]), .SP(clk_enable_67), 
            .CK(clk), .Q(temp_control[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(134[6] 151[15])
    defparam temp_control_FSM__i3.GSR = "ENABLED";
    FD1P3IX \ALU_imp.count_1370__i17  (.D(n78), .SP(clk_enable_65), .CD(clk_enable_49), 
            .CK(clk), .Q(\ALU_imp.count [17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[15:20])
    defparam \ALU_imp.count_1370__i17 .GSR = "DISABLED";
    FD1P3AX state_FSM__i7 (.D(n3889), .SP(clk_enable_61), .CK(clk), .Q(n1465));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(159[4] 202[14])
    defparam state_FSM__i7.GSR = "ENABLED";
    FD1P3IX \ALU_imp.count1_1368__i1  (.D(n129), .SP(clk_enable_65), .CD(n3073), 
            .CK(clk), .Q(n24)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368__i1 .GSR = "DISABLED";
    FD1P3IX \ALU_imp.count1_1368__i2  (.D(n128), .SP(clk_enable_65), .CD(n3073), 
            .CK(clk), .Q(n23)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368__i2 .GSR = "DISABLED";
    LUT4 i1_4_lut_adj_60 (.A(\ALU_imp.count1 [24]), .B(\ALU_imp.count1 [23]), 
         .C(n3513), .D(\ALU_imp.count1 [22]), .Z(clk_enable_52)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(115[12:18])
    defparam i1_4_lut_adj_60.init = 16'haaa8;
    FD1P3IX \ALU_imp.count1_1368__i3  (.D(n127), .SP(clk_enable_65), .CD(n3073), 
            .CK(clk), .Q(n22)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368__i3 .GSR = "DISABLED";
    FD1P3IX \ALU_imp.count1_1368__i4  (.D(n126), .SP(clk_enable_65), .CD(n3073), 
            .CK(clk), .Q(n21)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(123[15:21])
    defparam \ALU_imp.count1_1368__i4 .GSR = "DISABLED";
    LUT4 i1814_3_lut (.A(n2935), .B(u[0]), .C(temp_control[3]), .Z(n2936)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(134[6] 151[15])
    defparam i1814_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut_adj_61 (.A(\ALU_imp.count1 [21]), .B(n5), .C(\ALU_imp.count1 [20]), 
         .D(n6_adj_578), .Z(n3513)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(115[12:18])
    defparam i2_4_lut_adj_61.init = 16'ha080;
    LUT4 n3057_bdd_4_lut (.A(n1473), .B(MBR_23__N_90), .C(n1465), .D(CI_23__N_36), 
         .Z(n3749)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam n3057_bdd_4_lut.init = 16'h0001;
    LUT4 n3057_bdd_4_lut_2566 (.A(CI_c_21), .B(CI_c_19), .C(CI_c_20), 
         .D(CI_c_18), .Z(n3747)) /* synthesis lut_function=(A (B+(C))+!A !(B (D)+!B !(C+!(D)))) */ ;
    defparam n3057_bdd_4_lut_2566.init = 16'hb8fd;
    FD1P3AX temp_control_FSM__i2 (.D(n1420), .SP(clk_enable_67), .CK(clk), 
            .Q(temp_control[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(134[6] 151[15])
    defparam temp_control_FSM__i2.GSR = "ENABLED";
    LUT4 i1082_4_lut (.A(MAR[0]), .B(CI_c_0), .C(n1468), .D(n1473), 
         .Z(address_bus_7__N_98)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(159[4] 202[14])
    defparam i1082_4_lut.init = 16'hcac0;
    FD1P3AY temp_control_FSM__i1 (.D(n3050), .SP(clk_enable_67), .CK(clk), 
            .Q(n1387));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(134[6] 151[15])
    defparam temp_control_FSM__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_62 (.A(\ALU_imp.count1 [19]), .B(\ALU_imp.count1 [18]), 
         .Z(n5)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(115[12:18])
    defparam i1_2_lut_adj_62.init = 16'heeee;
    GSR GSR_INST (.GSR(clk_enable_65));
    LUT4 i2539_2_lut_4_lut (.A(temp_control[0]), .B(temp_control[1]), .C(n3804), 
         .D(n1387), .Z(n3050)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i2539_2_lut_4_lut.init = 16'h0001;
    LUT4 i4_4_lut_adj_63 (.A(n1465), .B(n1474), .C(n1468), .D(MBR_23__N_90), 
         .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_63.init = 16'hfffe;
    LUT4 i2541_2_lut (.A(reset_c), .B(clk_enable_67), .Z(clk_enable_49)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i2541_2_lut.init = 16'h4444;
    LUT4 i2_3_lut (.A(n3647), .B(clk_enable_52), .C(CI_c_19), .Z(clk_enable_61)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(178[6] 191[15])
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i1937_1_lut (.A(CI_23__N_36), .Z(n3068)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(159[4] 202[14])
    defparam i1937_1_lut.init = 16'h5555;
    LUT4 i2_4_lut_adj_64 (.A(\ALU_imp.count1 [17]), .B(\ALU_imp.count1 [16]), 
         .C(\ALU_imp.count1 [15]), .D(n4), .Z(n6_adj_578)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(115[12:18])
    defparam i2_4_lut_adj_64.init = 16'heeea;
    LUT4 reduce_or_887_i1_2_lut (.A(temp_control[3]), .B(n1387), .Z(n1420)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(134[6] 151[15])
    defparam reduce_or_887_i1_2_lut.init = 16'heeee;
    LUT4 i5_3_lut_rep_90 (.A(CI_23__N_36), .B(n10), .C(n1470), .Z(n3802)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5_3_lut_rep_90.init = 16'hfefe;
    LUT4 i1293_1_lut_3_lut (.A(CI_23__N_36), .B(n10), .C(n1470), .Z(MAR_7__N_65)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i1293_1_lut_3_lut.init = 16'h0101;
    LUT4 i2544_3_lut (.A(reset_c), .B(clk_enable_67), .C(n3800), .Z(clk_enable_54)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2544_3_lut.init = 16'h4040;
    LUT4 i2_2_lut_rep_92 (.A(temp_control[2]), .B(temp_control[3]), .Z(n3804)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_rep_92.init = 16'heeee;
    LUT4 i2_3_lut_rep_88_4_lut (.A(temp_control[2]), .B(temp_control[3]), 
         .C(temp_control[1]), .D(temp_control[0]), .Z(n3800)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_rep_88_4_lut.init = 16'hfffe;
    LUT4 i2102_4_lut_4_lut (.A(temp_control[2]), .B(temp_control[3]), .C(u[1]), 
         .D(d[1]), .Z(n2280)) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;
    defparam i2102_4_lut_4_lut.init = 16'hf3d1;
    LUT4 i1764_3_lut (.A(n2881), .B(u[6]), .C(temp_control[3]), .Z(n2882)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(134[6] 151[15])
    defparam i1764_3_lut.init = 16'hcaca;
    LUT4 i2107_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(Q[1]), .C(n3775), 
         .D(Q[0]), .Z(n3236)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i2107_2_lut_3_lut_4_lut_4_lut.init = 16'h1400;
    LUT4 i1939_1_lut_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n3801), .C(bcd_out_15__N_393), 
         .D(n3786), .Z(n3070)) /* synthesis lut_function=(A+!(B (C+(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1939_1_lut_2_lut_3_lut_4_lut_4_lut.init = 16'hbbbf;
    LUT4 i2549_2_lut_3_lut_4_lut_4_lut_4_lut (.A(reset_c), .B(n3763), .C(n3764), 
         .D(n3771), .Z(n3512)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i2549_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hefff;
    LUT4 i2506_2_lut_2_lut_3_lut_4_lut_3_lut (.A(reset_c), .B(n3767), .C(n3761), 
         .Z(n3666)) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i2506_2_lut_2_lut_3_lut_4_lut_3_lut.init = 16'hebeb;
    LUT4 i2103_3_lut_4_lut_4_lut (.A(reset_c), .B(n3771), .C(n3776), .D(bcd_out_15__N_439), 
         .Z(n2992)) /* synthesis lut_function=(!(A+!(B+!(C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i2103_3_lut_4_lut_4_lut.init = 16'h4554;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1767_4_lut (.A(c[5]), .B(d[5]), .C(temp_control[2]), .D(temp_control[1]), 
         .Z(n2885)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(134[6] 151[15])
    defparam i1767_4_lut.init = 16'hcacf;
    PFUMX i2575 (.BLUT(n3817), .ALUT(n3818), .C0(bcd_out_15__N_417), .Z(n3819));
    LUT4 i2150_3_lut_4_lut_4_lut (.A(reset_c), .B(n3762), .C(n3769), .D(bcd_out_15__N_415), 
         .Z(n3013)) /* synthesis lut_function=(!(A+!(B+!(C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i2150_3_lut_4_lut_4_lut.init = 16'h4554;
    LUT4 m1_lut (.Z(n3889)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    Bin2BCD imp_binBCD (.\Q[3] (Q[3]), .\Q[4] (Q[4]), .n3778(n3778), .n3774(n3774), 
            .reset_c(reset_c), .n3767(n3767), .n2950(n2950), .bcd_out_15__N_439(bcd_out_15__N_439), 
            .n3780(n3780), .n3775(n3775), .n3763(n3763), .n3776(n3776), 
            .n3781(n3781), .\Q[1] (Q[1]), .n3779(n3779), .n3771(n3771), 
            .n3801(n3801), .\DISPLAY_6__N_449[5] (DISPLAY_6__N_449_adj_586[5]), 
            .\Q[2] (Q[2]), .n3772(n3772), .bcd_out_15__N_417(bcd_out_15__N_417), 
            .n3773(n3773), .\Q[0] (Q[0]), .n2963(n2963), .n3764(n3764), 
            .n3236(n3236), .n3757(n3757), .n3765(n3765), .\DISPLAY_6__N_449[6] (DISPLAY_6__N_449[6]), 
            .n3786(n3786), .bcd_out_15__N_415(bcd_out_15__N_415), .bcd_out_15__N_411(bcd_out_15__N_411), 
            .bcd_out_15__N_338(bcd_out_15__N_338), .\Q[5] (Q[5]), .bcd_out_15__N_336(bcd_out_15__N_336), 
            .bcd_out_15__N_393(bcd_out_15__N_393), .n3762(n3762), .n3760(n3760), 
            .n3769(n3769), .n3761(n3761), .n3321(n3321), .n3755(n3755), 
            .\Qbcd[5] (Qbcd[5]), .\DISPLAY_6__N_449[6]_adj_1 (DISPLAY_6__N_449_adj_583[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(102[13:20])
    bcdDisplay_U1 centenas (.\c[6] (c[6]), .clk_0(clk_0), .n3777(n3777), 
            .\c[5] (c[5]), .\DISPLAY_6__N_449[5] (DISPLAY_6__N_449_adj_586[5]), 
            .\c[4] (c[4]), .\DISPLAY_6__N_449[4] (DISPLAY_6__N_449_adj_586[4]), 
            .\c[3] (c[3]), .\c[2] (c[2]), .n3070(n3070), .n3754(n3754));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(106[11:21])
    bcdDisplay_U0 decenas (.n3739(n3739), .n3738(n3738), .n3755(n3755), 
            .d({d}), .clk_0(clk_0), .n3013(n3013), .n3666(n3666), .n3774(n3774), 
            .n3767(n3767), .reset_c(reset_c), .bcd_out_15__N_417(bcd_out_15__N_417), 
            .n2915(n2915), .n2950(n2950), .\DISPLAY_6__N_449[6] (DISPLAY_6__N_449_adj_583[6]), 
            .n3741(n3741), .n3759(n3759), .n3819(n3819), .n3778(n3778));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(105[10:20])
    LUT4 i2190_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n3767), .C(n3774), 
         .D(n3778), .Z(n3321)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i2190_2_lut_3_lut_4_lut_4_lut.init = 16'h0440;
    
endmodule
//
// Verilog Description of module \OSCH("26.60")(1,5) 
// module not written out since it is a black-box. 
//

//
// Verilog Description of module bcdDisplay
//

module bcdDisplay (u, clk_0, n2992, n3668, n2973, n2963, n3803, 
            n3512, n3775, \Q[0] , reset_c, n3781, \DISPLAY_6__N_449[6] , 
            n3757, n3724, n3722, n3721, \Q[1] );
    output [6:0]u;
    input clk_0;
    input n2992;
    input n3668;
    input n2973;
    input n2963;
    input n3803;
    input n3512;
    input n3775;
    input \Q[0] ;
    input reset_c;
    input n3781;
    input \DISPLAY_6__N_449[6] ;
    input n3757;
    input n3724;
    input n3722;
    input n3721;
    input \Q[1] ;
    
    wire clk_0 /* synthesis is_clock=1, SET_AS_NETWORK=clk_0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(74[8:13])
    
    wire n3815, n3814;
    wire [6:0]DISPLAY_6__N_449;
    
    wire n3816;
    
    FD1S3JX DISPLAY_i0 (.D(n3668), .CK(clk_0), .PD(n2992), .Q(u[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=104, LSE_RLINE=104 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i0.GSR = "ENABLED";
    FD1S3JX DISPLAY_i1 (.D(n2963), .CK(clk_0), .PD(n2973), .Q(u[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=104, LSE_RLINE=104 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i1.GSR = "ENABLED";
    FD1S3JX DISPLAY_i2 (.D(n3512), .CK(clk_0), .PD(n3803), .Q(u[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=104, LSE_RLINE=104 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i2.GSR = "ENABLED";
    LUT4 i2552_then_4_lut (.A(n3775), .B(\Q[0] ), .C(reset_c), .D(n3781), 
         .Z(n3815)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A ((C+!(D))+!B)) */ ;
    defparam i2552_then_4_lut.init = 16'hf9f7;
    LUT4 i2552_else_4_lut (.A(n3775), .B(\Q[0] ), .C(reset_c), .D(n3781), 
         .Z(n3814)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam i2552_else_4_lut.init = 16'hfef3;
    FD1S3AX DISPLAY_i6 (.D(\DISPLAY_6__N_449[6] ), .CK(clk_0), .Q(u[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=104, LSE_RLINE=104 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i6.GSR = "ENABLED";
    FD1S3JX DISPLAY_i5 (.D(n3724), .CK(clk_0), .PD(n3757), .Q(u[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=104, LSE_RLINE=104 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i5.GSR = "ENABLED";
    FD1S3AY DISPLAY_i4 (.D(DISPLAY_6__N_449[4]), .CK(clk_0), .Q(u[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=104, LSE_RLINE=104 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i4.GSR = "ENABLED";
    FD1S3JX DISPLAY_i3 (.D(n3816), .CK(clk_0), .PD(n3757), .Q(u[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=104, LSE_RLINE=104 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i3.GSR = "ENABLED";
    PFUMX i2555 (.BLUT(n3722), .ALUT(n3721), .C0(n3757), .Z(DISPLAY_6__N_449[4]));
    PFUMX i2573 (.BLUT(n3814), .ALUT(n3815), .C0(\Q[1] ), .Z(n3816));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module ROM
//

module ROM (clk, n3889, address_bus, reset_c, GND_net, VCC_net, 
            data_out_23__N_456);
    input clk;
    input n3889;
    input [7:0]address_bus;
    input reset_c;
    input GND_net;
    input VCC_net;
    output [23:0]data_out_23__N_456;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(73[8:11])
    
    wire data_out_23__N_457;
    wire [23:0]data_out_23__N_505;
    
    FD1S3AX data_out (.D(n3889), .CK(clk), .Q(data_out_23__N_457));   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam data_out.GSR = "ENABLED";
    PDPW8KC mux_1117 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
            .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), .DI7(GND_net), 
            .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), .DI11(GND_net), 
            .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), .DI15(GND_net), 
            .DI16(GND_net), .DI17(GND_net), .ADW0(GND_net), .ADW1(GND_net), 
            .ADW2(GND_net), .ADW3(GND_net), .ADW4(GND_net), .ADW5(GND_net), 
            .ADW6(GND_net), .ADW7(GND_net), .ADW8(GND_net), .BE0(GND_net), 
            .BE1(GND_net), .CEW(VCC_net), .CLKW(GND_net), .CSW0(GND_net), 
            .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), 
            .ADR2(GND_net), .ADR3(GND_net), .ADR4(address_bus[0]), .ADR5(address_bus[1]), 
            .ADR6(address_bus[2]), .ADR7(address_bus[3]), .ADR8(address_bus[4]), 
            .ADR9(address_bus[5]), .ADR10(address_bus[6]), .ADR11(address_bus[7]), 
            .ADR12(GND_net), .CER(VCC_net), .OCER(VCC_net), .CLKR(clk), 
            .CSR0(GND_net), .CSR1(GND_net), .CSR2(GND_net), .RST(reset_c), 
            .DO9(data_out_23__N_505[18]), .DO10(data_out_23__N_505[19]), 
            .DO11(data_out_23__N_505[20]), .DO12(data_out_23__N_505[21]), 
            .DO13(data_out_23__N_505[22]), .DO14(data_out_23__N_505[23]));
    defparam mux_1117.DATA_WIDTH_W = 18;
    defparam mux_1117.DATA_WIDTH_R = 18;
    defparam mux_1117.REGMODE = "NOREG";
    defparam mux_1117.CSDECODE_W = "0b000";
    defparam mux_1117.CSDECODE_R = "0b000";
    defparam mux_1117.GSR = "DISABLED";
    defparam mux_1117.RESETMODE = "ASYNC";
    defparam mux_1117.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_1117.INIT_DATA = "STATIC";
    defparam mux_1117.INITVAL_00 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F00018000090001100019";
    defparam mux_1117.INITVAL_01 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1117.INITVAL_02 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1117.INITVAL_03 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1117.INITVAL_04 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1117.INITVAL_05 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1117.INITVAL_06 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1117.INITVAL_07 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1117.INITVAL_08 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1117.INITVAL_09 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1117.INITVAL_0A = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1117.INITVAL_0B = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1117.INITVAL_0C = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1117.INITVAL_0D = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1117.INITVAL_0E = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1117.INITVAL_0F = "0x0000000000000000000000000000000000000000000000003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1117.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1117.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1117.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1117.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1117.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1117.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1117.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1117.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1117.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1117.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1117.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1117.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1117.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1117.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1117.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1117.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    PDPW8KC mux_1116 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
            .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), .DI7(GND_net), 
            .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), .DI11(GND_net), 
            .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), .DI15(GND_net), 
            .DI16(GND_net), .DI17(GND_net), .ADW0(GND_net), .ADW1(GND_net), 
            .ADW2(GND_net), .ADW3(GND_net), .ADW4(GND_net), .ADW5(GND_net), 
            .ADW6(GND_net), .ADW7(GND_net), .ADW8(GND_net), .BE0(GND_net), 
            .BE1(GND_net), .CEW(VCC_net), .CLKW(GND_net), .CSW0(GND_net), 
            .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), 
            .ADR2(GND_net), .ADR3(GND_net), .ADR4(address_bus[0]), .ADR5(address_bus[1]), 
            .ADR6(address_bus[2]), .ADR7(address_bus[3]), .ADR8(address_bus[4]), 
            .ADR9(address_bus[5]), .ADR10(address_bus[6]), .ADR11(address_bus[7]), 
            .ADR12(GND_net), .CER(VCC_net), .OCER(VCC_net), .CLKR(clk), 
            .CSR0(GND_net), .CSR1(GND_net), .CSR2(GND_net), .RST(reset_c), 
            .DO0(data_out_23__N_505[9]), .DO1(data_out_23__N_505[10]), .DO2(data_out_23__N_505[11]), 
            .DO3(data_out_23__N_505[12]), .DO4(data_out_23__N_505[13]), 
            .DO5(data_out_23__N_505[14]), .DO6(data_out_23__N_505[15]), 
            .DO7(data_out_23__N_505[16]), .DO8(data_out_23__N_505[17]), 
            .DO9(data_out_23__N_505[0]), .DO10(data_out_23__N_505[1]), .DO11(data_out_23__N_505[2]), 
            .DO12(data_out_23__N_505[3]), .DO13(data_out_23__N_505[4]), 
            .DO14(data_out_23__N_505[5]), .DO15(data_out_23__N_505[6]), 
            .DO16(data_out_23__N_505[7]), .DO17(data_out_23__N_505[8]));
    defparam mux_1116.DATA_WIDTH_W = 18;
    defparam mux_1116.DATA_WIDTH_R = 18;
    defparam mux_1116.REGMODE = "NOREG";
    defparam mux_1116.CSDECODE_W = "0b000";
    defparam mux_1116.CSDECODE_R = "0b000";
    defparam mux_1116.GSR = "DISABLED";
    defparam mux_1116.RESETMODE = "ASYNC";
    defparam mux_1116.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_1116.INIT_DATA = "STATIC";
    defparam mux_1116.INITVAL_00 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF0000000005000F70000D";
    defparam mux_1116.INITVAL_01 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1116.INITVAL_02 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1116.INITVAL_03 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1116.INITVAL_04 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1116.INITVAL_05 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1116.INITVAL_06 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1116.INITVAL_07 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1116.INITVAL_08 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1116.INITVAL_09 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1116.INITVAL_0A = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1116.INITVAL_0B = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1116.INITVAL_0C = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1116.INITVAL_0D = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1116.INITVAL_0E = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1116.INITVAL_0F = "0x0004D00037000170000700012000320004600065003EB3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1116.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1116.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1116.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1116.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1116.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1116.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1116.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1116.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1116.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1116.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1116.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1116.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1116.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1116.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1116.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1116.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    LUT4 i1123_2_lut (.A(data_out_23__N_505[1]), .B(data_out_23__N_457), 
         .Z(data_out_23__N_456[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1123_2_lut.init = 16'h8888;
    LUT4 i1124_2_lut (.A(data_out_23__N_505[2]), .B(data_out_23__N_457), 
         .Z(data_out_23__N_456[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1124_2_lut.init = 16'h8888;
    LUT4 i1125_2_lut (.A(data_out_23__N_505[3]), .B(data_out_23__N_457), 
         .Z(data_out_23__N_456[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1125_2_lut.init = 16'h8888;
    LUT4 i1126_2_lut (.A(data_out_23__N_505[4]), .B(data_out_23__N_457), 
         .Z(data_out_23__N_456[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1126_2_lut.init = 16'h8888;
    LUT4 i1127_2_lut (.A(data_out_23__N_505[5]), .B(data_out_23__N_457), 
         .Z(data_out_23__N_456[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1127_2_lut.init = 16'h8888;
    LUT4 i1128_2_lut (.A(data_out_23__N_505[6]), .B(data_out_23__N_457), 
         .Z(data_out_23__N_456[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1128_2_lut.init = 16'h8888;
    LUT4 i1129_2_lut (.A(data_out_23__N_505[7]), .B(data_out_23__N_457), 
         .Z(data_out_23__N_456[7])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1129_2_lut.init = 16'h8888;
    LUT4 i1130_2_lut (.A(data_out_23__N_505[8]), .B(data_out_23__N_457), 
         .Z(data_out_23__N_456[8])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1130_2_lut.init = 16'h8888;
    LUT4 i1131_2_lut (.A(data_out_23__N_505[9]), .B(data_out_23__N_457), 
         .Z(data_out_23__N_456[9])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1131_2_lut.init = 16'h8888;
    LUT4 i1132_2_lut (.A(data_out_23__N_505[10]), .B(data_out_23__N_457), 
         .Z(data_out_23__N_456[10])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1132_2_lut.init = 16'h8888;
    LUT4 i1133_2_lut (.A(data_out_23__N_505[11]), .B(data_out_23__N_457), 
         .Z(data_out_23__N_456[11])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1133_2_lut.init = 16'h8888;
    LUT4 i1134_2_lut (.A(data_out_23__N_505[12]), .B(data_out_23__N_457), 
         .Z(data_out_23__N_456[12])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1134_2_lut.init = 16'h8888;
    LUT4 i1135_2_lut (.A(data_out_23__N_505[13]), .B(data_out_23__N_457), 
         .Z(data_out_23__N_456[13])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1135_2_lut.init = 16'h8888;
    LUT4 i1136_2_lut (.A(data_out_23__N_505[14]), .B(data_out_23__N_457), 
         .Z(data_out_23__N_456[14])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1136_2_lut.init = 16'h8888;
    LUT4 i1137_2_lut (.A(data_out_23__N_505[15]), .B(data_out_23__N_457), 
         .Z(data_out_23__N_456[15])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1137_2_lut.init = 16'h8888;
    LUT4 i1138_2_lut (.A(data_out_23__N_505[16]), .B(data_out_23__N_457), 
         .Z(data_out_23__N_456[16])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1138_2_lut.init = 16'h8888;
    LUT4 i1139_2_lut (.A(data_out_23__N_505[17]), .B(data_out_23__N_457), 
         .Z(data_out_23__N_456[17])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1139_2_lut.init = 16'h8888;
    LUT4 i1140_2_lut (.A(data_out_23__N_505[18]), .B(data_out_23__N_457), 
         .Z(data_out_23__N_456[18])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1140_2_lut.init = 16'h8888;
    LUT4 i1141_2_lut (.A(data_out_23__N_505[19]), .B(data_out_23__N_457), 
         .Z(data_out_23__N_456[19])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1141_2_lut.init = 16'h8888;
    LUT4 i1142_2_lut (.A(data_out_23__N_505[20]), .B(data_out_23__N_457), 
         .Z(data_out_23__N_456[20])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1142_2_lut.init = 16'h8888;
    LUT4 i1143_2_lut (.A(data_out_23__N_505[21]), .B(data_out_23__N_457), 
         .Z(data_out_23__N_456[21])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1143_2_lut.init = 16'h8888;
    LUT4 i1144_2_lut (.A(data_out_23__N_505[22]), .B(data_out_23__N_457), 
         .Z(data_out_23__N_456[22])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1144_2_lut.init = 16'h8888;
    LUT4 i1145_2_lut (.A(data_out_23__N_505[23]), .B(data_out_23__N_457), 
         .Z(data_out_23__N_456[23])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1145_2_lut.init = 16'h8888;
    LUT4 i1122_2_lut (.A(data_out_23__N_505[0]), .B(data_out_23__N_457), 
         .Z(data_out_23__N_456[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1122_2_lut.init = 16'h8888;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module Bin2BCD
//

module Bin2BCD (\Q[3] , \Q[4] , n3778, n3774, reset_c, n3767, n2950, 
            bcd_out_15__N_439, n3780, n3775, n3763, n3776, n3781, 
            \Q[1] , n3779, n3771, n3801, \DISPLAY_6__N_449[5] , \Q[2] , 
            n3772, bcd_out_15__N_417, n3773, \Q[0] , n2963, n3764, 
            n3236, n3757, n3765, \DISPLAY_6__N_449[6] , n3786, bcd_out_15__N_415, 
            bcd_out_15__N_411, bcd_out_15__N_338, \Q[5] , bcd_out_15__N_336, 
            bcd_out_15__N_393, n3762, n3760, n3769, n3761, n3321, 
            n3755, \Qbcd[5] , \DISPLAY_6__N_449[6]_adj_1 );
    input \Q[3] ;
    input \Q[4] ;
    output n3778;
    output n3774;
    input reset_c;
    output n3767;
    output n2950;
    output bcd_out_15__N_439;
    output n3780;
    output n3775;
    output n3763;
    output n3776;
    output n3781;
    input \Q[1] ;
    output n3779;
    output n3771;
    output n3801;
    output \DISPLAY_6__N_449[5] ;
    input \Q[2] ;
    output n3772;
    output bcd_out_15__N_417;
    output n3773;
    input \Q[0] ;
    output n2963;
    output n3764;
    input n3236;
    input n3757;
    input n3765;
    output \DISPLAY_6__N_449[6] ;
    output n3786;
    output bcd_out_15__N_415;
    output bcd_out_15__N_411;
    input bcd_out_15__N_338;
    input \Q[5] ;
    input bcd_out_15__N_336;
    output bcd_out_15__N_393;
    output n3762;
    output n3760;
    output n3769;
    output n3761;
    input n3321;
    input n3755;
    input \Qbcd[5] ;
    output \DISPLAY_6__N_449[6]_adj_1 ;
    
    
    wire n3799;
    wire [3:0]n1338;
    
    wire n3809, n3808, n3886, n3885;
    wire [3:0]n1344;
    
    wire n3785, n3887, n3756, n3784, n3788, n3787;
    wire [3:0]n1341;
    
    wire n3792, n3810, n3791, n3796, n3794, n3798, n3805;
    
    LUT4 i1555_2_lut_rep_78_4_lut_4_lut_then_4_lut (.A(\Q[3] ), .B(n3799), 
         .C(n1338[1]), .D(n1338[2]), .Z(n3809)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B (C)+!B (C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1555_2_lut_rep_78_4_lut_4_lut_then_4_lut.init = 16'h2526;
    LUT4 i1555_2_lut_rep_78_4_lut_4_lut_else_4_lut (.A(\Q[3] ), .B(n3799), 
         .C(n1338[1]), .D(n1338[2]), .Z(n3808)) /* synthesis lut_function=(A (B (C)+!B !(C+(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1555_2_lut_rep_78_4_lut_4_lut_else_4_lut.init = 16'h9592;
    LUT4 i1473_2_lut_rep_71_4_lut_4_lut_then_4_lut (.A(n3799), .B(\Q[4] ), 
         .C(n1338[1]), .D(n1338[2]), .Z(n3886)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(B (C (D)+!C !(D))+!B !(C+(D)))) */ ;
    defparam i1473_2_lut_rep_71_4_lut_4_lut_then_4_lut.init = 16'h9ffa;
    LUT4 i2536_3_lut_4_lut (.A(n3778), .B(n3774), .C(reset_c), .D(n3767), 
         .Z(n2950)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2536_3_lut_4_lut.init = 16'hf6f9;
    LUT4 i1473_2_lut_rep_71_4_lut_4_lut_else_4_lut (.A(n3799), .B(\Q[4] ), 
         .C(n1338[1]), .D(n1338[2]), .Z(n3885)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i1473_2_lut_rep_71_4_lut_4_lut_else_4_lut.init = 16'h1ff0;
    LUT4 i1458_3_lut_rep_63_4_lut (.A(n1344[1]), .B(n3785), .C(bcd_out_15__N_439), 
         .D(n3780), .Z(n3775)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1458_3_lut_rep_63_4_lut.init = 16'hf666;
    LUT4 i1654_2_lut_rep_51_3_lut_3_lut_4_lut (.A(n1344[1]), .B(n3785), 
         .C(bcd_out_15__N_439), .D(n3780), .Z(n3763)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1654_2_lut_rep_51_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1661_3_lut_rep_55_4_lut_3_lut_4_lut (.A(n1344[1]), .B(n3785), 
         .C(bcd_out_15__N_439), .D(n3780), .Z(n3767)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1661_3_lut_rep_55_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1885_2_lut_rep_64_4_lut (.A(n1344[1]), .B(n3785), .C(bcd_out_15__N_439), 
         .D(n3780), .Z(n3776)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1885_2_lut_rep_64_4_lut.init = 16'hf600;
    LUT4 i1639_2_lut_rep_59_4_lut_4_lut (.A(n3781), .B(\Q[1] ), .C(bcd_out_15__N_439), 
         .D(n3779), .Z(n3771)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1639_2_lut_rep_59_4_lut_4_lut.init = 16'h332c;
    LUT4 i2528_3_lut_4_lut (.A(n3887), .B(n3801), .C(n3756), .D(reset_c), 
         .Z(\DISPLAY_6__N_449[5] )) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A ((D)+!C)) */ ;
    defparam i2528_3_lut_4_lut.init = 16'hff07;
    LUT4 i1647_3_lut_rep_60_4_lut (.A(\Q[2] ), .B(n3784), .C(\Q[1] ), 
         .D(n3775), .Z(n3772)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1647_3_lut_rep_60_4_lut.init = 16'h6966;
    LUT4 i1652_2_lut_rep_68_3_lut (.A(\Q[2] ), .B(n3784), .C(\Q[1] ), 
         .Z(n3780)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1652_2_lut_rep_68_3_lut.init = 16'hf6f6;
    LUT4 i1465_2_lut_rep_61_4_lut_4_lut (.A(n3788), .B(n3787), .C(n1344[1]), 
         .D(bcd_out_15__N_417), .Z(n3773)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i1465_2_lut_rep_61_4_lut_4_lut.init = 16'hff6c;
    LUT4 i1598_2_lut_rep_67_3_lut_3_lut_4_lut (.A(n1341[1]), .B(n3792), 
         .C(n1344[1]), .D(n3788), .Z(n3779)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1598_2_lut_rep_67_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1463_3_lut_rep_72_4_lut (.A(n1341[1]), .B(n3792), .C(n1344[1]), 
         .D(n3788), .Z(n3784)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1463_3_lut_rep_72_4_lut.init = 16'hf666;
    LUT4 i1605_3_lut_rep_66_4_lut_3_lut_4_lut (.A(n1341[1]), .B(n3792), 
         .C(n1344[1]), .D(n3788), .Z(n3778)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1605_3_lut_rep_66_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1888_2_lut_rep_73_4_lut (.A(n1341[1]), .B(n3792), .C(n1344[1]), 
         .D(n3788), .Z(n3785)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1888_2_lut_rep_73_4_lut.init = 16'hf600;
    LUT4 i1583_2_lut_rep_69_4_lut_4_lut (.A(n3810), .B(\Q[2] ), .C(n1344[1]), 
         .D(n3787), .Z(n3781)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1583_2_lut_rep_69_4_lut_4_lut.init = 16'h332c;
    LUT4 i1591_3_lut_4_lut (.A(\Q[3] ), .B(n3791), .C(\Q[2] ), .D(n3784), 
         .Z(bcd_out_15__N_439)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1591_3_lut_4_lut.init = 16'h6966;
    LUT4 i1596_2_lut_rep_76_3_lut (.A(\Q[3] ), .B(n3791), .C(\Q[2] ), 
         .Z(n3788)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1596_2_lut_rep_76_3_lut.init = 16'hf6f6;
    LUT4 i2533_3_lut_4_lut (.A(\Q[1] ), .B(n3775), .C(reset_c), .D(\Q[0] ), 
         .Z(n2963)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2533_3_lut_4_lut.init = 16'hf6f9;
    LUT4 i2096_4_lut_4_lut (.A(n3764), .B(n3236), .C(n3757), .D(n3765), 
         .Z(\DISPLAY_6__N_449[6] )) /* synthesis lut_function=(A (C+(D))+!A ((C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i2096_4_lut_4_lut.init = 16'hfbf1;
    LUT4 i1577_3_lut_rep_74_4_lut_3_lut_4_lut (.A(n1338[1]), .B(n3796), 
         .C(n1341[1]), .D(n3794), .Z(n3786)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1577_3_lut_rep_74_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1889_2_lut_rep_80_4_lut (.A(n1338[1]), .B(n3796), .C(n1341[1]), 
         .D(n3794), .Z(n3792)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1889_2_lut_rep_80_4_lut.init = 16'hf600;
    LUT4 i1479_3_lut_rep_79_4_lut (.A(n1338[1]), .B(n3796), .C(n1341[1]), 
         .D(n3794), .Z(n3791)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1479_3_lut_rep_79_4_lut.init = 16'hf666;
    LUT4 i1570_2_lut_rep_75_3_lut_3_lut_4_lut (.A(n1338[1]), .B(n3796), 
         .C(n1341[1]), .D(n3794), .Z(n3787)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1570_2_lut_rep_75_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1568_2_lut_rep_82_3_lut (.A(\Q[4] ), .B(n3798), .C(\Q[3] ), 
         .Z(n3794)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1568_2_lut_rep_82_3_lut.init = 16'hf6f6;
    LUT4 i1563_3_lut_4_lut (.A(\Q[4] ), .B(n3798), .C(\Q[3] ), .D(n3791), 
         .Z(n1344[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1563_3_lut_4_lut.init = 16'h6966;
    LUT4 i2519_2_lut_rep_52_4_lut (.A(n3781), .B(n3775), .C(\Q[1] ), .D(reset_c), 
         .Z(n3764)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A ((C+(D))+!B)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2519_2_lut_rep_52_4_lut.init = 16'hff59;
    LUT4 i1717_3_lut_rep_44_4_lut_3_lut_4_lut (.A(n3778), .B(bcd_out_15__N_417), 
         .C(bcd_out_15__N_415), .D(bcd_out_15__N_411), .Z(n3756)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i1717_3_lut_rep_44_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i1667_2_lut_rep_87_3_lut_3_lut (.A(bcd_out_15__N_338), .B(\Q[5] ), 
         .C(bcd_out_15__N_336), .Z(n3799)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1667_2_lut_rep_87_3_lut_3_lut.init = 16'h2c2c;
    LUT4 i1549_3_lut_4_lut_3_lut_4_lut (.A(\Q[4] ), .B(n3799), .C(n1338[1]), 
         .D(n1338[2]), .Z(bcd_out_15__N_393)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i1549_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i1695_2_lut_rep_50_4_lut_4_lut (.A(n3778), .B(bcd_out_15__N_417), 
         .C(bcd_out_15__N_415), .D(bcd_out_15__N_411), .Z(n3762)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i1695_2_lut_rep_50_4_lut_4_lut.init = 16'h554a;
    LUT4 i2526_2_lut_rep_48_4_lut (.A(bcd_out_15__N_417), .B(n3774), .C(n3778), 
         .D(reset_c), .Z(n3760)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A ((C+(D))+!B)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2526_2_lut_rep_48_4_lut.init = 16'hff59;
    LUT4 i1884_2_lut_rep_57_4_lut (.A(n3778), .B(bcd_out_15__N_417), .C(bcd_out_15__N_415), 
         .D(bcd_out_15__N_411), .Z(n3769)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i1884_2_lut_rep_57_4_lut.init = 16'heee0;
    LUT4 i1892_2_lut_rep_84_3_lut_4_lut (.A(\Q[4] ), .B(n3799), .C(n1338[1]), 
         .D(n1338[2]), .Z(n3796)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i1892_2_lut_rep_84_3_lut_4_lut.init = 16'heee0;
    LUT4 i1480_3_lut_rep_86 (.A(\Q[4] ), .B(n3799), .C(n1338[1]), .D(n1338[2]), 
         .Z(n3798)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i1480_3_lut_rep_86.init = 16'hffe0;
    LUT4 i1535_3_lut_4_lut (.A(\Q[4] ), .B(n3799), .C(n1338[1]), .D(n1338[2]), 
         .Z(n1341[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i1535_3_lut_4_lut.init = 16'h998c;
    LUT4 i1932_2_lut_3_lut_4_lut (.A(n3805), .B(bcd_out_15__N_336), .C(bcd_out_15__N_393), 
         .D(n3786), .Z(bcd_out_15__N_411)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1932_2_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 i1619_3_lut_4_lut_3_lut_4_lut (.A(n3805), .B(bcd_out_15__N_336), 
         .C(bcd_out_15__N_393), .D(n3786), .Z(bcd_out_15__N_415)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;
    defparam i1619_3_lut_4_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i1611_2_lut_3_lut_3_lut_4_lut (.A(n3805), .B(bcd_out_15__N_336), 
         .C(bcd_out_15__N_393), .D(n3786), .Z(bcd_out_15__N_417)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A !(D))) */ ;
    defparam i1611_2_lut_3_lut_3_lut_4_lut.init = 16'h7780;
    LUT4 i1440_3_lut_rep_62 (.A(n3778), .B(bcd_out_15__N_417), .C(bcd_out_15__N_415), 
         .D(bcd_out_15__N_411), .Z(n3774)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i1440_3_lut_rep_62.init = 16'hffe0;
    LUT4 i1703_3_lut_rep_49_4_lut (.A(n3778), .B(bcd_out_15__N_417), .C(bcd_out_15__N_415), 
         .D(bcd_out_15__N_411), .Z(n3761)) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i1703_3_lut_rep_49_4_lut.init = 16'h998c;
    LUT4 i2143_4_lut_4_lut (.A(n3760), .B(n3321), .C(n3755), .D(\Qbcd[5] ), 
         .Z(\DISPLAY_6__N_449[6]_adj_1 )) /* synthesis lut_function=(A (C+(D))+!A ((C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i2143_4_lut_4_lut.init = 16'hfbf1;
    LUT4 i1680_2_lut_rep_93 (.A(bcd_out_15__N_338), .B(\Q[5] ), .Z(n3805)) /* synthesis lut_function=(A+(B)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1680_2_lut_rep_93.init = 16'heeee;
    LUT4 i1509_2_lut_rep_89_3_lut (.A(bcd_out_15__N_338), .B(\Q[5] ), .C(bcd_out_15__N_336), 
         .Z(n3801)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1509_2_lut_rep_89_3_lut.init = 16'he0e0;
    LUT4 i1930_2_lut_3_lut (.A(bcd_out_15__N_338), .B(\Q[5] ), .C(bcd_out_15__N_336), 
         .Z(n1338[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1930_2_lut_3_lut.init = 16'h1010;
    PFUMX i2595 (.BLUT(n3885), .ALUT(n3886), .C0(n3794), .Z(n3887));
    LUT4 i1675_3_lut_4_lut_3_lut (.A(bcd_out_15__N_338), .B(\Q[5] ), .C(bcd_out_15__N_336), 
         .Z(n1338[1])) /* synthesis lut_function=(A (B+!(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1675_3_lut_4_lut_3_lut.init = 16'h8a8a;
    PFUMX i2569 (.BLUT(n3808), .ALUT(n3809), .C0(\Q[4] ), .Z(n3810));
    
endmodule
//
// Verilog Description of module bcdDisplay_U1
//

module bcdDisplay_U1 (\c[6] , clk_0, n3777, \c[5] , \DISPLAY_6__N_449[5] , 
            \c[4] , \DISPLAY_6__N_449[4] , \c[3] , \c[2] , n3070, 
            n3754);
    output \c[6] ;
    input clk_0;
    input n3777;
    output \c[5] ;
    input \DISPLAY_6__N_449[5] ;
    output \c[4] ;
    input \DISPLAY_6__N_449[4] ;
    output \c[3] ;
    output \c[2] ;
    input n3070;
    input n3754;
    
    wire clk_0 /* synthesis is_clock=1, SET_AS_NETWORK=clk_0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(74[8:13])
    
    FD1S3AX DISPLAY_i5 (.D(n3777), .CK(clk_0), .Q(\c[6] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=106, LSE_RLINE=106 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i5.GSR = "ENABLED";
    FD1S3AY DISPLAY_i4 (.D(\DISPLAY_6__N_449[5] ), .CK(clk_0), .Q(\c[5] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=106, LSE_RLINE=106 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i4.GSR = "ENABLED";
    FD1S3AY DISPLAY_i3 (.D(\DISPLAY_6__N_449[4] ), .CK(clk_0), .Q(\c[4] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=106, LSE_RLINE=106 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i3.GSR = "ENABLED";
    FD1S3JX DISPLAY_i2 (.D(\DISPLAY_6__N_449[4] ), .CK(clk_0), .PD(n3777), 
            .Q(\c[3] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=106, LSE_RLINE=106 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i2.GSR = "ENABLED";
    FD1S3JX DISPLAY_i1 (.D(n3754), .CK(clk_0), .PD(n3070), .Q(\c[2] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=106, LSE_RLINE=106 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module bcdDisplay_U0
//

module bcdDisplay_U0 (n3739, n3738, n3755, d, clk_0, n3013, n3666, 
            n3774, n3767, reset_c, bcd_out_15__N_417, n2915, n2950, 
            \DISPLAY_6__N_449[6] , n3741, n3759, n3819, n3778);
    input n3739;
    input n3738;
    input n3755;
    output [6:0]d;
    input clk_0;
    input n3013;
    input n3666;
    input n3774;
    input n3767;
    input reset_c;
    input bcd_out_15__N_417;
    input n2915;
    input n2950;
    input \DISPLAY_6__N_449[6] ;
    input n3741;
    input n3759;
    input n3819;
    input n3778;
    
    wire clk_0 /* synthesis is_clock=1, SET_AS_NETWORK=clk_0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(74[8:13])
    wire [6:0]DISPLAY_6__N_449;
    
    wire n3812, n3811, n3813;
    
    PFUMX i2562 (.BLUT(n3739), .ALUT(n3738), .C0(n3755), .Z(DISPLAY_6__N_449[4]));
    FD1S3JX DISPLAY_i0 (.D(n3666), .CK(clk_0), .PD(n3013), .Q(d[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=105, LSE_RLINE=105 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i0.GSR = "ENABLED";
    LUT4 i2559_then_4_lut (.A(n3774), .B(n3767), .C(reset_c), .D(bcd_out_15__N_417), 
         .Z(n3812)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A ((C+!(D))+!B)) */ ;
    defparam i2559_then_4_lut.init = 16'hf9f7;
    LUT4 i2559_else_4_lut (.A(n3774), .B(n3767), .C(reset_c), .D(bcd_out_15__N_417), 
         .Z(n3811)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam i2559_else_4_lut.init = 16'hfef3;
    FD1S3JX DISPLAY_i1 (.D(n2950), .CK(clk_0), .PD(n2915), .Q(d[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=105, LSE_RLINE=105 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i1.GSR = "ENABLED";
    FD1S3AX DISPLAY_i6 (.D(\DISPLAY_6__N_449[6] ), .CK(clk_0), .Q(d[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=105, LSE_RLINE=105 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i6.GSR = "ENABLED";
    FD1S3JX DISPLAY_i5 (.D(n3741), .CK(clk_0), .PD(n3755), .Q(d[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=105, LSE_RLINE=105 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i5.GSR = "ENABLED";
    FD1S3AY DISPLAY_i4 (.D(DISPLAY_6__N_449[4]), .CK(clk_0), .Q(d[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=105, LSE_RLINE=105 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i4.GSR = "ENABLED";
    FD1S3JX DISPLAY_i3 (.D(n3813), .CK(clk_0), .PD(n3755), .Q(d[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=105, LSE_RLINE=105 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i3.GSR = "ENABLED";
    FD1S3JX DISPLAY_i2 (.D(n3819), .CK(clk_0), .PD(n3759), .Q(d[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=105, LSE_RLINE=105 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i2.GSR = "ENABLED";
    PFUMX i2571 (.BLUT(n3811), .ALUT(n3812), .C0(n3778), .Z(n3813));
    
endmodule
