// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Wed Apr 10 23:19:18 2024
//
// Verilog Description of module alu_fetch
//

module alu_fetch (reset, stop_run, display, sel);   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(11[8:17])
    input reset;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    input stop_run;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(13[2:10])
    output [6:0]display;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    output [3:0]sel;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    
    wire clk /* synthesis is_clock=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(71[8:11])
    wire clk_0 /* synthesis is_clock=1, SET_AS_NETWORK=clk_0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(72[8:13])
    
    wire GND_net, VCC_net, n1498, reset_c, stop_run_c, display_c_6, 
        display_c_5, display_c_4, display_c_3, display_c_2, display_c_1, 
        display_c_0, sel_c_3, sel_c_2, sel_c_1, sel_c_0;
    wire [13:0]Q;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(74[8:9])
    wire [15:0]Qbcd;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(75[8:12])
    wire [3:0]temp_control;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(76[8:20])
    wire [6:0]un;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(77[8:10])
    wire [6:0]de;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(77[11:13])
    wire [6:0]ce;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(77[14:16])
    wire [6:0]mi;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(77[17:19])
    wire [7:0]PC;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(80[8:10])
    wire [7:0]MAR;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(81[8:11])
    wire [23:0]MBR;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(82[8:11])
    wire [23:0]IR;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(83[8:10])
    wire [11:0]ACC;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(84[8:11])
    
    wire n3869, n14904;
    wire [23:0]rpg_in;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(90[8:14])
    wire [1:0]rpg_sel;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(92[8:15])
    
    wire rpg_write;
    wire [11:0]A;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(94[8:9])
    wire [11:0]B;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(94[10:11])
    wire [3:0]control;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(95[8:15])
    
    wire C;
    wire [3:0]global_state;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    wire [2:0]instruction;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(103[8:19])
    wire [2:0]execute_instruction;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(106[8:27])
    
    wire n224, n225, n226, n227, n228, n229, n230, n231, n14804, 
        n2665, n12941, n14013, n14674, n12931, n7673, n23, n94, 
        clk_0_enable_8, n14452, n7553, n7029, n7031, n14174, n491, 
        n492, n493, n14925, n14928, n14922, n14630, n498;
    wire [3:0]global_state_3__N_158;
    wire [7:0]MAR_7__N_175;
    wire [7:0]PC_7__N_167;
    
    wire n12940, n7, n81, n80, n79, n78, n13962, n14064, n6, 
        n93, n92, n91, n14444, n90, n5, n14062, n4, n2379;
    wire [17:0]count;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(284[11:16])
    
    wire n2601, n3812, n2596, n2678, n14803, n14063, n14800, n14341, 
        n2591, clk_0_N_345, n2676, n14039, n2672, n14644, n2670, 
        n1497, n1499, n1500, n1501, n1502, n1503, n1504, bcd_out_15__N_362, 
        bcd_out_15__N_372, bcd_out_15__N_371, bcd_out_15__N_401, bcd_out_15__N_405, 
        bcd_out_15__N_400, n15212, n15211, n15210, n15209, n15208, 
        n15206, n15205, n15204, n15203, n15202, n15201, n15198, 
        n15197, bcd_out_15__N_354, bcd_out_15__N_447, bcd_out_15__N_451, 
        n15196, n15195, n15194, n15192, n15191, bcd_out_15__N_446, 
        n15190, n15189, bcd_out_15__N_552, bcd_out_15__N_568, bcd_out_15__N_572, 
        n15188, bcd_out_15__N_519, n15186, bcd_out_15__N_548, n15185, 
        n15184, n15183, bcd_out_15__N_515, n15182, n15180, n15179, 
        n15178, n15177, n15176, n15174, n15173, n15172, n15171, 
        n15170, n15169, n12977;
    wire [6:0]DISPLAY_6__N_582;
    
    wire n14795;
    wire [6:0]DISPLAY_6__N_582_adj_1110;
    wire [6:0]DISPLAY_6__N_582_adj_1115;
    
    wire n2295;
    wire [6:0]DISPLAY_6__N_582_adj_1120;
    wire [23:0]data_out_23__N_638;
    wire [23:0]data_out_23__N_589;
    
    wire data_out_23__N_590, n4376, n2586, n2669, n14794, n2369, 
        n4378, n12939, n2294, n4380, n2293, clk_enable_2, n4382, 
        n15175, n11236, substract, clk_enable_157, clk_enable_143, 
        n14791;
    wire [11:0]A_temp;   // c:/users/cassandra/desktop/arqui2/alu.vhd(39[9:15])
    wire [11:0]B_temp;   // c:/users/cassandra/desktop/arqui2/alu.vhd(39[16:22])
    
    wire n14671, n14669, n14668, n14667, n14666, n14665, n14664, 
        n14663, n14662, n14786, n14783, n14777, n14015, n15231, 
        n7_adj_1090, n14100, n14078;
    wire [12:0]intermediate_carry;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(18[8:26])
    
    wire n14899;
    wire [11:0]v12;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(21[12:15])
    wire [11:0]v56;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(21[22:25])
    wire [11:0]v12_34;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(21[27:33])
    
    wire n2292, n14176, n6_adj_1091, n14941, n2291, n1593, n2350, 
        n3900, n14770, n16, n14769, n2680, n89, n14940, n14012, 
        n14939, n2394, n14632, n2681, n2679, n2668;
    wire [11:0]SumRest_11__N_989_adj_1163;
    
    wire n14766, n2675, n2677, n1577, n16_adj_1092, n15, n14011, 
        n13994;
    wire [12:0]intermediate_carry_adj_1182;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(18[8:26])
    
    wire n3917, n14, clk_enable_5, n82, n83, n84, n85, n18, 
        clk_enable_4, n13950, n14876, n14762, n2390, n14761, n6042, 
        n14760, n4374, n2674, n2673, n2290, n2671, n88, n3732, 
        n2289, n17, n87, n86, n14076, n95, n14756, n3, n6036, 
        n14102, n14016, n15230, n7648, n134, n158, n14660, n14753, 
        n3797, n3796, n3794, n11, n14077, n11092, n14038, n14659, 
        n14037, n12938, n3788, n14750, n12937, n14393, n3770, 
        n3768, n14392, n14066, clk_enable_6, n12934, n14391, n13955, 
        n7_adj_1093, n14074, n14746, n3_adj_1094, n14061, n6_adj_1095, 
        n3_adj_1096, n6_adj_1097, n3_adj_1098, n6_adj_1099, n14034, 
        n14643, n14642, n14641, n14740, n14594, n7576, n3715, 
        n14593, n11816, n11083, n75, n3685, n15181, n14640, n11278, 
        n7026, n7022, n7020, n7016, n7012, n7010, n7008, n6893, 
        n14075, n14_adj_1100, n14328, n12936, n5745, n14733, n5728, 
        n5726, n5704, n5697, n5690, n5683, n14327, n14873, n14563, 
        n14562, n12935, n14065, n14_adj_1101, n14_adj_1102, n15207, 
        clk_enable_146, n11261, n6160, n15187, n14724, n15193, clk_enable_98, 
        n14723, n14898, n14373, n14938, n11252, n11251, n14657, 
        n11249, clk_enable_3, n7028, n14645, n7024, n14178, n7018, 
        n13042, n7014, n14639, n14550, n14369, clk_enable_66, clk_enable_144, 
        n12, n14549, n14092, n15222, n14470, clk_enable_116, n14715, 
        n14714, n14891, n15221, n14850, n14849, clk_enable_14, n14848, 
        n14638, n14637, n14636, n14635, n14846, n11232, n14634, 
        n14368, n14890, n14633, n14889, n14656, n14655, n14654, 
        n6060, n14652, n14651, n14650, n14935, n14693, n14648, 
        n14884, n14934, n14883, n12945, n14837, n14951, n12944, 
        n14145, n14950, n14106, n14932, n14058, n14930, n13214, 
        n63, n6151, n12943, n13989, n14929, n12942, n14057, n14056, 
        n14055, n14054, n4542, n14868, clk_enable_67, clk_enable_106, 
        n14053, n14685, clk_enable_142, clk_enable_32, n14052, n14684, 
        n14827, n14875, clk_enable_62, n14051, n127, n14874, n14872, 
        n13981, n13922, n4383, n4381, n4379, n4377, n4375, n4373, 
        n4372, n12933, n14949, n12929, n14050, n13979, n13978, 
        n14682, n14927, n4264, n14948, n14819, n14049, n14818, 
        n14871, n14870, n14679, n14117, n13976, n14072, n9971, 
        n26, n13974, n14815, clk_enable_83, n14071, n13972, n14926, 
        n14947, n14022, n14070, n14924, n14069, n13969, n14166, 
        n14647, n14677, clk_enable_80, n14646, n14068, n14923, n13967, 
        n14921, n13909, n14813, n14676, n14812, n14675, n14811, 
        n12930, n14920, n14_adj_1103, n14919, n14867, n14067, n7599, 
        n4_adj_1104, n14931, n14_adj_1105, n14946, n13965, n12932, 
        n14471, n13964, n3971, n15225, n14469, n15224, n14905, 
        n15220, n14943, n14942, n14809, n14807, n14342, n14460;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i9241_2_lut_3_lut (.A(instruction[1]), .B(instruction[0]), .C(n1504), 
         .Z(n6)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i9241_2_lut_3_lut.init = 16'h4040;
    OSCH OSCinst0 (.STDBY(GND_net), .OSC(clk)) /* synthesis NOM_FREQ="26.60", syn_instantiated=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(111[11:15])
    defparam OSCinst0.NOM_FREQ = "26.60";
    LUT4 i1_2_lut_3_lut (.A(IR[21]), .B(IR[19]), .C(IR[20]), .Z(n6060)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0202;
    CCU2D count_631_add_4_5 (.A0(n15), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n14), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12938), 
          .COUT(n12939), .S0(n92), .S1(n91));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[14:19])
    defparam count_631_add_4_5.INIT0 = 16'hfaaa;
    defparam count_631_add_4_5.INIT1 = 16'hfaaa;
    defparam count_631_add_4_5.INJECT1_0 = "NO";
    defparam count_631_add_4_5.INJECT1_1 = "NO";
    FD1P3AX MAR_i0_i0 (.D(MAR_7__N_175[0]), .SP(clk_enable_14), .CK(clk), 
            .Q(MAR[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MAR_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_3_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(execute_instruction[2]), .Z(n7_adj_1093)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(106[8:27])
    defparam i1_2_lut_3_lut_4_lut_3_lut.init = 16'he8e8;
    FD1P3AX display_i0_i1 (.D(n3797), .SP(clk_0_enable_8), .CK(clk_0), 
            .Q(display_c_0));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(258[3] 280[10])
    defparam display_i0_i1.GSR = "DISABLED";
    FD1P3AX sel_i0_i1 (.D(temp_control[0]), .SP(clk_enable_67), .CK(clk_0), 
            .Q(sel_c_0));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(258[3] 280[10])
    defparam sel_i0_i1.GSR = "DISABLED";
    FD1S3AX clk_0_144 (.D(clk_0_N_345), .CK(clk), .Q(clk_0)) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(287[3] 304[10])
    defparam clk_0_144.GSR = "ENABLED";
    FD1S3AY temp_control_FSM_i1 (.D(n15230), .CK(clk_0), .Q(n1577));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(261[4] 278[13])
    defparam temp_control_FSM_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_328 (.A(instruction[1]), .B(instruction[0]), .Z(n14850)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i1_2_lut_rep_328.init = 16'h4444;
    LUT4 i1_4_lut_4_lut (.A(global_state[0]), .B(n14393), .C(n15220), 
         .D(n14811), .Z(clk_enable_98)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_4_lut_4_lut.init = 16'hf400;
    LUT4 i9209_2_lut_3_lut (.A(global_state[0]), .B(instruction[2]), .C(n134), 
         .Z(n158)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i9209_2_lut_3_lut.init = 16'hfefe;
    LUT4 i7_1_lut_rep_327 (.A(execute_instruction[2]), .Z(n14849)) /* synthesis lut_function=(!(A)) */ ;
    defparam i7_1_lut_rep_327.init = 16'h5555;
    LUT4 instruction_0__bdd_4_lut_4_lut (.A(execute_instruction[2]), .B(instruction[2]), 
         .C(n14819), .D(instruction[1]), .Z(n14391)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam instruction_0__bdd_4_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_3_lut (.A(execute_instruction[2]), .B(instruction[0]), 
         .C(execute_instruction[1]), .Z(n4)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C)))) */ ;
    defparam i1_2_lut_3_lut_3_lut.init = 16'h4141;
    LUT4 i12343_4_lut_4_lut (.A(execute_instruction[2]), .B(n13909), .C(n14804), 
         .D(stop_run_c), .Z(clk_enable_83)) /* synthesis lut_function=(!(A (D)+!A (B ((D)+!C)+!B (D)))) */ ;
    defparam i12343_4_lut_4_lut.init = 16'h00fb;
    VLO i1 (.Z(GND_net));
    LUT4 i2_4_lut_4_lut_4_lut (.A(global_state[0]), .B(n134), .C(instruction[2]), 
         .D(n15220), .Z(n13214)) /* synthesis lut_function=(!(A+(B (D)+!B ((D)+!C)))) */ ;
    defparam i2_4_lut_4_lut_4_lut.init = 16'h0054;
    LUT4 mux_278_Mux_0_i255_4_lut_4_lut_4_lut (.A(global_state[0]), .B(n158), 
         .C(global_state[3]), .D(n15220), .Z(global_state_3__N_158[0])) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;
    defparam mux_278_Mux_0_i255_4_lut_4_lut_4_lut.init = 16'h05c5;
    LUT4 m1_lut (.Z(n15231)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 i3794_2_lut_3_lut (.A(global_state[0]), .B(global_state[1]), .C(global_state[2]), 
         .Z(n127)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i3794_2_lut_3_lut.init = 16'h7878;
    LUT4 i2_2_lut_3_lut (.A(global_state[0]), .B(global_state[1]), .C(global_state[2]), 
         .Z(n12977)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i2_2_lut_3_lut.init = 16'h8080;
    PFUMX i8036 (.BLUT(n12977), .ALUT(n13214), .C0(global_state[3]), .Z(global_state_3__N_158[3]));
    FD1P3AX creset_800 (.D(n15231), .SP(clk_enable_2), .CK(clk), .Q(n2601));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam creset_800.GSR = "ENABLED";
    FD1P3AX creset_796 (.D(n15231), .SP(clk_enable_3), .CK(clk), .Q(n2596));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam creset_796.GSR = "ENABLED";
    FD1P3AX creset_792 (.D(n15231), .SP(clk_enable_4), .CK(clk), .Q(n2591));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam creset_792.GSR = "ENABLED";
    OB display_pad_6 (.I(display_c_6), .O(display[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    LUT4 m0_lut (.Z(n15230)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    FD1P3AX creset_788 (.D(n15231), .SP(clk_enable_5), .CK(clk), .Q(n2586));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam creset_788.GSR = "ENABLED";
    PFUMX mux_46_Mux_7_i7 (.BLUT(n3_adj_1094), .ALUT(n6_adj_1095), .C0(instruction[2]), 
          .Z(n491));
    FD1P3AX rpg_write_138 (.D(n14849), .SP(clk_enable_6), .CK(clk), .Q(rpg_write)) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam rpg_write_138.GSR = "DISABLED";
    TSALL TSALL_INST (.TSALL(GND_net));
    SPR16X4C selector_1__I_05 (.DI0(rpg_in[0]), .DI1(rpg_in[1]), .DI2(rpg_in[2]), 
            .DI3(rpg_in[3]), .AD0(rpg_sel[0]), .AD1(rpg_sel[1]), .AD2(GND_net), 
            .AD3(GND_net), .CK(clk), .WRE(rpg_write), .DO0(n2668), .DO1(n2669), 
            .DO2(n2670), .DO3(n2671));
    defparam selector_1__I_05.initval = "0x0000000000000000";
    SPR16X4C selector_1__I_04 (.DI0(rpg_in[4]), .DI1(rpg_in[5]), .DI2(rpg_in[6]), 
            .DI3(rpg_in[7]), .AD0(rpg_sel[0]), .AD1(rpg_sel[1]), .AD2(GND_net), 
            .AD3(GND_net), .CK(clk), .WRE(rpg_write), .DO0(n2672), .DO1(n2673), 
            .DO2(n2674), .DO3(n2675));
    defparam selector_1__I_04.initval = "0x0000000000000000";
    SPR16X4C selector_1__I_03 (.DI0(rpg_in[8]), .DI1(rpg_in[9]), .DI2(rpg_in[10]), 
            .DI3(rpg_in[11]), .AD0(rpg_sel[0]), .AD1(rpg_sel[1]), .AD2(GND_net), 
            .AD3(GND_net), .CK(clk), .WRE(rpg_write), .DO0(n2676), .DO1(n2677), 
            .DO2(n2678), .DO3(n2679));
    defparam selector_1__I_03.initval = "0x0000000000000000";
    SPR16X4C selector_1__I_02 (.DI0(rpg_in[12]), .DI1(rpg_in[13]), .DI2(rpg_in[14]), 
            .DI3(rpg_in[15]), .AD0(rpg_sel[0]), .AD1(rpg_sel[1]), .AD2(GND_net), 
            .AD3(GND_net), .CK(clk), .WRE(rpg_write), .DO0(n2680), .DO1(n2681));
    defparam selector_1__I_02.initval = "0x0000000000000000";
    CCU2D count_631_add_4_3 (.A0(n17), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n16_adj_1092), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12937), .COUT(n12938), .S0(n94), .S1(n93));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[14:19])
    defparam count_631_add_4_3.INIT0 = 16'hfaaa;
    defparam count_631_add_4_3.INIT1 = 16'hfaaa;
    defparam count_631_add_4_3.INJECT1_0 = "NO";
    defparam count_631_add_4_3.INJECT1_1 = "NO";
    FD1P3AX PC_i0_i0 (.D(PC_7__N_167[0]), .SP(clk_enable_32), .CK(clk), 
            .Q(PC[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam PC_i0_i0.GSR = "ENABLED";
    LUT4 i25_4_lut_4_lut_4_lut (.A(execute_instruction[2]), .B(n14819), 
         .C(instruction[1]), .D(instruction[0]), .Z(n12)) /* synthesis lut_function=(!(A+(B (C)+!B !((D)+!C)))) */ ;
    defparam i25_4_lut_4_lut_4_lut.init = 16'h1505;
    LUT4 mux_278_Mux_0_i134_4_lut_then_4_lut (.A(instruction[0]), .B(instruction[1]), 
         .C(execute_instruction[1]), .D(execute_instruction[2]), .Z(n14884)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam mux_278_Mux_0_i134_4_lut_then_4_lut.init = 16'hccc4;
    LUT4 i8949_2_lut_rep_324 (.A(stop_run_c), .B(reset_c), .Z(n14846)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8949_2_lut_rep_324.init = 16'heeee;
    PFUMX mux_46_Mux_5_i7 (.BLUT(n3_adj_1098), .ALUT(n6_adj_1099), .C0(instruction[2]), 
          .Z(n493));
    PFUMX i12595 (.BLUT(n14938), .ALUT(data_out_23__N_589[3]), .C0(instruction[0]), 
          .Z(n14939));
    PFUMX i1890 (.BLUT(n2295), .ALUT(n3796), .C0(n14145), .Z(n3797));
    OB display_pad_5 (.I(display_c_5), .O(display[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    FD1P3AX MAR_i0_i1 (.D(MAR_7__N_175[1]), .SP(clk_enable_14), .CK(clk), 
            .Q(MAR[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MAR_i0_i1.GSR = "ENABLED";
    PFUMX mux_46_Mux_6_i7 (.BLUT(n3_adj_1096), .ALUT(n6_adj_1097), .C0(instruction[2]), 
          .Z(n492));
    OB display_pad_4 (.I(display_c_4), .O(display[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    OB display_pad_3 (.I(display_c_3), .O(display[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    OB display_pad_2 (.I(display_c_2), .O(display[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    OB display_pad_1 (.I(display_c_1), .O(display[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    OB display_pad_0 (.I(display_c_0), .O(display[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    OB sel_pad_3 (.I(sel_c_3), .O(sel[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    OB sel_pad_2 (.I(sel_c_2), .O(sel[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    OB sel_pad_1 (.I(sel_c_1), .O(sel[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    OB sel_pad_0 (.I(sel_c_0), .O(sel[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    IB reset_pad (.I(reset), .O(reset_c));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    IB stop_run_pad (.I(stop_run), .O(stop_run_c));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(13[2:10])
    FD1P3AX MAR_i0_i2 (.D(MAR_7__N_175[2]), .SP(clk_enable_14), .CK(clk), 
            .Q(MAR[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MAR_i0_i2.GSR = "ENABLED";
    FD1P3AX MAR_i0_i3 (.D(MAR_7__N_175[3]), .SP(clk_enable_14), .CK(clk), 
            .Q(MAR[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MAR_i0_i3.GSR = "ENABLED";
    FD1P3AX MAR_i0_i4 (.D(MAR_7__N_175[4]), .SP(clk_enable_14), .CK(clk), 
            .Q(MAR[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MAR_i0_i4.GSR = "ENABLED";
    FD1P3AX MAR_i0_i5 (.D(MAR_7__N_175[5]), .SP(clk_enable_14), .CK(clk), 
            .Q(MAR[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MAR_i0_i5.GSR = "ENABLED";
    FD1P3AX MAR_i0_i6 (.D(MAR_7__N_175[6]), .SP(clk_enable_14), .CK(clk), 
            .Q(MAR[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MAR_i0_i6.GSR = "ENABLED";
    FD1P3AX MAR_i0_i7 (.D(MAR_7__N_175[7]), .SP(clk_enable_14), .CK(clk), 
            .Q(MAR[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MAR_i0_i7.GSR = "ENABLED";
    PFUMX i4198 (.BLUT(n14_adj_1103), .ALUT(ACC[1]), .C0(n14117), .Z(n6160));
    FD1P3AX rpg_in_i0_i1 (.D(n13955), .SP(clk_enable_106), .CK(clk), .Q(rpg_in[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam rpg_in_i0_i1.GSR = "DISABLED";
    FD1P3AX rpg_in_i0_i5 (.D(n13976), .SP(clk_enable_106), .CK(clk), .Q(rpg_in[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam rpg_in_i0_i5.GSR = "DISABLED";
    FD1P3AX rpg_in_i0_i6 (.D(n13974), .SP(clk_enable_106), .CK(clk), .Q(rpg_in[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam rpg_in_i0_i6.GSR = "DISABLED";
    FD1P3AX rpg_in_i0_i7 (.D(n13972), .SP(clk_enable_106), .CK(clk), .Q(rpg_in[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam rpg_in_i0_i7.GSR = "DISABLED";
    FD1P3AX rpg_in_i0_i8 (.D(n13969), .SP(clk_enable_106), .CK(clk), .Q(rpg_in[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam rpg_in_i0_i8.GSR = "DISABLED";
    FD1P3AX rpg_in_i0_i9 (.D(n13967), .SP(clk_enable_106), .CK(clk), .Q(rpg_in[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam rpg_in_i0_i9.GSR = "DISABLED";
    FD1P3AX rpg_in_i0_i10 (.D(n13965), .SP(clk_enable_106), .CK(clk), 
            .Q(rpg_in[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam rpg_in_i0_i10.GSR = "DISABLED";
    FD1P3AX rpg_in_i0_i11 (.D(n13964), .SP(clk_enable_106), .CK(clk), 
            .Q(rpg_in[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam rpg_in_i0_i11.GSR = "DISABLED";
    FD1P3AX rpg_in_i0_i12 (.D(n13962), .SP(clk_enable_106), .CK(clk), 
            .Q(rpg_in[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam rpg_in_i0_i12.GSR = "DISABLED";
    CCU2D add_7_5 (.A0(PC[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12930), 
          .COUT(n12931), .S0(n228), .S1(n227));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_7_5.INIT0 = 16'h5aaa;
    defparam add_7_5.INIT1 = 16'h5aaa;
    defparam add_7_5.INJECT1_0 = "NO";
    defparam add_7_5.INJECT1_1 = "NO";
    FD1P3AX display_i0_i2 (.D(n4373), .SP(clk_0_enable_8), .CK(clk_0), 
            .Q(display_c_1));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(258[3] 280[10])
    defparam display_i0_i2.GSR = "DISABLED";
    FD1P3AX display_i0_i3 (.D(n4375), .SP(clk_0_enable_8), .CK(clk_0), 
            .Q(display_c_2));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(258[3] 280[10])
    defparam display_i0_i3.GSR = "DISABLED";
    FD1P3AX display_i0_i4 (.D(n4377), .SP(clk_0_enable_8), .CK(clk_0), 
            .Q(display_c_3));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(258[3] 280[10])
    defparam display_i0_i4.GSR = "DISABLED";
    FD1P3AX display_i0_i5 (.D(n4379), .SP(clk_0_enable_8), .CK(clk_0), 
            .Q(display_c_4));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(258[3] 280[10])
    defparam display_i0_i5.GSR = "DISABLED";
    FD1P3AX display_i0_i6 (.D(n4381), .SP(clk_0_enable_8), .CK(clk_0), 
            .Q(display_c_5));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(258[3] 280[10])
    defparam display_i0_i6.GSR = "DISABLED";
    FD1P3AX display_i0_i7 (.D(n4383), .SP(clk_0_enable_8), .CK(clk_0), 
            .Q(display_c_6));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(258[3] 280[10])
    defparam display_i0_i7.GSR = "DISABLED";
    FD1P3AX sel_i0_i2 (.D(temp_control[1]), .SP(clk_enable_67), .CK(clk_0), 
            .Q(sel_c_1));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(258[3] 280[10])
    defparam sel_i0_i2.GSR = "DISABLED";
    FD1P3AX sel_i0_i3 (.D(temp_control[2]), .SP(clk_enable_67), .CK(clk_0), 
            .Q(sel_c_2));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(258[3] 280[10])
    defparam sel_i0_i3.GSR = "DISABLED";
    FD1P3AX sel_i0_i4 (.D(temp_control[3]), .SP(clk_enable_67), .CK(clk_0), 
            .Q(sel_c_3));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(258[3] 280[10])
    defparam sel_i0_i4.GSR = "DISABLED";
    FD1P3AX execute_instruction_i0_i1 (.D(n14876), .SP(clk_enable_62), .CK(clk), 
            .Q(execute_instruction[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam execute_instruction_i0_i1.GSR = "ENABLED";
    FD1P3AX execute_instruction_i0_i2 (.D(n14_adj_1100), .SP(clk_enable_62), 
            .CK(clk), .Q(execute_instruction[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam execute_instruction_i0_i2.GSR = "ENABLED";
    FD1S3AX temp_control_FSM_i2 (.D(n1593), .CK(clk_0), .Q(temp_control[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(261[4] 278[13])
    defparam temp_control_FSM_i2.GSR = "ENABLED";
    FD1S3AX temp_control_FSM_i3 (.D(temp_control[0]), .CK(clk_0), .Q(temp_control[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(261[4] 278[13])
    defparam temp_control_FSM_i3.GSR = "ENABLED";
    FD1S3AX temp_control_FSM_i4 (.D(temp_control[1]), .CK(clk_0), .Q(temp_control[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(261[4] 278[13])
    defparam temp_control_FSM_i4.GSR = "ENABLED";
    FD1S3AX temp_control_FSM_i5 (.D(temp_control[2]), .CK(clk_0), .Q(temp_control[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(261[4] 278[13])
    defparam temp_control_FSM_i5.GSR = "ENABLED";
    FD1P3AX PC_i0_i1 (.D(PC_7__N_167[1]), .SP(clk_enable_32), .CK(clk), 
            .Q(PC[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam PC_i0_i1.GSR = "ENABLED";
    PFUMX i12356 (.BLUT(n14328), .ALUT(n14327), .C0(n2350), .Z(bcd_out_15__N_372));
    LUT4 i290_1_lut_rep_307 (.A(reset_c), .Z(clk_enable_67)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i290_1_lut_rep_307.init = 16'h5555;
    LUT4 i8969_2_lut_rep_120_3_lut_3_lut (.A(reset_c), .B(n14655), .C(bcd_out_15__N_519), 
         .Z(n14642)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8969_2_lut_rep_120_3_lut_3_lut.init = 16'h1414;
    CCU2D count_631_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n18), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n12937), .S1(n95));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[14:19])
    defparam count_631_add_4_1.INIT0 = 16'hF000;
    defparam count_631_add_4_1.INIT1 = 16'h0555;
    defparam count_631_add_4_1.INJECT1_0 = "NO";
    defparam count_631_add_4_1.INJECT1_1 = "NO";
    LUT4 i8968_2_lut_rep_123_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_548), 
         .C(n14675), .D(n14676), .Z(n14645)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8968_2_lut_rep_123_4_lut_4_lut_4_lut.init = 16'h1450;
    L6MUX21 i12606 (.D0(n14950), .D1(n14947), .SD(n14117), .Z(n14951));
    FD1P3AX PC_i0_i2 (.D(PC_7__N_167[2]), .SP(clk_enable_32), .CK(clk), 
            .Q(PC[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam PC_i0_i2.GSR = "ENABLED";
    FD1P3AX PC_i0_i3 (.D(PC_7__N_167[3]), .SP(clk_enable_32), .CK(clk), 
            .Q(PC[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam PC_i0_i3.GSR = "ENABLED";
    FD1P3AX PC_i0_i4 (.D(PC_7__N_167[4]), .SP(clk_enable_32), .CK(clk), 
            .Q(PC[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam PC_i0_i4.GSR = "ENABLED";
    FD1P3AX PC_i0_i5 (.D(PC_7__N_167[5]), .SP(clk_enable_32), .CK(clk), 
            .Q(PC[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam PC_i0_i5.GSR = "ENABLED";
    FD1P3AX PC_i0_i6 (.D(PC_7__N_167[6]), .SP(clk_enable_32), .CK(clk), 
            .Q(PC[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam PC_i0_i6.GSR = "ENABLED";
    FD1P3AX PC_i0_i7 (.D(PC_7__N_167[7]), .SP(clk_enable_32), .CK(clk), 
            .Q(PC[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam PC_i0_i7.GSR = "ENABLED";
    PFUMX i12552 (.BLUT(n14873), .ALUT(n14874), .C0(global_state[3]), 
          .Z(n14875));
    LUT4 Qbcd_3__bdd_4_lut_4_lut (.A(reset_c), .B(n14671), .C(n14662), 
         .D(Q[0]), .Z(n14471)) /* synthesis lut_function=(A (C)+!A !(B (D)+!B ((D)+!C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam Qbcd_3__bdd_4_lut_4_lut.init = 16'ha0f4;
    LUT4 i1887_2_lut_3_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n14647), .C(n14655), 
         .D(bcd_out_15__N_519), .Z(n3794)) /* synthesis lut_function=(A+!(B (C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1887_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'hbffb;
    CCU2D add_157_9 (.A0(PC[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12936), 
          .S0(n1497));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_157_9.INIT0 = 16'h5555;
    defparam add_157_9.INIT1 = 16'h0000;
    defparam add_157_9.INJECT1_0 = "NO";
    defparam add_157_9.INJECT1_1 = "NO";
    CCU2D add_157_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n12933), 
          .S1(n1504));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_157_1.INIT0 = 16'hF000;
    defparam add_157_1.INIT1 = 16'h5555;
    defparam add_157_1.INJECT1_0 = "NO";
    defparam add_157_1.INJECT1_1 = "NO";
    LUT4 i1971_2_lut_3_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n14638), .C(n2379), 
         .D(n14664), .Z(n3900)) /* synthesis lut_function=(A+!(B (C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1971_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'hbffb;
    CCU2D add_157_7 (.A0(PC[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12935), 
          .COUT(n12936), .S0(n1499), .S1(n1498));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_157_7.INIT0 = 16'h5555;
    defparam add_157_7.INIT1 = 16'h5555;
    defparam add_157_7.INJECT1_0 = "NO";
    defparam add_157_7.INJECT1_1 = "NO";
    PFUMX i12550 (.BLUT(n14870), .ALUT(n14871), .C0(n14693), .Z(n14872));
    PFUMX mux_46_Mux_0_i7 (.BLUT(n3), .ALUT(n6), .C0(instruction[2]), 
          .Z(n498));
    LUT4 mux_278_Mux_0_i134_4_lut_else_4_lut (.A(instruction[0]), .B(instruction[1]), 
         .C(execute_instruction[1]), .D(execute_instruction[2]), .Z(n14883)) /* synthesis lut_function=(A (B (D)+!B !(C))+!A (B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam mux_278_Mux_0_i134_4_lut_else_4_lut.init = 16'hcf47;
    LUT4 i1_4_lut_then_4_lut (.A(execute_instruction[0]), .B(execute_instruction[2]), 
         .C(execute_instruction[1]), .D(instruction[0]), .Z(n14890)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'h0200;
    LUT4 i1_4_lut_else_4_lut (.A(execute_instruction[0]), .B(execute_instruction[2]), 
         .C(execute_instruction[1]), .D(instruction[0]), .Z(n14889)) /* synthesis lut_function=(A (B+(C (D)+!C !(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'he8ca;
    LUT4 i12285_4_lut_then_4_lut (.A(instruction[0]), .B(control[3]), .C(control[1]), 
         .D(control[0]), .Z(n14899)) /* synthesis lut_function=(A+((C (D)+!C !(D))+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(173[6] 246[15])
    defparam i12285_4_lut_then_4_lut.init = 16'hfbbf;
    LUT4 i12285_4_lut_else_4_lut (.A(instruction[0]), .B(control[3]), .C(control[1]), 
         .D(control[0]), .Z(n14898)) /* synthesis lut_function=(A+((C (D))+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(173[6] 246[15])
    defparam i12285_4_lut_else_4_lut.init = 16'hfbbb;
    LUT4 i12185_3_lut_then_3_lut (.A(n2601), .B(n2596), .C(rpg_sel[0]), 
         .Z(n14905)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i12185_3_lut_then_3_lut.init = 16'hacac;
    LUT4 i12185_3_lut_else_3_lut (.A(n2586), .B(n2591), .C(rpg_sel[0]), 
         .Z(n14904)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i12185_3_lut_else_3_lut.init = 16'hcaca;
    LUT4 i2447_3_lut (.A(de[6]), .B(un[6]), .C(temp_control[3]), .Z(n4382)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(261[4] 278[13])
    defparam i2447_3_lut.init = 16'hcaca;
    LUT4 n9_bdd_4_lut (.A(IR[20]), .B(IR[21]), .C(IR[18]), .D(IR[19]), 
         .Z(n14341)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(C)))) */ ;
    defparam n9_bdd_4_lut.init = 16'h1014;
    LUT4 mux_596_i7_3_lut (.A(mi[6]), .B(ce[6]), .C(temp_control[1]), 
         .Z(n2289)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(261[4] 278[13])
    defparam mux_596_i7_3_lut.init = 16'hcaca;
    LUT4 n1503_bdd_4_lut_then_4_lut (.A(IR[1]), .B(instruction[1]), .C(instruction[0]), 
         .D(instruction[2]), .Z(n14920)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A (B+!(C (D))))) */ ;
    defparam n1503_bdd_4_lut_then_4_lut.init = 16'h3008;
    LUT4 n1503_bdd_4_lut_else_4_lut (.A(IR[1]), .B(instruction[1]), .C(instruction[0]), 
         .D(instruction[2]), .Z(n14919)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam n1503_bdd_4_lut_else_4_lut.init = 16'h0008;
    LUT4 n1502_bdd_4_lut_then_4_lut (.A(IR[2]), .B(instruction[1]), .C(instruction[0]), 
         .D(instruction[2]), .Z(n14923)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A (B+!(C (D))))) */ ;
    defparam n1502_bdd_4_lut_then_4_lut.init = 16'h3008;
    LUT4 n1502_bdd_4_lut_else_4_lut (.A(IR[2]), .B(instruction[1]), .C(instruction[0]), 
         .D(instruction[2]), .Z(n14922)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam n1502_bdd_4_lut_else_4_lut.init = 16'h0008;
    LUT4 n1500_bdd_4_lut_then_4_lut (.A(IR[4]), .B(instruction[1]), .C(instruction[0]), 
         .D(instruction[2]), .Z(n14926)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A (B+!(C (D))))) */ ;
    defparam n1500_bdd_4_lut_then_4_lut.init = 16'h3008;
    LUT4 n1500_bdd_4_lut_else_4_lut (.A(IR[4]), .B(instruction[1]), .C(instruction[0]), 
         .D(instruction[2]), .Z(n14925)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam n1500_bdd_4_lut_else_4_lut.init = 16'h0008;
    LUT4 n1501_bdd_4_lut_then_4_lut (.A(IR[3]), .B(instruction[1]), .C(instruction[0]), 
         .D(instruction[2]), .Z(n14929)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A (B+!(C (D))))) */ ;
    defparam n1501_bdd_4_lut_then_4_lut.init = 16'h3008;
    LUT4 n1501_bdd_4_lut_else_4_lut (.A(IR[3]), .B(instruction[1]), .C(instruction[0]), 
         .D(instruction[2]), .Z(n14928)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam n1501_bdd_4_lut_else_4_lut.init = 16'h0008;
    LUT4 mux_1733_i3_then_4_lut (.A(n2369), .B(n2394), .C(bcd_out_15__N_400), 
         .D(n14714), .Z(n14932)) /* synthesis lut_function=(A (B (C (D))+!B !(C))+!A !(B+(C))) */ ;
    defparam mux_1733_i3_then_4_lut.init = 16'h8303;
    LUT4 mux_1733_i3_else_4_lut (.A(n2390), .B(n2369), .C(bcd_out_15__N_400), 
         .D(n14714), .Z(n14931)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam mux_1733_i3_else_4_lut.init = 16'h8880;
    LUT4 mux_1735_i3_then_4_lut (.A(n2350), .B(Q[13]), .C(Q[11]), .D(Q[10]), 
         .Z(n14935)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))) */ ;
    defparam mux_1735_i3_then_4_lut.init = 16'ha220;
    LUT4 mux_1735_i3_else_4_lut (.A(Q[13]), .B(Q[11]), .Z(n14934)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam mux_1735_i3_else_4_lut.init = 16'h2222;
    LUT4 n14733_bdd_4_lut (.A(n14733), .B(A_temp[10]), .C(substract), 
         .D(B_temp[10]), .Z(n15175)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;
    defparam n14733_bdd_4_lut.init = 16'h6996;
    LUT4 i1_4_lut_rep_270_4_lut_then_3_lut (.A(global_state[1]), .B(global_state[2]), 
         .C(stop_run_c), .Z(n15222)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam i1_4_lut_rep_270_4_lut_then_3_lut.init = 16'h0e0e;
    LUT4 intermediate_carry_10__bdd_4_lut_12735 (.A(intermediate_carry_adj_1182[10]), 
         .B(n14769), .C(SumRest_11__N_989_adj_1163[10]), .D(n14827), .Z(n15171)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (C (D)))) */ ;
    defparam intermediate_carry_10__bdd_4_lut_12735.init = 16'he800;
    LUT4 i905_2_lut_rep_202_3_lut (.A(n2394), .B(n14762), .C(bcd_out_15__N_400), 
         .Z(n14724)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i905_2_lut_rep_202_3_lut.init = 16'hc8c8;
    LUT4 intermediate_carry_11__bdd_4_lut (.A(intermediate_carry[11]), .B(A_temp[11]), 
         .C(substract), .D(B_temp[11]), .Z(n15169)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;
    defparam intermediate_carry_11__bdd_4_lut.init = 16'h6996;
    LUT4 i1_2_lut_rep_193_3_lut_3_lut_3_lut (.A(n2394), .B(n14762), .C(bcd_out_15__N_400), 
         .Z(n14715)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_rep_193_3_lut_3_lut_3_lut.init = 16'h3838;
    CCU2D add_157_5 (.A0(PC[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12934), 
          .COUT(n12935), .S0(n1501), .S1(n1500));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_157_5.INIT0 = 16'h5555;
    defparam add_157_5.INIT1 = 16'h5555;
    defparam add_157_5.INJECT1_0 = "NO";
    defparam add_157_5.INJECT1_1 = "NO";
    LUT4 n14740_bdd_4_lut (.A(n14740), .B(A_temp[9]), .C(substract), .D(B_temp[9]), 
         .Z(n15181)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;
    defparam n14740_bdd_4_lut.init = 16'h6996;
    CCU2D count_631_add_4_19 (.A0(count[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12945), .S0(n78));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[14:19])
    defparam count_631_add_4_19.INIT0 = 16'hfaaa;
    defparam count_631_add_4_19.INIT1 = 16'h0000;
    defparam count_631_add_4_19.INJECT1_0 = "NO";
    defparam count_631_add_4_19.INJECT1_1 = "NO";
    LUT4 n14750_bdd_4_lut (.A(n14750), .B(v12_34[9]), .C(v56[9]), .D(n14827), 
         .Z(n15183)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C (D)))) */ ;
    defparam n14750_bdd_4_lut.init = 16'h9600;
    LUT4 i1_4_lut_rep_270_4_lut_else_3_lut (.A(global_state[1]), .B(global_state[2]), 
         .C(global_state[0]), .D(stop_run_c), .Z(n15221)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_4_lut_rep_270_4_lut_else_3_lut.init = 16'h0020;
    LUT4 n14746_bdd_4_lut (.A(n14746), .B(A_temp[8]), .C(substract), .D(B_temp[8]), 
         .Z(n15187)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;
    defparam n14746_bdd_4_lut.init = 16'h6996;
    LUT4 n14760_bdd_4_lut (.A(n14760), .B(v12_34[8]), .C(v56[8]), .D(n14827), 
         .Z(n15189)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C (D)))) */ ;
    defparam n14760_bdd_4_lut.init = 16'h9600;
    LUT4 i900_2_lut_rep_201_4_lut (.A(n2390), .B(n2394), .C(n14762), .D(bcd_out_15__N_400), 
         .Z(n14723)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i900_2_lut_rep_201_4_lut.init = 16'hffca;
    LUT4 n14753_bdd_4_lut (.A(n14753), .B(A_temp[7]), .C(substract), .D(B_temp[7]), 
         .Z(n15193)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;
    defparam n14753_bdd_4_lut.init = 16'h6996;
    LUT4 bcd_out_15__N_380_3__bdd_3_lut_4_lut_3_lut_4_lut (.A(n2390), .B(n2394), 
         .C(n14762), .D(bcd_out_15__N_400), .Z(n14563)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam bcd_out_15__N_380_3__bdd_3_lut_4_lut_3_lut_4_lut.init = 16'hca0a;
    LUT4 v12_34_7__bdd_4_lut (.A(v12_34[7]), .B(n14766), .C(v56[7]), .D(n14827), 
         .Z(n15195)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C (D)))) */ ;
    defparam v12_34_7__bdd_4_lut.init = 16'h9600;
    LUT4 i1_4_lut_rep_271_then_4_lut (.A(stop_run_c), .B(global_state[1]), 
         .C(global_state[3]), .D(global_state[0]), .Z(n15225)) /* synthesis lut_function=(!(A+!(B (C)+!B (C+!(D))))) */ ;
    defparam i1_4_lut_rep_271_then_4_lut.init = 16'h5051;
    LUT4 n14761_bdd_4_lut (.A(n14761), .B(A_temp[6]), .C(substract), .D(B_temp[6]), 
         .Z(n15201)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;
    defparam n14761_bdd_4_lut.init = 16'h6996;
    LUT4 v12_34_6__bdd_4_lut (.A(v12_34[6]), .B(n14777), .C(v56[6]), .D(n14827), 
         .Z(n15203)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C (D)))) */ ;
    defparam v12_34_6__bdd_4_lut.init = 16'h9600;
    LUT4 i1_4_lut_rep_271_else_4_lut (.A(stop_run_c), .B(global_state[1]), 
         .C(global_state[3]), .Z(n15224)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_4_lut_rep_271_else_4_lut.init = 16'h4040;
    LUT4 n14770_bdd_4_lut (.A(n14770), .B(A_temp[5]), .C(substract), .D(B_temp[5]), 
         .Z(n15207)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;
    defparam n14770_bdd_4_lut.init = 16'h6996;
    LUT4 v12_34_5__bdd_4_lut (.A(v12_34[5]), .B(n14783), .C(n14827), .D(n14815), 
         .Z(n15209)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C (D)))) */ ;
    defparam v12_34_5__bdd_4_lut.init = 16'h9060;
    CCU2D add_7_3 (.A0(PC[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12929), 
          .COUT(n12930), .S0(n230), .S1(n229));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_7_3.INIT0 = 16'h5aaa;
    defparam add_7_3.INIT1 = 16'h5aaa;
    defparam add_7_3.INJECT1_0 = "NO";
    defparam add_7_3.INJECT1_1 = "NO";
    LUT4 IR_22__bdd_4_lut (.A(IR[18]), .B(IR[21]), .C(IR[20]), .D(IR[19]), 
         .Z(n14549)) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A ((C+(D))+!B))) */ ;
    defparam IR_22__bdd_4_lut.init = 16'h220e;
    LUT4 n1493_bdd_2_lut_12535 (.A(n14549), .B(IR[22]), .Z(n14550)) /* synthesis lut_function=(A (B)) */ ;
    defparam n1493_bdd_2_lut_12535.init = 16'h8888;
    PFUMX i2438 (.BLUT(n2294), .ALUT(n4372), .C0(n14145), .Z(n4373));
    PFUMX i12604 (.BLUT(n14949), .ALUT(n14948), .C0(control[2]), .Z(n14950));
    LUT4 mux_48_Mux_0_i15_4_lut (.A(PC[0]), .B(IR[0]), .C(global_state[3]), 
         .D(n14022), .Z(MAR_7__N_175[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam mux_48_Mux_0_i15_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut (.A(IR[17]), .B(n14011), .Z(n14013)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_4_lut (.A(IR[18]), .B(n14076), .C(n14102), .D(n6042), .Z(n14077)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C))) */ ;
    defparam i1_4_lut.init = 16'hcfef;
    LUT4 i12135_2_lut (.A(n6036), .B(IR[20]), .Z(n14102)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i12135_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_78 (.A(IR[23]), .B(IR[18]), .C(n14550), .D(n6060), 
         .Z(n14076)) /* synthesis lut_function=(A+!(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_78.init = 16'habaf;
    LUT4 i3_4_lut (.A(IR[19]), .B(n14818), .C(IR[21]), .D(IR[20]), .Z(n6042)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(162[12:20])
    defparam i3_4_lut.init = 16'hffef;
    LUT4 i3_4_lut_adj_79 (.A(IR[19]), .B(IR[21]), .C(IR[18]), .D(n14818), 
         .Z(n6036)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(158[12:20])
    defparam i3_4_lut_adj_79.init = 16'hffdf;
    LUT4 i1_4_lut_adj_80 (.A(n6036), .B(n14076), .C(n14100), .D(IR[20]), 
         .Z(n14078)) /* synthesis lut_function=(A (B+!(C))+!A (B+((D)+!C))) */ ;
    defparam i1_4_lut_adj_80.init = 16'hdfcf;
    LUT4 i12133_2_lut (.A(IR[18]), .B(n6042), .Z(n14100)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i12133_2_lut.init = 16'heeee;
    LUT4 i1889_3_lut (.A(de[0]), .B(un[0]), .C(temp_control[3]), .Z(n3796)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(261[4] 278[13])
    defparam i1889_3_lut.init = 16'hcaca;
    LUT4 data_out_23__N_589_0__bdd_3_lut_12396 (.A(A_temp[0]), .B(B_temp[0]), 
         .C(substract), .Z(n14368)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;
    defparam data_out_23__N_589_0__bdd_3_lut_12396.init = 16'h9696;
    CCU2D add_7_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n12929), 
          .S1(n231));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_7_1.INIT0 = 16'hF000;
    defparam add_7_1.INIT1 = 16'h5555;
    defparam add_7_1.INJECT1_0 = "NO";
    defparam add_7_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_287_3_lut_4_lut (.A(instruction[1]), .B(instruction[0]), 
         .C(instruction[2]), .D(global_state[0]), .Z(n14809)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i1_2_lut_rep_287_3_lut_4_lut.init = 16'h0004;
    LUT4 i9182_2_lut_3_lut (.A(instruction[1]), .B(instruction[0]), .C(n1498), 
         .Z(n6_adj_1097)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i9182_2_lut_3_lut.init = 16'h4040;
    LUT4 i9180_2_lut_3_lut (.A(instruction[1]), .B(instruction[0]), .C(n1499), 
         .Z(n6_adj_1099)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i9180_2_lut_3_lut.init = 16'h4040;
    LUT4 i9185_2_lut_3_lut (.A(instruction[1]), .B(instruction[0]), .C(n1497), 
         .Z(n6_adj_1095)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i9185_2_lut_3_lut.init = 16'h4040;
    LUT4 i9240_2_lut_3_lut (.A(instruction[0]), .B(instruction[1]), .C(IR[0]), 
         .Z(n3)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i9240_2_lut_3_lut.init = 16'h4040;
    LUT4 n14795_bdd_4_lut_12663 (.A(n14795), .B(A_temp[2]), .C(substract), 
         .D(B_temp[2]), .Z(n14946)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;
    defparam n14795_bdd_4_lut_12663.init = 16'h6996;
    LUT4 i9183_2_lut_3_lut (.A(instruction[0]), .B(instruction[1]), .C(IR[6]), 
         .Z(n3_adj_1096)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i9183_2_lut_3_lut.init = 16'h4040;
    LUT4 i9181_2_lut_3_lut (.A(instruction[0]), .B(instruction[1]), .C(IR[5]), 
         .Z(n3_adj_1098)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i9181_2_lut_3_lut.init = 16'h4040;
    LUT4 i9186_2_lut_3_lut (.A(instruction[0]), .B(instruction[1]), .C(IR[7]), 
         .Z(n3_adj_1094)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i9186_2_lut_3_lut.init = 16'h4040;
    PFUMX i2440 (.BLUT(n2293), .ALUT(n4374), .C0(n14145), .Z(n4375));
    LUT4 i1_2_lut_3_lut_adj_81 (.A(rpg_write), .B(rpg_sel[0]), .C(rpg_sel[1]), 
         .Z(clk_enable_3)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_81.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_82 (.A(rpg_write), .B(rpg_sel[0]), .C(rpg_sel[1]), 
         .Z(clk_enable_5)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_82.init = 16'h0202;
    CCU2D count_631_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12944), .COUT(n12945), .S0(n80), .S1(n79));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[14:19])
    defparam count_631_add_4_17.INIT0 = 16'hfaaa;
    defparam count_631_add_4_17.INIT1 = 16'hfaaa;
    defparam count_631_add_4_17.INJECT1_0 = "NO";
    defparam count_631_add_4_17.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(execute_instruction[2]), .D(n15220), .Z(n14022)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i1_3_lut_4_lut.init = 16'h0002;
    FD1P3IX IR_i0_i12 (.D(MBR[12]), .SP(clk_enable_157), .CD(n7576), .CK(clk), 
            .Q(IR[12]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam IR_i0_i12.GSR = "ENABLED";
    LUT4 i31_3_lut_4_lut_4_lut_3_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(execute_instruction[2]), .Z(n16)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i31_3_lut_4_lut_4_lut_3_lut.init = 16'he2e2;
    LUT4 i1_2_lut_3_lut_4_lut (.A(global_state[1]), .B(global_state[2]), 
         .C(n6151), .D(execute_instruction[2]), .Z(n13978)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i8966_2_lut_rep_129_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_552), 
         .C(n14668), .D(n14682), .Z(n14651)) /* synthesis lut_function=(!(A+!(B (D)+!B !(C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8966_2_lut_rep_129_4_lut_4_lut.init = 16'h4510;
    FD1P3IX IR_i0_i11 (.D(MBR[11]), .SP(clk_enable_157), .CD(n7576), .CK(clk), 
            .Q(IR[11]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam IR_i0_i11.GSR = "ENABLED";
    FD1P3IX MBR_i0_i1 (.D(data_out_23__N_589[1]), .SP(clk_enable_143), .CD(n7553), 
            .CK(clk), .Q(MBR[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MBR_i0_i1.GSR = "ENABLED";
    CCU2D add_157_3 (.A0(PC[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12933), 
          .COUT(n12934), .S0(n1503), .S1(n1502));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_157_3.INIT0 = 16'h5555;
    defparam add_157_3.INIT1 = 16'h5555;
    defparam add_157_3.INJECT1_0 = "NO";
    defparam add_157_3.INJECT1_1 = "NO";
    CCU2D add_7_9 (.A0(PC[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12932), 
          .S0(n224));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_7_9.INIT0 = 16'h5aaa;
    defparam add_7_9.INIT1 = 16'h0000;
    defparam add_7_9.INJECT1_0 = "NO";
    defparam add_7_9.INJECT1_1 = "NO";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    PFUMX i2442 (.BLUT(n2292), .ALUT(n4376), .C0(n14145), .Z(n4377));
    LUT4 i1_2_lut_3_lut_4_lut_adj_83 (.A(global_state[1]), .B(global_state[2]), 
         .C(n14373), .D(execute_instruction[2]), .Z(n13989)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i1_2_lut_3_lut_4_lut_adj_83.init = 16'h0010;
    PFUMX i2444 (.BLUT(n2291), .ALUT(n4378), .C0(n14145), .Z(n4379));
    LUT4 i142_2_lut_rep_290_3_lut (.A(global_state[1]), .B(global_state[2]), 
         .C(execute_instruction[2]), .Z(n14812)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i142_2_lut_rep_290_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_285_3_lut (.A(global_state[1]), .B(global_state[2]), 
         .C(global_state[3]), .Z(n14807)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i1_2_lut_rep_285_3_lut.init = 16'hefef;
    LUT4 i1_2_lut_3_lut_4_lut_adj_84 (.A(global_state[1]), .B(global_state[2]), 
         .C(n15192), .D(execute_instruction[2]), .Z(n13969)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i1_2_lut_3_lut_4_lut_adj_84.init = 16'h0010;
    PFUMX i2446 (.BLUT(n2290), .ALUT(n4380), .C0(n14145), .Z(n4381));
    LUT4 i1_2_lut_3_lut_4_lut_adj_85 (.A(global_state[1]), .B(global_state[2]), 
         .C(n15206), .D(execute_instruction[2]), .Z(n13974)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i1_2_lut_3_lut_4_lut_adj_85.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_86 (.A(global_state[1]), .B(global_state[2]), 
         .C(n15174), .D(execute_instruction[2]), .Z(n13964)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i1_2_lut_3_lut_4_lut_adj_86.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_87 (.A(global_state[1]), .B(global_state[2]), 
         .C(n14943), .D(execute_instruction[2]), .Z(n13979)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i1_2_lut_3_lut_4_lut_adj_87.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_88 (.A(global_state[1]), .B(global_state[2]), 
         .C(n15212), .D(execute_instruction[2]), .Z(n13976)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i1_2_lut_3_lut_4_lut_adj_88.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_89 (.A(global_state[1]), .B(global_state[2]), 
         .C(n14951), .D(execute_instruction[2]), .Z(n13981)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i1_2_lut_3_lut_4_lut_adj_89.init = 16'h0010;
    LUT4 i12349_2_lut_3_lut_4_lut (.A(global_state[1]), .B(global_state[2]), 
         .C(execute_instruction[0]), .D(execute_instruction[2]), .Z(n14074)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i12349_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_3_lut_4_lut_adj_90 (.A(global_state[1]), .B(global_state[2]), 
         .C(n15180), .D(execute_instruction[2]), .Z(n13965)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i1_2_lut_3_lut_4_lut_adj_90.init = 16'h0010;
    LUT4 i5695_2_lut_3_lut (.A(global_state[1]), .B(global_state[2]), .C(clk_enable_98), 
         .Z(n7648)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i5695_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_91 (.A(global_state[1]), .B(global_state[2]), 
         .C(n15198), .D(execute_instruction[2]), .Z(n13972)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i1_2_lut_3_lut_4_lut_adj_91.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_92 (.A(global_state[1]), .B(global_state[2]), 
         .C(n6160), .D(execute_instruction[2]), .Z(n13955)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i1_2_lut_3_lut_4_lut_adj_92.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_93 (.A(global_state[1]), .B(global_state[2]), 
         .C(n15186), .D(execute_instruction[2]), .Z(n13967)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i1_2_lut_3_lut_4_lut_adj_93.init = 16'h0010;
    LUT4 v12_2__bdd_4_lut_12666 (.A(v12[2]), .B(n14827), .C(A_temp[0]), 
         .D(B_temp[2]), .Z(n14948)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;
    defparam v12_2__bdd_4_lut_12666.init = 16'h4888;
    LUT4 n13994_bdd_4_lut (.A(n13994), .B(n11), .C(global_state[3]), .D(stop_run_c), 
         .Z(clk_enable_14)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n13994_bdd_4_lut.init = 16'h00ca;
    LUT4 i2445_3_lut (.A(de[5]), .B(un[5]), .C(temp_control[3]), .Z(n4380)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(261[4] 278[13])
    defparam i2445_3_lut.init = 16'hcaca;
    PFUMX i12394 (.BLUT(n14392), .ALUT(n14391), .C0(instruction[0]), .Z(n14393));
    LUT4 bcd_out_15__N_357_3__bdd_4_lut (.A(n14762), .B(bcd_out_15__N_362), 
         .C(bcd_out_15__N_371), .D(n14756), .Z(n14594)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A (B (C+(D))+!B !(C+(D))))) */ ;
    defparam bcd_out_15__N_357_3__bdd_4_lut.init = 16'h399c;
    LUT4 i8975_2_lut_rep_113_4_lut_4_lut_then_4_lut (.A(reset_c), .B(bcd_out_15__N_354), 
         .C(n14724), .D(n14664), .Z(n14868)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8975_2_lut_rep_113_4_lut_4_lut_then_4_lut.init = 16'h0040;
    LUT4 n14786_bdd_4_lut (.A(n14786), .B(A_temp[3]), .C(substract), .D(B_temp[3]), 
         .Z(n14938)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;
    defparam n14786_bdd_4_lut.init = 16'h6996;
    LUT4 i8961_2_lut_3_lut_3_lut (.A(reset_c), .B(n14685), .C(Q[1]), .Z(Qbcd[1])) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8961_2_lut_3_lut_3_lut.init = 16'h1414;
    LUT4 i2_4_lut (.A(n23), .B(bcd_out_15__N_371), .C(n14756), .D(n14762), 
         .Z(bcd_out_15__N_405)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2_4_lut.init = 16'h36c9;
    FD1P3IX IR_i0_i10 (.D(MBR[10]), .SP(clk_enable_157), .CD(n7576), .CK(clk), 
            .Q(IR[10]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam IR_i0_i10.GSR = "ENABLED";
    LUT4 i3_4_lut_adj_94 (.A(n11816), .B(reset_c), .C(n9971), .D(n14813), 
         .Z(clk_enable_6)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i3_4_lut_adj_94.init = 16'h0020;
    CCU2D count_631_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12943), .COUT(n12944), .S0(n82), .S1(n81));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[14:19])
    defparam count_631_add_4_15.INIT0 = 16'hfaaa;
    defparam count_631_add_4_15.INIT1 = 16'hfaaa;
    defparam count_631_add_4_15.INJECT1_0 = "NO";
    defparam count_631_add_4_15.INJECT1_1 = "NO";
    FD1P3IX IR_i0_i9 (.D(MBR[9]), .SP(clk_enable_157), .CD(n7576), .CK(clk), 
            .Q(IR[9]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam IR_i0_i9.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_95 (.A(global_state[3]), .B(stop_run_c), .Z(n9971)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i1_2_lut_adj_95.init = 16'h2222;
    CCU2D count_631_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12942), .COUT(n12943), .S0(n84), .S1(n83));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[14:19])
    defparam count_631_add_4_13.INIT0 = 16'hfaaa;
    defparam count_631_add_4_13.INIT1 = 16'hfaaa;
    defparam count_631_add_4_13.INJECT1_0 = "NO";
    defparam count_631_add_4_13.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_96 (.A(stop_run_c), .B(global_state[3]), .C(n14875), 
         .D(n15220), .Z(clk_enable_32)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_96.init = 16'h5450;
    LUT4 bcd_out_15__N_580_bdd_4_lut_4_lut_then_3_lut (.A(reset_c), .B(Q[1]), 
         .C(bcd_out_15__N_572), .Z(n14871)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam bcd_out_15__N_580_bdd_4_lut_4_lut_then_3_lut.init = 16'hefef;
    LUT4 i12332_2_lut (.A(temp_control[3]), .B(temp_control[2]), .Z(n14145)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(261[4] 278[13])
    defparam i12332_2_lut.init = 16'heeee;
    LUT4 mux_48_Mux_1_i15_4_lut (.A(PC[1]), .B(IR[1]), .C(global_state[3]), 
         .D(n14022), .Z(MAR_7__N_175[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam mux_48_Mux_1_i15_4_lut.init = 16'hca0a;
    LUT4 mux_48_Mux_2_i15_4_lut (.A(PC[2]), .B(IR[2]), .C(global_state[3]), 
         .D(n14022), .Z(MAR_7__N_175[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam mux_48_Mux_2_i15_4_lut.init = 16'hca0a;
    CCU2D count_631_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12941), .COUT(n12942), .S0(n86), .S1(n85));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[14:19])
    defparam count_631_add_4_11.INIT0 = 16'hfaaa;
    defparam count_631_add_4_11.INIT1 = 16'hfaaa;
    defparam count_631_add_4_11.INJECT1_0 = "NO";
    defparam count_631_add_4_11.INJECT1_1 = "NO";
    LUT4 mux_48_Mux_3_i15_4_lut (.A(PC[3]), .B(IR[3]), .C(global_state[3]), 
         .D(n14022), .Z(MAR_7__N_175[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam mux_48_Mux_3_i15_4_lut.init = 16'hca0a;
    LUT4 mux_48_Mux_4_i15_4_lut (.A(PC[4]), .B(IR[4]), .C(global_state[3]), 
         .D(n14022), .Z(MAR_7__N_175[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam mux_48_Mux_4_i15_4_lut.init = 16'hca0a;
    LUT4 mux_48_Mux_5_i15_4_lut (.A(PC[5]), .B(IR[5]), .C(global_state[3]), 
         .D(n14022), .Z(MAR_7__N_175[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam mux_48_Mux_5_i15_4_lut.init = 16'hca0a;
    LUT4 instruction_0__bdd_2_lut (.A(instruction[1]), .B(instruction[2]), 
         .Z(n14392)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam instruction_0__bdd_2_lut.init = 16'h4444;
    LUT4 mux_48_Mux_6_i15_4_lut (.A(PC[6]), .B(IR[6]), .C(global_state[3]), 
         .D(n14022), .Z(MAR_7__N_175[6])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam mux_48_Mux_6_i15_4_lut.init = 16'hca0a;
    LUT4 mux_48_Mux_7_i15_4_lut (.A(PC[7]), .B(IR[7]), .C(global_state[3]), 
         .D(n14022), .Z(MAR_7__N_175[7])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam mux_48_Mux_7_i15_4_lut.init = 16'hca0a;
    LUT4 mux_596_i6_3_lut (.A(mi[5]), .B(ce[5]), .C(temp_control[1]), 
         .Z(n2290)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(261[4] 278[13])
    defparam mux_596_i6_3_lut.init = 16'hcaca;
    LUT4 i2443_3_lut (.A(de[4]), .B(un[4]), .C(temp_control[3]), .Z(n4378)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(261[4] 278[13])
    defparam i2443_3_lut.init = 16'hcaca;
    CCU2D count_631_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12940), .COUT(n12941), .S0(n88), .S1(n87));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[14:19])
    defparam count_631_add_4_9.INIT0 = 16'hfaaa;
    defparam count_631_add_4_9.INIT1 = 16'hfaaa;
    defparam count_631_add_4_9.INJECT1_0 = "NO";
    defparam count_631_add_4_9.INJECT1_1 = "NO";
    PFUMX i12524 (.BLUT(n14594), .ALUT(n14593), .C0(n23), .Z(bcd_out_15__N_401));
    LUT4 mux_596_i5_3_lut (.A(mi[4]), .B(ce[4]), .C(temp_control[1]), 
         .Z(n2291)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(261[4] 278[13])
    defparam mux_596_i5_3_lut.init = 16'hcaca;
    LUT4 bcd_out_15__N_580_bdd_4_lut_4_lut_else_3_lut (.A(reset_c), .B(Q[1]), 
         .C(bcd_out_15__N_572), .D(bcd_out_15__N_568), .Z(n14870)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam bcd_out_15__N_580_bdd_4_lut_4_lut_else_3_lut.init = 16'hfffb;
    LUT4 i2441_3_lut (.A(de[3]), .B(un[3]), .C(temp_control[3]), .Z(n4376)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(261[4] 278[13])
    defparam i2441_3_lut.init = 16'hcaca;
    LUT4 mux_596_i4_3_lut (.A(mi[3]), .B(ce[3]), .C(temp_control[1]), 
         .Z(n2292)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(261[4] 278[13])
    defparam mux_596_i4_3_lut.init = 16'hcaca;
    LUT4 i2439_3_lut (.A(de[2]), .B(un[2]), .C(temp_control[3]), .Z(n4374)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(261[4] 278[13])
    defparam i2439_3_lut.init = 16'hcaca;
    LUT4 mux_596_i3_3_lut (.A(mi[2]), .B(ce[2]), .C(temp_control[1]), 
         .Z(n2293)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(261[4] 278[13])
    defparam mux_596_i3_3_lut.init = 16'hcaca;
    LUT4 i2437_3_lut (.A(de[1]), .B(un[1]), .C(temp_control[3]), .Z(n4372)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(261[4] 278[13])
    defparam i2437_3_lut.init = 16'hcaca;
    LUT4 mux_596_i2_3_lut (.A(mi[1]), .B(ce[1]), .C(temp_control[1]), 
         .Z(n2294)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(261[4] 278[13])
    defparam mux_596_i2_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_97 (.A(C), .B(n14812), .C(data_out_23__N_589[12]), 
         .D(instruction[0]), .Z(n13962)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_97.init = 16'h3022;
    FD1P3IX count_631__i17 (.D(n78), .SP(clk_enable_67), .CD(n7673), .CK(clk), 
            .Q(count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[14:19])
    defparam count_631__i17.GSR = "DISABLED";
    FD1P3IX count_631__i16 (.D(n79), .SP(clk_enable_67), .CD(n7673), .CK(clk), 
            .Q(count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[14:19])
    defparam count_631__i16.GSR = "DISABLED";
    FD1P3IX IR_i0_i8 (.D(MBR[8]), .SP(clk_enable_157), .CD(n7576), .CK(clk), 
            .Q(IR[8]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam IR_i0_i8.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_98 (.A(n9971), .B(n15220), .C(n14848), .D(n75), 
         .Z(clk_enable_62)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_98.init = 16'h8a88;
    LUT4 i1_2_lut_adj_99 (.A(instruction[0]), .B(instruction[1]), .Z(n75)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(103[8:19])
    defparam i1_2_lut_adj_99.init = 16'hbbbb;
    FD1P3IX count_631__i0 (.D(n95), .SP(clk_enable_67), .CD(n7673), .CK(clk), 
            .Q(n18)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[14:19])
    defparam count_631__i0.GSR = "DISABLED";
    FD1P3IX IR_i0_i7 (.D(MBR[7]), .SP(clk_enable_157), .CD(n7576), .CK(clk), 
            .Q(IR[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam IR_i0_i7.GSR = "ENABLED";
    LUT4 reduce_or_227_i1_2_lut (.A(temp_control[3]), .B(n1577), .Z(n1593)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(261[4] 278[13])
    defparam reduce_or_227_i1_2_lut.init = 16'heeee;
    GSR GSR_INST (.GSR(clk_enable_67));
    FD1P3IX count_631__i15 (.D(n80), .SP(clk_enable_67), .CD(n7673), .CK(clk), 
            .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[14:19])
    defparam count_631__i15.GSR = "DISABLED";
    FD1P3IX count_631__i14 (.D(n81), .SP(clk_enable_67), .CD(n7673), .CK(clk), 
            .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[14:19])
    defparam count_631__i14.GSR = "DISABLED";
    PFUMX i12548 (.BLUT(n14867), .ALUT(n14868), .C0(bcd_out_15__N_446), 
          .Z(n14635));
    FD1P3IX count_631__i13 (.D(n82), .SP(clk_enable_67), .CD(n7673), .CK(clk), 
            .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[14:19])
    defparam count_631__i13.GSR = "DISABLED";
    FD1P3IX IR_i0_i6 (.D(MBR[6]), .SP(clk_enable_157), .CD(n7576), .CK(clk), 
            .Q(IR[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam IR_i0_i6.GSR = "ENABLED";
    LUT4 mux_596_i1_3_lut (.A(mi[0]), .B(ce[0]), .C(temp_control[1]), 
         .Z(n2295)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(261[4] 278[13])
    defparam mux_596_i1_3_lut.init = 16'hcaca;
    FD1P3IX count_631__i12 (.D(n83), .SP(clk_enable_67), .CD(n7673), .CK(clk), 
            .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[14:19])
    defparam count_631__i12.GSR = "DISABLED";
    FD1P3IX IR_i0_i5 (.D(MBR[5]), .SP(clk_enable_157), .CD(n7576), .CK(clk), 
            .Q(IR[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam IR_i0_i5.GSR = "ENABLED";
    FD1P3IX count_631__i11 (.D(n84), .SP(clk_enable_67), .CD(n7673), .CK(clk), 
            .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[14:19])
    defparam count_631__i11.GSR = "DISABLED";
    LUT4 i1_4_lut_4_lut_then_4_lut (.A(global_state[0]), .B(instruction[2]), 
         .C(instruction[1]), .D(instruction[0]), .Z(n14874)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B ((D)+!C)))) */ ;
    defparam i1_4_lut_4_lut_then_4_lut.init = 16'h0410;
    LUT4 i1_4_lut_4_lut_else_4_lut (.A(global_state[0]), .B(global_state[2]), 
         .C(global_state[1]), .Z(n14873)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_4_lut_4_lut_else_4_lut.init = 16'h0404;
    FD1P3IX IR_i0_i4 (.D(MBR[4]), .SP(clk_enable_157), .CD(n7576), .CK(clk), 
            .Q(IR[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam IR_i0_i4.GSR = "ENABLED";
    L6MUX21 i12388 (.D0(n14630), .D1(n14369), .SD(n14117), .Z(n14373));
    FD1P3IX count_631__i10 (.D(n85), .SP(clk_enable_67), .CD(n7673), .CK(clk), 
            .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[14:19])
    defparam count_631__i10.GSR = "DISABLED";
    FD1P3IX IR_i0_i3 (.D(MBR[3]), .SP(clk_enable_157), .CD(n7576), .CK(clk), 
            .Q(IR[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam IR_i0_i3.GSR = "ENABLED";
    FD1P3IX count_631__i9 (.D(n86), .SP(clk_enable_67), .CD(n7673), .CK(clk), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[14:19])
    defparam count_631__i9.GSR = "DISABLED";
    FD1P3IX count_631__i8 (.D(n87), .SP(clk_enable_67), .CD(n7673), .CK(clk), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[14:19])
    defparam count_631__i8.GSR = "DISABLED";
    LUT4 execute_instruction_2__bdd_4_lut (.A(execute_instruction[2]), .B(n15220), 
         .C(execute_instruction[1]), .D(execute_instruction[0]), .Z(n14876)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam execute_instruction_2__bdd_4_lut.init = 16'h0110;
    FD1P3IX IR_i0_i2 (.D(MBR[2]), .SP(clk_enable_157), .CD(n7576), .CK(clk), 
            .Q(IR[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam IR_i0_i2.GSR = "ENABLED";
    FD1P3IX count_631__i7 (.D(n88), .SP(clk_enable_67), .CD(n7673), .CK(clk), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[14:19])
    defparam count_631__i7.GSR = "DISABLED";
    FD1P3IX count_631__i6 (.D(n89), .SP(clk_enable_67), .CD(n7673), .CK(clk), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[14:19])
    defparam count_631__i6.GSR = "DISABLED";
    FD1P3IX IR_i0_i1 (.D(MBR[1]), .SP(clk_enable_157), .CD(n7576), .CK(clk), 
            .Q(IR[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam IR_i0_i1.GSR = "ENABLED";
    FD1P3IX count_631__i5 (.D(n90), .SP(clk_enable_67), .CD(n7673), .CK(clk), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[14:19])
    defparam count_631__i5.GSR = "DISABLED";
    LUT4 i8972_2_lut_rep_111_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_515), 
         .C(n14665), .D(n14666), .Z(n14633)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8972_2_lut_rep_111_4_lut_4_lut_4_lut.init = 16'h1450;
    FD1P3IX count_631__i4 (.D(n91), .SP(clk_enable_67), .CD(n7673), .CK(clk), 
            .Q(n14)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[14:19])
    defparam count_631__i4.GSR = "DISABLED";
    LUT4 i12331_2_lut (.A(reset_c), .B(n11278), .Z(n7673)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i12331_2_lut.init = 16'h4444;
    FD1P3IX MBR_i0_i23 (.D(data_out_23__N_589[23]), .SP(clk_enable_143), 
            .CD(n7553), .CK(clk), .Q(MBR[23]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MBR_i0_i23.GSR = "ENABLED";
    LUT4 i12346_3_lut (.A(stop_run_c), .B(n13909), .C(n12), .Z(clk_enable_66)) /* synthesis lut_function=(!(A+(B (C)))) */ ;
    defparam i12346_3_lut.init = 16'h1515;
    LUT4 i1_2_lut_4_lut (.A(n14794), .B(data_out_23__N_590), .C(instruction[0]), 
         .D(data_out_23__N_638[14]), .Z(n14016)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i1_2_lut_4_lut.init = 16'h8000;
    FD1P3AX execute_instruction_i0_i0 (.D(n14074), .SP(clk_enable_62), .CK(clk), 
            .Q(execute_instruction[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam execute_instruction_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_adj_100 (.A(n14794), .B(data_out_23__N_590), .C(instruction[0]), 
         .D(data_out_23__N_638[13]), .Z(n14015)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i1_2_lut_4_lut_adj_100.init = 16'h8000;
    LUT4 i12278_2_lut_2_lut_3_lut_3_lut_3_lut (.A(reset_c), .B(n14638), 
         .C(n14637), .Z(n14174)) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i12278_2_lut_2_lut_3_lut_3_lut_3_lut.init = 16'hebeb;
    LUT4 i4930_4_lut (.A(n2668), .B(IR[0]), .C(instruction[2]), .D(n2665), 
         .Z(n6893)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(173[6] 246[15])
    defparam i4930_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_101 (.A(n15220), .B(n14811), .C(n13922), .D(n14106), 
         .Z(clk_enable_142)) /* synthesis lut_function=(A (B)+!A !(((D)+!C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i1_4_lut_adj_101.init = 16'h88c8;
    FD1P3IX count_631__i3 (.D(n92), .SP(clk_enable_67), .CD(n7673), .CK(clk), 
            .Q(n15)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[14:19])
    defparam count_631__i3.GSR = "DISABLED";
    CCU2D count_631_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12939), .COUT(n12940), .S0(n90), .S1(n89));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[14:19])
    defparam count_631_add_4_7.INIT0 = 16'hfaaa;
    defparam count_631_add_4_7.INIT1 = 16'hfaaa;
    defparam count_631_add_4_7.INJECT1_0 = "NO";
    defparam count_631_add_4_7.INJECT1_1 = "NO";
    LUT4 i12302_2_lut (.A(n1577), .B(reset_c), .Z(clk_0_enable_8)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(258[3] 280[10])
    defparam i12302_2_lut.init = 16'h1111;
    LUT4 i1_4_lut_adj_102 (.A(n14811), .B(n15220), .C(n14848), .D(n14891), 
         .Z(clk_enable_144)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_102.init = 16'h8a88;
    LUT4 i1_2_lut_adj_103 (.A(IR[16]), .B(n14011), .Z(n14012)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i1_2_lut_adj_103.init = 16'h8888;
    FD1P3IX count_631__i2 (.D(n93), .SP(clk_enable_67), .CD(n7673), .CK(clk), 
            .Q(n16_adj_1092)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[14:19])
    defparam count_631__i2.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_104 (.A(stop_run_c), .B(n14848), .C(n26), .D(n14807), 
         .Z(clk_enable_80)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;
    defparam i1_4_lut_adj_104.init = 16'h5554;
    FD1P3IX MBR_i0_i22 (.D(data_out_23__N_589[22]), .SP(clk_enable_143), 
            .CD(n7553), .CK(clk), .Q(MBR[22]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MBR_i0_i22.GSR = "ENABLED";
    FD1P3AX global_state_i0_i0 (.D(global_state_3__N_158[0]), .SP(clk_enable_66), 
            .CK(clk), .Q(global_state[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam global_state_i0_i0.GSR = "ENABLED";
    FD1P3IX count_631__i1 (.D(n94), .SP(clk_enable_67), .CD(n7673), .CK(clk), 
            .Q(n17)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[14:19])
    defparam count_631__i1.GSR = "DISABLED";
    FD1P3IX MBR_i0_i21 (.D(data_out_23__N_589[21]), .SP(clk_enable_143), 
            .CD(n7553), .CK(clk), .Q(MBR[21]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MBR_i0_i21.GSR = "ENABLED";
    FD1P3IX Rdisplay_i0_i0 (.D(n6893), .SP(clk_enable_98), .CD(n7648), 
            .CK(clk), .Q(Q[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam Rdisplay_i0_i0.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_105 (.A(n14837), .B(n14812), .C(n2668), 
         .D(n2665), .Z(n14072)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_105.init = 16'h2000;
    LUT4 i8995_3_lut_4_lut_4_lut (.A(reset_c), .B(n14639), .C(n2379), 
         .D(n14664), .Z(n5726)) /* synthesis lut_function=(!(A+!(B+!(C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8995_3_lut_4_lut_4_lut.init = 16'h4554;
    LUT4 i1_2_lut_3_lut_4_lut_adj_106 (.A(n14837), .B(n14812), .C(n2679), 
         .D(n2665), .Z(n14062)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_106.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_107 (.A(n14837), .B(n14812), .C(n2678), 
         .D(n2665), .Z(n14065)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_107.init = 16'h2000;
    FD1P3IX MBR_i0_i20 (.D(data_out_23__N_589[20]), .SP(clk_enable_143), 
            .CD(n7553), .CK(clk), .Q(MBR[20]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MBR_i0_i20.GSR = "ENABLED";
    FD1P3AX rpg_in_i0_i0 (.D(n13989), .SP(clk_enable_106), .CK(clk), .Q(rpg_in[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam rpg_in_i0_i0.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_108 (.A(n14837), .B(n14812), .C(n2677), 
         .D(n2665), .Z(n14063)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_108.init = 16'h2000;
    PFUMX i12602 (.BLUT(n14946), .ALUT(data_out_23__N_589[2]), .C0(instruction[0]), 
          .Z(n14947));
    FD1P3IX MBR_i0_i19 (.D(data_out_23__N_589[19]), .SP(clk_enable_143), 
            .CD(n7553), .CK(clk), .Q(MBR[19]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MBR_i0_i19.GSR = "ENABLED";
    FD1P3AX B_i0_i0 (.D(n14057), .SP(clk_enable_142), .CK(clk), .Q(B[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam B_i0_i0.GSR = "DISABLED";
    LUT4 i12305_4_lut (.A(n14812), .B(stop_run_c), .C(n14092), .D(global_state[3]), 
         .Z(n5)) /* synthesis lut_function=(!(A (B+!(D))+!A (B+!(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i12305_4_lut.init = 16'h3200;
    FD1P3IX MBR_i0_i18 (.D(data_out_23__N_589[18]), .SP(clk_enable_143), 
            .CD(n7553), .CK(clk), .Q(MBR[18]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MBR_i0_i18.GSR = "ENABLED";
    FD1P3AX A_i0_i0 (.D(n14072), .SP(clk_enable_142), .CK(clk), .Q(A[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam A_i0_i0.GSR = "DISABLED";
    LUT4 i1761_2_lut (.A(global_state[0]), .B(global_state[1]), .Z(n63)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i1761_2_lut.init = 16'h6666;
    FD1P3AX control_i0_i0 (.D(n14058), .SP(clk_enable_142), .CK(clk), 
            .Q(control[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam control_i0_i0.GSR = "DISABLED";
    LUT4 i7970_4_lut (.A(n2681), .B(IR[13]), .C(instruction[2]), .D(n2665), 
         .Z(n7008)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(103[8:19])
    defparam i7970_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_109 (.A(n14837), .B(n14812), .C(n2676), 
         .D(n2665), .Z(n14064)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_109.init = 16'h2000;
    FD1P3IX MBR_i0_i17 (.D(data_out_23__N_589[17]), .SP(clk_enable_143), 
            .CD(n7553), .CK(clk), .Q(MBR[17]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MBR_i0_i17.GSR = "ENABLED";
    PFUMX i12384 (.BLUT(n14368), .ALUT(data_out_23__N_589[0]), .C0(instruction[0]), 
          .Z(n14369));
    FD1P3IX MBR_i0_i16 (.D(data_out_23__N_589[16]), .SP(clk_enable_143), 
            .CD(n7553), .CK(clk), .Q(MBR[16]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MBR_i0_i16.GSR = "ENABLED";
    FD1P3AX rpg_sel_i0_i0 (.D(n14012), .SP(clk_enable_144), .CK(clk), 
            .Q(rpg_sel[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam rpg_sel_i0_i0.GSR = "DISABLED";
    bcdDisplay_U5 millar (.mi({mi}), .clk_0(clk_0), .n5726(n5726), .n14174(n14174), 
            .n14635(n14635), .\DISPLAY_6__N_582[4] (DISPLAY_6__N_582_adj_1120[4]), 
            .n14444(n14444), .reset_c(reset_c), .n2379(n2379), .n14664(n14664), 
            .n14663(n14663), .n14634(n14634), .n11083(n11083), .n14632(n14632), 
            .n14633(n14633), .n4264(n4264), .n3812(n3812), .n3869(n3869), 
            .n3900(n3900), .n11249(n11249), .n5704(n5704), .n14637(n14637));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(119[9:19])
    LUT4 i5046_4_lut (.A(n2680), .B(IR[12]), .C(instruction[2]), .D(n2665), 
         .Z(n7010)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(173[6] 246[15])
    defparam i5046_4_lut.init = 16'hcac0;
    FD1P3AX global_state_i0_i3 (.D(global_state_3__N_158[3]), .SP(clk_enable_80), 
            .CK(clk), .Q(global_state[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam global_state_i0_i3.GSR = "ENABLED";
    LUT4 i5048_4_lut (.A(n2679), .B(IR[11]), .C(instruction[2]), .D(n2665), 
         .Z(n7012)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(173[6] 246[15])
    defparam i5048_4_lut.init = 16'hcac0;
    FD1P3IX MBR_i0_i15 (.D(data_out_23__N_589[15]), .SP(clk_enable_143), 
            .CD(n7553), .CK(clk), .Q(MBR[15]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MBR_i0_i15.GSR = "ENABLED";
    LUT4 i5050_4_lut (.A(n2678), .B(IR[10]), .C(instruction[2]), .D(n2665), 
         .Z(n7014)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(173[6] 246[15])
    defparam i5050_4_lut.init = 16'hcac0;
    FD1P3IX global_state_i0_i2 (.D(n127), .SP(clk_enable_83), .CD(n5), 
            .CK(clk), .Q(global_state[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam global_state_i0_i2.GSR = "ENABLED";
    FD1P3IX global_state_i0_i1 (.D(n63), .SP(clk_enable_83), .CD(n5), 
            .CK(clk), .Q(global_state[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam global_state_i0_i1.GSR = "ENABLED";
    FD1P3IX Rdisplay_i0_i13 (.D(n7008), .SP(clk_enable_98), .CD(n7648), 
            .CK(clk), .Q(Q[13]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam Rdisplay_i0_i13.GSR = "DISABLED";
    FD1P3IX MBR_i0_i14 (.D(data_out_23__N_589[14]), .SP(clk_enable_143), 
            .CD(n7553), .CK(clk), .Q(MBR[14]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MBR_i0_i14.GSR = "ENABLED";
    FD1P3IX Rdisplay_i0_i12 (.D(n7010), .SP(clk_enable_98), .CD(n7648), 
            .CK(clk), .Q(Q[12]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam Rdisplay_i0_i12.GSR = "DISABLED";
    FD1P3IX Rdisplay_i0_i11 (.D(n7012), .SP(clk_enable_98), .CD(n7648), 
            .CK(clk), .Q(Q[11]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam Rdisplay_i0_i11.GSR = "DISABLED";
    LUT4 i5052_4_lut (.A(n2677), .B(IR[9]), .C(instruction[2]), .D(n2665), 
         .Z(n7016)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(173[6] 246[15])
    defparam i5052_4_lut.init = 16'hcac0;
    FD1P3IX Rdisplay_i0_i10 (.D(n7014), .SP(clk_enable_98), .CD(n7648), 
            .CK(clk), .Q(Q[10]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam Rdisplay_i0_i10.GSR = "DISABLED";
    LUT4 i5054_4_lut (.A(n2676), .B(IR[8]), .C(instruction[2]), .D(n2665), 
         .Z(n7018)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(173[6] 246[15])
    defparam i5054_4_lut.init = 16'hcac0;
    LUT4 i5056_4_lut (.A(n2675), .B(IR[7]), .C(instruction[2]), .D(n2665), 
         .Z(n7020)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(173[6] 246[15])
    defparam i5056_4_lut.init = 16'hcac0;
    FD1P3IX Rdisplay_i0_i9 (.D(n7016), .SP(clk_enable_98), .CD(n7648), 
            .CK(clk), .Q(Q[9]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam Rdisplay_i0_i9.GSR = "DISABLED";
    LUT4 i5058_4_lut (.A(n2674), .B(IR[6]), .C(instruction[2]), .D(n2665), 
         .Z(n7022)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(173[6] 246[15])
    defparam i5058_4_lut.init = 16'hcac0;
    LUT4 i5060_4_lut (.A(n2673), .B(IR[5]), .C(instruction[2]), .D(n2665), 
         .Z(n7024)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(173[6] 246[15])
    defparam i5060_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_adj_110 (.A(clk_0), .B(n11278), .Z(clk_0_N_345)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_110.init = 16'h6666;
    LUT4 i9316_4_lut (.A(count[16]), .B(count[17]), .C(n13042), .D(count[15]), 
         .Z(n11278)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i9316_4_lut.init = 16'heccc;
    LUT4 i4_4_lut (.A(count[13]), .B(count[14]), .C(count[12]), .D(n6_adj_1091), 
         .Z(n13042)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    PFUMX i12777 (.BLUT(n15224), .ALUT(n15225), .C0(global_state[2]), 
          .Z(clk_enable_157));
    LUT4 i5062_4_lut (.A(n2672), .B(IR[4]), .C(instruction[2]), .D(n2665), 
         .Z(n7026)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(173[6] 246[15])
    defparam i5062_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_111 (.A(count[10]), .B(count[11]), .C(n11261), .D(count[9]), 
         .Z(n6_adj_1091)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_111.init = 16'heccc;
    LUT4 i12321_4_lut_4_lut_4_lut (.A(reset_c), .B(n14638), .C(n14639), 
         .D(n14640), .Z(n4264)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i12321_4_lut_4_lut_4_lut.init = 16'hfeff;
    FD1P3IX Rdisplay_i0_i8 (.D(n7018), .SP(clk_enable_98), .CD(n7648), 
            .CK(clk), .Q(Q[8]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam Rdisplay_i0_i8.GSR = "DISABLED";
    LUT4 i12319_2_lut_2_lut_3_lut_3_lut_3_lut (.A(reset_c), .B(n14638), 
         .C(n14639), .Z(n3812)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i12319_2_lut_2_lut_3_lut_3_lut_3_lut.init = 16'hfbfb;
    LUT4 i9301_4_lut (.A(count[5]), .B(count[8]), .C(count[7]), .D(count[6]), 
         .Z(n11261)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i9301_4_lut.init = 16'hfcec;
    LUT4 i1_2_lut_3_lut_4_lut_adj_112 (.A(n14837), .B(n14812), .C(n2675), 
         .D(n2665), .Z(n14066)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_112.init = 16'h2000;
    FD1P3IX Rdisplay_i0_i7 (.D(n7020), .SP(clk_enable_98), .CD(n7648), 
            .CK(clk), .Q(Q[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam Rdisplay_i0_i7.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_113 (.A(n14837), .B(n14812), .C(n2674), 
         .D(n2665), .Z(n14067)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_113.init = 16'h2000;
    FD1P3IX Rdisplay_i0_i6 (.D(n7022), .SP(clk_enable_98), .CD(n7648), 
            .CK(clk), .Q(Q[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam Rdisplay_i0_i6.GSR = "DISABLED";
    LUT4 i12317_4_lut_4_lut_4_lut (.A(reset_c), .B(n14647), .C(n14644), 
         .D(n14650), .Z(n4542)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i12317_4_lut_4_lut_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_3_lut_4_lut_adj_114 (.A(n14837), .B(n14812), .C(n2673), 
         .D(n2665), .Z(n14061)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_114.init = 16'h2000;
    L6MUX21 i12599 (.D0(n14942), .D1(n14939), .SD(n14117), .Z(n14943));
    LUT4 n1726_bdd_4_lut_12437_4_lut_4_lut (.A(reset_c), .B(n14650), .C(n14646), 
         .D(n14647), .Z(n14452)) /* synthesis lut_function=(A+!(B (C+!(D))+!B !((D)+!C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam n1726_bdd_4_lut_12437_4_lut_4_lut.init = 16'hbfab;
    LUT4 i1_2_lut_3_lut_4_lut_adj_115 (.A(n14837), .B(n14812), .C(n2672), 
         .D(n2665), .Z(n14068)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_115.init = 16'h2000;
    FD1P3IX Rdisplay_i0_i5 (.D(n7024), .SP(clk_enable_98), .CD(n7648), 
            .CK(clk), .Q(Q[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam Rdisplay_i0_i5.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_116 (.A(n14837), .B(n14812), .C(n2671), 
         .D(n2665), .Z(n14069)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_116.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_117 (.A(n14837), .B(n14812), .C(n2670), 
         .D(n2665), .Z(n14070)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_117.init = 16'h2000;
    FD1P3IX Rdisplay_i0_i4 (.D(n7026), .SP(clk_enable_98), .CD(n7648), 
            .CK(clk), .Q(Q[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam Rdisplay_i0_i4.GSR = "DISABLED";
    FD1P3IX Rdisplay_i0_i3 (.D(n7028), .SP(clk_enable_98), .CD(n7648), 
            .CK(clk), .Q(Q[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam Rdisplay_i0_i3.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_118 (.A(n14837), .B(n14812), .C(n2669), 
         .D(n2665), .Z(n14071)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_118.init = 16'h2000;
    LUT4 i5064_4_lut (.A(n2671), .B(IR[3]), .C(instruction[2]), .D(n2665), 
         .Z(n7028)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(173[6] 246[15])
    defparam i5064_4_lut.init = 16'hcac0;
    FD1P3IX Rdisplay_i0_i2 (.D(n7029), .SP(clk_enable_98), .CD(n7648), 
            .CK(clk), .Q(Q[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam Rdisplay_i0_i2.GSR = "DISABLED";
    LUT4 i5066_4_lut (.A(n2670), .B(IR[2]), .C(instruction[2]), .D(n2665), 
         .Z(n7029)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(173[6] 246[15])
    defparam i5066_4_lut.init = 16'hcac0;
    FD1P3IX MBR_i0_i13 (.D(data_out_23__N_589[13]), .SP(clk_enable_143), 
            .CD(n7553), .CK(clk), .Q(MBR[13]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MBR_i0_i13.GSR = "ENABLED";
    FD1P3IX Rdisplay_i0_i1 (.D(n7031), .SP(clk_enable_98), .CD(n7648), 
            .CK(clk), .Q(Q[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam Rdisplay_i0_i1.GSR = "DISABLED";
    LUT4 i5068_4_lut (.A(n2669), .B(IR[1]), .C(instruction[2]), .D(n2665), 
         .Z(n7031)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(173[6] 246[15])
    defparam i5068_4_lut.init = 16'hcac0;
    FD1P3AX rpg_in_i0_i15 (.D(n13950), .SP(clk_enable_106), .CK(clk), 
            .Q(rpg_in[15])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam rpg_in_i0_i15.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_119 (.A(n14811), .B(n15220), .C(n7_adj_1093), .D(n14813), 
         .Z(clk_enable_106)) /* synthesis lut_function=(A (B+!((D)+!C))) */ ;
    defparam i1_4_lut_adj_119.init = 16'h88a8;
    FD1P3IX MBR_i0_i12 (.D(data_out_23__N_589[12]), .SP(clk_enable_143), 
            .CD(n7553), .CK(clk), .Q(MBR[12]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MBR_i0_i12.GSR = "ENABLED";
    FD1P3AX rpg_in_i0_i14 (.D(n14016), .SP(clk_enable_106), .CK(clk), 
            .Q(rpg_in[14])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam rpg_in_i0_i14.GSR = "DISABLED";
    LUT4 i4_4_lut_adj_120 (.A(n7), .B(n14809), .C(data_out_23__N_638[15]), 
         .D(n14812), .Z(n13950)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i4_4_lut_adj_120.init = 16'h0080;
    FD1P3AX rpg_in_i0_i13 (.D(n14015), .SP(clk_enable_106), .CK(clk), 
            .Q(rpg_in[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam rpg_in_i0_i13.GSR = "DISABLED";
    FD1P3AX rpg_in_i0_i4 (.D(n13978), .SP(clk_enable_106), .CK(clk), .Q(rpg_in[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam rpg_in_i0_i4.GSR = "DISABLED";
    FD1P3IX MBR_i0_i11 (.D(data_out_23__N_589[11]), .SP(clk_enable_143), 
            .CD(n7553), .CK(clk), .Q(MBR[11]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MBR_i0_i11.GSR = "ENABLED";
    FD1P3AX rpg_in_i0_i3 (.D(n13979), .SP(clk_enable_106), .CK(clk), .Q(rpg_in[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam rpg_in_i0_i3.GSR = "DISABLED";
    FD1P3AX rpg_in_i0_i2 (.D(n13981), .SP(clk_enable_106), .CK(clk), .Q(rpg_in[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam rpg_in_i0_i2.GSR = "DISABLED";
    FD1P3IX MBR_i0_i10 (.D(data_out_23__N_589[10]), .SP(clk_enable_143), 
            .CD(n7553), .CK(clk), .Q(MBR[10]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MBR_i0_i10.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_121 (.A(n14811), .B(n15220), .C(n13922), .D(n14106), 
         .Z(clk_enable_116)) /* synthesis lut_function=(A (B+!((D)+!C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i1_4_lut_adj_121.init = 16'h88a8;
    PFUMX i12597 (.BLUT(n14941), .ALUT(n14940), .C0(control[2]), .Z(n14942));
    LUT4 i1_2_lut_adj_122 (.A(n14075), .B(IR[15]), .Z(n14_adj_1102)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i1_2_lut_adj_122.init = 16'h4444;
    LUT4 i1_4_lut_adj_123 (.A(n14848), .B(n14812), .C(n14837), .D(n4_adj_1104), 
         .Z(n14075)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_4_lut_adj_123.init = 16'hffef;
    LUT4 i1_2_lut_adj_124 (.A(instruction[0]), .B(instruction[1]), .Z(n4_adj_1104)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i1_2_lut_adj_124.init = 16'heeee;
    LUT4 intermediate_carry_10__bdd_4_lut (.A(intermediate_carry_adj_1182[10]), 
         .B(n14769), .C(SumRest_11__N_989_adj_1163[10]), .D(n14827), .Z(n15177)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C (D)))) */ ;
    defparam intermediate_carry_10__bdd_4_lut.init = 16'h9600;
    LUT4 mux_50_Mux_2_i15_4_lut_4_lut (.A(n15220), .B(global_state[3]), 
         .C(n14924), .D(n229), .Z(PC_7__N_167[2])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam mux_50_Mux_2_i15_4_lut_4_lut.init = 16'h7340;
    FD1P3IX MBR_i0_i9 (.D(data_out_23__N_589[9]), .SP(clk_enable_143), .CD(n7553), 
            .CK(clk), .Q(MBR[9]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MBR_i0_i9.GSR = "ENABLED";
    LUT4 mux_50_Mux_3_i15_4_lut_4_lut (.A(n15220), .B(global_state[3]), 
         .C(n14930), .D(n228), .Z(PC_7__N_167[3])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam mux_50_Mux_3_i15_4_lut_4_lut.init = 16'h7340;
    LUT4 mux_50_Mux_1_i15_4_lut_4_lut (.A(n15220), .B(global_state[3]), 
         .C(n14921), .D(n230), .Z(PC_7__N_167[1])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam mux_50_Mux_1_i15_4_lut_4_lut.init = 16'h7340;
    LUT4 mux_50_Mux_7_i15_4_lut_4_lut (.A(n15220), .B(global_state[3]), 
         .C(n491), .D(n224), .Z(PC_7__N_167[7])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam mux_50_Mux_7_i15_4_lut_4_lut.init = 16'h7340;
    LUT4 mux_50_Mux_6_i15_4_lut_4_lut (.A(n15220), .B(global_state[3]), 
         .C(n492), .D(n225), .Z(PC_7__N_167[6])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam mux_50_Mux_6_i15_4_lut_4_lut.init = 16'h7340;
    LUT4 mux_50_Mux_5_i15_4_lut_4_lut (.A(n15220), .B(global_state[3]), 
         .C(n493), .D(n226), .Z(PC_7__N_167[5])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam mux_50_Mux_5_i15_4_lut_4_lut.init = 16'h7340;
    LUT4 mux_50_Mux_4_i15_4_lut_4_lut (.A(n15220), .B(global_state[3]), 
         .C(n14927), .D(n227), .Z(PC_7__N_167[4])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam mux_50_Mux_4_i15_4_lut_4_lut.init = 16'h7340;
    FD1P3AX B_i0_i11 (.D(n14_adj_1102), .SP(clk_enable_116), .CK(clk), 
            .Q(B[11]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam B_i0_i11.GSR = "DISABLED";
    LUT4 mux_50_Mux_0_i15_4_lut_4_lut (.A(n15220), .B(global_state[3]), 
         .C(n498), .D(n231), .Z(PC_7__N_167[0])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam mux_50_Mux_0_i15_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_4_lut_4_lut_adj_125 (.A(n15220), .B(n4), .C(instruction[1]), 
         .D(execute_instruction[0]), .Z(n14011)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i1_4_lut_4_lut_adj_125.init = 16'h5450;
    FD1P3IX MBR_i0_i8 (.D(data_out_23__N_589[8]), .SP(clk_enable_143), .CD(n7553), 
            .CK(clk), .Q(MBR[8]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MBR_i0_i8.GSR = "ENABLED";
    FD1P3AX B_i0_i10 (.D(n14050), .SP(clk_enable_142), .CK(clk), .Q(B[10]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam B_i0_i10.GSR = "DISABLED";
    PFUMX i12502 (.BLUT(n14563), .ALUT(n14562), .C0(n2369), .Z(bcd_out_15__N_447));
    FD1P3IX MBR_i0_i7 (.D(data_out_23__N_589[7]), .SP(clk_enable_143), .CD(n7553), 
            .CK(clk), .Q(MBR[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MBR_i0_i7.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_126 (.A(n14846), .B(n7_adj_1090), .C(n15220), .D(global_state[3]), 
         .Z(clk_enable_146)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_126.init = 16'h5044;
    FD1P3IX MBR_i0_i6 (.D(data_out_23__N_589[6]), .SP(clk_enable_143), .CD(n7553), 
            .CK(clk), .Q(MBR[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MBR_i0_i6.GSR = "ENABLED";
    PFUMX i2448 (.BLUT(n2289), .ALUT(n4382), .C0(n14145), .Z(n4383));
    LUT4 i1_3_lut_4_lut_adj_127 (.A(n14848), .B(n14850), .C(n16), .D(n15220), 
         .Z(n11)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i1_3_lut_4_lut_adj_127.init = 16'hff40;
    LUT4 i1_2_lut_3_lut_4_lut_adj_128 (.A(execute_instruction[2]), .B(n15220), 
         .C(IR[6]), .D(n14837), .Z(n14038)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_128.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_129 (.A(execute_instruction[2]), .B(n15220), 
         .C(IR[4]), .D(n14837), .Z(n14057)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_129.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_130 (.A(execute_instruction[2]), .B(n15220), 
         .C(IR[8]), .D(n14837), .Z(n14056)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_130.init = 16'h1000;
    LUT4 i8921_2_lut_rep_278_2_lut (.A(reset_c), .B(Q[0]), .Z(n14800)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8921_2_lut_rep_278_2_lut.init = 16'h4444;
    FD1P3IX MBR_i0_i5 (.D(data_out_23__N_589[5]), .SP(clk_enable_143), .CD(n7553), 
            .CK(clk), .Q(MBR[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MBR_i0_i5.GSR = "ENABLED";
    CCU2D add_7_7 (.A0(PC[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12931), 
          .COUT(n12932), .S0(n226), .S1(n225));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_7_7.INIT0 = 16'h5aaa;
    defparam add_7_7.INIT1 = 16'h5aaa;
    defparam add_7_7.INJECT1_0 = "NO";
    defparam add_7_7.INJECT1_1 = "NO";
    FD1P3IX instruction_i0_i0 (.D(n14342), .SP(clk_enable_146), .CD(n7599), 
            .CK(clk), .Q(instruction[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam instruction_i0_i0.GSR = "DISABLED";
    FD1P3AX B_i0_i9 (.D(n14_adj_1101), .SP(clk_enable_116), .CK(clk), 
            .Q(B[9]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam B_i0_i9.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_131 (.A(execute_instruction[2]), .B(n15220), 
         .C(IR[0]), .D(n14837), .Z(n14058)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_131.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_132 (.A(execute_instruction[2]), .B(n15220), 
         .C(IR[14]), .D(n14837), .Z(n14050)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_132.init = 16'h1000;
    FD1P3AX B_i0_i8 (.D(n14034), .SP(clk_enable_142), .CK(clk), .Q(B[8]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam B_i0_i8.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_133 (.A(execute_instruction[2]), .B(n15220), 
         .C(IR[12]), .D(n14837), .Z(n14034)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_133.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_134 (.A(execute_instruction[2]), .B(n15220), 
         .C(IR[11]), .D(n14837), .Z(n14052)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_134.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_135 (.A(execute_instruction[2]), .B(n15220), 
         .C(IR[10]), .D(n14837), .Z(n14054)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_135.init = 16'h1000;
    FD1P3IX MBR_i0_i4 (.D(data_out_23__N_589[4]), .SP(clk_enable_143), .CD(n7553), 
            .CK(clk), .Q(MBR[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MBR_i0_i4.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_136 (.A(execute_instruction[2]), .B(n15220), 
         .C(IR[9]), .D(n14837), .Z(n14055)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_136.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_137 (.A(execute_instruction[2]), .B(n15220), 
         .C(IR[7]), .D(n14837), .Z(n14037)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_137.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_138 (.A(execute_instruction[2]), .B(n15220), 
         .C(IR[5]), .D(n14837), .Z(n14039)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_138.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_139 (.A(execute_instruction[2]), .B(n15220), 
         .C(IR[3]), .D(n14837), .Z(n14049)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_139.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_140 (.A(execute_instruction[2]), .B(n15220), 
         .C(IR[2]), .D(n14837), .Z(n14051)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_140.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_141 (.A(execute_instruction[2]), .B(n15220), 
         .C(IR[1]), .D(n14837), .Z(n14053)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_141.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_142 (.A(execute_instruction[2]), .B(n15220), 
         .C(instruction[1]), .D(n14819), .Z(n14_adj_1100)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_142.init = 16'h0100;
    LUT4 i1_2_lut_adj_143 (.A(n14075), .B(IR[13]), .Z(n14_adj_1101)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i1_2_lut_adj_143.init = 16'h4444;
    FD1P3IX IR_i0_i0 (.D(MBR[0]), .SP(clk_enable_157), .CD(n7576), .CK(clk), 
            .Q(IR[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam IR_i0_i0.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(bcd_out_15__N_400), .B(n14724), .C(n14714), 
         .D(n2369), .Z(bcd_out_15__N_451)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2_3_lut_4_lut.init = 16'h6966;
    FD1P3AX B_i0_i7 (.D(n14052), .SP(clk_enable_142), .CK(clk), .Q(B[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam B_i0_i7.GSR = "DISABLED";
    LUT4 i9285_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n14646), .C(n14655), 
         .D(bcd_out_15__N_519), .Z(n11236)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i9285_2_lut_3_lut_4_lut_4_lut.init = 16'h0440;
    LUT4 i1_2_lut_3_lut_adj_144 (.A(rpg_sel[0]), .B(rpg_write), .C(rpg_sel[1]), 
         .Z(clk_enable_2)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_144.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_adj_145 (.A(rpg_sel[0]), .B(rpg_write), .C(rpg_sel[1]), 
         .Z(clk_enable_4)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_145.init = 16'h0808;
    LUT4 equal_10_i9_2_lut_rep_296 (.A(IR[22]), .B(IR[23]), .Z(n14818)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(158[12:20])
    defparam equal_10_i9_2_lut_rep_296.init = 16'hdddd;
    LUT4 n14341_bdd_2_lut_3_lut (.A(IR[22]), .B(IR[23]), .C(n14341), .Z(n14342)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(158[12:20])
    defparam n14341_bdd_2_lut_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_rep_297 (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .Z(n14819)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i1_2_lut_rep_297.init = 16'h8888;
    LUT4 Qbcd_3__bdd_4_lut_12442_4_lut (.A(reset_c), .B(n14671), .C(n14677), 
         .D(Q[0]), .Z(n14470)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam Qbcd_3__bdd_4_lut_12442_4_lut.init = 16'h0203;
    FD1P3AX B_i0_i6 (.D(n14054), .SP(clk_enable_142), .CK(clk), .Q(B[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam B_i0_i6.GSR = "DISABLED";
    LUT4 i8967_2_lut_rep_121_3_lut_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_548), 
         .C(n14675), .D(n14676), .Z(n14643)) /* synthesis lut_function=(!(A+(B (D)+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8967_2_lut_rep_121_3_lut_4_lut_4_lut_4_lut.init = 16'h1044;
    LUT4 i2_2_lut_3_lut_adj_146 (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(data_out_23__N_590), .Z(n7)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i2_2_lut_3_lut_adj_146.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_adj_147 (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(execute_instruction[2]), .Z(n11816)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i1_2_lut_3_lut_adj_147.init = 16'hf8f8;
    LUT4 i8965_2_lut_rep_126_3_lut_3_lut (.A(reset_c), .B(n14668), .C(bcd_out_15__N_552), 
         .Z(n14648)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8965_2_lut_rep_126_3_lut_3_lut.init = 16'h1414;
    FD1P3AX B_i0_i5 (.D(n14055), .SP(clk_enable_142), .CK(clk), .Q(B[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam B_i0_i5.GSR = "DISABLED";
    LUT4 i12311_2_lut_2_lut_3_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n14657), 
         .C(n14669), .D(bcd_out_15__N_548), .Z(n3685)) /* synthesis lut_function=(A+!(B (C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i12311_2_lut_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'hbffb;
    LUT4 i12280_2_lut_3_lut_3_lut_3_lut_3_lut (.A(reset_c), .B(n14657), 
         .C(n14667), .Z(n14176)) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i12280_2_lut_3_lut_3_lut_3_lut_3_lut.init = 16'hebeb;
    LUT4 i1_2_lut_rep_272_3_lut_4_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(n15220), .D(execute_instruction[2]), .Z(n14794)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i1_2_lut_rep_272_3_lut_4_lut.init = 16'h0008;
    L6MUX21 i12769 (.D0(n15211), .D1(n15208), .SD(n14117), .Z(n15212));
    FD1P3AX B_i0_i4 (.D(n14056), .SP(clk_enable_142), .CK(clk), .Q(B[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam B_i0_i4.GSR = "DISABLED";
    LUT4 i8973_2_lut_rep_112_3_lut_3_lut (.A(reset_c), .B(n2379), .C(n14664), 
         .Z(n14634)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8973_2_lut_rep_112_3_lut_3_lut.init = 16'h1414;
    FD1P3AX B_i0_i3 (.D(n14037), .SP(clk_enable_142), .CK(clk), .Q(B[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam B_i0_i3.GSR = "DISABLED";
    PFUMX i12767 (.BLUT(n15210), .ALUT(n15209), .C0(control[2]), .Z(n15211));
    FD1P3AX B_i0_i2 (.D(n14038), .SP(clk_enable_142), .CK(clk), .Q(B[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam B_i0_i2.GSR = "DISABLED";
    LUT4 i8947_2_lut_3_lut_3_lut (.A(reset_c), .B(n5704), .C(n14637), 
         .Z(DISPLAY_6__N_582_adj_1120[4])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8947_2_lut_3_lut_3_lut.init = 16'h8c8c;
    FD1P3AX B_i0_i1 (.D(n14039), .SP(clk_enable_142), .CK(clk), .Q(B[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam B_i0_i1.GSR = "DISABLED";
    PFUMX i12765 (.BLUT(n15207), .ALUT(data_out_23__N_589[5]), .C0(instruction[0]), 
          .Z(n15208));
    LUT4 n1726_bdd_4_lut_4_lut (.A(reset_c), .B(Q[0]), .C(n14671), .D(n14662), 
         .Z(n14469)) /* synthesis lut_function=(A+!(B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam n1726_bdd_4_lut_4_lut.init = 16'habbf;
    LUT4 i8974_2_lut_rep_110_4_lut_4_lut (.A(reset_c), .B(n14664), .C(n2379), 
         .D(n14663), .Z(n14632)) /* synthesis lut_function=(!(A+!(B (D)+!B !(C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8974_2_lut_rep_110_4_lut_4_lut.init = 16'h4510;
    FD1P3AX A_i0_i11 (.D(n14062), .SP(clk_enable_142), .CK(clk), .Q(A[11]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam A_i0_i11.GSR = "DISABLED";
    L6MUX21 i12763 (.D0(n15205), .D1(n15202), .SD(n14117), .Z(n15206));
    FD1P3AX A_i0_i10 (.D(n14065), .SP(clk_enable_142), .CK(clk), .Q(A[10]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam A_i0_i10.GSR = "DISABLED";
    FD1P3AX A_i0_i9 (.D(n14063), .SP(clk_enable_142), .CK(clk), .Q(A[9]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam A_i0_i9.GSR = "DISABLED";
    FD1P3AX A_i0_i8 (.D(n14064), .SP(clk_enable_142), .CK(clk), .Q(A[8]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam A_i0_i8.GSR = "DISABLED";
    FD1P3AX A_i0_i7 (.D(n14066), .SP(clk_enable_142), .CK(clk), .Q(A[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam A_i0_i7.GSR = "DISABLED";
    FD1P3AX A_i0_i6 (.D(n14067), .SP(clk_enable_142), .CK(clk), .Q(A[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam A_i0_i6.GSR = "DISABLED";
    FD1P3AX A_i0_i5 (.D(n14061), .SP(clk_enable_142), .CK(clk), .Q(A[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam A_i0_i5.GSR = "DISABLED";
    FD1P3IX MBR_i0_i3 (.D(data_out_23__N_589[3]), .SP(clk_enable_143), .CD(n7553), 
            .CK(clk), .Q(MBR[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MBR_i0_i3.GSR = "ENABLED";
    FD1P3AX A_i0_i4 (.D(n14068), .SP(clk_enable_142), .CK(clk), .Q(A[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam A_i0_i4.GSR = "DISABLED";
    FD1P3AX A_i0_i3 (.D(n14069), .SP(clk_enable_142), .CK(clk), .Q(A[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam A_i0_i3.GSR = "DISABLED";
    LUT4 i9133_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n14637), .C(n2379), 
         .D(n14664), .Z(n11083)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i9133_2_lut_3_lut_4_lut_4_lut.init = 16'h0440;
    PFUMX i12761 (.BLUT(n15204), .ALUT(n15203), .C0(control[2]), .Z(n15205));
    LUT4 i12282_2_lut_2_lut_3_lut_4_lut_3_lut (.A(reset_c), .B(n14677), 
         .C(Q[0]), .Z(n14178)) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i12282_2_lut_2_lut_3_lut_4_lut_3_lut.init = 16'hebeb;
    FD1P3IX MBR_i0_i0 (.D(data_out_23__N_589[0]), .SP(clk_enable_143), .CD(n7553), 
            .CK(clk), .Q(MBR[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MBR_i0_i0.GSR = "ENABLED";
    PFUMX i12759 (.BLUT(n15201), .ALUT(data_out_23__N_589[6]), .C0(instruction[0]), 
          .Z(n15202));
    FD1P3AX A_i0_i2 (.D(n14070), .SP(clk_enable_142), .CK(clk), .Q(A[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam A_i0_i2.GSR = "DISABLED";
    LUT4 i8964_2_lut_rep_138_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_572), 
         .C(bcd_out_15__N_568), .D(n14684), .Z(n14660)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8964_2_lut_rep_138_4_lut_4_lut_4_lut.init = 16'h1450;
    L6MUX21 i12757 (.D0(n15197), .D1(n15194), .SD(n14117), .Z(n15198));
    LUT4 i1_2_lut_rep_289_3_lut (.A(stop_run_c), .B(reset_c), .C(global_state[3]), 
         .Z(n14811)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_289_3_lut.init = 16'h1010;
    LUT4 i9244_3_lut_4_lut_4_lut (.A(reset_c), .B(n14650), .C(n14656), 
         .D(bcd_out_15__N_515), .Z(n3971)) /* synthesis lut_function=(!(A+!(B+!(C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i9244_3_lut_4_lut_4_lut.init = 16'h4554;
    PFUMX i12755 (.BLUT(n15196), .ALUT(n15195), .C0(control[2]), .Z(n15197));
    LUT4 i1_2_lut_3_lut_4_lut_adj_148 (.A(stop_run_c), .B(reset_c), .C(n15220), 
         .D(global_state[3]), .Z(n7599)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_148.init = 16'h1000;
    PFUMX i12753 (.BLUT(n15193), .ALUT(data_out_23__N_589[7]), .C0(instruction[0]), 
          .Z(n15194));
    FD1P3AX A_i0_i1 (.D(n14071), .SP(clk_enable_142), .CK(clk), .Q(A[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam A_i0_i1.GSR = "DISABLED";
    L6MUX21 i12751 (.D0(n15191), .D1(n15188), .SD(n14117), .Z(n15192));
    LUT4 i8994_3_lut_4_lut_4_lut (.A(reset_c), .B(n14671), .C(n14679), 
         .D(bcd_out_15__N_572), .Z(n5728)) /* synthesis lut_function=(!(A+!(B+!(C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8994_3_lut_4_lut_4_lut.init = 16'h4554;
    FD1P3AX control_i0_i3 (.D(n14049), .SP(clk_enable_142), .CK(clk), 
            .Q(control[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam control_i0_i3.GSR = "DISABLED";
    LUT4 i12307_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n14662), .C(n14679), 
         .D(bcd_out_15__N_572), .Z(n3917)) /* synthesis lut_function=(A (B)+!A (B+!(C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i12307_2_lut_3_lut_4_lut_4_lut.init = 16'hcddc;
    PFUMX i12749 (.BLUT(n15190), .ALUT(n15189), .C0(control[2]), .Z(n15191));
    LUT4 i9282_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_552), 
         .C(n14668), .D(n14667), .Z(n11232)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i9282_2_lut_3_lut_4_lut_4_lut.init = 16'h1400;
    PFUMX i12775 (.BLUT(n15221), .ALUT(n15222), .C0(global_state[3]), 
          .Z(clk_enable_143));
    PFUMX i12747 (.BLUT(n15187), .ALUT(data_out_23__N_589[8]), .C0(instruction[0]), 
          .Z(n15188));
    LUT4 i12313_4_lut_4_lut_4_lut (.A(reset_c), .B(n14657), .C(n14652), 
         .D(n14659), .Z(n5683)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i12313_4_lut_4_lut_4_lut.init = 16'hfeff;
    LUT4 i1_4_lut_4_lut_adj_149 (.A(execute_instruction[2]), .B(instruction[0]), 
         .C(instruction[1]), .D(n14819), .Z(n26)) /* synthesis lut_function=(A+(B (C (D))+!B (C))) */ ;
    defparam i1_4_lut_4_lut_adj_149.init = 16'hfaba;
    L6MUX21 i12745 (.D0(n15185), .D1(n15182), .SD(n14117), .Z(n15186));
    LUT4 i8970_2_lut_rep_119_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_519), 
         .C(n14655), .D(n14674), .Z(n14641)) /* synthesis lut_function=(!(A+!(B (D)+!B !(C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8970_2_lut_rep_119_4_lut_4_lut.init = 16'h4510;
    PFUMX i12743 (.BLUT(n15184), .ALUT(n15183), .C0(control[2]), .Z(n15185));
    FD1P3AX control_i0_i2 (.D(n14051), .SP(clk_enable_142), .CK(clk), 
            .Q(control[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam control_i0_i2.GSR = "DISABLED";
    LUT4 i12315_2_lut_2_lut_3_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n14647), 
         .C(n14656), .D(bcd_out_15__N_515), .Z(n3770)) /* synthesis lut_function=(A+!(B (C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i12315_2_lut_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'hbffb;
    FD1P3AX control_i0_i1 (.D(n14053), .SP(clk_enable_142), .CK(clk), 
            .Q(control[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam control_i0_i1.GSR = "DISABLED";
    FD1P3IX MBR_i0_i2 (.D(data_out_23__N_589[2]), .SP(clk_enable_143), .CD(n7553), 
            .CK(clk), .Q(MBR[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam MBR_i0_i2.GSR = "ENABLED";
    PFUMX i12741 (.BLUT(n15181), .ALUT(data_out_23__N_589[9]), .C0(instruction[0]), 
          .Z(n15182));
    LUT4 i8993_3_lut_4_lut_4_lut (.A(reset_c), .B(n14659), .C(n14669), 
         .D(bcd_out_15__N_548), .Z(n5745)) /* synthesis lut_function=(!(A+!(B+!(C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8993_3_lut_4_lut_4_lut.init = 16'h4554;
    L6MUX21 i12739 (.D0(n15179), .D1(n15176), .SD(n14117), .Z(n15180));
    LUT4 i12270_2_lut_2_lut_3_lut_3_lut_3_lut (.A(reset_c), .B(n14647), 
         .C(n14646), .Z(n14166)) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i12270_2_lut_2_lut_3_lut_3_lut_3_lut.init = 16'hebeb;
    PFUMX i12737 (.BLUT(n15178), .ALUT(n15177), .C0(control[2]), .Z(n15179));
    LUT4 i1842_2_lut_3_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n14657), .C(n14668), 
         .D(bcd_out_15__N_552), .Z(n3732)) /* synthesis lut_function=(A+!(B (C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1842_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'hbffb;
    LUT4 i8926_2_lut_3_lut_3_lut (.A(reset_c), .B(n5690), .C(n14667), 
         .Z(DISPLAY_6__N_582_adj_1110[4])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8926_2_lut_3_lut_3_lut.init = 16'h8c8c;
    LUT4 i1_2_lut_rep_326 (.A(global_state[0]), .B(instruction[2]), .Z(n14848)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i1_2_lut_rep_326.init = 16'heeee;
    LUT4 i9142_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(Q[1]), .C(n14685), 
         .D(Q[0]), .Z(n11092)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i9142_2_lut_3_lut_4_lut_4_lut.init = 16'h1400;
    FD1P3AX rpg_sel_i0_i1 (.D(n14013), .SP(clk_enable_144), .CK(clk), 
            .Q(rpg_sel[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam rpg_sel_i0_i1.GSR = "DISABLED";
    PFUMX i12727 (.BLUT(n15169), .ALUT(data_out_23__N_589[11]), .C0(instruction[0]), 
          .Z(n15170));
    LUT4 i8963_2_lut_rep_132_3_lut_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_572), 
         .C(bcd_out_15__N_568), .D(n14684), .Z(n14654)) /* synthesis lut_function=(!(A+(B (D)+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8963_2_lut_rep_132_3_lut_4_lut_4_lut_4_lut.init = 16'h1044;
    PFUMX i12729 (.BLUT(n15172), .ALUT(n15171), .C0(control[2]), .Z(n15173));
    LUT4 n1726_bdd_4_lut_12433_4_lut_4_lut (.A(reset_c), .B(n14640), .C(n14637), 
         .D(n14638), .Z(n14444)) /* synthesis lut_function=(A+!(B (C+!(D))+!B !((D)+!C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam n1726_bdd_4_lut_12433_4_lut_4_lut.init = 16'hbfab;
    FD1P3IX instruction_i0_i2 (.D(n14077), .SP(clk_enable_146), .CD(n7599), 
            .CK(clk), .Q(instruction[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam instruction_i0_i2.GSR = "DISABLED";
    L6MUX21 i12731 (.D0(n15173), .D1(n15170), .SD(n14117), .Z(n15174));
    LUT4 i8971_2_lut_rep_114_3_lut_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_515), 
         .C(n14665), .D(n14666), .Z(n14636)) /* synthesis lut_function=(!(A+(B (D)+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8971_2_lut_rep_114_3_lut_4_lut_4_lut_4_lut.init = 16'h1044;
    PFUMX i12733 (.BLUT(n15175), .ALUT(data_out_23__N_589[10]), .C0(instruction[0]), 
          .Z(n15176));
    LUT4 i8934_2_lut_3_lut_3_lut (.A(reset_c), .B(n5697), .C(n14646), 
         .Z(DISPLAY_6__N_582_adj_1115[4])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8934_2_lut_3_lut_3_lut.init = 16'h8c8c;
    LUT4 n1726_bdd_4_lut_12441_4_lut_4_lut (.A(reset_c), .B(n14659), .C(n14667), 
         .D(n14657), .Z(n14460)) /* synthesis lut_function=(A+!(B (C+!(D))+!B !((D)+!C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam n1726_bdd_4_lut_12441_4_lut_4_lut.init = 16'hbfab;
    FD1P3IX instruction_i0_i1 (.D(n14078), .SP(clk_enable_146), .CD(n7599), 
            .CK(clk), .Q(instruction[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam instruction_i0_i1.GSR = "DISABLED";
    LUT4 i8975_2_lut_rep_113_4_lut_4_lut_else_4_lut (.A(reset_c), .B(bcd_out_15__N_354), 
         .C(n14724), .D(n14664), .Z(n14867)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8975_2_lut_rep_113_4_lut_4_lut_else_4_lut.init = 16'h1004;
    FD1P3IX IR_i0_i23 (.D(MBR[23]), .SP(clk_enable_157), .CD(n7576), .CK(clk), 
            .Q(IR[23]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam IR_i0_i23.GSR = "ENABLED";
    FD1P3IX IR_i0_i22 (.D(MBR[22]), .SP(clk_enable_157), .CD(n7576), .CK(clk), 
            .Q(IR[22]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam IR_i0_i22.GSR = "ENABLED";
    FD1P3IX IR_i0_i21 (.D(MBR[21]), .SP(clk_enable_157), .CD(n7576), .CK(clk), 
            .Q(IR[21]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam IR_i0_i21.GSR = "ENABLED";
    LUT4 i12125_2_lut_4_lut_4_lut (.A(instruction[0]), .B(n14848), .C(n14819), 
         .D(instruction[1]), .Z(n14092)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(D))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i12125_2_lut_4_lut_4_lut.init = 16'hfdcc;
    LUT4 i1_3_lut_rep_282_4_lut_4_lut (.A(instruction[0]), .B(instruction[1]), 
         .C(execute_instruction[1]), .D(execute_instruction[0]), .Z(n14804)) /* synthesis lut_function=(A (B (C (D)))+!A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i1_3_lut_rep_282_4_lut_4_lut.init = 16'hc444;
    FD1P3IX IR_i0_i20 (.D(MBR[20]), .SP(clk_enable_157), .CD(n7576), .CK(clk), 
            .Q(IR[20]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam IR_i0_i20.GSR = "ENABLED";
    PFUMX i12592 (.BLUT(n14934), .ALUT(n14935), .C0(Q[12]), .Z(bcd_out_15__N_362));
    LUT4 i2_3_lut_3_lut (.A(global_state[1]), .B(global_state[0]), .C(global_state[2]), 
         .Z(n7_adj_1090)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i2_3_lut_3_lut.init = 16'h2020;
    LUT4 i12139_2_lut_3_lut_4_lut (.A(global_state[0]), .B(instruction[2]), 
         .C(instruction[0]), .D(instruction[1]), .Z(n14106)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i12139_2_lut_3_lut_4_lut.init = 16'hfffe;
    PFUMX i12590 (.BLUT(n14931), .ALUT(n14932), .C0(n14762), .Z(bcd_out_15__N_354));
    LUT4 i1_2_lut_3_lut_3_lut_adj_150 (.A(global_state[1]), .B(global_state[2]), 
         .C(global_state[0]), .Z(n13994)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_3_lut_adj_150.init = 16'h1010;
    FD1P3IX IR_i0_i19 (.D(MBR[19]), .SP(clk_enable_157), .CD(n7576), .CK(clk), 
            .Q(IR[19]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam IR_i0_i19.GSR = "ENABLED";
    PFUMX i12588 (.BLUT(n14928), .ALUT(n14929), .C0(n1501), .Z(n14930));
    PFUMX i12586 (.BLUT(n14925), .ALUT(n14926), .C0(n1500), .Z(n14927));
    LUT4 n14791_bdd_4_lut (.A(n14791), .B(v12[3]), .C(n14827), .D(n14803), 
         .Z(n14940)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C (D)))) */ ;
    defparam n14791_bdd_4_lut.init = 16'h9060;
    FD1P3IX IR_i0_i18 (.D(MBR[18]), .SP(clk_enable_157), .CD(n7576), .CK(clk), 
            .Q(IR[18]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam IR_i0_i18.GSR = "ENABLED";
    PFUMX i12584 (.BLUT(n14922), .ALUT(n14923), .C0(n1502), .Z(n14924));
    LUT4 i1_2_lut_rep_315 (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .Z(n14837)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i1_2_lut_rep_315.init = 16'h4444;
    PFUMX i12582 (.BLUT(n14919), .ALUT(n14920), .C0(n1503), .Z(n14921));
    LUT4 i12186_3_lut_4_lut_3_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(execute_instruction[2]), .Z(n13922)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam i12186_3_lut_4_lut_3_lut.init = 16'he4e4;
    FD1P3IX IR_i0_i17 (.D(MBR[17]), .SP(clk_enable_157), .CD(n7576), .CK(clk), 
            .Q(IR[17]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam IR_i0_i17.GSR = "ENABLED";
    FD1P3IX IR_i0_i16 (.D(MBR[16]), .SP(clk_enable_157), .CD(n7576), .CK(clk), 
            .Q(IR[16]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam IR_i0_i16.GSR = "ENABLED";
    Bin2BCD imp_binBCD (.bcd_out_15__N_371(bcd_out_15__N_371), .n1507({bcd_out_15__N_362, 
            Open_0, Open_1, Open_2}), .n14756(n14756), .bcd_out_15__N_519(bcd_out_15__N_519), 
            .n14655(n14655), .reset_c(reset_c), .n14646(n14646), .n3788(n3788), 
            .n14693(n14693), .n14685(n14685), .Q({Q}), .n14662(n14662), 
            .n2350(n2350), .n14664(n14664), .n14639(n14639), .bcd_out_15__N_400(bcd_out_15__N_400), 
            .n14762(n14762), .bcd_out_15__N_372(bcd_out_15__N_372), .n11092(n11092), 
            .n14654(n14654), .\Qbcd[1] (Qbcd[1]), .\DISPLAY_6__N_582[6] (DISPLAY_6__N_582[6]), 
            .n2379(n2379), .n14637(n14637), .n3869(n3869), .bcd_out_15__N_405(bcd_out_15__N_405), 
            .bcd_out_15__N_401(bcd_out_15__N_401), .bcd_out_15__N_552(bcd_out_15__N_552), 
            .n14668(n14668), .n14667(n14667), .n3715(n3715), .n23(n23), 
            .n14723(n14723), .bcd_out_15__N_446(bcd_out_15__N_446), .bcd_out_15__N_354(bcd_out_15__N_354), 
            .n14663(n14663), .n14724(n14724), .n11249(n11249), .n14638(n14638), 
            .bcd_out_15__N_515(bcd_out_15__N_515), .n14666(n14666), .n14644(n14644), 
            .n14656(n14656), .n14674(n14674), .n14665(n14665), .n14650(n14650), 
            .n14640(n14640), .n11252(n11252), .n14676(n14676), .n14657(n14657), 
            .n2394(n2394), .n2390(n2390), .bcd_out_15__N_572(bcd_out_15__N_572), 
            .bcd_out_15__N_568(bcd_out_15__N_568), .n14671(n14671), .n14679(n14679), 
            .n14677(n14677), .bcd_out_15__N_451(bcd_out_15__N_451), .n2369(n2369), 
            .n3768(n3768), .bcd_out_15__N_447(bcd_out_15__N_447), .n14675(n14675), 
            .n14682(n14682), .n14684(n14684), .n14647(n14647), .bcd_out_15__N_548(bcd_out_15__N_548), 
            .n11251(n11251), .n14714(n14714), .n14562(n14562), .n14652(n14652), 
            .n14669(n14669), .n14659(n14659), .n14715(n14715), .n14328(n14328), 
            .n14327(n14327), .n14934(n14934), .n14593(n14593));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(114[13:20])
    LUT4 i12117_2_lut_rep_291_3_lut (.A(global_state[0]), .B(instruction[2]), 
         .C(instruction[1]), .Z(n14813)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i12117_2_lut_rep_291_3_lut.init = 16'hfefe;
    PFUMX i12572 (.BLUT(n14904), .ALUT(n14905), .C0(rpg_sel[1]), .Z(n2665));
    LUT4 i2_3_lut_3_lut_4_lut (.A(global_state[0]), .B(instruction[2]), 
         .C(global_state[3]), .D(n15220), .Z(n13909)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i2_3_lut_3_lut_4_lut.init = 16'h0010;
    FD1P3IX IR_i0_i15 (.D(MBR[15]), .SP(clk_enable_157), .CD(n7576), .CK(clk), 
            .Q(IR[15]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam IR_i0_i15.GSR = "ENABLED";
    ROM ROM_imp (.MAR({MAR}), .clk(clk), .reset_c(reset_c), .GND_net(GND_net), 
        .VCC_net(VCC_net), .\data_out_23__N_638[13] (data_out_23__N_638[13]), 
        .\data_out_23__N_638[14] (data_out_23__N_638[14]), .\data_out_23__N_638[15] (data_out_23__N_638[15]), 
        .data_out_23__N_590(data_out_23__N_590), .data_out_23__N_589({data_out_23__N_589}), 
        .n15231(n15231));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(122[10:13])
    FD1P3IX IR_i0_i14 (.D(MBR[14]), .SP(clk_enable_157), .CD(n7576), .CK(clk), 
            .Q(IR[14]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam IR_i0_i14.GSR = "ENABLED";
    FD1P3IX IR_i0_i13 (.D(MBR[13]), .SP(clk_enable_157), .CD(n7576), .CK(clk), 
            .Q(IR[13]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 252[10])
    defparam IR_i0_i13.GSR = "ENABLED";
    PFUMX i12568 (.BLUT(n14898), .ALUT(n14899), .C0(control[2]), .Z(n14117));
    LUT4 i1809_2_lut_rep_346 (.A(global_state[1]), .B(global_state[2]), 
         .Z(n15220)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i1809_2_lut_rep_346.init = 16'heeee;
    bcdDisplay_U7 centenas (.ce({ce}), .clk_0(clk_0), .n3971(n3971), .n14166(n14166), 
            .n14636(n14636), .\DISPLAY_6__N_582[4] (DISPLAY_6__N_582_adj_1115[4]), 
            .n14452(n14452), .reset_c(reset_c), .n14655(n14655), .bcd_out_15__N_519(bcd_out_15__N_519), 
            .n14674(n14674), .n14642(n14642), .n11236(n11236), .n14641(n14641), 
            .n14645(n14645), .n4542(n4542), .n3770(n3770), .n3788(n3788), 
            .n3794(n3794), .n11251(n11251), .n5697(n5697), .n14646(n14646));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(118[11:21])
    alu ALU_imp (.control({control}), .A_temp({Open_3, Open_4, Open_5, 
        Open_6, Open_7, Open_8, Open_9, Open_10, Open_11, Open_12, 
        Open_13, A_temp[0]}), .B_temp({Open_14, Open_15, Open_16, 
        Open_17, Open_18, Open_19, Open_20, Open_21, Open_22, Open_23, 
        Open_24, B_temp[0]}), .substract(substract), .\A_temp[2] (A_temp[2]), 
        .\A_temp[3] (A_temp[3]), .\A_temp[5] (A_temp[5]), .\A_temp[6] (A_temp[6]), 
        .\A_temp[7] (A_temp[7]), .\A_temp[8] (A_temp[8]), .\A_temp[9] (A_temp[9]), 
        .\A_temp[10] (A_temp[10]), .\A_temp[11] (A_temp[11]), .\B_temp[2] (B_temp[2]), 
        .\B_temp[3] (B_temp[3]), .\B_temp[5] (B_temp[5]), .\B_temp[6] (B_temp[6]), 
        .\B_temp[7] (B_temp[7]), .\B_temp[8] (B_temp[8]), .\B_temp[9] (B_temp[9]), 
        .\B_temp[10] (B_temp[10]), .\B_temp[11] (B_temp[11]), .n14941(n14941), 
        .A({A}), .n14827(n14827), .B({B}), .\data_out_23__N_589[4] (data_out_23__N_589[4]), 
        .\instruction[0] (instruction[0]), .\ACC[4] (ACC[4]), .n15196(n15196), 
        .n15184(n15184), .n15204(n15204), .n14949(n14949), .n15172(n15172), 
        .n15190(n15190), .\data_out_23__N_589[1] (data_out_23__N_589[1]), 
        .\ACC[1] (ACC[1]), .n14(n14_adj_1105), .n14_adj_2(n14_adj_1103), 
        .n14630(n14630), .n15178(n15178), .n15210(n15210), .\v12[2] (v12[2]), 
        .n14791(n14791), .n14803(n14803), .\v12[3] (v12[3]), .\v12_34[9] (v12_34[9]), 
        .n14783(n14783), .\v56[8] (v56[8]), .n14815(n14815), .\v56[7] (v56[7]), 
        .n14769(n14769), .\v56[9] (v56[9]), .\SumRest_11__N_989[10] (SumRest_11__N_989_adj_1163[10]), 
        .n14750(n14750), .\intermediate_carry[10] (intermediate_carry_adj_1182[10]), 
        .n14760(n14760), .\v12_34[8] (v12_34[8]), .n14766(n14766), .\v12_34[7] (v12_34[7]), 
        .\v56[6] (v56[6]), .n14777(n14777), .\v12_34[6] (v12_34[6]), .\v12_34[5] (v12_34[5]), 
        .n14795(n14795), .n14746(n14746), .n14740(n14740), .n14733(n14733), 
        .\intermediate_carry[11] (intermediate_carry[11]), .n14786(n14786), 
        .C(C), .n14770(n14770), .n14761(n14761), .n14753(n14753));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(124[11:14])
    PFUMX i4190 (.BLUT(n14_adj_1105), .ALUT(ACC[4]), .C0(n14117), .Z(n6151));
    PFUMX i12562 (.BLUT(n14889), .ALUT(n14890), .C0(instruction[1]), .Z(n14891));
    LUT4 i5633_2_lut_3_lut_4_lut (.A(global_state[1]), .B(global_state[2]), 
         .C(global_state[3]), .D(stop_run_c), .Z(n7576)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i5633_2_lut_3_lut_4_lut.init = 16'h00e0;
    bcdDisplay_U6 decenas (.de({de}), .clk_0(clk_0), .n5745(n5745), .n14176(n14176), 
            .n14643(n14643), .\DISPLAY_6__N_582[4] (DISPLAY_6__N_582_adj_1110[4]), 
            .n14460(n14460), .reset_c(reset_c), .n14668(n14668), .bcd_out_15__N_552(bcd_out_15__N_552), 
            .n14682(n14682), .n14648(n14648), .n11232(n11232), .n14651(n14651), 
            .n14660(n14660), .n5683(n5683), .n3685(n3685), .n3715(n3715), 
            .n3732(n3732), .n11252(n11252), .n5690(n5690), .n14667(n14667));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(117[10:20])
    bcdDisplay unidades (.un({un}), .clk_0(clk_0), .n5728(n5728), .n14178(n14178), 
            .n14471(n14471), .n14470(n14470), .n14654(n14654), .n14469(n14469), 
            .\DISPLAY_6__N_582[6] (DISPLAY_6__N_582[6]), .\Q[1] (Q[1]), 
            .n14685(n14685), .\Q[0] (Q[0]), .reset_c(reset_c), .n14693(n14693), 
            .n14800(n14800), .n14872(n14872), .n3917(n3917), .n3768(n3768));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(116[11:21])
    PFUMX i12558 (.BLUT(n14883), .ALUT(n14884), .C0(execute_instruction[0]), 
          .Z(n134));
    LUT4 i5610_2_lut_3_lut_3_lut_4_lut (.A(global_state[1]), .B(global_state[2]), 
         .C(stop_run_c), .D(global_state[3]), .Z(n7553)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 251[13])
    defparam i5610_2_lut_3_lut_3_lut_4_lut.init = 16'h0e00;
    
endmodule
//
// Verilog Description of module \OSCH("26.60")(1,5) 
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module bcdDisplay_U5
//

module bcdDisplay_U5 (mi, clk_0, n5726, n14174, n14635, \DISPLAY_6__N_582[4] , 
            n14444, reset_c, n2379, n14664, n14663, n14634, n11083, 
            n14632, n14633, n4264, n3812, n3869, n3900, n11249, 
            n5704, n14637);
    output [6:0]mi;
    input clk_0;
    input n5726;
    input n14174;
    input n14635;
    input \DISPLAY_6__N_582[4] ;
    input n14444;
    input reset_c;
    input n2379;
    input n14664;
    input n14663;
    input n14634;
    input n11083;
    input n14632;
    input n14633;
    input n4264;
    input n3812;
    input n3869;
    input n3900;
    input n11249;
    output n5704;
    input n14637;
    
    wire clk_0 /* synthesis is_clock=1, SET_AS_NETWORK=clk_0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(72[8:13])
    
    wire n14909;
    wire [6:0]DISPLAY_6__N_582;
    
    wire n14908, n14907;
    
    FD1S3JX DISPLAY_i0 (.D(n14174), .CK(clk_0), .PD(n5726), .Q(mi[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i0.GSR = "ENABLED";
    FD1S3JX DISPLAY_i3 (.D(n14909), .CK(clk_0), .PD(n14635), .Q(mi[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i3.GSR = "ENABLED";
    FD1S3AY DISPLAY_i4 (.D(\DISPLAY_6__N_582[4] ), .CK(clk_0), .Q(mi[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i4.GSR = "ENABLED";
    FD1S3JX DISPLAY_i5 (.D(n14444), .CK(clk_0), .PD(n14635), .Q(mi[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i5.GSR = "ENABLED";
    FD1S3AX DISPLAY_i6 (.D(DISPLAY_6__N_582[6]), .CK(clk_0), .Q(mi[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i6.GSR = "ENABLED";
    LUT4 i12431_then_4_lut (.A(reset_c), .B(n2379), .C(n14664), .D(n14663), 
         .Z(n14908)) /* synthesis lut_function=(A+(B (D)+!B !(C (D)+!C !(D)))) */ ;
    defparam i12431_then_4_lut.init = 16'hefba;
    LUT4 i12431_else_4_lut (.A(reset_c), .B(n2379), .C(n14664), .D(n14663), 
         .Z(n14907)) /* synthesis lut_function=(A+!(B (C (D))+!B !(C+!(D)))) */ ;
    defparam i12431_else_4_lut.init = 16'hbeff;
    LUT4 i8946_4_lut (.A(n14634), .B(n14635), .C(n11083), .D(n14632), 
         .Z(DISPLAY_6__N_582[6])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(30[3] 41[12])
    defparam i8946_4_lut.init = 16'hcfee;
    FD1S3JX DISPLAY_i2 (.D(n4264), .CK(clk_0), .PD(n14633), .Q(mi[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i2.GSR = "ENABLED";
    FD1S3JX DISPLAY_i1 (.D(n3869), .CK(clk_0), .PD(n3812), .Q(mi[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i1.GSR = "ENABLED";
    PFUMX i3768 (.BLUT(n3900), .ALUT(n11249), .C0(n14635), .Z(n5704));
    PFUMX i12574 (.BLUT(n14907), .ALUT(n14908), .C0(n14637), .Z(n14909));
    
endmodule
//
// Verilog Description of module Bin2BCD
//

module Bin2BCD (bcd_out_15__N_371, n1507, n14756, bcd_out_15__N_519, 
            n14655, reset_c, n14646, n3788, n14693, n14685, Q, 
            n14662, n2350, n14664, n14639, bcd_out_15__N_400, n14762, 
            bcd_out_15__N_372, n11092, n14654, \Qbcd[1] , \DISPLAY_6__N_582[6] , 
            n2379, n14637, n3869, bcd_out_15__N_405, bcd_out_15__N_401, 
            bcd_out_15__N_552, n14668, n14667, n3715, n23, n14723, 
            bcd_out_15__N_446, bcd_out_15__N_354, n14663, n14724, n11249, 
            n14638, bcd_out_15__N_515, n14666, n14644, n14656, n14674, 
            n14665, n14650, n14640, n11252, n14676, n14657, n2394, 
            n2390, bcd_out_15__N_572, bcd_out_15__N_568, n14671, n14679, 
            n14677, bcd_out_15__N_451, n2369, n3768, bcd_out_15__N_447, 
            n14675, n14682, n14684, n14647, bcd_out_15__N_548, n11251, 
            n14714, n14562, n14652, n14669, n14659, n14715, n14328, 
            n14327, n14934, n14593);
    output bcd_out_15__N_371;
    input [3:0]n1507;
    output n14756;
    output bcd_out_15__N_519;
    output n14655;
    input reset_c;
    output n14646;
    output n3788;
    output n14693;
    output n14685;
    input [13:0]Q;
    output n14662;
    output n2350;
    output n14664;
    output n14639;
    output bcd_out_15__N_400;
    output n14762;
    input bcd_out_15__N_372;
    input n11092;
    input n14654;
    input \Qbcd[1] ;
    output \DISPLAY_6__N_582[6] ;
    output n2379;
    output n14637;
    output n3869;
    input bcd_out_15__N_405;
    input bcd_out_15__N_401;
    output bcd_out_15__N_552;
    output n14668;
    output n14667;
    output n3715;
    output n23;
    input n14723;
    output bcd_out_15__N_446;
    input bcd_out_15__N_354;
    output n14663;
    input n14724;
    output n11249;
    output n14638;
    output bcd_out_15__N_515;
    output n14666;
    output n14644;
    output n14656;
    output n14674;
    output n14665;
    output n14650;
    output n14640;
    output n11252;
    output n14676;
    output n14657;
    output n2394;
    output n2390;
    output bcd_out_15__N_572;
    output bcd_out_15__N_568;
    output n14671;
    output n14679;
    output n14677;
    input bcd_out_15__N_451;
    output n2369;
    output n3768;
    input bcd_out_15__N_447;
    output n14675;
    output n14682;
    output n14684;
    output n14647;
    output bcd_out_15__N_548;
    output n11251;
    output n14714;
    output n14562;
    output n14652;
    output n14669;
    output n14659;
    input n14715;
    output n14328;
    output n14327;
    input n14934;
    output n14593;
    
    
    wire n14832, n32, n14736, n14718;
    wire [3:0]n1518;
    
    wire n2354;
    wire [3:0]n1508;
    
    wire n15227, n15228, n14747, n2362;
    wire [3:0]n1513;
    
    wire n14725;
    wire [3:0]n1516;
    wire [3:0]n1515;
    
    wire n14711;
    wire [3:0]n1519;
    
    wire n14717, n14728, n14737, n5764, n14672, n14896, n14895;
    wire [3:0]n1507_c;
    
    wire n14917, n14916;
    wire [3:0]n1511;
    
    wire n14742, n14739, n14732, n14727, n14743, n14738, n14731, 
        n14744, n14729, n4, n14745, n14741;
    wire [3:0]n1514;
    
    wire n14734;
    wire [3:0]n1509;
    
    wire n14755, n14749, n29, n14172, n4_adj_1084, n14752, n14748;
    wire [3:0]n1523;
    
    wire n14681, n14754, n14778, n14759, n14758, n14735, n14768, 
        n14764, n14687, n14686;
    wire [3:0]n1521;
    
    wire n14688, n14767, n14689, n14680, n4_adj_1085;
    wire [2:0]n1510;
    
    wire n14775, n14774;
    wire [3:0]n1522;
    
    wire n14690, n4_adj_1086, n4_adj_1087, n14779, n2375, n14699, 
        n14703, n14695, n14692, n14683, n14696, n14691, n14694, 
        n14700, n14701, n14698, n14704, n14710, n14712, n14706, 
        n14709, n14705, n14713, n14831, n14716, n14726, n14721, 
        n14730, n14510;
    
    LUT4 i1_4_lut_4_lut (.A(bcd_out_15__N_371), .B(n1507[3]), .C(n14832), 
         .D(n14756), .Z(n32)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(B (C+!(D))))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h60e4;
    LUT4 i12294_3_lut_4_lut (.A(bcd_out_15__N_519), .B(n14655), .C(reset_c), 
         .D(n14646), .Z(n3788)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i12294_3_lut_4_lut.init = 16'hf6f9;
    LUT4 i12329_2_lut_rep_140_4_lut (.A(n14693), .B(n14685), .C(Q[1]), 
         .D(reset_c), .Z(n14662)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A ((C+(D))+!B)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i12329_2_lut_rep_140_4_lut.init = 16'hff59;
    LUT4 i1402_3_lut_4_lut (.A(Q[5]), .B(n14736), .C(Q[4]), .D(n14718), 
         .Z(n1518[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1402_3_lut_4_lut.init = 16'h6966;
    LUT4 i1206_3_lut_4_lut (.A(Q[10]), .B(n2350), .C(n2354), .D(Q[9]), 
         .Z(n1508[1])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A !(B ((D)+!C)+!B !((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1206_3_lut_4_lut.init = 16'h6696;
    PFUMX i12779 (.BLUT(n15227), .ALUT(n15228), .C0(n14664), .Z(n14639));
    LUT4 i1374_3_lut_4_lut (.A(n14747), .B(n2362), .C(n1513[3]), .D(n14725), 
         .Z(n1516[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1374_3_lut_4_lut.init = 16'h6966;
    LUT4 i1430_3_lut_4_lut (.A(n1513[3]), .B(n14725), .C(n1515[3]), .D(n14711), 
         .Z(n1519[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1430_3_lut_4_lut.init = 16'h6966;
    LUT4 i1435_2_lut_rep_195_3_lut (.A(n1513[3]), .B(n14725), .C(n1515[3]), 
         .Z(n14717)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1435_2_lut_rep_195_3_lut.init = 16'hf6f6;
    LUT4 i1407_2_lut_rep_206_3_lut (.A(Q[5]), .B(n14736), .C(Q[4]), .Z(n14728)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1407_2_lut_rep_206_3_lut.init = 16'hf6f6;
    LUT4 i751_2_lut_rep_150_3_lut_4_lut (.A(n14737), .B(bcd_out_15__N_400), 
         .C(n5764), .D(n14762), .Z(n14672)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i751_2_lut_rep_150_3_lut_4_lut.init = 16'he000;
    LUT4 i1534_2_lut_rep_171_4_lut_4_lut_then_4_lut (.A(Q[2]), .B(Q[3]), 
         .C(n1518[1]), .D(n1518[2]), .Z(n14896)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B (C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1534_2_lut_rep_171_4_lut_4_lut_then_4_lut.init = 16'h2524;
    LUT4 i1534_2_lut_rep_171_4_lut_4_lut_else_4_lut (.A(Q[2]), .B(Q[3]), 
         .C(n1518[1]), .D(n1518[2]), .Z(n14895)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1534_2_lut_rep_171_4_lut_4_lut_else_4_lut.init = 16'h959a;
    LUT4 i1220_3_lut_4_lut_then_4_lut (.A(Q[9]), .B(n1507_c[1]), .C(bcd_out_15__N_372), 
         .D(n2350), .Z(n14917)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C (D)+!C !(D))+!B (C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1220_3_lut_4_lut_then_4_lut.init = 16'h783c;
    LUT4 i1220_3_lut_4_lut_else_4_lut (.A(Q[9]), .B(n1507_c[1]), .C(bcd_out_15__N_372), 
         .D(n2350), .Z(n14916)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1220_3_lut_4_lut_else_4_lut.init = 16'h3c78;
    LUT4 i8914_4_lut_4_lut (.A(n14662), .B(n11092), .C(n14654), .D(\Qbcd[1] ), 
         .Z(\DISPLAY_6__N_582[6] )) /* synthesis lut_function=(A (C+(D))+!A ((C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i8914_4_lut_4_lut.init = 16'hfbf1;
    LUT4 i1035_2_lut (.A(Q[10]), .B(n2350), .Z(n1507_c[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1035_2_lut.init = 16'h6666;
    LUT4 i3776_2_lut_rep_210_3_lut_4_lut (.A(n1511[1]), .B(n14742), .C(n1513[1]), 
         .D(n14739), .Z(n14732)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3776_2_lut_rep_210_3_lut_4_lut.init = 16'hf600;
    LUT4 i718_3_lut_rep_214_4_lut (.A(n1511[1]), .B(n14742), .C(n1513[1]), 
         .D(n14739), .Z(n14736)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i718_3_lut_rep_214_4_lut.init = 16'hf666;
    LUT4 i1353_2_lut_rep_205_3_lut_3_lut_4_lut (.A(n1511[1]), .B(n14742), 
         .C(n1513[1]), .D(n14739), .Z(n14727)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1353_2_lut_rep_205_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1360_3_lut_4_lut_3_lut_4_lut (.A(n1511[1]), .B(n14742), .C(n1513[1]), 
         .D(n14739), .Z(n1515[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1360_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i12291_3_lut_4_lut (.A(n14664), .B(n2379), .C(reset_c), .D(n14637), 
         .Z(n3869)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i12291_3_lut_4_lut.init = 16'hf6f9;
    LUT4 i1338_2_lut_rep_209_4_lut_4_lut (.A(Q[5]), .B(n14743), .C(n1513[1]), 
         .D(n14738), .Z(n14731)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i1338_2_lut_rep_209_4_lut_4_lut.init = 16'h554a;
    LUT4 i647_3_lut_4_lut (.A(n14744), .B(n14747), .C(bcd_out_15__N_405), 
         .D(bcd_out_15__N_401), .Z(n2362)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i647_3_lut_4_lut.init = 16'hffe0;
    LUT4 i1325_2_lut_rep_207_3_lut_4_lut (.A(n14744), .B(n14747), .C(bcd_out_15__N_405), 
         .D(n2362), .Z(n14729)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1325_2_lut_rep_207_3_lut_4_lut.init = 16'h1ef0;
    LUT4 i12297_3_lut_4_lut (.A(bcd_out_15__N_552), .B(n14668), .C(reset_c), 
         .D(n14667), .Z(n3715)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i12297_3_lut_4_lut.init = 16'hf6f9;
    LUT4 i3806_3_lut (.A(n2350), .B(Q[11]), .C(Q[10]), .Z(n4)) /* synthesis lut_function=(A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3806_3_lut.init = 16'ha8a8;
    LUT4 i700_2_lut_rep_217_3_lut (.A(Q[6]), .B(n14745), .C(Q[5]), .Z(n14739)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i700_2_lut_rep_217_3_lut.init = 16'hf6f6;
    LUT4 i1346_3_lut_4_lut (.A(Q[6]), .B(n14745), .C(Q[5]), .D(n14736), 
         .Z(n1515[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1346_3_lut_4_lut.init = 16'h6966;
    LUT4 i1323_2_lut_rep_219_3_lut (.A(n14756), .B(n23), .C(n14747), .Z(n14741)) /* synthesis lut_function=(A (B+(C))+!A ((C)+!B)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1323_2_lut_rep_219_3_lut.init = 16'hf9f9;
    LUT4 i1318_3_lut_4_lut (.A(n14756), .B(n23), .C(n14747), .D(n2362), 
         .Z(n1514[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1318_3_lut_4_lut.init = 16'h9699;
    LUT4 i3801_2_lut_rep_212_3_lut_4_lut (.A(n14756), .B(n23), .C(n2362), 
         .D(n14747), .Z(n14734)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C (D))+!B (C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3801_2_lut_rep_212_3_lut_4_lut.init = 16'hf090;
    LUT4 i965_2_lut_rep_141_3_lut_4_lut_4_lut (.A(n14762), .B(n14723), .C(bcd_out_15__N_446), 
         .D(bcd_out_15__N_354), .Z(n14663)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i965_2_lut_rep_141_3_lut_4_lut_4_lut.init = 16'h7870;
    LUT4 i1633_3_lut_rep_117_4_lut_then_3_lut (.A(n14724), .B(bcd_out_15__N_446), 
         .C(bcd_out_15__N_354), .Z(n15228)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1633_3_lut_rep_117_4_lut_then_3_lut.init = 16'h0202;
    LUT4 i9294_2_lut_4_lut_3_lut_4_lut (.A(bcd_out_15__N_446), .B(n14672), 
         .C(n2379), .D(n14664), .Z(n11249)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i9294_2_lut_4_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i1626_3_lut_rep_116_4_lut (.A(bcd_out_15__N_446), .B(n14672), .C(n14664), 
         .D(n2379), .Z(n14638)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1626_3_lut_rep_116_4_lut.init = 16'h6966;
    LUT4 i1633_3_lut_rep_117_4_lut_else_3_lut (.A(n14663), .B(n14724), .C(bcd_out_15__N_446), 
         .D(bcd_out_15__N_354), .Z(n15227)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C+!(D)))+!A (B (C (D))+!B (D))) */ ;
    defparam i1633_3_lut_rep_117_4_lut_else_3_lut.init = 16'hd308;
    LUT4 i648_3_lut_rep_223_4_lut (.A(n1509[1]), .B(n14755), .C(n1511[1]), 
         .D(n14749), .Z(n14745)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i648_3_lut_rep_223_4_lut.init = 16'hf666;
    LUT4 i3798_2_lut_rep_220_3_lut_4_lut (.A(n1509[1]), .B(n14755), .C(n1511[1]), 
         .D(n14749), .Z(n14742)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3798_2_lut_rep_220_3_lut_4_lut.init = 16'hf600;
    LUT4 i1297_2_lut_rep_216_3_lut_3_lut_4_lut (.A(n1509[1]), .B(n14755), 
         .C(n1511[1]), .D(n14749), .Z(n14738)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1297_2_lut_rep_216_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1_4_lut (.A(n32), .B(n14832), .C(n29), .D(n14172), .Z(n23)) /* synthesis lut_function=(A+!(B+!(C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'hbabb;
    LUT4 i726_2_lut (.A(bcd_out_15__N_371), .B(n1507[3]), .Z(n4_adj_1084)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i726_2_lut.init = 16'heeee;
    LUT4 i1304_3_lut_4_lut_3_lut_4_lut (.A(n1509[1]), .B(n14755), .C(n1511[1]), 
         .D(n14749), .Z(n1513[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1304_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1282_2_lut_rep_221_4_lut_4_lut (.A(n14752), .B(Q[6]), .C(n1511[1]), 
         .D(n14748), .Z(n14743)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1282_2_lut_rep_221_4_lut_4_lut.init = 16'h332c;
    LUT4 i723_3_lut_rep_133_4_lut (.A(n1523[1]), .B(n14681), .C(bcd_out_15__N_515), 
         .D(n14666), .Z(n14655)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i723_3_lut_rep_133_4_lut.init = 16'hf666;
    LUT4 i1290_3_lut_4_lut (.A(Q[7]), .B(n14754), .C(Q[6]), .D(n14745), 
         .Z(n1513[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1290_3_lut_4_lut.init = 16'h6966;
    LUT4 i1295_2_lut_rep_227_3_lut (.A(Q[7]), .B(n14754), .C(Q[6]), .Z(n14749)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1295_2_lut_rep_227_3_lut.init = 16'hf6f6;
    LUT4 i1192_3_lut_rep_115_4_lut_3_lut_4_lut (.A(n1523[1]), .B(n14681), 
         .C(bcd_out_15__N_515), .D(n14666), .Z(n14637)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1192_3_lut_rep_115_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1185_2_lut_rep_122_3_lut_3_lut_4_lut (.A(n1523[1]), .B(n14681), 
         .C(bcd_out_15__N_515), .D(n14666), .Z(n14644)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1185_2_lut_rep_122_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3817_2_lut_rep_134_4_lut (.A(n1523[1]), .B(n14681), .C(bcd_out_15__N_515), 
         .D(n14666), .Z(n14656)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3817_2_lut_rep_134_4_lut.init = 16'hf600;
    LUT4 i3816_2_lut_rep_256_3_lut_4_lut (.A(Q[9]), .B(Q[10]), .C(n2350), 
         .D(n2354), .Z(n14778)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(C (D)))) */ ;
    defparam i3816_2_lut_rep_256_3_lut_4_lut.init = 16'hbe00;
    LUT4 i1170_2_lut_rep_128_4_lut_4_lut (.A(bcd_out_15__N_519), .B(n14674), 
         .C(bcd_out_15__N_515), .D(n14665), .Z(n14650)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i1170_2_lut_rep_128_4_lut_4_lut.init = 16'h554a;
    LUT4 i1310_2_lut_rep_213_4_lut_4_lut (.A(n14759), .B(n14758), .C(n1509[1]), 
         .D(n2362), .Z(n14735)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i1310_2_lut_rep_213_4_lut_4_lut.init = 16'h936c;
    LUT4 i1269_2_lut_rep_226_3_lut_3_lut_4_lut (.A(n1508[1]), .B(n14768), 
         .C(n1509[1]), .D(n14759), .Z(n14748)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1269_2_lut_rep_226_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3811_2_lut_rep_233_4_lut (.A(n1508[1]), .B(n14768), .C(n1509[1]), 
         .D(n14759), .Z(n14755)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3811_2_lut_rep_233_4_lut.init = 16'hf600;
    LUT4 i719_3_lut_rep_232_4_lut (.A(n1508[1]), .B(n14768), .C(n1509[1]), 
         .D(n14759), .Z(n14754)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i719_3_lut_rep_232_4_lut.init = 16'hf666;
    LUT4 i1276_3_lut_rep_225_4_lut_3_lut_4_lut (.A(n1508[1]), .B(n14768), 
         .C(n1509[1]), .D(n14759), .Z(n14747)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1276_3_lut_rep_225_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1254_2_lut_rep_230_4_lut_4_lut (.A(Q[7]), .B(n14764), .C(n1509[1]), 
         .D(n14758), .Z(n14752)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i1254_2_lut_rep_230_4_lut_4_lut.init = 16'h554a;
    LUT4 i1618_2_lut_rep_118_4_lut_4_lut (.A(n14687), .B(n14686), .C(n1523[1]), 
         .D(n2379), .Z(n14640)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i1618_2_lut_rep_118_4_lut_4_lut.init = 16'h936c;
    LUT4 i9297_2_lut_4_lut_3_lut_4_lut (.A(n1521[3]), .B(n14688), .C(n14668), 
         .D(bcd_out_15__N_552), .Z(n11252)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i9297_2_lut_4_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i729_2_lut_rep_154_3_lut (.A(n1521[3]), .B(n14688), .C(bcd_out_15__N_552), 
         .Z(n14676)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i729_2_lut_rep_154_3_lut.init = 16'hf6f6;
    LUT4 i1150_3_lut_rep_135_4_lut (.A(n1521[3]), .B(n14688), .C(bcd_out_15__N_552), 
         .D(n14668), .Z(n14657)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1150_3_lut_rep_135_4_lut.init = 16'h6966;
    LUT4 mux_1734_i3_3_lut_rep_215_4_lut (.A(n14832), .B(n4_adj_1084), .C(n2394), 
         .D(n2390), .Z(n14737)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam mux_1734_i3_3_lut_rep_215_4_lut.init = 16'hf780;
    LUT4 i1661_3_lut_rep_145_4_lut_3_lut_4_lut (.A(Q[1]), .B(n14693), .C(bcd_out_15__N_572), 
         .D(bcd_out_15__N_568), .Z(n14667)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i1661_3_lut_rep_145_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i1639_2_lut_rep_149_4_lut_4_lut (.A(Q[1]), .B(n14693), .C(bcd_out_15__N_572), 
         .D(bcd_out_15__N_568), .Z(n14671)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i1639_2_lut_rep_149_4_lut_4_lut.init = 16'h554a;
    LUT4 i725_2_lut_rep_237_3_lut (.A(Q[8]), .B(n14767), .C(Q[7]), .Z(n14759)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i725_2_lut_rep_237_3_lut.init = 16'hf6f6;
    LUT4 i1262_3_lut_4_lut (.A(Q[8]), .B(n14767), .C(Q[7]), .D(n14754), 
         .Z(n1511[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1262_3_lut_4_lut.init = 16'h6966;
    LUT4 i3819_2_lut_rep_157_4_lut (.A(Q[1]), .B(n14693), .C(bcd_out_15__N_572), 
         .D(bcd_out_15__N_568), .Z(n14679)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i3819_2_lut_rep_157_4_lut.init = 16'heee0;
    LUT4 i705_3_lut_rep_163 (.A(Q[1]), .B(n14693), .C(bcd_out_15__N_572), 
         .D(bcd_out_15__N_568), .Z(n14685)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i705_3_lut_rep_163.init = 16'hffe0;
    LUT4 i1647_3_lut_rep_155_4_lut (.A(Q[1]), .B(n14693), .C(bcd_out_15__N_572), 
         .D(bcd_out_15__N_568), .Z(n14677)) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i1647_3_lut_rep_155_4_lut.init = 16'h998c;
    LUT4 i709_3_lut_rep_158_4_lut (.A(bcd_out_15__N_451), .B(n14689), .C(n1523[1]), 
         .D(n14687), .Z(n14680)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i709_3_lut_rep_158_4_lut.init = 16'hf666;
    LUT4 i1605_2_lut_rep_143_3_lut_3_lut_4_lut (.A(bcd_out_15__N_451), .B(n14689), 
         .C(n1523[1]), .D(n14687), .Z(n14665)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1605_2_lut_rep_143_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1612_3_lut_rep_142_4_lut_3_lut_4_lut (.A(bcd_out_15__N_451), .B(n14689), 
         .C(n1523[1]), .D(n14687), .Z(n14664)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1612_3_lut_rep_142_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i715_4_lut (.A(n4_adj_1085), .B(n14723), .C(n1510[1]), .D(n14762), 
         .Z(n2369)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i715_4_lut.init = 16'hb3a0;
    LUT4 i3821_2_lut_rep_159_4_lut (.A(bcd_out_15__N_451), .B(n14689), .C(n1523[1]), 
         .D(n14687), .Z(n14681)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3821_2_lut_rep_159_4_lut.init = 16'hf600;
    LUT4 i909_2_lut_rep_222_4_lut_4_lut (.A(n14775), .B(n14774), .C(n1508[1]), 
         .D(n23), .Z(n14744)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D)))) */ ;
    defparam i909_2_lut_rep_222_4_lut_4_lut.init = 16'h6c93;
    LUT4 i1590_2_lut_rep_152_4_lut_4_lut (.A(n1522[3]), .B(n14690), .C(n1523[1]), 
         .D(n14686), .Z(n14674)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i1590_2_lut_rep_152_4_lut_4_lut.init = 16'h554a;
    LUT4 i12288_3_lut_4_lut (.A(Q[1]), .B(n14685), .C(reset_c), .D(Q[0]), 
         .Z(n3768)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i12288_3_lut_4_lut.init = 16'hf6f9;
    LUT4 i3763_3_lut (.A(n23), .B(bcd_out_15__N_371), .C(n14756), .Z(n4_adj_1086)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3763_3_lut.init = 16'h5151;
    LUT4 i3799_3_lut (.A(n23), .B(bcd_out_15__N_371), .C(n14756), .Z(n4_adj_1087)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3799_3_lut.init = 16'h5454;
    LUT4 i720_3_lut_rep_245_4_lut (.A(n1507_c[1]), .B(n14778), .C(n1508[1]), 
         .D(n14775), .Z(n14767)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i720_3_lut_rep_245_4_lut.init = 16'hf666;
    LUT4 i1241_2_lut_rep_236_3_lut_3_lut_4_lut (.A(n1507_c[1]), .B(n14778), 
         .C(n1508[1]), .D(n14775), .Z(n14758)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1241_2_lut_rep_236_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1248_3_lut_rep_234_4_lut_3_lut_4_lut (.A(n1507_c[1]), .B(n14778), 
         .C(n1508[1]), .D(n14775), .Z(n14756)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1248_3_lut_rep_234_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i3812_2_lut_rep_246_4_lut (.A(n1507_c[1]), .B(n14778), .C(n1508[1]), 
         .D(n14775), .Z(n14768)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3812_2_lut_rep_246_4_lut.init = 16'hf600;
    LUT4 i1226_2_lut_rep_242_4_lut_4_lut (.A(n14779), .B(Q[8]), .C(n1508[1]), 
         .D(n14774), .Z(n14764)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1226_2_lut_rep_242_4_lut_4_lut.init = 16'h332c;
    LUT4 i1198_2_lut_rep_257 (.A(Q[9]), .B(n2354), .Z(n14779)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1198_2_lut_rep_257.init = 16'h6666;
    LUT4 i1528_3_lut_4_lut (.A(n2375), .B(n14699), .C(bcd_out_15__N_451), 
         .D(bcd_out_15__N_447), .Z(bcd_out_15__N_446)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1528_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1234_3_lut_4_lut (.A(Q[9]), .B(n2354), .C(Q[8]), .D(n14767), 
         .Z(n1509[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1234_3_lut_4_lut.init = 16'h6966;
    LUT4 i1239_2_lut_rep_253_3_lut (.A(Q[9]), .B(n2354), .C(Q[8]), .Z(n14775)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1239_2_lut_rep_253_3_lut.init = 16'hf6f6;
    LUT4 i733_2_lut_rep_165_3_lut (.A(n14703), .B(n2375), .C(n1522[3]), 
         .Z(n14687)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i733_2_lut_rep_165_3_lut.init = 16'hf6f6;
    LUT4 i1598_3_lut_4_lut (.A(n14703), .B(n2375), .C(n1522[3]), .D(n14680), 
         .Z(bcd_out_15__N_515)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1598_3_lut_4_lut.init = 16'h6966;
    LUT4 i708_3_lut_rep_166_4_lut (.A(n1519[1]), .B(n14695), .C(n1522[1]), 
         .D(n14692), .Z(n14688)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i708_3_lut_rep_166_4_lut.init = 16'hf666;
    LUT4 i3809_2_lut_rep_161_3_lut_4_lut (.A(n1519[1]), .B(n14695), .C(n1522[1]), 
         .D(n14692), .Z(n14683)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3809_2_lut_rep_161_3_lut_4_lut.init = 16'hf600;
    LUT4 i1577_2_lut_rep_153_3_lut_3_lut_4_lut (.A(n1519[1]), .B(n14695), 
         .C(n1522[1]), .D(n14692), .Z(n14675)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1577_2_lut_rep_153_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i12276_2_lut_3_lut (.A(Q[12]), .B(n4), .C(Q[13]), .Z(n14172)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i12276_2_lut_3_lut.init = 16'h7878;
    LUT4 i721_3_lut_4_lut (.A(Q[9]), .B(n1507_c[0]), .C(n1507_c[1]), .D(bcd_out_15__N_372), 
         .Z(n2354)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i721_3_lut_4_lut.init = 16'hffe0;
    LUT4 i1584_3_lut_4_lut_3_lut_4_lut (.A(n1519[1]), .B(n14695), .C(n1522[1]), 
         .D(n14692), .Z(bcd_out_15__N_519)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1584_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1562_2_lut_rep_160_4_lut_4_lut (.A(n14696), .B(n1521[3]), .C(n1522[1]), 
         .D(n14691), .Z(n14682)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1562_2_lut_rep_160_4_lut_4_lut.init = 16'h332c;
    LUT4 i1213_2_lut_rep_252_3_lut_4_lut (.A(Q[9]), .B(n1507_c[0]), .C(n1507_c[1]), 
         .D(n2354), .Z(n14774)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;
    defparam i1213_2_lut_rep_252_3_lut_4_lut.init = 16'h1ef0;
    LUT4 i728_2_lut_rep_144_3_lut (.A(n1522[3]), .B(n14680), .C(bcd_out_15__N_519), 
         .Z(n14666)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i728_2_lut_rep_144_3_lut.init = 16'hf6f6;
    LUT4 i730_2_lut_rep_162_3_lut (.A(Q[2]), .B(n14694), .C(Q[1]), .Z(n14684)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i730_2_lut_rep_162_3_lut.init = 16'hf6f6;
    LUT4 i1178_3_lut_rep_125_4_lut (.A(n1522[3]), .B(n14680), .C(bcd_out_15__N_519), 
         .D(n14655), .Z(n14647)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1178_3_lut_rep_125_4_lut.init = 16'h6966;
    LUT4 i1570_3_lut_4_lut (.A(n1518[3]), .B(n14700), .C(n1521[3]), .D(n14688), 
         .Z(bcd_out_15__N_548)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1570_3_lut_4_lut.init = 16'h6966;
    LUT4 i1575_2_lut_rep_170_3_lut (.A(n1518[3]), .B(n14700), .C(n1521[3]), 
         .Z(n14692)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1575_2_lut_rep_170_3_lut.init = 16'hf6f6;
    LUT4 i9296_2_lut_4_lut_3_lut_4_lut (.A(n1522[3]), .B(n14680), .C(n14655), 
         .D(bcd_out_15__N_519), .Z(n11251)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i9296_2_lut_4_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i707_3_lut_rep_172_4_lut (.A(n1518[1]), .B(n14701), .C(n1521[1]), 
         .D(n14698), .Z(n14694)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i707_3_lut_rep_172_4_lut.init = 16'hf666;
    LUT4 i1549_2_lut_3_lut_3_lut_4_lut (.A(n1518[1]), .B(n14701), .C(n1521[1]), 
         .D(n14698), .Z(bcd_out_15__N_568)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1549_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i999_2_lut (.A(bcd_out_15__N_354), .B(bcd_out_15__N_446), .Z(n5764)) /* synthesis lut_function=(A+(B)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i999_2_lut.init = 16'heeee;
    LUT4 i1556_3_lut_4_lut_3_lut_4_lut (.A(n1518[1]), .B(n14701), .C(n1521[1]), 
         .D(n14698), .Z(bcd_out_15__N_552)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1556_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i706_3_lut_4_lut (.A(n14703), .B(n14704), .C(bcd_out_15__N_451), 
         .D(bcd_out_15__N_447), .Z(n2375)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i706_3_lut_4_lut.init = 16'hffe0;
    LUT4 i1521_2_lut_rep_164_3_lut_4_lut (.A(n14703), .B(n14704), .C(bcd_out_15__N_451), 
         .D(n2375), .Z(n14686)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;
    defparam i1521_2_lut_rep_164_3_lut_4_lut.init = 16'h1ef0;
    LUT4 i1542_3_lut_4_lut (.A(Q[3]), .B(n14710), .C(Q[2]), .D(n14694), 
         .Z(bcd_out_15__N_572)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1542_3_lut_4_lut.init = 16'h6966;
    LUT4 i1547_2_lut_rep_176_3_lut (.A(Q[3]), .B(n14710), .C(Q[2]), .Z(n14698)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1547_2_lut_rep_176_3_lut.init = 16'hf6f6;
    LUT4 i724_3_lut_rep_146_4_lut (.A(n1522[1]), .B(n14683), .C(bcd_out_15__N_548), 
         .D(n14676), .Z(n14668)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i724_3_lut_rep_146_4_lut.init = 16'hf666;
    LUT4 i3822_2_lut_rep_167_3_lut_4_lut (.A(n14714), .B(n2369), .C(n2375), 
         .D(n14703), .Z(n14689)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3822_2_lut_rep_167_3_lut_4_lut.init = 16'hf060;
    LUT4 i2_3_lut_4_lut (.A(Q[11]), .B(n14832), .C(Q[10]), .D(n2350), 
         .Z(n1507_c[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2_3_lut_4_lut.init = 16'h6966;
    LUT4 i1514_3_lut_4_lut (.A(n14714), .B(n2369), .C(n14703), .D(n2375), 
         .Z(n1523[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1514_3_lut_4_lut.init = 16'h6966;
    LUT4 bcd_out_15__N_380_3__bdd_4_lut_4_lut (.A(n14737), .B(bcd_out_15__N_400), 
         .C(n14762), .D(n14714), .Z(n14562)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+!(D)))+!A !(B ((D)+!C)+!B (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam bcd_out_15__N_380_3__bdd_4_lut_4_lut.init = 16'h75a6;
    LUT4 i1493_2_lut_rep_169_3_lut_3_lut_4_lut (.A(n1516[1]), .B(n14712), 
         .C(n1519[1]), .D(n14706), .Z(n14691)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1493_2_lut_rep_169_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i713_3_lut_rep_178_4_lut (.A(n1516[1]), .B(n14712), .C(n1519[1]), 
         .D(n14706), .Z(n14700)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i713_3_lut_rep_178_4_lut.init = 16'hf666;
    LUT4 i1500_3_lut_4_lut_3_lut_4_lut (.A(n1516[1]), .B(n14712), .C(n1519[1]), 
         .D(n14706), .Z(n1522[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1500_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1164_3_lut_rep_124_4_lut_3_lut_4_lut (.A(n1522[1]), .B(n14683), 
         .C(bcd_out_15__N_548), .D(n14676), .Z(n14646)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1164_3_lut_rep_124_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i3778_2_lut_rep_173_3_lut_4_lut (.A(n1516[1]), .B(n14712), .C(n1519[1]), 
         .D(n14706), .Z(n14695)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3778_2_lut_rep_173_3_lut_4_lut.init = 16'hf600;
    LUT4 i1478_2_lut_rep_174_4_lut_4_lut (.A(n1518[3]), .B(n14709), .C(n1519[1]), 
         .D(n14705), .Z(n14696)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i1478_2_lut_rep_174_4_lut_4_lut.init = 16'h554a;
    LUT4 i1157_2_lut_rep_130_3_lut_3_lut_4_lut (.A(n1522[1]), .B(n14683), 
         .C(bcd_out_15__N_548), .D(n14676), .Z(n14652)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1157_2_lut_rep_130_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i739_2_lut_rep_184_3_lut (.A(n1515[3]), .B(n14711), .C(n1518[3]), 
         .Z(n14706)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i739_2_lut_rep_184_3_lut.init = 16'hf6f6;
    LUT4 i1486_3_lut_4_lut (.A(n1515[3]), .B(n14711), .C(n1518[3]), .D(n14700), 
         .Z(n1522[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1486_3_lut_4_lut.init = 16'h6966;
    LUT4 i3800_2_lut_rep_179_3_lut_4_lut (.A(n14713), .B(Q[3]), .C(n1518[1]), 
         .D(n1518[2]), .Z(n14701)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3800_2_lut_rep_179_3_lut_4_lut.init = 16'heee0;
    LUT4 i1472_3_lut_4_lut_3_lut_4_lut (.A(n14713), .B(Q[3]), .C(n1518[1]), 
         .D(n1518[2]), .Z(n1521[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1472_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i1113_3_lut_4_lut (.A(Q[13]), .B(n14831), .C(n4_adj_1087), .D(n1507[3]), 
         .Z(n2390)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1113_3_lut_4_lut.init = 16'h7888;
    LUT4 i712_3_lut_rep_188 (.A(n14713), .B(Q[3]), .C(n1518[1]), .D(n1518[2]), 
         .Z(n14710)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i712_3_lut_rep_188.init = 16'hffe0;
    LUT4 i1458_3_lut_4_lut (.A(n14713), .B(Q[3]), .C(n1518[1]), .D(n1518[2]), 
         .Z(n1521[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1458_3_lut_4_lut.init = 16'h998a;
    LUT4 n2390_bdd_4_lut_12672 (.A(n2390), .B(n14762), .C(n2394), .D(bcd_out_15__N_400), 
         .Z(n1510[1])) /* synthesis lut_function=(A ((C (D))+!B)+!A (B (C (D)))) */ ;
    defparam n2390_bdd_4_lut_12672.init = 16'he222;
    LUT4 i3818_2_lut_rep_147_4_lut (.A(n1522[1]), .B(n14683), .C(bcd_out_15__N_548), 
         .D(n14676), .Z(n14669)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3818_2_lut_rep_147_4_lut.init = 16'hf600;
    LUT4 i1506_2_lut_rep_168_4_lut_4_lut (.A(n14717), .B(n14716), .C(n1516[1]), 
         .D(n2375), .Z(n14690)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i1506_2_lut_rep_168_4_lut_4_lut.init = 16'h936c;
    LUT4 i737_2_lut_rep_177_4_lut_4_lut (.A(n14717), .B(n14716), .C(n1516[1]), 
         .D(n14704), .Z(n14699)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i737_2_lut_rep_177_4_lut_4_lut.init = 16'hff6c;
    LUT4 i714_3_lut_rep_189_4_lut (.A(n1514[1]), .B(n14726), .C(n1516[1]), 
         .D(n14717), .Z(n14711)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i714_3_lut_rep_189_4_lut.init = 16'hf666;
    LUT4 i1444_3_lut_rep_181_4_lut_3_lut_4_lut (.A(n1514[1]), .B(n14726), 
         .C(n1516[1]), .D(n14717), .Z(n14703)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1444_3_lut_rep_181_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1437_2_lut_rep_183_3_lut_3_lut_4_lut (.A(n1514[1]), .B(n14726), 
         .C(n1516[1]), .D(n14717), .Z(n14705)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1437_2_lut_rep_183_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3804_2_lut_rep_190_4_lut (.A(n1514[1]), .B(n14726), .C(n1516[1]), 
         .D(n14717), .Z(n14712)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3804_2_lut_rep_190_4_lut.init = 16'hf600;
    LUT4 i1142_2_lut_rep_137_4_lut_4_lut (.A(bcd_out_15__N_552), .B(n14682), 
         .C(bcd_out_15__N_548), .D(n14675), .Z(n14659)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i1142_2_lut_rep_137_4_lut_4_lut.init = 16'h554a;
    LUT4 i1422_2_lut_rep_187_4_lut_4_lut (.A(n14721), .B(n1515[3]), .C(n1516[1]), 
         .D(n14716), .Z(n14709)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1422_2_lut_rep_187_4_lut_4_lut.init = 16'h332c;
    LUT4 i937_2_lut_rep_182_4_lut_4_lut (.A(n14730), .B(n14729), .C(n1514[1]), 
         .D(n2369), .Z(n14704)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i937_2_lut_rep_182_4_lut_4_lut.init = 16'h936c;
    LUT4 i742_2_lut_4_lut_4_lut (.A(n14730), .B(n14729), .C(n1514[1]), 
         .D(n14715), .Z(n4_adj_1085)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i742_2_lut_4_lut_4_lut.init = 16'hff6c;
    LUT4 i711_3_lut_rep_196_4_lut (.A(n1513[1]), .B(n14732), .C(n1515[1]), 
         .D(n14728), .Z(n14718)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i711_3_lut_rep_196_4_lut.init = 16'hf666;
    LUT4 i1409_2_lut_3_lut_3_lut_4_lut (.A(n1513[1]), .B(n14732), .C(n1515[1]), 
         .D(n14728), .Z(n1518[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1409_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1416_3_lut_4_lut_3_lut_4_lut (.A(n1513[1]), .B(n14732), .C(n1515[1]), 
         .D(n14728), .Z(n1518[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1416_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1394_2_lut_rep_191_4_lut_4_lut (.A(n14731), .B(Q[4]), .C(n1515[1]), 
         .D(n14727), .Z(n14713)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1394_2_lut_rep_191_4_lut_4_lut.init = 16'h332c;
    LUT4 i716_3_lut_rep_203_4_lut (.A(bcd_out_15__N_405), .B(n14734), .C(n1514[1]), 
         .D(n14730), .Z(n14725)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i716_3_lut_rep_203_4_lut.init = 16'hf666;
    LUT4 i1381_2_lut_rep_194_3_lut_3_lut_4_lut (.A(bcd_out_15__N_405), .B(n14734), 
         .C(n1514[1]), .D(n14730), .Z(n14716)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1381_2_lut_rep_194_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1388_3_lut_rep_192_4_lut_3_lut_4_lut (.A(bcd_out_15__N_405), .B(n14734), 
         .C(n1514[1]), .D(n14730), .Z(n14714)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1388_3_lut_rep_192_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i740_2_lut_rep_309 (.A(Q[11]), .B(Q[12]), .Z(n14831)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i740_2_lut_rep_309.init = 16'heeee;
    LUT4 i882_2_lut_rep_240_3_lut_4_lut (.A(Q[11]), .B(Q[12]), .C(n4_adj_1084), 
         .D(Q[13]), .Z(n14762)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i882_2_lut_rep_240_3_lut_4_lut.init = 16'he000;
    LUT4 i3814_2_lut_rep_204_4_lut (.A(bcd_out_15__N_405), .B(n14734), .C(n1514[1]), 
         .D(n14730), .Z(n14726)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3814_2_lut_rep_204_4_lut.init = 16'hf600;
    LUT4 bcd_out_15__N_360_3__bdd_3_lut_4_lut_3_lut (.A(Q[11]), .B(Q[12]), 
         .C(Q[13]), .Z(n14328)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam bcd_out_15__N_360_3__bdd_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 Q_10__bdd_4_lut_4_lut_3_lut (.A(Q[11]), .B(Q[10]), .C(Q[13]), 
         .Z(n14510)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam Q_10__bdd_4_lut_4_lut_3_lut.init = 16'h8e8e;
    LUT4 i1138_2_lut_rep_310 (.A(Q[11]), .B(Q[12]), .C(Q[13]), .Z(n14832)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1138_2_lut_rep_310.init = 16'he0e0;
    LUT4 bcd_out_15__N_360_3__bdd_4_lut_12545_4_lut (.A(Q[11]), .B(Q[12]), 
         .C(Q[13]), .D(Q[10]), .Z(n14327)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A !(B (C+!(D))+!B (D)))) */ ;
    defparam bcd_out_15__N_360_3__bdd_4_lut_12545_4_lut.init = 16'h73c6;
    LUT4 i1366_2_lut_rep_199_4_lut_4_lut (.A(n14735), .B(n1513[3]), .C(n1514[1]), 
         .D(n14729), .Z(n14721)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1366_2_lut_rep_199_4_lut_4_lut.init = 16'h332c;
    LUT4 i1379_2_lut_rep_208_3_lut (.A(n14747), .B(n2362), .C(n1513[3]), 
         .Z(n14730)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1379_2_lut_rep_208_3_lut.init = 16'hf6f6;
    PFUMX i12580 (.BLUT(n14916), .ALUT(n14917), .C0(Q[10]), .Z(bcd_out_15__N_371));
    LUT4 i2_4_lut_4_lut (.A(bcd_out_15__N_371), .B(n1507[3]), .C(n14832), 
         .D(n4_adj_1086), .Z(n2394)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C))+!A !(B (C)+!B (C (D)+!C !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2_4_lut_4_lut.init = 16'h871e;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(n14832), .B(bcd_out_15__N_371), 
         .C(n1507[3]), .D(n14756), .Z(n29)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (B+(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h009b;
    PFUMX i12467 (.BLUT(n14934), .ALUT(n14510), .C0(Q[12]), .Z(n2350));
    PFUMX i12566 (.BLUT(n14895), .ALUT(n14896), .C0(n14713), .Z(n14693));
    LUT4 bcd_out_15__N_357_3__bdd_3_lut_4_lut_3_lut (.A(n14832), .B(bcd_out_15__N_371), 
         .C(n1507[3]), .Z(n14593)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam bcd_out_15__N_357_3__bdd_3_lut_4_lut_3_lut.init = 16'hd0d0;
    LUT4 i1332_3_lut_4_lut (.A(n2362), .B(n14741), .C(bcd_out_15__N_405), 
         .D(bcd_out_15__N_401), .Z(bcd_out_15__N_400)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1332_3_lut_4_lut.init = 16'h7f80;
    LUT4 n4_bdd_4_lut_4_lut (.A(bcd_out_15__N_354), .B(bcd_out_15__N_446), 
         .C(n14724), .D(n14664), .Z(n2379)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+!(D)))+!A !(B+!(C))) */ ;
    defparam n4_bdd_4_lut_4_lut.init = 16'h9a18;
    
endmodule
//
// Verilog Description of module ROM
//

module ROM (MAR, clk, reset_c, GND_net, VCC_net, \data_out_23__N_638[13] , 
            \data_out_23__N_638[14] , \data_out_23__N_638[15] , data_out_23__N_590, 
            data_out_23__N_589, n15231);
    input [7:0]MAR;
    input clk;
    input reset_c;
    input GND_net;
    input VCC_net;
    output \data_out_23__N_638[13] ;
    output \data_out_23__N_638[14] ;
    output \data_out_23__N_638[15] ;
    output data_out_23__N_590;
    output [23:0]data_out_23__N_589;
    input n15231;
    
    wire clk /* synthesis is_clock=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(71[8:11])
    wire [23:0]data_out_23__N_638;
    
    PDPW8KC mux_239 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
            .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), .DI7(GND_net), 
            .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), .DI11(GND_net), 
            .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), .DI15(GND_net), 
            .DI16(GND_net), .DI17(GND_net), .ADW0(GND_net), .ADW1(GND_net), 
            .ADW2(GND_net), .ADW3(GND_net), .ADW4(GND_net), .ADW5(GND_net), 
            .ADW6(GND_net), .ADW7(GND_net), .ADW8(GND_net), .BE0(GND_net), 
            .BE1(GND_net), .CEW(VCC_net), .CLKW(GND_net), .CSW0(GND_net), 
            .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), 
            .ADR2(GND_net), .ADR3(GND_net), .ADR4(MAR[0]), .ADR5(MAR[1]), 
            .ADR6(MAR[2]), .ADR7(MAR[3]), .ADR8(MAR[4]), .ADR9(MAR[5]), 
            .ADR10(MAR[6]), .ADR11(MAR[7]), .ADR12(GND_net), .CER(VCC_net), 
            .OCER(VCC_net), .CLKR(clk), .CSR0(GND_net), .CSR1(GND_net), 
            .CSR2(GND_net), .RST(reset_c), .DO9(data_out_23__N_638[18]), 
            .DO10(data_out_23__N_638[19]), .DO11(data_out_23__N_638[20]), 
            .DO12(data_out_23__N_638[21]), .DO13(data_out_23__N_638[22]), 
            .DO14(data_out_23__N_638[23]));
    defparam mux_239.DATA_WIDTH_W = 18;
    defparam mux_239.DATA_WIDTH_R = 18;
    defparam mux_239.REGMODE = "NOREG";
    defparam mux_239.CSDECODE_W = "0b000";
    defparam mux_239.CSDECODE_R = "0b000";
    defparam mux_239.GSR = "DISABLED";
    defparam mux_239.RESETMODE = "ASYNC";
    defparam mux_239.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_239.INIT_DATA = "STATIC";
    defparam mux_239.INITVAL_00 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F00013000180000900011";
    defparam mux_239.INITVAL_01 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_239.INITVAL_02 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_239.INITVAL_03 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_239.INITVAL_04 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_239.INITVAL_05 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_239.INITVAL_06 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_239.INITVAL_07 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_239.INITVAL_08 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_239.INITVAL_09 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_239.INITVAL_0A = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_239.INITVAL_0B = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_239.INITVAL_0C = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_239.INITVAL_0D = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_239.INITVAL_0E = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_239.INITVAL_0F = "0x0000000000000000000000000000000000000000000000003F0003F0003F0003F0003F0003F0003F";
    defparam mux_239.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_239.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_239.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_239.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_239.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_239.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_239.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_239.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_239.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_239.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_239.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_239.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_239.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_239.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_239.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_239.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    PDPW8KC mux_238 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
            .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), .DI7(GND_net), 
            .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), .DI11(GND_net), 
            .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), .DI15(GND_net), 
            .DI16(GND_net), .DI17(GND_net), .ADW0(GND_net), .ADW1(GND_net), 
            .ADW2(GND_net), .ADW3(GND_net), .ADW4(GND_net), .ADW5(GND_net), 
            .ADW6(GND_net), .ADW7(GND_net), .ADW8(GND_net), .BE0(GND_net), 
            .BE1(GND_net), .CEW(VCC_net), .CLKW(GND_net), .CSW0(GND_net), 
            .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), 
            .ADR2(GND_net), .ADR3(GND_net), .ADR4(MAR[0]), .ADR5(MAR[1]), 
            .ADR6(MAR[2]), .ADR7(MAR[3]), .ADR8(MAR[4]), .ADR9(MAR[5]), 
            .ADR10(MAR[6]), .ADR11(MAR[7]), .ADR12(GND_net), .CER(VCC_net), 
            .OCER(VCC_net), .CLKR(clk), .CSR0(GND_net), .CSR1(GND_net), 
            .CSR2(GND_net), .RST(reset_c), .DO0(data_out_23__N_638[9]), 
            .DO1(data_out_23__N_638[10]), .DO2(data_out_23__N_638[11]), 
            .DO3(data_out_23__N_638[12]), .DO4(\data_out_23__N_638[13] ), 
            .DO5(\data_out_23__N_638[14] ), .DO6(\data_out_23__N_638[15] ), 
            .DO7(data_out_23__N_638[16]), .DO8(data_out_23__N_638[17]), 
            .DO9(data_out_23__N_638[0]), .DO10(data_out_23__N_638[1]), .DO11(data_out_23__N_638[2]), 
            .DO12(data_out_23__N_638[3]), .DO13(data_out_23__N_638[4]), 
            .DO14(data_out_23__N_638[5]), .DO15(data_out_23__N_638[6]), 
            .DO16(data_out_23__N_638[7]), .DO17(data_out_23__N_638[8]));
    defparam mux_238.DATA_WIDTH_W = 18;
    defparam mux_238.DATA_WIDTH_R = 18;
    defparam mux_238.REGMODE = "NOREG";
    defparam mux_238.CSDECODE_W = "0b000";
    defparam mux_238.CSDECODE_R = "0b000";
    defparam mux_238.GSR = "DISABLED";
    defparam mux_238.RESETMODE = "ASYNC";
    defparam mux_238.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_238.INIT_DATA = "STATIC";
    defparam mux_238.INITVAL_00 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF000000000000056000F7";
    defparam mux_238.INITVAL_01 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_238.INITVAL_02 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_238.INITVAL_03 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_238.INITVAL_04 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_238.INITVAL_05 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_238.INITVAL_06 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_238.INITVAL_07 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_238.INITVAL_08 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_238.INITVAL_09 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_238.INITVAL_0A = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_238.INITVAL_0B = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_238.INITVAL_0C = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_238.INITVAL_0D = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_238.INITVAL_0E = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_238.INITVAL_0F = "0x0004D00037000170000700012000320004600065003EB3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_238.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_238.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_238.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_238.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_238.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_238.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_238.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_238.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_238.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_238.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_238.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_238.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_238.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_238.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_238.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_238.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    LUT4 i248_2_lut (.A(data_out_23__N_638[4]), .B(data_out_23__N_590), 
         .Z(data_out_23__N_589[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i248_2_lut.init = 16'h8888;
    LUT4 i245_2_lut (.A(data_out_23__N_638[1]), .B(data_out_23__N_590), 
         .Z(data_out_23__N_589[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i245_2_lut.init = 16'h8888;
    LUT4 i244_2_lut (.A(data_out_23__N_638[0]), .B(data_out_23__N_590), 
         .Z(data_out_23__N_589[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i244_2_lut.init = 16'h8888;
    LUT4 i247_2_lut (.A(data_out_23__N_638[3]), .B(data_out_23__N_590), 
         .Z(data_out_23__N_589[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i247_2_lut.init = 16'h8888;
    LUT4 i256_2_lut (.A(data_out_23__N_638[12]), .B(data_out_23__N_590), 
         .Z(data_out_23__N_589[12])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i256_2_lut.init = 16'h8888;
    LUT4 i267_2_lut (.A(data_out_23__N_638[23]), .B(data_out_23__N_590), 
         .Z(data_out_23__N_589[23])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i267_2_lut.init = 16'h8888;
    LUT4 i266_2_lut (.A(data_out_23__N_638[22]), .B(data_out_23__N_590), 
         .Z(data_out_23__N_589[22])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i266_2_lut.init = 16'h8888;
    LUT4 i265_2_lut (.A(data_out_23__N_638[21]), .B(data_out_23__N_590), 
         .Z(data_out_23__N_589[21])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i265_2_lut.init = 16'h8888;
    LUT4 i264_2_lut (.A(data_out_23__N_638[20]), .B(data_out_23__N_590), 
         .Z(data_out_23__N_589[20])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i264_2_lut.init = 16'h8888;
    LUT4 i263_2_lut (.A(data_out_23__N_638[19]), .B(data_out_23__N_590), 
         .Z(data_out_23__N_589[19])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i263_2_lut.init = 16'h8888;
    LUT4 i262_2_lut (.A(data_out_23__N_638[18]), .B(data_out_23__N_590), 
         .Z(data_out_23__N_589[18])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i262_2_lut.init = 16'h8888;
    LUT4 i261_2_lut (.A(data_out_23__N_638[17]), .B(data_out_23__N_590), 
         .Z(data_out_23__N_589[17])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i261_2_lut.init = 16'h8888;
    LUT4 i260_2_lut (.A(data_out_23__N_638[16]), .B(data_out_23__N_590), 
         .Z(data_out_23__N_589[16])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i260_2_lut.init = 16'h8888;
    LUT4 i259_2_lut (.A(\data_out_23__N_638[15] ), .B(data_out_23__N_590), 
         .Z(data_out_23__N_589[15])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i259_2_lut.init = 16'h8888;
    LUT4 i258_2_lut (.A(\data_out_23__N_638[14] ), .B(data_out_23__N_590), 
         .Z(data_out_23__N_589[14])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i258_2_lut.init = 16'h8888;
    LUT4 i257_2_lut (.A(\data_out_23__N_638[13] ), .B(data_out_23__N_590), 
         .Z(data_out_23__N_589[13])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i257_2_lut.init = 16'h8888;
    LUT4 i255_2_lut (.A(data_out_23__N_638[11]), .B(data_out_23__N_590), 
         .Z(data_out_23__N_589[11])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i255_2_lut.init = 16'h8888;
    LUT4 i254_2_lut (.A(data_out_23__N_638[10]), .B(data_out_23__N_590), 
         .Z(data_out_23__N_589[10])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i254_2_lut.init = 16'h8888;
    LUT4 i253_2_lut (.A(data_out_23__N_638[9]), .B(data_out_23__N_590), 
         .Z(data_out_23__N_589[9])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i253_2_lut.init = 16'h8888;
    LUT4 i252_2_lut (.A(data_out_23__N_638[8]), .B(data_out_23__N_590), 
         .Z(data_out_23__N_589[8])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i252_2_lut.init = 16'h8888;
    LUT4 i251_2_lut (.A(data_out_23__N_638[7]), .B(data_out_23__N_590), 
         .Z(data_out_23__N_589[7])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i251_2_lut.init = 16'h8888;
    LUT4 i250_2_lut (.A(data_out_23__N_638[6]), .B(data_out_23__N_590), 
         .Z(data_out_23__N_589[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i250_2_lut.init = 16'h8888;
    LUT4 i249_2_lut (.A(data_out_23__N_638[5]), .B(data_out_23__N_590), 
         .Z(data_out_23__N_589[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i249_2_lut.init = 16'h8888;
    FD1S3AX data_out (.D(n15231), .CK(clk), .Q(data_out_23__N_590));   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam data_out.GSR = "ENABLED";
    LUT4 i246_2_lut (.A(data_out_23__N_638[2]), .B(data_out_23__N_590), 
         .Z(data_out_23__N_589[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i246_2_lut.init = 16'h8888;
    
endmodule
//
// Verilog Description of module bcdDisplay_U7
//

module bcdDisplay_U7 (ce, clk_0, n3971, n14166, n14636, \DISPLAY_6__N_582[4] , 
            n14452, reset_c, n14655, bcd_out_15__N_519, n14674, n14642, 
            n11236, n14641, n14645, n4542, n3770, n3788, n3794, 
            n11251, n5697, n14646);
    output [6:0]ce;
    input clk_0;
    input n3971;
    input n14166;
    input n14636;
    input \DISPLAY_6__N_582[4] ;
    input n14452;
    input reset_c;
    input n14655;
    input bcd_out_15__N_519;
    input n14674;
    input n14642;
    input n11236;
    input n14641;
    input n14645;
    input n4542;
    input n3770;
    input n3788;
    input n3794;
    input n11251;
    output n5697;
    input n14646;
    
    wire clk_0 /* synthesis is_clock=1, SET_AS_NETWORK=clk_0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(72[8:13])
    
    wire n14903;
    wire [6:0]DISPLAY_6__N_582;
    
    wire n14902, n14901;
    
    FD1S3JX DISPLAY_i0 (.D(n14166), .CK(clk_0), .PD(n3971), .Q(ce[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i0.GSR = "ENABLED";
    FD1S3JX DISPLAY_i3 (.D(n14903), .CK(clk_0), .PD(n14636), .Q(ce[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i3.GSR = "ENABLED";
    FD1S3AY DISPLAY_i4 (.D(\DISPLAY_6__N_582[4] ), .CK(clk_0), .Q(ce[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i4.GSR = "ENABLED";
    FD1S3JX DISPLAY_i5 (.D(n14452), .CK(clk_0), .PD(n14636), .Q(ce[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i5.GSR = "ENABLED";
    FD1S3AX DISPLAY_i6 (.D(DISPLAY_6__N_582[6]), .CK(clk_0), .Q(ce[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i6.GSR = "ENABLED";
    LUT4 i12435_then_4_lut (.A(reset_c), .B(n14655), .C(bcd_out_15__N_519), 
         .D(n14674), .Z(n14902)) /* synthesis lut_function=(A+(B (D)+!B !(C (D)+!C !(D)))) */ ;
    defparam i12435_then_4_lut.init = 16'hefba;
    LUT4 i12435_else_4_lut (.A(reset_c), .B(n14655), .C(bcd_out_15__N_519), 
         .D(n14674), .Z(n14901)) /* synthesis lut_function=(A+!(B (C (D))+!B !(C+!(D)))) */ ;
    defparam i12435_else_4_lut.init = 16'hbeff;
    LUT4 i8938_4_lut (.A(n14642), .B(n14636), .C(n11236), .D(n14641), 
         .Z(DISPLAY_6__N_582[6])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(30[3] 41[12])
    defparam i8938_4_lut.init = 16'hcfee;
    FD1S3JX DISPLAY_i2 (.D(n4542), .CK(clk_0), .PD(n14645), .Q(ce[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i2.GSR = "ENABLED";
    FD1S3JX DISPLAY_i1 (.D(n3788), .CK(clk_0), .PD(n3770), .Q(ce[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i1.GSR = "ENABLED";
    PFUMX i3762 (.BLUT(n3794), .ALUT(n11251), .C0(n14636), .Z(n5697));
    PFUMX i12570 (.BLUT(n14901), .ALUT(n14902), .C0(n14646), .Z(n14903));
    
endmodule
//
// Verilog Description of module alu
//

module alu (control, A_temp, B_temp, substract, \A_temp[2] , \A_temp[3] , 
            \A_temp[5] , \A_temp[6] , \A_temp[7] , \A_temp[8] , \A_temp[9] , 
            \A_temp[10] , \A_temp[11] , \B_temp[2] , \B_temp[3] , \B_temp[5] , 
            \B_temp[6] , \B_temp[7] , \B_temp[8] , \B_temp[9] , \B_temp[10] , 
            \B_temp[11] , n14941, A, n14827, B, \data_out_23__N_589[4] , 
            \instruction[0] , \ACC[4] , n15196, n15184, n15204, n14949, 
            n15172, n15190, \data_out_23__N_589[1] , \ACC[1] , n14, 
            n14_adj_2, n14630, n15178, n15210, \v12[2] , n14791, 
            n14803, \v12[3] , \v12_34[9] , n14783, \v56[8] , n14815, 
            \v56[7] , n14769, \v56[9] , \SumRest_11__N_989[10] , n14750, 
            \intermediate_carry[10] , n14760, \v12_34[8] , n14766, \v12_34[7] , 
            \v56[6] , n14777, \v12_34[6] , \v12_34[5] , n14795, n14746, 
            n14740, n14733, \intermediate_carry[11] , n14786, C, n14770, 
            n14761, n14753);
    input [3:0]control;
    output [11:0]A_temp;
    output [11:0]B_temp;
    output substract;
    output \A_temp[2] ;
    output \A_temp[3] ;
    output \A_temp[5] ;
    output \A_temp[6] ;
    output \A_temp[7] ;
    output \A_temp[8] ;
    output \A_temp[9] ;
    output \A_temp[10] ;
    output \A_temp[11] ;
    output \B_temp[2] ;
    output \B_temp[3] ;
    output \B_temp[5] ;
    output \B_temp[6] ;
    output \B_temp[7] ;
    output \B_temp[8] ;
    output \B_temp[9] ;
    output \B_temp[10] ;
    output \B_temp[11] ;
    output n14941;
    input [11:0]A;
    output n14827;
    input [11:0]B;
    input \data_out_23__N_589[4] ;
    input \instruction[0] ;
    output \ACC[4] ;
    output n15196;
    output n15184;
    output n15204;
    output n14949;
    output n15172;
    output n15190;
    input \data_out_23__N_589[1] ;
    output \ACC[1] ;
    output n14;
    output n14_adj_2;
    output n14630;
    output n15178;
    output n15210;
    output \v12[2] ;
    output n14791;
    output n14803;
    output \v12[3] ;
    output \v12_34[9] ;
    output n14783;
    output \v56[8] ;
    output n14815;
    output \v56[7] ;
    output n14769;
    output \v56[9] ;
    output \SumRest_11__N_989[10] ;
    output n14750;
    output \intermediate_carry[10] ;
    output n14760;
    output \v12_34[8] ;
    output n14766;
    output \v12_34[7] ;
    output \v56[6] ;
    output n14777;
    output \v12_34[6] ;
    output \v12_34[5] ;
    output n14795;
    output n14746;
    output n14740;
    output n14733;
    output \intermediate_carry[11] ;
    output n14786;
    output C;
    output n14770;
    output n14761;
    output n14753;
    
    wire control_3_derived_24 /* synthesis is_clock=1, SET_AS_NETWORK=control[3]_derived_24 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(95[8:15])
    wire [39:0]n1612 /* synthesis is_clock=1, SET_AS_NETWORK=\ALU_imp/substract_N_988 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(33[9:18])
    
    wire n5524, n6135;
    wire [11:0]logic_result;   // c:/users/cassandra/desktop/arqui2/alu.vhd(35[9:21])
    
    wire n5425, n14376;
    wire [11:0]A_temp_c;   // c:/users/cassandra/desktop/arqui2/alu.vhd(39[9:15])
    wire [11:0]B_temp_c;   // c:/users/cassandra/desktop/arqui2/alu.vhd(39[16:22])
    
    wire n4011, n5459, n5461, n5463, n5465, n14318, n14544, n14543, 
        n14542, n14541, n14540, n14539, n14538, n14537, n14531, 
        n14528, n14_c, n14_adj_1062, n14370, n14860;
    wire [11:0]v12_34;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(21[27:33])
    
    wire n13931, n14828, n7, n6658, n15219, n7_adj_1063, n7_adj_1064, 
        n7_adj_1065, n7_adj_1066, n14_adj_1067, n7_adj_1068, n7_adj_1069, 
        n14_adj_1070, n7_adj_1071, n7_adj_1072, n5538, n6139, n14_adj_1073, 
        n5532, n6137, n14_adj_1074, n14_adj_1075, n5516, n6133, 
        n6131, n6129, n14780, n4, n14323, n14810, n4_adj_1076, 
        n14_adj_1077, n14_adj_1078, n14324, n14_adj_1079, n14_adj_1080, 
        n14338, n14_adj_1081, n13940, n14337;
    
    PFUMX mux_237_Mux_36_i15 (.BLUT(n5524), .ALUT(n6135), .C0(control[3]), 
          .Z(n1612[36])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    FD1S1A A_temp_11__I_0_i1 (.D(n1612[27]), .CK(control_3_derived_24), 
           .Q(A_temp[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam A_temp_11__I_0_i1.GSR = "DISABLED";
    FD1S1A B_temp_11__I_0_i1 (.D(n1612[15]), .CK(control_3_derived_24), 
           .Q(B_temp[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam B_temp_11__I_0_i1.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i1 (.D(n14376), .CK(n1612[11]), .CD(n5425), 
           .Q(logic_result[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam logic_result_11__I_0_i1.GSR = "DISABLED";
    FD1S1A substract_I_0 (.D(n1612[14]), .CK(n1612[13]), .Q(substract)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam substract_I_0.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i2 (.D(n1612[28]), .CK(control_3_derived_24), 
           .Q(A_temp_c[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam A_temp_11__I_0_i2.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i3 (.D(n1612[29]), .CK(control_3_derived_24), 
           .Q(\A_temp[2] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam A_temp_11__I_0_i3.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i4 (.D(n1612[30]), .CK(control_3_derived_24), 
           .Q(\A_temp[3] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam A_temp_11__I_0_i4.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i5 (.D(n1612[31]), .CK(control_3_derived_24), 
           .Q(A_temp_c[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam A_temp_11__I_0_i5.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i6 (.D(n1612[32]), .CK(control_3_derived_24), 
           .Q(\A_temp[5] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam A_temp_11__I_0_i6.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i7 (.D(n1612[33]), .CK(control_3_derived_24), 
           .Q(\A_temp[6] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam A_temp_11__I_0_i7.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i8 (.D(n1612[34]), .CK(control_3_derived_24), 
           .Q(\A_temp[7] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam A_temp_11__I_0_i8.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i9 (.D(n1612[35]), .CK(control_3_derived_24), 
           .Q(\A_temp[8] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam A_temp_11__I_0_i9.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i10 (.D(n1612[36]), .CK(control_3_derived_24), 
           .Q(\A_temp[9] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam A_temp_11__I_0_i10.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i11 (.D(n1612[38]), .CK(control_3_derived_24), 
           .Q(\A_temp[10] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam A_temp_11__I_0_i11.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i12 (.D(n1612[39]), .CK(control_3_derived_24), 
           .Q(\A_temp[11] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam A_temp_11__I_0_i12.GSR = "DISABLED";
    FD1S1A B_temp_11__I_0_i2 (.D(n1612[16]), .CK(control_3_derived_24), 
           .Q(B_temp_c[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam B_temp_11__I_0_i2.GSR = "DISABLED";
    FD1S1A B_temp_11__I_0_i3 (.D(n1612[17]), .CK(control_3_derived_24), 
           .Q(\B_temp[2] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam B_temp_11__I_0_i3.GSR = "DISABLED";
    FD1S1A B_temp_11__I_0_i4 (.D(n1612[18]), .CK(control_3_derived_24), 
           .Q(\B_temp[3] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam B_temp_11__I_0_i4.GSR = "DISABLED";
    FD1S1A B_temp_11__I_0_i5 (.D(n1612[19]), .CK(control_3_derived_24), 
           .Q(B_temp_c[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam B_temp_11__I_0_i5.GSR = "DISABLED";
    FD1S1A B_temp_11__I_0_i6 (.D(n1612[20]), .CK(control_3_derived_24), 
           .Q(\B_temp[5] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam B_temp_11__I_0_i6.GSR = "DISABLED";
    FD1S1A B_temp_11__I_0_i7 (.D(n1612[21]), .CK(control_3_derived_24), 
           .Q(\B_temp[6] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam B_temp_11__I_0_i7.GSR = "DISABLED";
    FD1S1A B_temp_11__I_0_i8 (.D(n1612[22]), .CK(control_3_derived_24), 
           .Q(\B_temp[7] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam B_temp_11__I_0_i8.GSR = "DISABLED";
    FD1S1I B_temp_11__I_0_i9 (.D(n5459), .CK(control_3_derived_24), .CD(n4011), 
           .Q(\B_temp[8] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam B_temp_11__I_0_i9.GSR = "DISABLED";
    FD1S1I B_temp_11__I_0_i10 (.D(n5461), .CK(control_3_derived_24), .CD(n4011), 
           .Q(\B_temp[9] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam B_temp_11__I_0_i10.GSR = "DISABLED";
    FD1S1I B_temp_11__I_0_i11 (.D(n5463), .CK(control_3_derived_24), .CD(n4011), 
           .Q(\B_temp[10] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam B_temp_11__I_0_i11.GSR = "DISABLED";
    FD1S1I B_temp_11__I_0_i12 (.D(n5465), .CK(control_3_derived_24), .CD(n4011), 
           .Q(\B_temp[11] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam B_temp_11__I_0_i12.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i2 (.D(n14318), .CK(n1612[11]), .CD(n5425), 
           .Q(logic_result[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam logic_result_11__I_0_i2.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i3 (.D(n14544), .CK(n1612[11]), .CD(n5425), 
           .Q(logic_result[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam logic_result_11__I_0_i3.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i4 (.D(n14543), .CK(n1612[11]), .CD(n5425), 
           .Q(logic_result[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam logic_result_11__I_0_i4.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i5 (.D(n14542), .CK(n1612[11]), .CD(n5425), 
           .Q(logic_result[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam logic_result_11__I_0_i5.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i6 (.D(n14541), .CK(n1612[11]), .CD(n5425), 
           .Q(logic_result[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam logic_result_11__I_0_i6.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i7 (.D(n14540), .CK(n1612[11]), .CD(n5425), 
           .Q(logic_result[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam logic_result_11__I_0_i7.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i8 (.D(n14539), .CK(n1612[11]), .CD(n5425), 
           .Q(logic_result[7])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam logic_result_11__I_0_i8.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i9 (.D(n14538), .CK(n1612[11]), .CD(n5425), 
           .Q(logic_result[8])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam logic_result_11__I_0_i9.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i10 (.D(n14537), .CK(n1612[11]), .CD(n5425), 
           .Q(logic_result[9])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam logic_result_11__I_0_i10.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i11 (.D(n14531), .CK(n1612[11]), .CD(n5425), 
           .Q(logic_result[10])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam logic_result_11__I_0_i11.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i12 (.D(n14528), .CK(n1612[11]), .CD(n5425), 
           .Q(logic_result[11])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam logic_result_11__I_0_i12.GSR = "DISABLED";
    LUT4 n14791_bdd_2_lut_3_lut (.A(control[0]), .B(control[1]), .C(logic_result[3]), 
         .Z(n14941)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam n14791_bdd_2_lut_3_lut.init = 16'h7070;
    LUT4 mux_237_Mux_28_i14_4_lut_4_lut (.A(A[1]), .B(control[0]), .C(control[1]), 
         .D(control[2]), .Z(n14_c)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(((D)+!C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam mux_237_Mux_28_i14_4_lut_4_lut.init = 16'ha840;
    LUT4 mux_237_Mux_27_i14_4_lut_4_lut (.A(A[0]), .B(control[0]), .C(control[1]), 
         .D(control[2]), .Z(n14_adj_1062)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(((D)+!C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam mux_237_Mux_27_i14_4_lut_4_lut.init = 16'ha840;
    LUT4 i1_2_lut_rep_305 (.A(control[0]), .B(control[1]), .Z(n14827)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(109[2] 125[29])
    defparam i1_2_lut_rep_305.init = 16'h2222;
    LUT4 n10947_bdd_3_lut_12399_4_lut (.A(control[0]), .B(control[1]), .C(B_temp[0]), 
         .D(A_temp[0]), .Z(n14370)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(109[2] 125[29])
    defparam n10947_bdd_3_lut_12399_4_lut.init = 16'h2000;
    LUT4 i1_3_lut_4_lut (.A(control[0]), .B(control[1]), .C(n14860), .D(v12_34[4]), 
         .Z(n13931)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(109[2] 125[29])
    defparam i1_3_lut_4_lut.init = 16'h0220;
    LUT4 i3500_2_lut_rep_306 (.A(control[1]), .B(control[2]), .Z(n14828)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i3500_2_lut_rep_306.init = 16'h2222;
    LUT4 i9044_2_lut_3_lut (.A(control[1]), .B(control[2]), .C(B[0]), 
         .Z(n7)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i9044_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i3526_4_lut (.A(B[9]), .B(A[9]), .C(n6658), .D(n15219), .Z(n5461)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i3526_4_lut.init = 16'hca0a;
    LUT4 i6_1_lut (.A(control[2]), .Z(n4011)) /* synthesis lut_function=(!(A)) */ ;
    defparam i6_1_lut.init = 16'h5555;
    LUT4 i9022_2_lut_3_lut (.A(control[1]), .B(control[2]), .C(A[4]), 
         .Z(n7_adj_1063)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i9022_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i3524_4_lut (.A(B[8]), .B(A[8]), .C(n6658), .D(n15219), .Z(n5459)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i3524_4_lut.init = 16'hca0a;
    LUT4 mux_237_Mux_14_i15_3_lut_4_lut (.A(control[1]), .B(control[2]), 
         .C(control[3]), .D(control[0]), .Z(n1612[14])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C (D)+!C !(D))+!B (C+!(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam mux_237_Mux_14_i15_3_lut_4_lut.init = 16'h0f40;
    LUT4 i9016_2_lut_3_lut (.A(control[1]), .B(control[2]), .C(A[6]), 
         .Z(n7_adj_1064)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i9016_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i9019_2_lut_3_lut (.A(control[1]), .B(control[2]), .C(A[5]), 
         .Z(n7_adj_1065)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i9019_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i9015_2_lut_3_lut (.A(control[1]), .B(control[2]), .C(A[7]), 
         .Z(n7_adj_1066)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i9015_2_lut_3_lut.init = 16'hb0b0;
    PFUMX mux_237_Mux_15_i15 (.BLUT(n7), .ALUT(n14_adj_1067), .C0(control[3]), 
          .Z(n1612[15])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    LUT4 i3528_4_lut (.A(B[10]), .B(A[10]), .C(n6658), .D(n15219), .Z(n5463)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i3528_4_lut.init = 16'hca0a;
    LUT4 i9035_2_lut_3_lut (.A(control[1]), .B(control[2]), .C(A[0]), 
         .Z(n7_adj_1068)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i9035_2_lut_3_lut.init = 16'hf4f4;
    LUT4 i9031_2_lut_3_lut (.A(control[1]), .B(control[2]), .C(A[1]), 
         .Z(n7_adj_1069)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i9031_2_lut_3_lut.init = 16'hb0b0;
    PFUMX mux_237_Mux_32_i15 (.BLUT(n7_adj_1065), .ALUT(n14_adj_1070), .C0(control[3]), 
          .Z(n1612[32])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    LUT4 i9028_2_lut_3_lut (.A(control[1]), .B(control[2]), .C(A[2]), 
         .Z(n7_adj_1071)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i9028_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i9025_2_lut_3_lut (.A(control[1]), .B(control[2]), .C(A[3]), 
         .Z(n7_adj_1072)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i9025_2_lut_3_lut.init = 16'hb0b0;
    PFUMX mux_237_Mux_39_i15 (.BLUT(n5538), .ALUT(n6139), .C0(control[3]), 
          .Z(n1612[39])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    PFUMX mux_237_Mux_31_i15 (.BLUT(n7_adj_1063), .ALUT(n14_adj_1073), .C0(control[3]), 
          .Z(n1612[31])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    PFUMX mux_237_Mux_38_i15 (.BLUT(n5532), .ALUT(n6137), .C0(control[3]), 
          .Z(n1612[38])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    PFUMX mux_237_Mux_30_i15 (.BLUT(n7_adj_1072), .ALUT(n14_adj_1074), .C0(control[3]), 
          .Z(n1612[30])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    PFUMX mux_237_Mux_29_i15 (.BLUT(n7_adj_1071), .ALUT(n14_adj_1075), .C0(control[3]), 
          .Z(n1612[29])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    PFUMX mux_237_Mux_35_i15 (.BLUT(n5516), .ALUT(n6133), .C0(control[3]), 
          .Z(n1612[35])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    PFUMX mux_237_Mux_28_i15 (.BLUT(n7_adj_1069), .ALUT(n14_c), .C0(control[3]), 
          .Z(n1612[28])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    PFUMX mux_237_Mux_27_i15 (.BLUT(n7_adj_1068), .ALUT(n14_adj_1062), .C0(control[3]), 
          .Z(n1612[27])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    PFUMX mux_237_Mux_34_i15 (.BLUT(n7_adj_1066), .ALUT(n6131), .C0(control[3]), 
          .Z(n1612[34])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    PFUMX mux_237_Mux_33_i15 (.BLUT(n7_adj_1064), .ALUT(n6129), .C0(control[3]), 
          .Z(n1612[33])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    LUT4 control_3__I_0_275_Mux_4_i15_4_lut (.A(n14780), .B(\data_out_23__N_589[4] ), 
         .C(\instruction[0] ), .D(n4), .Z(\ACC[4] )) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(109[2] 125[29])
    defparam control_3__I_0_275_Mux_4_i15_4_lut.init = 16'hc5ca;
    LUT4 i3510_2_lut_rep_345 (.A(control[0]), .B(control[1]), .Z(n15219)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i3510_2_lut_rep_345.init = 16'h8888;
    LUT4 v12_34_7__bdd_2_lut_3_lut (.A(control[0]), .B(control[1]), .C(logic_result[7]), 
         .Z(n15196)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam v12_34_7__bdd_2_lut_3_lut.init = 16'h7070;
    LUT4 n14750_bdd_2_lut_3_lut (.A(control[0]), .B(control[1]), .C(logic_result[9]), 
         .Z(n15184)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam n14750_bdd_2_lut_3_lut.init = 16'h7070;
    LUT4 control_1__bdd_4_lut_12484 (.A(control[1]), .B(control[0]), .C(A[11]), 
         .D(B[11]), .Z(n14528)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_12484.init = 16'h5660;
    LUT4 control_1__bdd_4_lut_12492 (.A(control[1]), .B(control[0]), .C(A[7]), 
         .D(B[7]), .Z(n14539)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_12492.init = 16'h5660;
    LUT4 control_1__bdd_4_lut_12489 (.A(control[1]), .B(control[0]), .C(A[10]), 
         .D(B[10]), .Z(n14531)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_12489.init = 16'h5660;
    LUT4 v12_34_6__bdd_2_lut_3_lut (.A(control[0]), .B(control[1]), .C(logic_result[6]), 
         .Z(n15204)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam v12_34_6__bdd_2_lut_3_lut.init = 16'h7070;
    LUT4 control_1__bdd_4_lut_12491 (.A(control[1]), .B(control[0]), .C(A[8]), 
         .D(B[8]), .Z(n14538)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_12491.init = 16'h5660;
    LUT4 control_1__bdd_4_lut_12490 (.A(control[1]), .B(control[0]), .C(A[9]), 
         .D(B[9]), .Z(n14537)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_12490.init = 16'h5660;
    LUT4 v12_2__bdd_2_lut_12667_3_lut (.A(control[0]), .B(control[1]), .C(logic_result[2]), 
         .Z(n14949)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam v12_2__bdd_2_lut_12667_3_lut.init = 16'h7070;
    LUT4 B_7__bdd_4_lut_12475 (.A(B[7]), .B(control[0]), .C(A[7]), .D(control[1]), 
         .Z(n14323)) /* synthesis lut_function=(A (B (C (D))+!B !(D))+!A (B (C (D)))) */ ;
    defparam B_7__bdd_4_lut_12475.init = 16'hc022;
    LUT4 control_1__bdd_4_lut_12493 (.A(control[1]), .B(control[0]), .C(A[6]), 
         .D(B[6]), .Z(n14540)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_12493.init = 16'h5660;
    LUT4 control_1__bdd_4_lut_12494 (.A(control[1]), .B(control[0]), .C(A[5]), 
         .D(B[5]), .Z(n14541)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_12494.init = 16'h5660;
    LUT4 control_1__bdd_4_lut_12495 (.A(control[1]), .B(control[0]), .C(A[4]), 
         .D(B[4]), .Z(n14542)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_12495.init = 16'h5660;
    LUT4 control_1__bdd_4_lut_12496 (.A(control[1]), .B(control[0]), .C(A[3]), 
         .D(B[3]), .Z(n14543)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_12496.init = 16'h5660;
    LUT4 control_1__bdd_4_lut (.A(control[1]), .B(control[0]), .C(A[2]), 
         .D(B[2]), .Z(n14544)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut.init = 16'h5660;
    LUT4 intermediate_carry_10__bdd_2_lut_12736_3_lut (.A(control[0]), .B(control[1]), 
         .C(logic_result[11]), .Z(n15172)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam intermediate_carry_10__bdd_2_lut_12736_3_lut.init = 16'h7070;
    LUT4 i8958_4_lut_4_lut (.A(control[0]), .B(control[1]), .C(control[3]), 
         .D(control[2]), .Z(n1612[13])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (B (C)+!B !((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i8958_4_lut_4_lut.init = 16'h1f8f;
    LUT4 mux_237_Mux_32_i14_4_lut_4_lut (.A(A[5]), .B(control[0]), .C(control[1]), 
         .D(control[2]), .Z(n14_adj_1070)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(((D)+!C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam mux_237_Mux_32_i14_4_lut_4_lut.init = 16'ha840;
    LUT4 i9221_3_lut_4_lut (.A(control[0]), .B(control[1]), .C(control[2]), 
         .D(A[8]), .Z(n6133)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i9221_3_lut_4_lut.init = 16'h8008;
    LUT4 i9220_3_lut_4_lut (.A(control[0]), .B(control[1]), .C(control[2]), 
         .D(A[9]), .Z(n6135)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i9220_3_lut_4_lut.init = 16'h8008;
    LUT4 i9218_3_lut_4_lut (.A(control[0]), .B(control[1]), .C(control[2]), 
         .D(A[11]), .Z(n6139)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i9218_3_lut_4_lut.init = 16'h8008;
    LUT4 i8960_3_lut_4_lut (.A(control[0]), .B(control[1]), .C(control[2]), 
         .D(A[6]), .Z(n6129)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i8960_3_lut_4_lut.init = 16'h8008;
    LUT4 i9222_3_lut_4_lut (.A(control[0]), .B(control[1]), .C(control[2]), 
         .D(A[7]), .Z(n6131)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i9222_3_lut_4_lut.init = 16'h8008;
    LUT4 i9219_3_lut_4_lut (.A(control[0]), .B(control[1]), .C(control[2]), 
         .D(A[10]), .Z(n6137)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i9219_3_lut_4_lut.init = 16'h8008;
    LUT4 control_1__bdd_4_lut_12482 (.A(control[1]), .B(control[0]), .C(A[0]), 
         .D(B[0]), .Z(n14376)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_12482.init = 16'h5660;
    LUT4 i2_3_lut_rep_284_4_lut (.A(control[0]), .B(control[1]), .C(control[2]), 
         .D(control[3]), .Z(control_3_derived_24)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (C+!(D))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i2_3_lut_rep_284_4_lut.init = 16'hf8ff;
    LUT4 i9306_1_lut_3_lut_4_lut (.A(control[0]), .B(control[1]), .C(control[2]), 
         .D(control[3]), .Z(n1612[11])) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i9306_1_lut_3_lut_4_lut.init = 16'h0700;
    LUT4 mux_237_Mux_31_i14_4_lut_4_lut (.A(A[4]), .B(control[0]), .C(control[1]), 
         .D(control[2]), .Z(n14_adj_1073)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(((D)+!C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam mux_237_Mux_31_i14_4_lut_4_lut.init = 16'ha840;
    LUT4 n14760_bdd_2_lut_3_lut (.A(control[0]), .B(control[1]), .C(logic_result[8]), 
         .Z(n15190)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam n14760_bdd_2_lut_3_lut.init = 16'h7070;
    LUT4 control_1__bdd_4_lut_12390 (.A(control[1]), .B(control[0]), .C(A[1]), 
         .D(B[1]), .Z(n14318)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_12390.init = 16'h5660;
    LUT4 i9014_2_lut (.A(A[8]), .B(control[1]), .Z(n5516)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i9014_2_lut.init = 16'h8888;
    LUT4 mux_237_Mux_30_i14_4_lut_4_lut (.A(A[3]), .B(control[0]), .C(control[1]), 
         .D(control[2]), .Z(n14_adj_1074)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(((D)+!C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam mux_237_Mux_30_i14_4_lut_4_lut.init = 16'ha840;
    LUT4 i9010_2_lut (.A(A[10]), .B(control[1]), .Z(n5532)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i9010_2_lut.init = 16'h8888;
    LUT4 i9013_2_lut (.A(A[9]), .B(control[1]), .Z(n5524)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i9013_2_lut.init = 16'h8888;
    LUT4 i9009_2_lut (.A(A[11]), .B(control[1]), .Z(n5538)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i9009_2_lut.init = 16'h8888;
    LUT4 i9149_4_lut (.A(B[0]), .B(control[2]), .C(A[0]), .D(n15219), 
         .Z(n14_adj_1067)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i9149_4_lut.init = 16'hc088;
    LUT4 control_3__I_0_275_Mux_1_i15_4_lut (.A(n14810), .B(\data_out_23__N_589[1] ), 
         .C(\instruction[0] ), .D(n4_adj_1076), .Z(\ACC[1] )) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(109[2] 125[29])
    defparam control_3__I_0_275_Mux_1_i15_4_lut.init = 16'hc5ca;
    LUT4 i9150_4_lut (.A(B[1]), .B(control[2]), .C(A[1]), .D(n15219), 
         .Z(n14_adj_1077)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i9150_4_lut.init = 16'hc088;
    LUT4 i3492_2_lut (.A(control[2]), .B(control[3]), .Z(n5425)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i3492_2_lut.init = 16'hbbbb;
    LUT4 i9151_4_lut (.A(B[2]), .B(control[2]), .C(A[2]), .D(n15219), 
         .Z(n14_adj_1078)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i9151_4_lut.init = 16'hc088;
    LUT4 n1493_bdd_2_lut_12362 (.A(n14323), .B(control[2]), .Z(n14324)) /* synthesis lut_function=(A (B)) */ ;
    defparam n1493_bdd_2_lut_12362.init = 16'h8888;
    LUT4 i9152_4_lut (.A(B[3]), .B(control[2]), .C(A[3]), .D(n15219), 
         .Z(n14_adj_1079)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i9152_4_lut.init = 16'hc088;
    LUT4 i9153_4_lut (.A(B[4]), .B(control[2]), .C(A[4]), .D(n15219), 
         .Z(n14_adj_1080)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i9153_4_lut.init = 16'hc088;
    LUT4 B_7__bdd_4_lut_4_lut (.A(n14828), .B(control[3]), .C(n14324), 
         .D(B[7]), .Z(n1612[22])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam B_7__bdd_4_lut_4_lut.init = 16'hd1c0;
    LUT4 B_1__bdd_4_lut_4_lut (.A(n14828), .B(control[3]), .C(n14_adj_1077), 
         .D(B[1]), .Z(n1612[16])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam B_1__bdd_4_lut_4_lut.init = 16'hd1c0;
    LUT4 B_2__bdd_4_lut_4_lut (.A(n14828), .B(control[3]), .C(n14_adj_1078), 
         .D(B[2]), .Z(n1612[17])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam B_2__bdd_4_lut_4_lut.init = 16'hd1c0;
    LUT4 B_3__bdd_4_lut_4_lut (.A(n14828), .B(control[3]), .C(n14_adj_1079), 
         .D(B[3]), .Z(n1612[18])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam B_3__bdd_4_lut_4_lut.init = 16'hd1c0;
    LUT4 B_6__bdd_4_lut_4_lut (.A(n14828), .B(control[3]), .C(n14338), 
         .D(B[6]), .Z(n1612[21])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam B_6__bdd_4_lut_4_lut.init = 16'hd1c0;
    LUT4 B_5__bdd_4_lut_4_lut (.A(n14828), .B(control[3]), .C(n14_adj_1081), 
         .D(B[5]), .Z(n1612[20])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam B_5__bdd_4_lut_4_lut.init = 16'hd1c0;
    LUT4 B_4__bdd_4_lut_4_lut (.A(n14828), .B(control[3]), .C(n14_adj_1080), 
         .D(B[4]), .Z(n1612[19])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam B_4__bdd_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i9154_4_lut (.A(B[5]), .B(control[2]), .C(A[5]), .D(n15219), 
         .Z(n14_adj_1081)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i9154_4_lut.init = 16'hc088;
    LUT4 i12240_3_lut_4_lut_4_lut (.A(n15219), .B(n13931), .C(control[2]), 
         .D(logic_result[4]), .Z(n14)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i12240_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i12225_3_lut_4_lut_4_lut (.A(n15219), .B(n13940), .C(control[2]), 
         .D(logic_result[1]), .Z(n14_adj_2)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i12225_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 n10947_bdd_4_lut_4_lut (.A(n15219), .B(control[2]), .C(n14370), 
         .D(logic_result[0]), .Z(n14630)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam n10947_bdd_4_lut_4_lut.init = 16'hd1c0;
    LUT4 mux_237_Mux_29_i14_4_lut_4_lut (.A(A[2]), .B(control[0]), .C(control[1]), 
         .D(control[2]), .Z(n14_adj_1075)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(((D)+!C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam mux_237_Mux_29_i14_4_lut_4_lut.init = 16'ha840;
    LUT4 n1493_bdd_2_lut_12370 (.A(n14337), .B(control[2]), .Z(n14338)) /* synthesis lut_function=(A (B)) */ ;
    defparam n1493_bdd_2_lut_12370.init = 16'h8888;
    LUT4 B_6__bdd_4_lut_12534 (.A(B[6]), .B(control[0]), .C(A[6]), .D(control[1]), 
         .Z(n14337)) /* synthesis lut_function=(A (B (C (D))+!B !(D))+!A (B (C (D)))) */ ;
    defparam B_6__bdd_4_lut_12534.init = 16'hc022;
    LUT4 i3530_4_lut (.A(B[11]), .B(A[11]), .C(n6658), .D(n15219), .Z(n5465)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i3530_4_lut.init = 16'hca0a;
    LUT4 intermediate_carry_10__bdd_2_lut_3_lut (.A(control[0]), .B(control[1]), 
         .C(logic_result[10]), .Z(n15178)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam intermediate_carry_10__bdd_2_lut_3_lut.init = 16'h7070;
    LUT4 i9303_2_lut_3_lut (.A(control[0]), .B(control[1]), .C(control[3]), 
         .Z(n6658)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i9303_2_lut_3_lut.init = 16'he0e0;
    LUT4 v12_34_5__bdd_2_lut_3_lut (.A(control[0]), .B(control[1]), .C(logic_result[5]), 
         .Z(n15210)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam v12_34_5__bdd_2_lut_3_lut.init = 16'h7070;
    multi6 imp_multi (.\A_temp[0] (A_temp[0]), .\B_temp[1] (B_temp_c[1]), 
           .n14827(n14827), .n13940(n13940), .\B_temp[2] (\B_temp[2] ), 
           .\v12[2] (\v12[2] ), .n14791(n14791), .\A_temp[1] (A_temp_c[1]), 
           .\B_temp[3] (\B_temp[3] ), .n14803(n14803), .\A_temp[3] (\A_temp[3] ), 
           .\B_temp[0] (B_temp[0]), .\v12[3] (\v12[3] ), .\A_temp[2] (\A_temp[2] ), 
           .\B_temp[5] (\B_temp[5] ), .\B_temp[4] (B_temp_c[4]), .\A_temp[5] (\A_temp[5] ), 
           .\A_temp[4] (A_temp_c[4]), .\v12_34[9] (\v12_34[9] ), .n14860(n14860), 
           .\v12_34[4] (v12_34[4]), .n14783(n14783), .\v56[8] (\v56[8] ), 
           .n14815(n14815), .\v56[7] (\v56[7] ), .n14769(n14769), .\v56[9] (\v56[9] ), 
           .\SumRest_11__N_989[10] (\SumRest_11__N_989[10] ), .n14750(n14750), 
           .\intermediate_carry[10] (\intermediate_carry[10] ), .n14760(n14760), 
           .\v12_34[8] (\v12_34[8] ), .n14766(n14766), .\v12_34[7] (\v12_34[7] ), 
           .\v56[6] (\v56[6] ), .n14777(n14777), .\v12_34[6] (\v12_34[6] ), 
           .\v12_34[5] (\v12_34[5] ));   // c:/users/cassandra/desktop/arqui2/alu.vhd(43[13:19])
    SumRest12Bits_U4 imp_add_sub_12 (.A_temp({\A_temp[11] , \A_temp[10] , 
            \A_temp[9] , \A_temp[8] , \A_temp[7] , \A_temp[6] , \A_temp[5] , 
            A_temp_c[4], \A_temp[3] , \A_temp[2] , A_temp_c[1], A_temp[0]}), 
            .n14795(n14795), .B_temp({\B_temp[11] , \B_temp[10] , \B_temp[9] , 
            \B_temp[8] , \B_temp[7] , \B_temp[6] , \B_temp[5] , B_temp_c[4], 
            \B_temp[3] , \B_temp[2] , B_temp_c[1], B_temp[0]}), .substract(substract), 
            .n14746(n14746), .n14740(n14740), .n14733(n14733), .\intermediate_carry[11] (\intermediate_carry[11] ), 
            .n14786(n14786), .C(C), .n14780(n14780), .n14810(n14810), 
            .n4(n4_adj_1076), .n14770(n14770), .n4_adj_1(n4), .n14761(n14761), 
            .n14753(n14753));   // c:/users/cassandra/desktop/arqui2/alu.vhd(42[18:31])
    
endmodule
//
// Verilog Description of module multi6
//

module multi6 (\A_temp[0] , \B_temp[1] , n14827, n13940, \B_temp[2] , 
            \v12[2] , n14791, \A_temp[1] , \B_temp[3] , n14803, \A_temp[3] , 
            \B_temp[0] , \v12[3] , \A_temp[2] , \B_temp[5] , \B_temp[4] , 
            \A_temp[5] , \A_temp[4] , \v12_34[9] , n14860, \v12_34[4] , 
            n14783, \v56[8] , n14815, \v56[7] , n14769, \v56[9] , 
            \SumRest_11__N_989[10] , n14750, \intermediate_carry[10] , 
            n14760, \v12_34[8] , n14766, \v12_34[7] , \v56[6] , n14777, 
            \v12_34[6] , \v12_34[5] );
    input \A_temp[0] ;
    input \B_temp[1] ;
    input n14827;
    output n13940;
    input \B_temp[2] ;
    output \v12[2] ;
    output n14791;
    input \A_temp[1] ;
    input \B_temp[3] ;
    output n14803;
    input \A_temp[3] ;
    input \B_temp[0] ;
    output \v12[3] ;
    input \A_temp[2] ;
    input \B_temp[5] ;
    input \B_temp[4] ;
    input \A_temp[5] ;
    input \A_temp[4] ;
    output \v12_34[9] ;
    output n14860;
    output \v12_34[4] ;
    output n14783;
    output \v56[8] ;
    output n14815;
    output \v56[7] ;
    output n14769;
    output \v56[9] ;
    output \SumRest_11__N_989[10] ;
    output n14750;
    output \intermediate_carry[10] ;
    output n14760;
    output \v12_34[8] ;
    output n14766;
    output \v12_34[7] ;
    output \v56[6] ;
    output n14777;
    output \v12_34[6] ;
    output \v12_34[5] ;
    
    wire [11:0]v1;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(20[12:14])
    
    wire n14822, n14826, n14802, n14798;
    wire [11:0]v6;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(20[32:34])
    wire [11:0]v5;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(20[28:30])
    wire [11:0]v2;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(20[16:18])
    wire [11:0]SumRest_11__N_989;
    wire [11:0]v4;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(20[24:26])
    
    wire n14757, n14781, n14787;
    wire [11:0]v34;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(21[17:20])
    
    wire n14856, n14814, n14796, n14797, n14788, n14782;
    wire [11:0]v12;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(21[12:15])
    
    wire n14789, n14784, n14863, n14864, n14865, n14799, n14765, 
        n14912, n14915, n14776, n14006;
    
    LUT4 i1_3_lut_4_lut (.A(\A_temp[0] ), .B(\B_temp[1] ), .C(n14827), 
         .D(v1[1]), .Z(n13940)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(24[22:35])
    defparam i1_3_lut_4_lut.init = 16'h7080;
    LUT4 A_5__I_0_48_i1_2_lut_rep_300 (.A(\A_temp[0] ), .B(\B_temp[2] ), 
         .Z(n14822)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(25[21:34])
    defparam A_5__I_0_48_i1_2_lut_rep_300.init = 16'h8888;
    LUT4 and_92_i3_2_lut_rep_269_3_lut (.A(\A_temp[0] ), .B(\B_temp[2] ), 
         .C(\v12[2] ), .Z(n14791)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(25[21:34])
    defparam and_92_i3_2_lut_rep_269_3_lut.init = 16'h8080;
    LUT4 A_11__I_0_i4_2_lut_rep_281_3_lut_4_lut (.A(\A_temp[1] ), .B(\B_temp[2] ), 
         .C(\B_temp[3] ), .D(\A_temp[0] ), .Z(n14803)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(25[21:34])
    defparam A_11__I_0_i4_2_lut_rep_281_3_lut_4_lut.init = 16'h7888;
    LUT4 i2_3_lut_4_lut (.A(\A_temp[3] ), .B(\B_temp[0] ), .C(n14826), 
         .D(n14802), .Z(\v12[3] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(23[23:36])
    defparam i2_3_lut_4_lut.init = 16'h8778;
    LUT4 intermediate_carry_12__I_0_99_i4_4_lut_3_lut_rep_276_4_lut (.A(\A_temp[3] ), 
         .B(\B_temp[0] ), .C(n14802), .D(n14826), .Z(n14798)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(23[23:36])
    defparam intermediate_carry_12__I_0_99_i4_4_lut_3_lut_rep_276_4_lut.init = 16'hf880;
    LUT4 A_5__I_0_47_i3_2_lut_rep_304 (.A(\A_temp[2] ), .B(\B_temp[1] ), 
         .Z(n14826)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(24[22:35])
    defparam A_5__I_0_47_i3_2_lut_rep_304.init = 16'h8888;
    LUT4 A_5__I_0_i4_2_lut (.A(\A_temp[3] ), .B(\B_temp[5] ), .Z(v6[8])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(28[18:31])
    defparam A_5__I_0_i4_2_lut.init = 16'h8888;
    LUT4 A_5__I_0_50_i4_2_lut (.A(\A_temp[3] ), .B(\B_temp[4] ), .Z(v5[7])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(27[19:32])
    defparam A_5__I_0_50_i4_2_lut.init = 16'h8888;
    LUT4 A_5__I_0_50_i3_2_lut (.A(\A_temp[2] ), .B(\B_temp[4] ), .Z(v5[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(27[19:32])
    defparam A_5__I_0_50_i3_2_lut.init = 16'h8888;
    LUT4 A_5__I_0_47_i4_2_lut (.A(\A_temp[3] ), .B(\B_temp[1] ), .Z(v2[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(24[22:35])
    defparam A_5__I_0_47_i4_2_lut.init = 16'h8888;
    LUT4 A_5__I_0_47_i6_2_lut (.A(\A_temp[5] ), .B(\B_temp[1] ), .Z(SumRest_11__N_989[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(24[22:35])
    defparam A_5__I_0_47_i6_2_lut.init = 16'h8888;
    LUT4 A_5__I_0_47_i5_2_lut (.A(\A_temp[4] ), .B(\B_temp[1] ), .Z(v2[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(24[22:35])
    defparam A_5__I_0_47_i5_2_lut.init = 16'h8888;
    LUT4 A_5__I_0_49_i4_2_lut (.A(\A_temp[3] ), .B(\B_temp[3] ), .Z(v4[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(26[20:33])
    defparam A_5__I_0_49_i4_2_lut.init = 16'h8888;
    LUT4 A_5__I_0_49_i5_2_lut (.A(\A_temp[4] ), .B(\B_temp[3] ), .Z(v4[7])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(26[20:33])
    defparam A_5__I_0_49_i5_2_lut.init = 16'h8888;
    LUT4 A_5__I_0_50_i6_2_lut (.A(\A_temp[5] ), .B(\B_temp[4] ), .Z(v5[9])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(27[19:32])
    defparam A_5__I_0_50_i6_2_lut.init = 16'h8888;
    LUT4 SumRest_11__I_0_i10_4_lut_3_lut_4_lut (.A(\A_temp[5] ), .B(\B_temp[3] ), 
         .C(n14757), .D(n14781), .Z(\v12_34[9] )) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(26[20:33])
    defparam SumRest_11__I_0_i10_4_lut_3_lut_4_lut.init = 16'hf880;
    LUT4 intermediate_carry_12__I_0_99_i8_4_lut_3_lut_rep_259_4_lut (.A(\A_temp[5] ), 
         .B(\B_temp[2] ), .C(n14787), .D(v4[7]), .Z(n14781)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(25[21:34])
    defparam intermediate_carry_12__I_0_99_i8_4_lut_3_lut_rep_259_4_lut.init = 16'hf880;
    LUT4 i2_3_lut_4_lut_adj_71 (.A(\A_temp[5] ), .B(\B_temp[2] ), .C(v4[7]), 
         .D(n14787), .Z(v34[7])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(25[21:34])
    defparam i2_3_lut_4_lut_adj_71.init = 16'h8778;
    LUT4 i2_3_lut_rep_274_4_lut (.A(\A_temp[3] ), .B(\B_temp[2] ), .C(n14856), 
         .D(n14814), .Z(n14796)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(25[21:34])
    defparam i2_3_lut_rep_274_4_lut.init = 16'h8778;
    LUT4 intermediate_carry_12__I_0_99_i6_4_lut_3_lut_rep_275_4_lut (.A(\A_temp[3] ), 
         .B(\B_temp[2] ), .C(n14814), .D(n14856), .Z(n14797)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(25[21:34])
    defparam intermediate_carry_12__I_0_99_i6_4_lut_3_lut_rep_275_4_lut.init = 16'hf880;
    LUT4 A_5__I_0_49_i3_2_lut_rep_334 (.A(\A_temp[2] ), .B(\B_temp[3] ), 
         .Z(n14856)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(26[20:33])
    defparam A_5__I_0_49_i3_2_lut_rep_334.init = 16'h8888;
    LUT4 i2_3_lut_4_lut_adj_72 (.A(\A_temp[4] ), .B(\B_temp[2] ), .C(v4[6]), 
         .D(n14797), .Z(v34[6])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(25[21:34])
    defparam i2_3_lut_4_lut_adj_72.init = 16'h8778;
    LUT4 intermediate_carry_12__I_0_99_i7_4_lut_3_lut_rep_265_4_lut (.A(\A_temp[4] ), 
         .B(\B_temp[2] ), .C(n14797), .D(v4[6]), .Z(n14787)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(25[21:34])
    defparam intermediate_carry_12__I_0_99_i7_4_lut_3_lut_rep_265_4_lut.init = 16'hf880;
    LUT4 intermediate_carry_12__I_0_99_i6_4_lut_3_lut_rep_260_4_lut (.A(\A_temp[5] ), 
         .B(\B_temp[0] ), .C(n14788), .D(v2[5]), .Z(n14782)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(23[23:36])
    defparam intermediate_carry_12__I_0_99_i6_4_lut_3_lut_rep_260_4_lut.init = 16'hf880;
    LUT4 i2_3_lut_4_lut_adj_73 (.A(\A_temp[5] ), .B(\B_temp[0] ), .C(v2[5]), 
         .D(n14788), .Z(v12[5])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(23[23:36])
    defparam i2_3_lut_4_lut_adj_73.init = 16'h8778;
    LUT4 i2_3_lut_4_lut_adj_74 (.A(\A_temp[4] ), .B(\B_temp[0] ), .C(v2[4]), 
         .D(n14798), .Z(v12[4])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(23[23:36])
    defparam i2_3_lut_4_lut_adj_74.init = 16'h8778;
    LUT4 intermediate_carry_12__I_0_99_i5_4_lut_3_lut_rep_266_4_lut (.A(\A_temp[4] ), 
         .B(\B_temp[0] ), .C(n14798), .D(v2[4]), .Z(n14788)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(23[23:36])
    defparam intermediate_carry_12__I_0_99_i5_4_lut_3_lut_rep_266_4_lut.init = 16'hf880;
    LUT4 A_5__I_0_50_i1_2_lut_rep_338 (.A(\A_temp[0] ), .B(\B_temp[4] ), 
         .Z(n14860)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(27[19:32])
    defparam A_5__I_0_50_i1_2_lut_rep_338.init = 16'h8888;
    LUT4 and_92_i5_2_lut_rep_261_3_lut (.A(\A_temp[0] ), .B(\B_temp[4] ), 
         .C(\v12_34[4] ), .Z(n14783)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(27[19:32])
    defparam and_92_i5_2_lut_rep_261_3_lut.init = 16'h8080;
    LUT4 intermediate_carry_12__I_0_99_i9_4_lut_3_lut_rep_262_4_lut (.A(\A_temp[4] ), 
         .B(\B_temp[4] ), .C(n14789), .D(v6[8]), .Z(n14784)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(27[19:32])
    defparam intermediate_carry_12__I_0_99_i9_4_lut_3_lut_rep_262_4_lut.init = 16'hf880;
    LUT4 i2_3_lut_4_lut_adj_75 (.A(\A_temp[4] ), .B(\B_temp[4] ), .C(v6[8]), 
         .D(n14789), .Z(\v56[8] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(27[19:32])
    defparam i2_3_lut_4_lut_adj_75.init = 16'h8778;
    LUT4 A_5__I_0_i1_2_lut_rep_341 (.A(\A_temp[0] ), .B(\B_temp[5] ), .Z(n14863)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(28[18:31])
    defparam A_5__I_0_i1_2_lut_rep_341.init = 16'h8888;
    LUT4 A_5__I_0_50_i2_2_lut_rep_342 (.A(\A_temp[1] ), .B(\B_temp[4] ), 
         .Z(n14864)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(27[19:32])
    defparam A_5__I_0_50_i2_2_lut_rep_342.init = 16'h8888;
    LUT4 A_11__I_0_i6_2_lut_rep_293_3_lut_4_lut (.A(\A_temp[1] ), .B(\B_temp[4] ), 
         .C(\B_temp[5] ), .D(\A_temp[0] ), .Z(n14815)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(27[19:32])
    defparam A_11__I_0_i6_2_lut_rep_293_3_lut_4_lut.init = 16'h7888;
    LUT4 A_5__I_0_i2_2_lut_rep_343 (.A(\A_temp[1] ), .B(\B_temp[5] ), .Z(n14865)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(28[18:31])
    defparam A_5__I_0_i2_2_lut_rep_343.init = 16'h8888;
    LUT4 intermediate_carry_12__I_0_99_i8_4_lut_3_lut_rep_267_4_lut (.A(\A_temp[2] ), 
         .B(\B_temp[5] ), .C(v5[7]), .D(n14799), .Z(n14789)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(28[18:31])
    defparam intermediate_carry_12__I_0_99_i8_4_lut_3_lut_rep_267_4_lut.init = 16'hf880;
    LUT4 i2_3_lut_4_lut_adj_76 (.A(\A_temp[2] ), .B(\B_temp[5] ), .C(v5[7]), 
         .D(n14799), .Z(\v56[7] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(28[18:31])
    defparam i2_3_lut_4_lut_adj_76.init = 16'h8778;
    LUT4 A_5__I_0_46_i2_2_lut (.A(\A_temp[1] ), .B(\B_temp[0] ), .Z(v1[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(23[23:36])
    defparam A_5__I_0_46_i2_2_lut.init = 16'h8888;
    LUT4 intermediate_carry_12__I_0_99_i10_4_lut_3_lut_rep_247_4_lut (.A(\A_temp[4] ), 
         .B(\B_temp[5] ), .C(v5[9]), .D(n14784), .Z(n14769)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(28[18:31])
    defparam intermediate_carry_12__I_0_99_i10_4_lut_3_lut_rep_247_4_lut.init = 16'hf880;
    LUT4 i2_3_lut_4_lut_adj_77 (.A(\A_temp[4] ), .B(\B_temp[5] ), .C(v5[9]), 
         .D(n14784), .Z(\v56[9] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(28[18:31])
    defparam i2_3_lut_4_lut_adj_77.init = 16'h8778;
    LUT4 A_5__I_0_i6_2_lut (.A(\A_temp[5] ), .B(\B_temp[5] ), .Z(\SumRest_11__N_989[10] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(28[18:31])
    defparam A_5__I_0_i6_2_lut.init = 16'h8888;
    SumRest12Bits adder5 (.\v56[9] (\v56[9] ), .n14750(n14750), .\v12_34[9] (\v12_34[9] ), 
            .\intermediate_carry[10] (\intermediate_carry[10] ), .\v56[8] (\v56[8] ), 
            .n14760(n14760), .\v12_34[8] (\v12_34[8] ), .\v56[7] (\v56[7] ), 
            .n14766(n14766), .\v12_34[7] (\v12_34[7] ), .\v56[6] (\v56[6] ), 
            .n14777(n14777), .\v12_34[6] (\v12_34[6] ), .\v12_34[4] (\v12_34[4] ), 
            .n14860(n14860), .\v12_34[5] (\v12_34[5] ), .n14815(n14815));   // c:/users/cassandra/desktop/arqui2/multi6.vhd(34[13:26])
    SumRest12Bits_U0 adder4 (.\v34[4] (v34[4]), .\v12[4] (v12[4]), .\v12_34[4] (\v12_34[4] ), 
            .n14796(n14796), .\v12[5] (v12[5]), .\v12_34[5] (\v12_34[5] ), 
            .\v34[7] (v34[7]), .n14765(n14765), .n14912(n14912), .n14915(n14915), 
            .\v12_34[8] (\v12_34[8] ), .n14776(n14776), .n14803(n14803), 
            .n14791(n14791), .\v12[3] (\v12[3] ), .\v12[2] (\v12[2] ), 
            .n14822(n14822));   // c:/users/cassandra/desktop/arqui2/multi6.vhd(33[13:26])
    SumRest12Bits_U1 adder3 (.n14864(n14864), .n14863(n14863), .\v5[6] (v5[6]), 
            .n14865(n14865), .\v56[6] (\v56[6] ), .n14799(n14799));   // c:/users/cassandra/desktop/arqui2/multi6.vhd(32[13:26])
    SumRest12Bits_U2 adder2 (.\B_temp[2] (\B_temp[2] ), .\A_temp[5] (\A_temp[5] ), 
            .\B_temp[3] (\B_temp[3] ), .\A_temp[4] (\A_temp[4] ), .\A_temp[1] (\A_temp[1] ), 
            .\A_temp[0] (\A_temp[0] ), .\A_temp[2] (\A_temp[2] ), .\v34[4] (v34[4]), 
            .n14006(n14006), .n14814(n14814), .n14787(n14787), .n14915(n14915));   // c:/users/cassandra/desktop/arqui2/multi6.vhd(31[13:26])
    SumRest12Bits_U3 adder1 (.\B_temp[1] (\B_temp[1] ), .\A_temp[2] (\A_temp[2] ), 
            .\A_temp[0] (\A_temp[0] ), .\B_temp[0] (\B_temp[0] ), .\A_temp[5] (\A_temp[5] ), 
            .\A_temp[4] (\A_temp[4] ), .\SumRest_11__N_989[6] (SumRest_11__N_989[6]), 
            .n14782(n14782), .n14765(n14765), .\v34[7] (v34[7]), .n14757(n14757), 
            .\v12_34[7] (\v12_34[7] ), .n14776(n14776), .\v34[6] (v34[6]), 
            .\v12_34[6] (\v12_34[6] ), .n14006(n14006), .n14802(n14802), 
            .n14788(n14788), .n14912(n14912), .\A_temp[1] (\A_temp[1] ), 
            .\v12[2] (\v12[2] ));   // c:/users/cassandra/desktop/arqui2/multi6.vhd(30[13:26])
    
endmodule
//
// Verilog Description of module SumRest12Bits
//

module SumRest12Bits (\v56[9] , n14750, \v12_34[9] , \intermediate_carry[10] , 
            \v56[8] , n14760, \v12_34[8] , \v56[7] , n14766, \v12_34[7] , 
            \v56[6] , n14777, \v12_34[6] , \v12_34[4] , n14860, \v12_34[5] , 
            n14815);
    input \v56[9] ;
    output n14750;
    input \v12_34[9] ;
    output \intermediate_carry[10] ;
    input \v56[8] ;
    output n14760;
    input \v12_34[8] ;
    input \v56[7] ;
    output n14766;
    input \v12_34[7] ;
    input \v56[6] ;
    output n14777;
    input \v12_34[6] ;
    input \v12_34[4] ;
    input n14860;
    input \v12_34[5] ;
    input n14815;
    
    
    LUT4 intermediate_carry_12__I_0_99_i10_4_lut_3_lut (.A(\v56[9] ), .B(n14750), 
         .C(\v12_34[9] ), .Z(\intermediate_carry[10] )) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(39[32:87])
    defparam intermediate_carry_12__I_0_99_i10_4_lut_3_lut.init = 16'he8e8;
    LUT4 intermediate_carry_12__I_0_99_i9_4_lut_3_lut_rep_228 (.A(\v56[8] ), 
         .B(n14760), .C(\v12_34[8] ), .Z(n14750)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(39[32:87])
    defparam intermediate_carry_12__I_0_99_i9_4_lut_3_lut_rep_228.init = 16'he8e8;
    LUT4 intermediate_carry_12__I_0_99_i8_4_lut_3_lut_rep_238 (.A(\v56[7] ), 
         .B(n14766), .C(\v12_34[7] ), .Z(n14760)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(39[32:87])
    defparam intermediate_carry_12__I_0_99_i8_4_lut_3_lut_rep_238.init = 16'he8e8;
    LUT4 intermediate_carry_12__I_0_99_i7_4_lut_3_lut_rep_244 (.A(\v56[6] ), 
         .B(n14777), .C(\v12_34[6] ), .Z(n14766)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(39[32:87])
    defparam intermediate_carry_12__I_0_99_i7_4_lut_3_lut_rep_244.init = 16'he8e8;
    LUT4 intermediate_carry_12__I_0_99_i6_4_lut_3_lut_rep_255_4_lut (.A(\v12_34[4] ), 
         .B(n14860), .C(\v12_34[5] ), .D(n14815), .Z(n14777)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(39[33:50])
    defparam intermediate_carry_12__I_0_99_i6_4_lut_3_lut_rep_255_4_lut.init = 16'hf880;
    
endmodule
//
// Verilog Description of module SumRest12Bits_U0
//

module SumRest12Bits_U0 (\v34[4] , \v12[4] , \v12_34[4] , n14796, \v12[5] , 
            \v12_34[5] , \v34[7] , n14765, n14912, n14915, \v12_34[8] , 
            n14776, n14803, n14791, \v12[3] , \v12[2] , n14822);
    input \v34[4] ;
    input \v12[4] ;
    output \v12_34[4] ;
    input n14796;
    input \v12[5] ;
    output \v12_34[5] ;
    input \v34[7] ;
    input n14765;
    input n14912;
    input n14915;
    output \v12_34[8] ;
    output n14776;
    input n14803;
    input n14791;
    input \v12[3] ;
    input \v12[2] ;
    input n14822;
    
    
    wire n14790, n3845;
    wire [12:0]intermediate_carry;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(18[8:26])
    
    LUT4 i2_3_lut (.A(n14790), .B(\v34[4] ), .C(\v12[4] ), .Z(\v12_34[4] )) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(38[19:62])
    defparam i2_3_lut.init = 16'h9696;
    LUT4 intermediate_carry_12__I_0_99_i5_4_lut (.A(\v12[4] ), .B(\v34[4] ), 
         .C(n3845), .D(n14790), .Z(intermediate_carry[5])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(39[32:127])
    defparam intermediate_carry_12__I_0_99_i5_4_lut.init = 16'heca0;
    LUT4 i2_3_lut_adj_70 (.A(intermediate_carry[5]), .B(n14796), .C(\v12[5] ), 
         .Z(\v12_34[5] )) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(38[19:62])
    defparam i2_3_lut_adj_70.init = 16'h9696;
    LUT4 SumRest_11__I_0_i9_2_lut_4_lut (.A(\v34[7] ), .B(n14765), .C(n14912), 
         .D(n14915), .Z(\v12_34[8] )) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(39[32:87])
    defparam SumRest_11__I_0_i9_2_lut_4_lut.init = 16'h17e8;
    LUT4 intermediate_carry_12__I_0_99_i6_4_lut_3_lut_rep_254 (.A(n14796), 
         .B(intermediate_carry[5]), .C(\v12[5] ), .Z(n14776)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(39[32:87])
    defparam intermediate_carry_12__I_0_99_i6_4_lut_3_lut_rep_254.init = 16'he8e8;
    LUT4 intermediate_carry_12__I_67_i5_2_lut_4_lut (.A(n14803), .B(n14791), 
         .C(\v12[3] ), .D(\v34[4] ), .Z(n3845)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(39[32:87])
    defparam intermediate_carry_12__I_67_i5_2_lut_4_lut.init = 16'hffe8;
    LUT4 intermediate_carry_12__I_0_99_i4_4_lut_3_lut_rep_268_4_lut (.A(\v12[2] ), 
         .B(n14822), .C(\v12[3] ), .D(n14803), .Z(n14790)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(39[33:50])
    defparam intermediate_carry_12__I_0_99_i4_4_lut_3_lut_rep_268_4_lut.init = 16'hf880;
    
endmodule
//
// Verilog Description of module SumRest12Bits_U1
//

module SumRest12Bits_U1 (n14864, n14863, \v5[6] , n14865, \v56[6] , 
            n14799);
    input n14864;
    input n14863;
    input \v5[6] ;
    input n14865;
    output \v56[6] ;
    output n14799;
    
    
    LUT4 i2_3_lut_4_lut (.A(n14864), .B(n14863), .C(\v5[6] ), .D(n14865), 
         .Z(\v56[6] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(39[33:50])
    defparam i2_3_lut_4_lut.init = 16'h8778;
    LUT4 intermediate_carry_12__I_0_99_i7_4_lut_3_lut_rep_277_4_lut (.A(n14864), 
         .B(n14863), .C(\v5[6] ), .D(n14865), .Z(n14799)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(39[33:50])
    defparam intermediate_carry_12__I_0_99_i7_4_lut_3_lut_rep_277_4_lut.init = 16'hf880;
    
endmodule
//
// Verilog Description of module SumRest12Bits_U2
//

module SumRest12Bits_U2 (\B_temp[2] , \A_temp[5] , \B_temp[3] , \A_temp[4] , 
            \A_temp[1] , \A_temp[0] , \A_temp[2] , \v34[4] , n14006, 
            n14814, n14787, n14915);
    input \B_temp[2] ;
    input \A_temp[5] ;
    input \B_temp[3] ;
    input \A_temp[4] ;
    input \A_temp[1] ;
    input \A_temp[0] ;
    input \A_temp[2] ;
    output \v34[4] ;
    output n14006;
    output n14814;
    input n14787;
    output n14915;
    
    
    wire n14914, n14913, n14587, n14586;
    
    LUT4 SumRest_11__I_0_i9_2_lut_rep_249_4_lut_then_4_lut (.A(\B_temp[2] ), 
         .B(\A_temp[5] ), .C(\B_temp[3] ), .D(\A_temp[4] ), .Z(n14914)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(39[32:87])
    defparam SumRest_11__I_0_i9_2_lut_rep_249_4_lut_then_4_lut.init = 16'h3848;
    LUT4 SumRest_11__I_0_i9_2_lut_rep_249_4_lut_else_4_lut (.A(\B_temp[2] ), 
         .B(\A_temp[5] ), .C(\B_temp[3] ), .D(\A_temp[4] ), .Z(n14913)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B (C)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(39[32:87])
    defparam SumRest_11__I_0_i9_2_lut_rep_249_4_lut_else_4_lut.init = 16'h40c0;
    LUT4 B_temp_2__bdd_2_lut (.A(\A_temp[1] ), .B(\B_temp[3] ), .Z(n14587)) /* synthesis lut_function=(A (B)) */ ;
    defparam B_temp_2__bdd_2_lut.init = 16'h8888;
    LUT4 B_temp_2__bdd_4_lut (.A(\A_temp[1] ), .B(\A_temp[0] ), .C(\B_temp[3] ), 
         .D(\A_temp[2] ), .Z(n14586)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (D)) */ ;
    defparam B_temp_2__bdd_4_lut.init = 16'hdf20;
    PFUMX i12518 (.BLUT(n14587), .ALUT(n14586), .C0(\B_temp[2] ), .Z(\v34[4] ));
    LUT4 i1_3_lut (.A(\A_temp[1] ), .B(\A_temp[2] ), .C(\A_temp[0] ), 
         .Z(n14006)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(39[32:127])
    defparam i1_3_lut.init = 16'ha8a8;
    LUT4 i2_3_lut_rep_292 (.A(n14006), .B(\B_temp[3] ), .C(\B_temp[2] ), 
         .Z(n14814)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(39[32:127])
    defparam i2_3_lut_rep_292.init = 16'h8080;
    PFUMX i12578 (.BLUT(n14913), .ALUT(n14914), .C0(n14787), .Z(n14915));
    
endmodule
//
// Verilog Description of module SumRest12Bits_U3
//

module SumRest12Bits_U3 (\B_temp[1] , \A_temp[2] , \A_temp[0] , \B_temp[0] , 
            \A_temp[5] , \A_temp[4] , \SumRest_11__N_989[6] , n14782, 
            n14765, \v34[7] , n14757, \v12_34[7] , n14776, \v34[6] , 
            \v12_34[6] , n14006, n14802, n14788, n14912, \A_temp[1] , 
            \v12[2] );
    input \B_temp[1] ;
    input \A_temp[2] ;
    input \A_temp[0] ;
    input \B_temp[0] ;
    input \A_temp[5] ;
    input \A_temp[4] ;
    input \SumRest_11__N_989[6] ;
    input n14782;
    output n14765;
    input \v34[7] ;
    output n14757;
    output \v12_34[7] ;
    input n14776;
    input \v34[6] ;
    output \v12_34[6] ;
    input n14006;
    output n14802;
    input n14788;
    output n14912;
    input \A_temp[1] ;
    output \v12[2] ;
    
    
    wire n14887, n14886, n14911, n14910;
    
    LUT4 i2_4_lut_then_4_lut (.A(\B_temp[1] ), .B(\A_temp[2] ), .C(\A_temp[0] ), 
         .D(\B_temp[0] ), .Z(n14887)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)))+!A (B (D))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(38[19:62])
    defparam i2_4_lut_then_4_lut.init = 16'hc6aa;
    LUT4 i2_4_lut_else_4_lut (.A(\A_temp[2] ), .B(\B_temp[0] ), .Z(n14886)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(38[19:62])
    defparam i2_4_lut_else_4_lut.init = 16'h8888;
    LUT4 B_mod_11__I_0_i7_2_lut_rep_250_4_lut_then_4_lut (.A(\B_temp[0] ), 
         .B(\A_temp[5] ), .C(\B_temp[1] ), .D(\A_temp[4] ), .Z(n14911)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(39[32:87])
    defparam B_mod_11__I_0_i7_2_lut_rep_250_4_lut_then_4_lut.init = 16'hc080;
    LUT4 B_mod_11__I_0_i7_2_lut_rep_250_4_lut_else_4_lut (.A(\B_temp[0] ), 
         .B(\A_temp[5] ), .C(\B_temp[1] ), .D(\A_temp[4] ), .Z(n14910)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(39[32:87])
    defparam B_mod_11__I_0_i7_2_lut_rep_250_4_lut_else_4_lut.init = 16'h8000;
    LUT4 intermediate_carry_12__I_0_99_i8_4_lut_3_lut_rep_235_4_lut (.A(\SumRest_11__N_989[6] ), 
         .B(n14782), .C(n14765), .D(\v34[7] ), .Z(n14757)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(39[92:126])
    defparam intermediate_carry_12__I_0_99_i8_4_lut_3_lut_rep_235_4_lut.init = 16'hf880;
    LUT4 i2_3_lut_4_lut (.A(\SumRest_11__N_989[6] ), .B(n14782), .C(\v34[7] ), 
         .D(n14765), .Z(\v12_34[7] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(39[92:126])
    defparam i2_3_lut_4_lut.init = 16'h8778;
    LUT4 intermediate_carry_12__I_0_99_i7_4_lut_3_lut_rep_243_4_lut (.A(\SumRest_11__N_989[6] ), 
         .B(n14782), .C(n14776), .D(\v34[6] ), .Z(n14765)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(38[19:62])
    defparam intermediate_carry_12__I_0_99_i7_4_lut_3_lut_rep_243_4_lut.init = 16'hf660;
    LUT4 i2_3_lut_4_lut_adj_69 (.A(\SumRest_11__N_989[6] ), .B(n14782), 
         .C(\v34[6] ), .D(n14776), .Z(\v12_34[6] )) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(38[19:62])
    defparam i2_3_lut_4_lut_adj_69.init = 16'h6996;
    LUT4 i2_3_lut_rep_280 (.A(n14006), .B(\B_temp[1] ), .C(\B_temp[0] ), 
         .Z(n14802)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(39[32:127])
    defparam i2_3_lut_rep_280.init = 16'h8080;
    PFUMX i12576 (.BLUT(n14910), .ALUT(n14911), .C0(n14788), .Z(n14912));
    PFUMX i12560 (.BLUT(n14886), .ALUT(n14887), .C0(\A_temp[1] ), .Z(\v12[2] ));
    
endmodule
//
// Verilog Description of module SumRest12Bits_U4
//

module SumRest12Bits_U4 (A_temp, n14795, B_temp, substract, n14746, 
            n14740, n14733, \intermediate_carry[11] , n14786, C, n14780, 
            n14810, n4, n14770, n4_adj_1, n14761, n14753);
    input [11:0]A_temp;
    output n14795;
    input [11:0]B_temp;
    input substract;
    output n14746;
    output n14740;
    output n14733;
    output \intermediate_carry[11] ;
    output n14786;
    output C;
    output n14780;
    output n14810;
    output n4;
    output n14770;
    output n4_adj_1;
    output n14761;
    output n14753;
    
    
    wire n14880, n14881;
    
    PFUMX i12556 (.BLUT(n14880), .ALUT(n14881), .C0(A_temp[0]), .Z(n14795));
    LUT4 intermediate_carry_12__I_0_99_i9_4_lut_3_lut_rep_218_4_lut (.A(B_temp[8]), 
         .B(substract), .C(A_temp[8]), .D(n14746), .Z(n14740)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 29[12])
    defparam intermediate_carry_12__I_0_99_i9_4_lut_3_lut_rep_218_4_lut.init = 16'hf660;
    LUT4 intermediate_carry_12__I_0_99_i10_4_lut_3_lut_rep_211_4_lut (.A(B_temp[9]), 
         .B(substract), .C(A_temp[9]), .D(n14740), .Z(n14733)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 29[12])
    defparam intermediate_carry_12__I_0_99_i10_4_lut_3_lut_rep_211_4_lut.init = 16'hf660;
    LUT4 intermediate_carry_12__I_0_99_i11_4_lut_3_lut_4_lut (.A(B_temp[10]), 
         .B(substract), .C(A_temp[10]), .D(n14733), .Z(\intermediate_carry[11] )) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 29[12])
    defparam intermediate_carry_12__I_0_99_i11_4_lut_3_lut_4_lut.init = 16'hf660;
    LUT4 intermediate_carry_12__I_0_99_i3_4_lut_3_lut_rep_264_4_lut (.A(B_temp[2]), 
         .B(substract), .C(A_temp[2]), .D(n14795), .Z(n14786)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 29[12])
    defparam intermediate_carry_12__I_0_99_i3_4_lut_3_lut_rep_264_4_lut.init = 16'hf660;
    LUT4 intermediate_carry_12__I_0_99_i2_4_lut_3_lut_rep_273_4_lut_then_4_lut (.A(substract), 
         .B(B_temp[0]), .C(A_temp[1]), .D(B_temp[1]), .Z(n14881)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+!(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(39[33:50])
    defparam intermediate_carry_12__I_0_99_i2_4_lut_3_lut_rep_273_4_lut_then_4_lut.init = 16'h74e2;
    LUT4 intermediate_carry_12__I_0_99_i2_4_lut_3_lut_rep_273_4_lut_else_4_lut (.A(substract), 
         .B(A_temp[1]), .C(B_temp[1]), .Z(n14880)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(39[33:50])
    defparam intermediate_carry_12__I_0_99_i2_4_lut_3_lut_rep_273_4_lut_else_4_lut.init = 16'h4848;
    LUT4 B_temp_11__bdd_4_lut (.A(B_temp[11]), .B(substract), .C(\intermediate_carry[11] ), 
         .D(A_temp[11]), .Z(C)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C (D))))) */ ;
    defparam B_temp_11__bdd_4_lut.init = 16'h3aac;
    LUT4 intermediate_carry_12__I_0_99_i4_4_lut_3_lut_rep_258_4_lut (.A(B_temp[3]), 
         .B(substract), .C(A_temp[3]), .D(n14786), .Z(n14780)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 29[12])
    defparam intermediate_carry_12__I_0_99_i4_4_lut_3_lut_rep_258_4_lut.init = 16'hf660;
    LUT4 and_92_i1_2_lut_rep_288_3_lut (.A(B_temp[0]), .B(substract), .C(A_temp[0]), 
         .Z(n14810)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 29[12])
    defparam and_92_i1_2_lut_rep_288_3_lut.init = 16'h6060;
    LUT4 i1_2_lut_3_lut (.A(B_temp[1]), .B(substract), .C(A_temp[1]), 
         .Z(n4)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 29[12])
    defparam i1_2_lut_3_lut.init = 16'h9696;
    LUT4 intermediate_carry_12__I_0_99_i5_4_lut_3_lut_rep_248_4_lut (.A(B_temp[4]), 
         .B(substract), .C(A_temp[4]), .D(n14780), .Z(n14770)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 29[12])
    defparam intermediate_carry_12__I_0_99_i5_4_lut_3_lut_rep_248_4_lut.init = 16'hf660;
    LUT4 i1_2_lut_3_lut_adj_68 (.A(B_temp[4]), .B(substract), .C(A_temp[4]), 
         .Z(n4_adj_1)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 29[12])
    defparam i1_2_lut_3_lut_adj_68.init = 16'h9696;
    LUT4 intermediate_carry_12__I_0_99_i6_4_lut_3_lut_rep_239_4_lut (.A(B_temp[5]), 
         .B(substract), .C(A_temp[5]), .D(n14770), .Z(n14761)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 29[12])
    defparam intermediate_carry_12__I_0_99_i6_4_lut_3_lut_rep_239_4_lut.init = 16'hf660;
    LUT4 intermediate_carry_12__I_0_99_i7_4_lut_3_lut_rep_231_4_lut (.A(B_temp[6]), 
         .B(substract), .C(A_temp[6]), .D(n14761), .Z(n14753)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 29[12])
    defparam intermediate_carry_12__I_0_99_i7_4_lut_3_lut_rep_231_4_lut.init = 16'hf660;
    LUT4 intermediate_carry_12__I_0_99_i8_4_lut_3_lut_rep_224_4_lut (.A(B_temp[7]), 
         .B(substract), .C(A_temp[7]), .D(n14753), .Z(n14746)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 29[12])
    defparam intermediate_carry_12__I_0_99_i8_4_lut_3_lut_rep_224_4_lut.init = 16'hf660;
    
endmodule
//
// Verilog Description of module bcdDisplay_U6
//

module bcdDisplay_U6 (de, clk_0, n5745, n14176, n14643, \DISPLAY_6__N_582[4] , 
            n14460, reset_c, n14668, bcd_out_15__N_552, n14682, n14648, 
            n11232, n14651, n14660, n5683, n3685, n3715, n3732, 
            n11252, n5690, n14667);
    output [6:0]de;
    input clk_0;
    input n5745;
    input n14176;
    input n14643;
    input \DISPLAY_6__N_582[4] ;
    input n14460;
    input reset_c;
    input n14668;
    input bcd_out_15__N_552;
    input n14682;
    input n14648;
    input n11232;
    input n14651;
    input n14660;
    input n5683;
    input n3685;
    input n3715;
    input n3732;
    input n11252;
    output n5690;
    input n14667;
    
    wire clk_0 /* synthesis is_clock=1, SET_AS_NETWORK=clk_0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(72[8:13])
    
    wire n14894;
    wire [6:0]DISPLAY_6__N_582;
    
    wire n14893, n14892;
    
    FD1S3JX DISPLAY_i0 (.D(n14176), .CK(clk_0), .PD(n5745), .Q(de[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i0.GSR = "ENABLED";
    FD1S3JX DISPLAY_i3 (.D(n14894), .CK(clk_0), .PD(n14643), .Q(de[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i3.GSR = "ENABLED";
    FD1S3AY DISPLAY_i4 (.D(\DISPLAY_6__N_582[4] ), .CK(clk_0), .Q(de[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i4.GSR = "ENABLED";
    FD1S3JX DISPLAY_i5 (.D(n14460), .CK(clk_0), .PD(n14643), .Q(de[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i5.GSR = "ENABLED";
    FD1S3AX DISPLAY_i6 (.D(DISPLAY_6__N_582[6]), .CK(clk_0), .Q(de[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i6.GSR = "ENABLED";
    LUT4 i12439_then_4_lut (.A(reset_c), .B(n14668), .C(bcd_out_15__N_552), 
         .D(n14682), .Z(n14893)) /* synthesis lut_function=(A+(B (D)+!B !(C (D)+!C !(D)))) */ ;
    defparam i12439_then_4_lut.init = 16'hefba;
    LUT4 i12439_else_4_lut (.A(reset_c), .B(n14668), .C(bcd_out_15__N_552), 
         .D(n14682), .Z(n14892)) /* synthesis lut_function=(A+!(B (C (D))+!B !(C+!(D)))) */ ;
    defparam i12439_else_4_lut.init = 16'hbeff;
    LUT4 i8933_4_lut (.A(n14648), .B(n14643), .C(n11232), .D(n14651), 
         .Z(DISPLAY_6__N_582[6])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(30[3] 41[12])
    defparam i8933_4_lut.init = 16'hcfee;
    FD1S3JX DISPLAY_i2 (.D(n5683), .CK(clk_0), .PD(n14660), .Q(de[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i2.GSR = "ENABLED";
    FD1S3JX DISPLAY_i1 (.D(n3715), .CK(clk_0), .PD(n3685), .Q(de[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i1.GSR = "ENABLED";
    PFUMX i3755 (.BLUT(n3732), .ALUT(n11252), .C0(n14643), .Z(n5690));
    PFUMX i12564 (.BLUT(n14892), .ALUT(n14893), .C0(n14667), .Z(n14894));
    
endmodule
//
// Verilog Description of module bcdDisplay
//

module bcdDisplay (un, clk_0, n5728, n14178, n14471, n14470, n14654, 
            n14469, \DISPLAY_6__N_582[6] , \Q[1] , n14685, \Q[0] , 
            reset_c, n14693, n14800, n14872, n3917, n3768);
    output [6:0]un;
    input clk_0;
    input n5728;
    input n14178;
    input n14471;
    input n14470;
    input n14654;
    input n14469;
    input \DISPLAY_6__N_582[6] ;
    input \Q[1] ;
    input n14685;
    input \Q[0] ;
    input reset_c;
    input n14693;
    input n14800;
    input n14872;
    input n3917;
    input n3768;
    
    wire clk_0 /* synthesis is_clock=1, SET_AS_NETWORK=clk_0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(72[8:13])
    wire [6:0]DISPLAY_6__N_582;
    
    wire n14879, n14877, n14878;
    
    FD1S3JX DISPLAY_i0 (.D(n14178), .CK(clk_0), .PD(n5728), .Q(un[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=116, LSE_RLINE=116 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i0.GSR = "ENABLED";
    PFUMX i12443 (.BLUT(n14471), .ALUT(n14470), .C0(n14654), .Z(DISPLAY_6__N_582[4]));
    FD1S3JX DISPLAY_i3 (.D(n14879), .CK(clk_0), .PD(n14654), .Q(un[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=116, LSE_RLINE=116 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i3.GSR = "ENABLED";
    FD1S3AY DISPLAY_i4 (.D(DISPLAY_6__N_582[4]), .CK(clk_0), .Q(un[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=116, LSE_RLINE=116 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i4.GSR = "ENABLED";
    FD1S3JX DISPLAY_i5 (.D(n14469), .CK(clk_0), .PD(n14654), .Q(un[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=116, LSE_RLINE=116 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i5.GSR = "ENABLED";
    FD1S3AX DISPLAY_i6 (.D(\DISPLAY_6__N_582[6] ), .CK(clk_0), .Q(un[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=116, LSE_RLINE=116 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i6.GSR = "ENABLED";
    PFUMX i12554 (.BLUT(n14877), .ALUT(n14878), .C0(\Q[1] ), .Z(n14879));
    LUT4 i12446_then_4_lut (.A(n14685), .B(\Q[0] ), .C(reset_c), .D(n14693), 
         .Z(n14878)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A ((C+!(D))+!B)) */ ;
    defparam i12446_then_4_lut.init = 16'hf9f7;
    LUT4 i12446_else_4_lut (.A(n14685), .B(\Q[0] ), .C(reset_c), .D(n14693), 
         .Z(n14877)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam i12446_else_4_lut.init = 16'hfef3;
    FD1S3JX DISPLAY_i2 (.D(n14872), .CK(clk_0), .PD(n14800), .Q(un[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=116, LSE_RLINE=116 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i2.GSR = "ENABLED";
    FD1S3JX DISPLAY_i1 (.D(n3768), .CK(clk_0), .PD(n3917), .Q(un[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=116, LSE_RLINE=116 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i1.GSR = "ENABLED";
    
endmodule
