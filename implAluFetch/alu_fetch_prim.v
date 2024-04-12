// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Thu Apr 11 03:25:12 2024
//
// Verilog Description of module alu_fetch
//

module alu_fetch (reset, stop_run, display, sel);   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(11[8:17])
    input reset;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    input stop_run;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(13[2:10])
    output [6:0]display;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    output [3:0]sel;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(71[8:11])
    wire clk_0 /* synthesis is_clock=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(72[8:13])
    wire A_temp_11__N_976 /* synthesis is_clock=1, SET_AS_NETWORK=\ALU_imp/A_temp_11__N_976 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(39[9:15])
    wire substract_N_990 /* synthesis is_clock=1, SET_AS_NETWORK=\ALU_imp/substract_N_990 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(33[9:18])
    
    wire GND_net, VCC_net, n1594, reset_c, stop_run_c, display_c_6, 
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
    
    wire n4101;
    wire [23:0]rpg_in;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(90[8:14])
    
    wire n18727;
    wire [1:0]rpg_sel;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(92[8:15])
    
    wire rpg_write;
    wire [11:0]A;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(94[8:9])
    wire [11:0]B;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(94[10:11])
    wire [3:0]control;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(95[8:15])
    
    wire n18761;
    wire [3:0]global_state;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    wire [3:0]instruction;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(103[8:19])
    wire [2:0]execute_instruction;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(106[8:27])
    
    wire n225, n226, n227, n228, n229, n230, n231, n232, n18708, 
        n8389, n14, n4072, n8323, n9337, n480, n481, n482, n483, 
        n484, n485, n486, n487, n587, n588, n589;
    wire [3:0]global_state_3__N_159;
    wire [7:0]MAR_7__N_176;
    wire [7:0]PC_7__N_168;
    
    wire n20, n18713, n10, n18108, clk_0_enable_59, n18, n17, 
        n16, n15, n14_adj_1120, clk_0_enable_41, n10717, n10468, 
        n6, n4035, n18725, n2491, n2794;
    wire [17:0]count;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(318[11:16])
    
    wire n2789, n2784, clk_0_N_347, n2779, n1593, n1595, n1596, 
        n1597, n1598, n1599, n1600, n18922, n78, bcd_out_15__N_364, 
        bcd_out_15__N_374, bcd_out_15__N_378, bcd_out_15__N_373, n19477, 
        n19472, bcd_out_15__N_403, bcd_out_15__N_407, bcd_out_15__N_402, 
        n18921, n10_adj_1121, n18468, bcd_out_15__N_356, bcd_out_15__N_449, 
        n18920, n10_adj_1122, bcd_out_15__N_554, bcd_out_15__N_574, 
        bcd_out_15__N_521, bcd_out_15__N_550, n99, n10_adj_1123, bcd_out_15__N_517, 
        bcd_out_15__N_355, n10_adj_1124, n7714;
    wire [6:0]DISPLAY_6__N_584;
    wire [6:0]DISPLAY_6__N_584_adj_1198;
    wire [6:0]DISPLAY_6__N_584_adj_1202;
    wire [6:0]DISPLAY_6__N_584_adj_1206;
    wire [23:0]data_out_23__N_640;
    wire [23:0]data_out_23__N_591;
    
    wire data_out_23__N_592, n4113, n5567, n2490, n18973, n5569, 
        n3799, n3797, n5571, n6742, n18918;
    wire [11:0]logic_result;   // c:/users/cassandra/desktop/arqui2/alu.vhd(35[9:21])
    
    wire n18460, n18917;
    wire [11:0]A_temp;   // c:/users/cassandra/desktop/arqui2/alu.vhd(39[9:15])
    wire [11:0]B_temp;   // c:/users/cassandra/desktop/arqui2/alu.vhd(39[16:22])
    
    wire n18757, n18756, n18754, n18753, n18752, n18751, n18750, 
        n18916, n18915, n18971, n19006, n18910, n18907, clk_0_enable_60, 
        B_temp_11__N_981, B_temp_11__N_982, substract_N_989, logic_result_11__N_951;
    wire [12:0]intermediate_carry;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(18[8:26])
    
    wire n18997, n10_adj_1127, n2489, n1699, n2488, n2487, n10_adj_1128, 
        n18903, n7833, n10715, n7839, n18448, n5573, n18902, n5565, 
        clk_0_enable_67, n4038, n1683, n18899, n18999, n18747, n7851, 
        n18091, n10709, n18897, n18896, n18895, clk_0_enable_63, 
        n18129, n18353, n18894, n18087, n95, n94, n93, n92, 
        n91, n90, n89, n88, n87, n86, n85, n84, n83, n82, 
        n81, n80, n79, n18891, n18890, n2587, n18435, n17896, 
        n18889, n2583, n18888, n18886, n2486, n18885, n2572, n2562, 
        n2543, n2485, n2874, n2873, n2872, n4036, n2871, n2870, 
        n2869, n2868, n18746, n2867, n2866, n2865, n2864, n2863, 
        n18127, n2862, n2861, n10728, n6739, n7, n6_adj_1129, 
        n18002, n7869, n5, n7_adj_1130, n14_adj_1131, n8536, n18966, 
        n18745, n6744, n76, n18014, n5_adj_1132, n17913, clk_0_enable_7, 
        n18744, n17804, n18434, n18743, n18880, n18018, n8217, 
        n18879, n16_adj_1133, n17904, n8329, n18877, n16832, n16831, 
        n18041, n18876, n18875, n18682, n19469, n16835, n4008, 
        n17928, n16830, n18724, n18723, n19009, n18872, n7827, 
        n7831, n6348, n6328, n18661, n6324, n18660, n18659, n7_adj_1134, 
        n3, n7837, n6267, n18658, n6251, n6242, clk_0_enable_83, 
        n6737, n6187, n6794, n18657, clk_0_enable_151, n6005, clk_0_enable_21, 
        n17806, n17858, n18007, n18722, n8001, n19015, n16888, 
        n134, n141, n142, n18965, n8005, n18998, n5831, n21, 
        clk_0_enable_145, n18742, n2, n17948, n3983, n3980, n3960, 
        n16852, n16851, n18844, n18029, n18523, n8003, n18619, 
        n10136, n4, n8317, n18841, n18618, n5670, n3_adj_1135, 
        n5661, n5641, n5633, n10460, n7615, n18402, n5574, n5572, 
        n5570, n5568, n5566, n5564, n5563, n8020, n8315, n18721, 
        n3940, n8512, n17622, n3_adj_1136, n7_adj_1137, n1, n7_adj_1138, 
        n1_adj_1139, n8007, n6_adj_1140, n18720, n7999, n7291, n6_adj_1141, 
        n6_adj_1142, n18_adj_1143, n7981, n6_adj_1144, n6_adj_1145, 
        n7974, n7968, n7_adj_1146, clk_0_enable_143, n6_adj_1147, 
        n8497, n6_adj_1148, clk_0_enable_144, n6_adj_1149, n10760, 
        n25, n6_adj_1150, n8325, n17999, n6_adj_1151, n5_adj_1152, 
        clk_0_enable_127, n18015, n18484, n6_adj_1153, n14_adj_1154, 
        n5151, n17998, clk_0_enable_48, n6_adj_1155, n17_adj_1156, 
        n18575, clk_0_enable_61, n22, n5069, n2_adj_1157, n16947, 
        n18728, n17895, clk_0_enable_37, n3_adj_1158, n18719, n16948, 
        n16850, clk_0_enable_119, n18714, n7_adj_1159, n16849, n7_adj_1160, 
        n18712, n6_adj_1161, n6_adj_1162, clk_0_enable_31, n18561, 
        n16848, n18560, n3899, n16834, n7985, n18378, n5_adj_1163, 
        n3881, n1_adj_1164, n18709, n18711, n18375, n18054, n6_adj_1165, 
        n18131, n17907, n16829, n17929, n8321, n6_adj_1166, n7_adj_1167, 
        n18374, n7_adj_1168, n17898, n18373, n7_adj_1169, n19474, 
        n18959, n7_adj_1170, n18958, n18806, n17897, n7_adj_1171, 
        n10_adj_1172, n7_adj_1173, n18805, n10333, n18970, n16847, 
        n3_adj_1174, n18718, n16846, n16845, clk_0_enable_105, n13, 
        n18953, n13_adj_1175, n8327, n6746, n18798, n18797, n6748, 
        n18362, n18717, clk_0_enable_142, n18361, n7717, n7991, 
        n17899, n17996, n18576, n18974, n2_adj_1176, n18741, n17082, 
        n18525, n18939, n18053, n7995, n18008, n10732, n18524, 
        n18740, n18938, n18739, clk_0_enable_87, n18009, n16844, 
        n7_adj_1177, clk_0_enable_6, n18732, n18693, n18731, clk_enable_18, 
        n23, n10730, n19471, n18983, n18738, n9596, n18737, n18772, 
        n16833, n18736, n16828, n18354, n18735, n16842, n16841, 
        n18510, n18982, n18980, n18509, n18508, n14_adj_1178, clk_0_enable_19, 
        n8368, n18716, n3_adj_1179, n18207, n14_adj_1180, n16840, 
        n7893, n18702, n14_adj_1181, n19020, n19019, n18733, n18730, 
        n7885, n18729, n17017, n18715, clk_0_enable_20, n6_adj_1182, 
        n17906, n18006, n14_adj_1183, n18012, n8370, n17983, n19012, 
        n14_adj_1184, n4358, n19476, n17980, n14_adj_1185, n2_adj_1186, 
        n17957, n17984, n18707, n14_adj_1187, n19018, n18964, n19473, 
        n8313, n17856, n19016, n7857, n14_adj_1188, n19014, n17894, 
        n18979, n10_adj_1189, n19013, n18681, n18005, n10_adj_1190, 
        n18710, n18051, n17905, n10167, n2_adj_1191, n18116, n18115, 
        n18485, n19011, n7841, n19010, n18962, n10_adj_1192, n16839, 
        n18763, n10_adj_1193, n18483, n4_adj_1194, n19008, n18762, 
        n18125, n19007, n18961;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i8542_3_lut_4_lut (.A(control[0]), .B(control[1]), .C(control[2]), 
         .D(A[10]), .Z(n6739)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i8542_3_lut_4_lut.init = 16'h8008;
    OSCH OSCinst0 (.STDBY(GND_net), .OSC(clk)) /* synthesis NOM_FREQ="26.60", syn_instantiated=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(111[11:15])
    defparam OSCinst0.NOM_FREQ = "26.60";
    FD1P3AX MAR_i0_i0 (.D(MAR_7__N_176[0]), .SP(clk_0_enable_31), .CK(clk_0), 
            .Q(MAR[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MAR_i0_i0.GSR = "ENABLED";
    FD1P3AX instruction_i0_i0 (.D(n17082), .SP(clk_0_enable_145), .CK(clk_0), 
            .Q(instruction[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam instruction_i0_i0.GSR = "DISABLED";
    FD1P3AX display_i0_i1 (.D(n4036), .SP(clk_0_enable_37), .CK(clk_0), 
            .Q(display_c_0));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[3] 314[10])
    defparam display_i0_i1.GSR = "DISABLED";
    FD1P3AX sel_i0_i1 (.D(temp_control[0]), .SP(clk_enable_18), .CK(clk_0), 
            .Q(sel_c_0));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[3] 314[10])
    defparam sel_i0_i1.GSR = "DISABLED";
    FD1S3AX clk_0_150 (.D(clk_0_N_347), .CK(clk), .Q(clk_0)) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(321[3] 338[10])
    defparam clk_0_150.GSR = "ENABLED";
    FD1S3AY temp_control_FSM_i1 (.D(n19476), .CK(clk_0), .Q(n1683));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(295[4] 312[13])
    defparam temp_control_FSM_i1.GSR = "ENABLED";
    FD1P3IX instruction_i0_i2 (.D(n18707), .SP(clk_0_enable_145), .CD(n9596), 
            .CK(clk_0), .Q(instruction[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam instruction_i0_i2.GSR = "DISABLED";
    LUT4 i8434_4_lut (.A(ACC[5]), .B(n18959), .C(data_out_23__N_591[5]), 
         .D(n8389), .Z(n7995)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i8434_4_lut.init = 16'hc088;
    LUT4 i1_2_lut_2_lut_3_lut (.A(global_state[1]), .B(global_state[2]), 
         .C(global_state[0]), .Z(n10)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    defparam i1_2_lut_2_lut_3_lut.init = 16'h1010;
    FD1P3AX creset_841 (.D(n19477), .SP(clk_0_enable_6), .CK(clk_0), .Q(n2794));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam creset_841.GSR = "ENABLED";
    PFUMX i16319 (.BLUT(n18524), .ALUT(n18523), .C0(IR[18]), .Z(n18525));
    CCU2D add_163_9 (.A0(PC[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n16835), 
          .S0(n1593));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_163_9.INIT0 = 16'h5555;
    defparam add_163_9.INIT1 = 16'h0000;
    defparam add_163_9.INJECT1_0 = "NO";
    defparam add_163_9.INJECT1_1 = "NO";
    FD1P3AX rpg_write_144 (.D(n18939), .SP(clk_0_enable_7), .CK(clk_0), 
            .Q(rpg_write)) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam rpg_write_144.GSR = "DISABLED";
    LUT4 i1_2_lut_2_lut_3_lut_adj_93 (.A(global_state[1]), .B(global_state[2]), 
         .C(n7291), .Z(n4_adj_1194)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    defparam i1_2_lut_2_lut_3_lut_adj_93.init = 16'h1010;
    FD1P3IX instruction_i0_i1 (.D(n18709), .SP(clk_0_enable_145), .CD(n9596), 
            .CK(clk_0), .Q(instruction[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam instruction_i0_i1.GSR = "DISABLED";
    FD1P3IX IR_i0_i23 (.D(MBR[23]), .SP(clk_0_enable_67), .CD(n18880), 
            .CK(clk_0), .Q(IR[23]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam IR_i0_i23.GSR = "ENABLED";
    FD1P3IX IR_i0_i22 (.D(MBR[22]), .SP(clk_0_enable_67), .CD(n18880), 
            .CK(clk_0), .Q(IR[22]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam IR_i0_i22.GSR = "ENABLED";
    FD1P3IX IR_i0_i21 (.D(MBR[21]), .SP(clk_0_enable_67), .CD(n18880), 
            .CK(clk_0), .Q(IR[21]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam IR_i0_i21.GSR = "ENABLED";
    FD1P3IX IR_i0_i20 (.D(MBR[20]), .SP(clk_0_enable_67), .CD(n18880), 
            .CK(clk_0), .Q(IR[20]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam IR_i0_i20.GSR = "ENABLED";
    FD1P3IX IR_i0_i19 (.D(MBR[19]), .SP(clk_0_enable_67), .CD(n18880), 
            .CK(clk_0), .Q(IR[19]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam IR_i0_i19.GSR = "ENABLED";
    OB display_pad_6 (.I(display_c_6), .O(display[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    LUT4 i15926_2_lut_rep_299_3_lut (.A(global_state[1]), .B(global_state[2]), 
         .C(execute_instruction[2]), .Z(n18894)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    defparam i15926_2_lut_rep_299_3_lut.init = 16'hfefe;
    FD1P3IX IR_i0_i18 (.D(MBR[18]), .SP(clk_0_enable_67), .CD(n18880), 
            .CK(clk_0), .Q(IR[18]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam IR_i0_i18.GSR = "ENABLED";
    LUT4 i16196_2_lut_3_lut_4_lut (.A(global_state[1]), .B(global_state[2]), 
         .C(execute_instruction[0]), .D(execute_instruction[2]), .Z(n18018)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    defparam i16196_2_lut_3_lut_4_lut.init = 16'h0001;
    FD1P3IX IR_i0_i17 (.D(MBR[17]), .SP(clk_0_enable_67), .CD(n18880), 
            .CK(clk_0), .Q(IR[17]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam IR_i0_i17.GSR = "ENABLED";
    FD1P3IX IR_i0_i16 (.D(MBR[16]), .SP(clk_0_enable_67), .CD(n18880), 
            .CK(clk_0), .Q(IR[16]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam IR_i0_i16.GSR = "ENABLED";
    FD1P3IX IR_i0_i15 (.D(MBR[15]), .SP(clk_0_enable_67), .CD(n18880), 
            .CK(clk_0), .Q(IR[15]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam IR_i0_i15.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_302_3_lut (.A(global_state[1]), .B(global_state[2]), 
         .C(IR[2]), .Z(n18897)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    defparam i1_2_lut_rep_302_3_lut.init = 16'h1010;
    FD1P3IX IR_i0_i14 (.D(MBR[14]), .SP(clk_0_enable_67), .CD(n18880), 
            .CK(clk_0), .Q(IR[14]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam IR_i0_i14.GSR = "ENABLED";
    FD1P3AX creset_837 (.D(n19477), .SP(clk_0_enable_19), .CK(clk_0), 
            .Q(n2789));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam creset_837.GSR = "ENABLED";
    FD1P3AX creset_833 (.D(n19477), .SP(clk_0_enable_20), .CK(clk_0), 
            .Q(n2784));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam creset_833.GSR = "ENABLED";
    PFUMX i5861 (.BLUT(n7995), .ALUT(n6_adj_1161), .C0(execute_instruction[2]), 
          .Z(n7985));
    LUT4 i1_2_lut_rep_282_3_lut_4_lut (.A(global_state[1]), .B(global_state[2]), 
         .C(n18959), .D(execute_instruction[2]), .Z(n18877)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    defparam i1_2_lut_rep_282_3_lut_4_lut.init = 16'h0010;
    FD1P3AX creset_829 (.D(n19477), .SP(clk_0_enable_21), .CK(clk_0), 
            .Q(n2779));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam creset_829.GSR = "ENABLED";
    LUT4 i1_2_lut_2_lut_3_lut_adj_94 (.A(global_state[1]), .B(global_state[2]), 
         .C(global_state[3]), .Z(n5_adj_1132)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    defparam i1_2_lut_2_lut_3_lut_adj_94.init = 16'h1010;
    LUT4 i1_2_lut_3_lut (.A(global_state[1]), .B(global_state[2]), .C(global_state[3]), 
         .Z(n25)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    defparam i1_2_lut_3_lut.init = 16'he0e0;
    LUT4 i8547_2_lut_2_lut_3_lut (.A(control[0]), .B(control[1]), .C(logic_result[2]), 
         .Z(n10_adj_1122)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i8547_2_lut_2_lut_3_lut.init = 16'h7070;
    LUT4 i15952_2_lut_rep_300_3_lut (.A(global_state[1]), .B(global_state[2]), 
         .C(global_state[0]), .Z(n18895)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    defparam i15952_2_lut_rep_300_3_lut.init = 16'hfefe;
    LUT4 i15918_2_lut_rep_291_3_lut_4_lut (.A(global_state[1]), .B(global_state[2]), 
         .C(instruction[3]), .D(global_state[0]), .Z(n18886)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    defparam i15918_2_lut_rep_291_3_lut_4_lut.init = 16'hfffe;
    LUT4 i13_2_lut_3_lut_4_lut (.A(global_state[1]), .B(global_state[2]), 
         .C(n18510), .D(global_state[0]), .Z(n17622)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    defparam i13_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_3_lut_4_lut (.A(global_state[1]), .B(global_state[2]), 
         .C(n19472), .D(global_state[3]), .Z(n8497)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0e00;
    LUT4 i1_2_lut_rep_285_3_lut_4_lut (.A(global_state[1]), .B(global_state[2]), 
         .C(global_state[3]), .D(stop_run_c), .Z(n18880)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    defparam i1_2_lut_rep_285_3_lut_4_lut.init = 16'h00e0;
    LUT4 i2_4_lut_4_lut (.A(instruction[3]), .B(execute_instruction[0]), 
         .C(execute_instruction[1]), .D(execute_instruction[2]), .Z(n6_adj_1149)) /* synthesis lut_function=(!(A+!(B ((D)+!C)+!B (C (D))))) */ ;
    defparam i2_4_lut_4_lut.init = 16'h5404;
    PFUMX i16304 (.BLUT(n18509), .ALUT(n18508), .C0(instruction[3]), .Z(n18510));
    TSALL TSALL_INST (.TSALL(GND_net));
    PFUMX i5867 (.BLUT(n8317), .ALUT(n6_adj_1165), .C0(execute_instruction[2]), 
          .Z(n7991));
    PFUMX i16436 (.BLUT(n18964), .ALUT(n18965), .C0(instruction[0]), .Z(n18966));
    FD1P3AX PC_i0_i0 (.D(PC_7__N_168[0]), .SP(clk_0_enable_151), .CK(clk_0), 
            .Q(PC[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam PC_i0_i0.GSR = "ENABLED";
    PFUMX i16446 (.BLUT(n18979), .ALUT(n18980), .C0(rpg_sel[1]), .Z(n18888));
    SPR16X4C selector_1__I_05 (.DI0(rpg_in[0]), .DI1(rpg_in[1]), .DI2(rpg_in[2]), 
            .DI3(rpg_in[3]), .AD0(rpg_sel[0]), .AD1(rpg_sel[1]), .AD2(GND_net), 
            .AD3(GND_net), .CK(clk_0), .WRE(rpg_write), .DO0(n2861), 
            .DO1(n2862), .DO2(n2863), .DO3(n2864));
    defparam selector_1__I_05.initval = "0x0000000000000000";
    SPR16X4C selector_1__I_04 (.DI0(rpg_in[4]), .DI1(rpg_in[5]), .DI2(rpg_in[6]), 
            .DI3(rpg_in[7]), .AD0(rpg_sel[0]), .AD1(rpg_sel[1]), .AD2(GND_net), 
            .AD3(GND_net), .CK(clk_0), .WRE(rpg_write), .DO0(n2865), 
            .DO1(n2866), .DO2(n2867), .DO3(n2868));
    defparam selector_1__I_04.initval = "0x0000000000000000";
    SPR16X4C selector_1__I_03 (.DI0(rpg_in[8]), .DI1(rpg_in[9]), .DI2(rpg_in[10]), 
            .DI3(rpg_in[11]), .AD0(rpg_sel[0]), .AD1(rpg_sel[1]), .AD2(GND_net), 
            .AD3(GND_net), .CK(clk_0), .WRE(rpg_write), .DO0(n2869), 
            .DO1(n2870), .DO2(n2871), .DO3(n2872));
    defparam selector_1__I_03.initval = "0x0000000000000000";
    SPR16X4C selector_1__I_02 (.DI0(rpg_in[12]), .DI1(rpg_in[13]), .DI2(rpg_in[14]), 
            .DI3(rpg_in[15]), .AD0(rpg_sel[0]), .AD1(rpg_sel[1]), .AD2(GND_net), 
            .AD3(GND_net), .CK(clk_0), .WRE(rpg_write), .DO0(n2873), 
            .DO1(n2874));
    defparam selector_1__I_02.initval = "0x0000000000000000";
    PFUMX i5877 (.BLUT(n8323), .ALUT(n6_adj_1166), .C0(execute_instruction[2]), 
          .Z(n8001));
    OB display_pad_5 (.I(display_c_5), .O(display[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    FD1P3AX MAR_i0_i1 (.D(MAR_7__N_176[1]), .SP(clk_0_enable_31), .CK(clk_0), 
            .Q(MAR[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MAR_i0_i1.GSR = "ENABLED";
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
    PFUMX i16700 (.BLUT(n19473), .ALUT(n19474), .C0(global_state[2]), 
          .Z(clk_0_enable_67));
    FD1P3IX IR_i0_i13 (.D(MBR[13]), .SP(clk_0_enable_67), .CD(n18880), 
            .CK(clk_0), .Q(IR[13]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam IR_i0_i13.GSR = "ENABLED";
    FD1P3IX IR_i0_i12 (.D(MBR[12]), .SP(clk_0_enable_67), .CD(n18880), 
            .CK(clk_0), .Q(IR[12]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam IR_i0_i12.GSR = "ENABLED";
    VLO i1 (.Z(GND_net));
    PFUMX i5881 (.BLUT(n8327), .ALUT(n6_adj_1147), .C0(execute_instruction[2]), 
          .Z(n8005));
    PFUMX i16434 (.BLUT(n18961), .ALUT(n18962), .C0(global_state[1]), 
          .Z(clk_0_enable_145));
    FD1P3AX MAR_i0_i2 (.D(MAR_7__N_176[2]), .SP(clk_0_enable_31), .CK(clk_0), 
            .Q(MAR[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MAR_i0_i2.GSR = "ENABLED";
    FD1P3AX MAR_i0_i3 (.D(MAR_7__N_176[3]), .SP(clk_0_enable_31), .CK(clk_0), 
            .Q(MAR[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MAR_i0_i3.GSR = "ENABLED";
    FD1P3AX MAR_i0_i4 (.D(MAR_7__N_176[4]), .SP(clk_0_enable_31), .CK(clk_0), 
            .Q(MAR[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MAR_i0_i4.GSR = "ENABLED";
    FD1P3AX MAR_i0_i5 (.D(MAR_7__N_176[5]), .SP(clk_0_enable_31), .CK(clk_0), 
            .Q(MAR[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MAR_i0_i5.GSR = "ENABLED";
    FD1P3AX MAR_i0_i6 (.D(MAR_7__N_176[6]), .SP(clk_0_enable_31), .CK(clk_0), 
            .Q(MAR[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MAR_i0_i6.GSR = "ENABLED";
    FD1P3AX MAR_i0_i7 (.D(MAR_7__N_176[7]), .SP(clk_0_enable_31), .CK(clk_0), 
            .Q(MAR[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MAR_i0_i7.GSR = "ENABLED";
    FD1P3AX display_i0_i2 (.D(n5564), .SP(clk_0_enable_37), .CK(clk_0), 
            .Q(display_c_1));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[3] 314[10])
    defparam display_i0_i2.GSR = "DISABLED";
    FD1P3AX display_i0_i3 (.D(n5566), .SP(clk_0_enable_37), .CK(clk_0), 
            .Q(display_c_2));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[3] 314[10])
    defparam display_i0_i3.GSR = "DISABLED";
    FD1P3AX display_i0_i4 (.D(n5568), .SP(clk_0_enable_37), .CK(clk_0), 
            .Q(display_c_3));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[3] 314[10])
    defparam display_i0_i4.GSR = "DISABLED";
    FD1P3AX display_i0_i5 (.D(n5570), .SP(clk_0_enable_37), .CK(clk_0), 
            .Q(display_c_4));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[3] 314[10])
    defparam display_i0_i5.GSR = "DISABLED";
    FD1P3AX display_i0_i6 (.D(n5572), .SP(clk_0_enable_37), .CK(clk_0), 
            .Q(display_c_5));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[3] 314[10])
    defparam display_i0_i6.GSR = "DISABLED";
    FD1P3AX display_i0_i7 (.D(n5574), .SP(clk_0_enable_37), .CK(clk_0), 
            .Q(display_c_6));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[3] 314[10])
    defparam display_i0_i7.GSR = "DISABLED";
    FD1P3AX sel_i0_i2 (.D(temp_control[1]), .SP(clk_enable_18), .CK(clk_0), 
            .Q(sel_c_1));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[3] 314[10])
    defparam sel_i0_i2.GSR = "DISABLED";
    FD1P3AX sel_i0_i3 (.D(temp_control[2]), .SP(clk_enable_18), .CK(clk_0), 
            .Q(sel_c_2));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[3] 314[10])
    defparam sel_i0_i3.GSR = "DISABLED";
    FD1P3AX sel_i0_i4 (.D(temp_control[3]), .SP(clk_enable_18), .CK(clk_0), 
            .Q(sel_c_3));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[3] 314[10])
    defparam sel_i0_i4.GSR = "DISABLED";
    PFUMX i5896 (.BLUT(n8315), .ALUT(n6_adj_1153), .C0(execute_instruction[2]), 
          .Z(n8020));
    PFUMX i7496 (.BLUT(n17980), .ALUT(n17622), .C0(global_state[3]), .Z(global_state_3__N_159[3]));
    FD1P3AX global_state_i0_i2 (.D(global_state_3__N_159[2]), .SP(clk_0_enable_41), 
            .CK(clk_0), .Q(global_state[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam global_state_i0_i2.GSR = "ENABLED";
    FD1P3AX execute_instruction_i0_i1 (.D(n17957), .SP(clk_0_enable_48), 
            .CK(clk_0), .Q(execute_instruction[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam execute_instruction_i0_i1.GSR = "ENABLED";
    FD1S3AX temp_control_FSM_i2 (.D(n1699), .CK(clk_0), .Q(temp_control[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(295[4] 312[13])
    defparam temp_control_FSM_i2.GSR = "ENABLED";
    PFUMX i16219 (.BLUT(n18354), .ALUT(n18353), .C0(n2543), .Z(bcd_out_15__N_374));
    FD1P3IX count_674__i0 (.D(n95), .SP(clk_enable_18), .CD(n8536), .CK(clk), 
            .Q(n18)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(326[14:19])
    defparam count_674__i0.GSR = "DISABLED";
    PFUMX i5590 (.BLUT(n8217), .ALUT(n6), .C0(execute_instruction[2]), 
          .Z(n7714));
    FD1S3AX temp_control_FSM_i3 (.D(temp_control[0]), .CK(clk_0), .Q(temp_control[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(295[4] 312[13])
    defparam temp_control_FSM_i3.GSR = "ENABLED";
    FD1S3AX temp_control_FSM_i4 (.D(temp_control[1]), .CK(clk_0), .Q(temp_control[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(295[4] 312[13])
    defparam temp_control_FSM_i4.GSR = "ENABLED";
    FD1S3AX temp_control_FSM_i5 (.D(temp_control[2]), .CK(clk_0), .Q(temp_control[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(295[4] 312[13])
    defparam temp_control_FSM_i5.GSR = "ENABLED";
    PFUMX i5 (.BLUT(n6_adj_1140), .ALUT(n7_adj_1177), .C0(instruction[2]), 
          .Z(n1_adj_1164));
    FD1P3AX PC_i0_i1 (.D(PC_7__N_168[1]), .SP(clk_0_enable_151), .CK(clk_0), 
            .Q(PC[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam PC_i0_i1.GSR = "ENABLED";
    PFUMX i5_adj_95 (.BLUT(n6_adj_1155), .ALUT(n7_adj_1138), .C0(instruction[2]), 
          .Z(n1_adj_1139));
    FD1P3IX IR_i0_i11 (.D(MBR[11]), .SP(clk_0_enable_67), .CD(n18880), 
            .CK(clk_0), .Q(IR[11]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam IR_i0_i11.GSR = "ENABLED";
    PFUMX mux_293_Mux_0_i142 (.BLUT(n134), .ALUT(n141), .C0(instruction[3]), 
          .Z(n142));
    LUT4 m1_lut (.Z(n19477)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    FD1P3IX IR_i0_i10 (.D(MBR[10]), .SP(clk_0_enable_67), .CD(n18880), 
            .CK(clk_0), .Q(IR[10]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam IR_i0_i10.GSR = "ENABLED";
    PFUMX i13793 (.BLUT(n5), .ALUT(n7_adj_1137), .C0(instruction[2]), 
          .Z(n1));
    FD1P3IX IR_i0_i9 (.D(MBR[9]), .SP(clk_0_enable_67), .CD(n18880), .CK(clk_0), 
            .Q(IR[9]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam IR_i0_i9.GSR = "ENABLED";
    FD1P3IX IR_i0_i8 (.D(MBR[8]), .SP(clk_0_enable_67), .CD(n18880), .CK(clk_0), 
            .Q(IR[8]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam IR_i0_i8.GSR = "ENABLED";
    FD1P3AX execute_instruction_i0_i0 (.D(n18018), .SP(clk_0_enable_48), 
            .CK(clk_0), .Q(execute_instruction[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam execute_instruction_i0_i0.GSR = "ENABLED";
    FD1P3IX IR_i0_i7 (.D(MBR[7]), .SP(clk_0_enable_67), .CD(n18880), .CK(clk_0), 
            .Q(IR[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam IR_i0_i7.GSR = "ENABLED";
    FD1P3AX global_state_i0_i0 (.D(global_state_3__N_159[0]), .SP(clk_0_enable_60), 
            .CK(clk_0), .Q(global_state[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam global_state_i0_i0.GSR = "ENABLED";
    CCU2D count_674_add_4_19 (.A0(count[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16852), .S0(n78));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(326[14:19])
    defparam count_674_add_4_19.INIT0 = 16'hfaaa;
    defparam count_674_add_4_19.INIT1 = 16'h0000;
    defparam count_674_add_4_19.INJECT1_0 = "NO";
    defparam count_674_add_4_19.INJECT1_1 = "NO";
    CCU2D count_674_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16851), .COUT(n16852), .S0(n80), .S1(n79));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(326[14:19])
    defparam count_674_add_4_17.INIT0 = 16'hfaaa;
    defparam count_674_add_4_17.INIT1 = 16'hfaaa;
    defparam count_674_add_4_17.INJECT1_0 = "NO";
    defparam count_674_add_4_17.INJECT1_1 = "NO";
    CCU2D count_674_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16850), .COUT(n16851), .S0(n82), .S1(n81));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(326[14:19])
    defparam count_674_add_4_15.INIT0 = 16'hfaaa;
    defparam count_674_add_4_15.INIT1 = 16'hfaaa;
    defparam count_674_add_4_15.INJECT1_0 = "NO";
    defparam count_674_add_4_15.INJECT1_1 = "NO";
    CCU2D count_674_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16849), .COUT(n16850), .S0(n84), .S1(n83));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(326[14:19])
    defparam count_674_add_4_13.INIT0 = 16'hfaaa;
    defparam count_674_add_4_13.INIT1 = 16'hfaaa;
    defparam count_674_add_4_13.INJECT1_0 = "NO";
    defparam count_674_add_4_13.INJECT1_1 = "NO";
    PFUMX i8028 (.BLUT(n13_adj_1175), .ALUT(n10136), .C0(n18915), .Z(B_temp_11__N_982));
    CCU2D add_163_7 (.A0(PC[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n16834), 
          .COUT(n16835), .S0(n1595), .S1(n1594));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_163_7.INIT0 = 16'h5555;
    defparam add_163_7.INIT1 = 16'h5555;
    defparam add_163_7.INJECT1_0 = "NO";
    defparam add_163_7.INJECT1_1 = "NO";
    LUT4 i2_3_lut (.A(global_state[3]), .B(n18525), .C(IR[23]), .Z(n17082)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut.init = 16'h0404;
    LUT4 i2_4_lut_4_lut_4_lut (.A(control[0]), .B(control[1]), .C(control[2]), 
         .D(control[3]), .Z(n7615)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (D)+!B !(C+!(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i2_4_lut_4_lut_4_lut.init = 16'h6700;
    LUT4 instruction_3__bdd_4_lut_16243 (.A(instruction[3]), .B(instruction[2]), 
         .C(instruction[1]), .D(n9337), .Z(n18361)) /* synthesis lut_function=(A (D)+!A !(B+(C+!(D)))) */ ;
    defparam instruction_3__bdd_4_lut_16243.init = 16'hab00;
    LUT4 i2_4_lut_else_4_lut_4_lut (.A(stop_run_c), .B(reset_c), .C(global_state[3]), 
         .D(global_state[2]), .Z(n18961)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_4_lut_else_4_lut_4_lut.init = 16'h1000;
    CCU2D add_7_9 (.A0(PC[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n16831), 
          .S0(n225));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_7_9.INIT0 = 16'h5aaa;
    defparam add_7_9.INIT1 = 16'h0000;
    defparam add_7_9.INJECT1_0 = "NO";
    defparam add_7_9.INJECT1_1 = "NO";
    LUT4 i1964_3_lut (.A(de[0]), .B(un[0]), .C(temp_control[3]), .Z(n4035)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(295[4] 312[13])
    defparam i1964_3_lut.init = 16'hcaca;
    LUT4 mux_640_i1_3_lut (.A(mi[0]), .B(ce[0]), .C(temp_control[1]), 
         .Z(n2491)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(295[4] 312[13])
    defparam mux_640_i1_3_lut.init = 16'hcaca;
    LUT4 i53_then_4_lut (.A(instruction[0]), .B(instruction[3]), .C(instruction[1]), 
         .D(instruction[2]), .Z(n18998)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B (C+(D))+!B ((D)+!C)))) */ ;
    defparam i53_then_4_lut.init = 16'h0214;
    LUT4 i8_2_lut (.A(IR[2]), .B(IR[17]), .Z(n3)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(83[8:10])
    defparam i8_2_lut.init = 16'h6666;
    LUT4 i53_else_4_lut (.A(global_state[1]), .B(global_state[2]), .Z(n18997)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i53_else_4_lut.init = 16'h4444;
    CCU2D add_7_7 (.A0(PC[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n16830), 
          .COUT(n16831), .S0(n227), .S1(n226));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_7_7.INIT0 = 16'h5aaa;
    defparam add_7_7.INIT1 = 16'h5aaa;
    defparam add_7_7.INJECT1_0 = "NO";
    defparam add_7_7.INJECT1_1 = "NO";
    LUT4 i8_2_lut_adj_96 (.A(IR[3]), .B(IR[17]), .Z(n3_adj_1135)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(83[8:10])
    defparam i8_2_lut_adj_96.init = 16'h6666;
    LUT4 i6_2_lut (.A(IR[0]), .B(IR[17]), .Z(n3799)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(83[8:10])
    defparam i6_2_lut.init = 16'h6666;
    LUT4 i8427_4_lut (.A(ACC[7]), .B(n18959), .C(data_out_23__N_591[7]), 
         .D(n8389), .Z(n8321)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i8427_4_lut.init = 16'hc088;
    LUT4 i1_2_lut (.A(IR[1]), .B(IR[17]), .Z(n3797)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i8366_4_lut (.A(ACC[8]), .B(n18959), .C(data_out_23__N_591[8]), 
         .D(n8389), .Z(n8370)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i8366_4_lut.init = 16'hc088;
    LUT4 IR_22__bdd_4_lut_16415 (.A(IR[22]), .B(IR[21]), .C(IR[19]), .D(IR[18]), 
         .Z(n18561)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A ((C+!(D))+!B)) */ ;
    defparam IR_22__bdd_4_lut_16415.init = 16'hd1ff;
    PFUMX i13800 (.BLUT(n7_adj_1130), .ALUT(n6_adj_1129), .C0(instruction[2]), 
          .Z(n7));
    LUT4 n1598_bdd_4_lut_then_4_lut (.A(IR[2]), .B(instruction[1]), .C(instruction[0]), 
         .D(instruction[2]), .Z(n19007)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A (B+!(C (D))))) */ ;
    defparam n1598_bdd_4_lut_then_4_lut.init = 16'h3008;
    LUT4 n1598_bdd_4_lut_else_4_lut (.A(IR[2]), .B(instruction[1]), .C(instruction[0]), 
         .D(instruction[2]), .Z(n19006)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam n1598_bdd_4_lut_else_4_lut.init = 16'h0008;
    LUT4 n1599_bdd_4_lut_then_4_lut (.A(IR[1]), .B(instruction[1]), .C(instruction[0]), 
         .D(instruction[2]), .Z(n19010)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A (B+!(C (D))))) */ ;
    defparam n1599_bdd_4_lut_then_4_lut.init = 16'h3008;
    LUT4 n1599_bdd_4_lut_else_4_lut (.A(IR[1]), .B(instruction[1]), .C(instruction[0]), 
         .D(instruction[2]), .Z(n19009)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam n1599_bdd_4_lut_else_4_lut.init = 16'h0008;
    LUT4 i8424_4_lut (.A(ACC[9]), .B(n18959), .C(data_out_23__N_591[9]), 
         .D(n8389), .Z(n8325)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i8424_4_lut.init = 16'hc088;
    LUT4 n5488_bdd_4_lut_then_4_lut (.A(IR[4]), .B(instruction[1]), .C(instruction[0]), 
         .D(instruction[2]), .Z(n19013)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A (B+!(C (D))))) */ ;
    defparam n5488_bdd_4_lut_then_4_lut.init = 16'h3008;
    LUT4 n5488_bdd_4_lut_else_4_lut (.A(IR[4]), .B(instruction[1]), .C(instruction[0]), 
         .D(instruction[2]), .Z(n19012)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam n5488_bdd_4_lut_else_4_lut.init = 16'h0008;
    FD1P3IX IR_i0_i6 (.D(MBR[6]), .SP(clk_0_enable_67), .CD(n18880), .CK(clk_0), 
            .Q(IR[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam IR_i0_i6.GSR = "ENABLED";
    LUT4 mux_1776_i3_then_4_lut (.A(n2562), .B(n2587), .C(bcd_out_15__N_402), 
         .D(n18797), .Z(n19016)) /* synthesis lut_function=(A (B (C (D))+!B !(C))+!A !(B+(C))) */ ;
    defparam mux_1776_i3_then_4_lut.init = 16'h8303;
    FD1P3IX count_674__i17 (.D(n78), .SP(clk_enable_18), .CD(n8536), .CK(clk), 
            .Q(count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(326[14:19])
    defparam count_674__i17.GSR = "DISABLED";
    LUT4 n18982_bdd_4_lut (.A(n18982), .B(n18983), .C(n18938), .D(n18091), 
         .Z(clk_0_enable_105)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n18982_bdd_4_lut.init = 16'hca00;
    LUT4 mux_1776_i3_else_4_lut (.A(n2583), .B(n2562), .C(bcd_out_15__N_402), 
         .D(n18797), .Z(n19015)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam mux_1776_i3_else_4_lut.init = 16'h8880;
    LUT4 n5488_bdd_4_lut_16431_then_4_lut (.A(IR[3]), .B(instruction[1]), 
         .C(instruction[0]), .D(instruction[2]), .Z(n19019)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A (B+!(C (D))))) */ ;
    defparam n5488_bdd_4_lut_16431_then_4_lut.init = 16'h3008;
    LUT4 n5488_bdd_4_lut_16431_else_4_lut (.A(IR[3]), .B(instruction[1]), 
         .C(instruction[0]), .D(instruction[2]), .Z(n19018)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam n5488_bdd_4_lut_16431_else_4_lut.init = 16'h0008;
    LUT4 i8369_4_lut (.A(ACC[10]), .B(n18959), .C(data_out_23__N_591[10]), 
         .D(n8389), .Z(n8368)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i8369_4_lut.init = 16'hc088;
    LUT4 i1_2_lut_adj_97 (.A(control[1]), .B(A[8]), .Z(n5670)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i1_2_lut_adj_97.init = 16'h8888;
    LUT4 IR_22__bdd_3_lut_16414 (.A(IR[21]), .B(IR[19]), .C(IR[18]), .Z(n18560)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam IR_22__bdd_3_lut_16414.init = 16'hfefe;
    LUT4 i3480_3_lut (.A(de[6]), .B(un[6]), .C(temp_control[3]), .Z(n5573)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(295[4] 312[13])
    defparam i3480_3_lut.init = 16'hcaca;
    LUT4 mux_640_i7_3_lut (.A(mi[6]), .B(ce[6]), .C(temp_control[1]), 
         .Z(n2485)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(295[4] 312[13])
    defparam mux_640_i7_3_lut.init = 16'hcaca;
    LUT4 i8370_2_lut_rep_367 (.A(stop_run_c), .B(reset_c), .Z(n19472)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8370_2_lut_rep_367.init = 16'heeee;
    LUT4 i8480_4_lut (.A(ACC[11]), .B(n18959), .C(data_out_23__N_591[11]), 
         .D(n8389), .Z(n8329)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i8480_4_lut.init = 16'hc088;
    LUT4 n10_bdd_4_lut (.A(n10), .B(n20), .C(global_state[3]), .D(stop_run_c), 
         .Z(clk_0_enable_31)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n10_bdd_4_lut.init = 16'h00ca;
    FD1P3IX count_674__i16 (.D(n79), .SP(clk_enable_18), .CD(n8536), .CK(clk), 
            .Q(count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(326[14:19])
    defparam count_674__i16.GSR = "DISABLED";
    LUT4 i16187_4_lut (.A(global_state[3]), .B(n17894), .C(IR[23]), .D(IR[21]), 
         .Z(n17895)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i16187_4_lut.init = 16'h0001;
    LUT4 i6_4_lut (.A(n19008), .B(n485), .C(instruction[3]), .D(n18899), 
         .Z(n587)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(103[8:19])
    defparam i6_4_lut.init = 16'hca0a;
    LUT4 i6_4_lut_adj_98 (.A(n19020), .B(n484), .C(instruction[3]), .D(n18899), 
         .Z(n2_adj_1186)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(103[8:19])
    defparam i6_4_lut_adj_98.init = 16'hca0a;
    FD1P3IX count_674__i15 (.D(n80), .SP(clk_enable_18), .CD(n8536), .CK(clk), 
            .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(326[14:19])
    defparam count_674__i15.GSR = "DISABLED";
    LUT4 i6_4_lut_adj_99 (.A(n19014), .B(n18899), .C(instruction[3]), 
         .D(n483), .Z(n2_adj_1191)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(103[8:19])
    defparam i6_4_lut_adj_99.init = 16'hca0a;
    LUT4 i6_4_lut_adj_100 (.A(n1), .B(n482), .C(instruction[3]), .D(n18899), 
         .Z(n2_adj_1176)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(103[8:19])
    defparam i6_4_lut_adj_100.init = 16'hca0a;
    FD1P3IX count_674__i14 (.D(n81), .SP(clk_enable_18), .CD(n8536), .CK(clk), 
            .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(326[14:19])
    defparam count_674__i14.GSR = "DISABLED";
    LUT4 i6_4_lut_adj_101 (.A(n1_adj_1139), .B(n481), .C(instruction[3]), 
         .D(n18899), .Z(n2_adj_1157)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(103[8:19])
    defparam i6_4_lut_adj_101.init = 16'hca0a;
    LUT4 control_1__bdd_4_lut_16350 (.A(control[1]), .B(control[0]), .C(A[7]), 
         .D(B[7]), .Z(n18575)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_16350.init = 16'h5660;
    FD1P3IX count_674__i13 (.D(n82), .SP(clk_enable_18), .CD(n8536), .CK(clk), 
            .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(326[14:19])
    defparam count_674__i13.GSR = "DISABLED";
    LUT4 i6_4_lut_adj_102 (.A(n1_adj_1164), .B(n480), .C(instruction[3]), 
         .D(n18899), .Z(n2)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(103[8:19])
    defparam i6_4_lut_adj_102.init = 16'hca0a;
    LUT4 control_1__bdd_4_lut_16351 (.A(control[1]), .B(control[0]), .C(A[6]), 
         .D(B[6]), .Z(n18576)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_16351.init = 16'h5660;
    LUT4 i6246_2_lut (.A(instruction[0]), .B(instruction[3]), .Z(n8389)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i6246_2_lut.init = 16'h2222;
    CCU2D add_163_5 (.A0(PC[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n16833), 
          .COUT(n16834), .S0(n1597), .S1(n1596));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_163_5.INIT0 = 16'h5555;
    defparam add_163_5.INIT1 = 16'h5555;
    defparam add_163_5.INJECT1_0 = "NO";
    defparam add_163_5.INJECT1_1 = "NO";
    PFUMX i16442 (.BLUT(n18973), .ALUT(n18974), .C0(global_state[0]), 
          .Z(clk_0_enable_142));
    LUT4 n102_bdd_4_lut (.A(n76), .B(n6794), .C(IR[16]), .D(execute_instruction[2]), 
         .Z(n18375)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A !(((D)+!C)+!B)) */ ;
    defparam n102_bdd_4_lut.init = 16'haac0;
    LUT4 i8358_2_lut_2_lut_3_lut (.A(control[0]), .B(control[1]), .C(logic_result[9]), 
         .Z(n10_adj_1192)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i8358_2_lut_2_lut_3_lut.init = 16'h7070;
    CCU2D add_7_5 (.A0(PC[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n16829), 
          .COUT(n16830), .S0(n229), .S1(n228));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_7_5.INIT0 = 16'h5aaa;
    defparam add_7_5.INIT1 = 16'h5aaa;
    defparam add_7_5.INJECT1_0 = "NO";
    defparam add_7_5.INJECT1_1 = "NO";
    LUT4 i8549_2_lut_2_lut_3_lut (.A(control[0]), .B(control[1]), .C(logic_result[3]), 
         .Z(n10_adj_1123)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i8549_2_lut_2_lut_3_lut.init = 16'h7070;
    LUT4 i8558_2_lut_2_lut_3_lut (.A(control[0]), .B(control[1]), .C(logic_result[5]), 
         .Z(n10_adj_1128)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i8558_2_lut_2_lut_3_lut.init = 16'h7070;
    LUT4 i8550_2_lut_2_lut_3_lut (.A(control[0]), .B(control[1]), .C(logic_result[4]), 
         .Z(n10_adj_1124)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i8550_2_lut_2_lut_3_lut.init = 16'h7070;
    FD1P3IX count_674__i12 (.D(n83), .SP(clk_enable_18), .CD(n8536), .CK(clk), 
            .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(326[14:19])
    defparam count_674__i12.GSR = "DISABLED";
    LUT4 i8540_3_lut_4_lut (.A(control[0]), .B(control[1]), .C(control[2]), 
         .D(A[8]), .Z(n6744)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i8540_3_lut_4_lut.init = 16'h8008;
    LUT4 i8563_2_lut_2_lut_3_lut (.A(control[0]), .B(control[1]), .C(logic_result[6]), 
         .Z(n10_adj_1127)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i8563_2_lut_2_lut_3_lut.init = 16'h7070;
    LUT4 i8541_3_lut_4_lut (.A(control[0]), .B(control[1]), .C(control[2]), 
         .D(A[9]), .Z(n6742)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i8541_3_lut_4_lut.init = 16'h8008;
    LUT4 n7291_bdd_4_lut_16359 (.A(n76), .B(IR[16]), .C(execute_instruction[2]), 
         .D(n18920), .Z(n18373)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;
    defparam n7291_bdd_4_lut_16359.init = 16'haca0;
    LUT4 i2_2_lut_3_lut (.A(control[0]), .B(control[1]), .C(control[3]), 
         .Z(n17913)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i2_2_lut_3_lut.init = 16'h8080;
    LUT4 i8560_2_lut_2_lut_3_lut (.A(control[0]), .B(control[1]), .C(logic_result[7]), 
         .Z(n10_adj_1121)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i8560_2_lut_2_lut_3_lut.init = 16'h7070;
    LUT4 i8539_3_lut_4_lut (.A(control[0]), .B(control[1]), .C(control[2]), 
         .D(A[7]), .Z(n6746)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i8539_3_lut_4_lut.init = 16'h8008;
    LUT4 i1_2_lut_2_lut_2_lut_3_lut_4_lut (.A(control[0]), .B(control[1]), 
         .C(control[2]), .D(control[3]), .Z(logic_result_11__N_951)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i1_2_lut_2_lut_2_lut_3_lut_4_lut.init = 16'h0700;
    LUT4 i8538_3_lut_4_lut (.A(control[0]), .B(control[1]), .C(control[2]), 
         .D(A[6]), .Z(n6748)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i8538_3_lut_4_lut.init = 16'h8008;
    LUT4 i8362_2_lut_2_lut_3_lut (.A(control[0]), .B(control[1]), .C(logic_result[10]), 
         .Z(n10_adj_1190)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i8362_2_lut_2_lut_3_lut.init = 16'h7070;
    LUT4 i8365_2_lut_2_lut_3_lut (.A(control[0]), .B(control[1]), .C(logic_result[11]), 
         .Z(n10_adj_1189)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i8365_2_lut_2_lut_3_lut.init = 16'h7070;
    LUT4 i1_2_lut_3_lut_4_lut_adj_103 (.A(control[0]), .B(control[1]), .C(control[2]), 
         .D(control[3]), .Z(A_temp_11__N_976)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (C+!(D))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i1_2_lut_3_lut_4_lut_adj_103.init = 16'hf8ff;
    LUT4 n18693_bdd_4_lut (.A(n18693), .B(IR[17]), .C(n18361), .D(execute_instruction[2]), 
         .Z(n19469)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n18693_bdd_4_lut.init = 16'hf088;
    LUT4 mux_293_Mux_0_i255_4_lut_4_lut_4_lut_4_lut (.A(global_state[0]), 
         .B(n142), .C(global_state[3]), .D(n19471), .Z(global_state_3__N_159[0])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C (D))+!B (C)))) */ ;
    defparam mux_293_Mux_0_i255_4_lut_4_lut_4_lut_4_lut.init = 16'h05e5;
    LUT4 i15992_4_lut_4_lut_4_lut (.A(IR[18]), .B(IR[19]), .C(IR[20]), 
         .D(IR[21]), .Z(n18115)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+((D)+!C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(153[6] 165[15])
    defparam i15992_4_lut_4_lut_4_lut.init = 16'hfdef;
    FD1P3IX Rdisplay_i0_i0 (.D(n7717), .SP(clk_0_enable_83), .CD(n8512), 
            .CK(clk_0), .Q(Q[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam Rdisplay_i0_i0.GSR = "DISABLED";
    LUT4 i11_4_lut_4_lut_4_lut (.A(control[0]), .B(B[6]), .C(control[1]), 
         .D(A[6]), .Z(n13_adj_1175)) /* synthesis lut_function=(A (C (D))+!A !((C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(95[8:15])
    defparam i11_4_lut_4_lut_4_lut.init = 16'ha404;
    FD1P3IX count_674__i11 (.D(n84), .SP(clk_enable_18), .CD(n8536), .CK(clk), 
            .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(326[14:19])
    defparam count_674__i11.GSR = "DISABLED";
    CCU2D count_674_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n16848), .COUT(n16849), .S0(n86), .S1(n85));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(326[14:19])
    defparam count_674_add_4_11.INIT0 = 16'hfaaa;
    defparam count_674_add_4_11.INIT1 = 16'hfaaa;
    defparam count_674_add_4_11.INJECT1_0 = "NO";
    defparam count_674_add_4_11.INJECT1_1 = "NO";
    FD1P3IX count_674__i10 (.D(n85), .SP(clk_enable_18), .CD(n8536), .CK(clk), 
            .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(326[14:19])
    defparam count_674__i10.GSR = "DISABLED";
    CCU2D count_674_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16847), .COUT(n16848), .S0(n88), .S1(n87));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(326[14:19])
    defparam count_674_add_4_9.INIT0 = 16'hfaaa;
    defparam count_674_add_4_9.INIT1 = 16'hfaaa;
    defparam count_674_add_4_9.INJECT1_0 = "NO";
    defparam count_674_add_4_9.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(n17913), .B(B[10]), .C(A[10]), .D(n18087), .Z(n17804)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(95[8:15])
    defparam i1_4_lut.init = 16'ha0ec;
    LUT4 i1_4_lut_adj_104 (.A(n17913), .B(B[11]), .C(A[11]), .D(n18087), 
         .Z(n17856)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(95[8:15])
    defparam i1_4_lut_adj_104.init = 16'ha0ec;
    FD1P3IX count_674__i9 (.D(n86), .SP(clk_enable_18), .CD(n8536), .CK(clk), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(326[14:19])
    defparam count_674__i9.GSR = "DISABLED";
    FD1P3IX count_674__i8 (.D(n87), .SP(clk_enable_18), .CD(n8536), .CK(clk), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(326[14:19])
    defparam count_674__i8.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_364 (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .Z(n18959)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i1_2_lut_rep_364.init = 16'h8888;
    LUT4 i2963_2_lut_rep_284_3_lut_4_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(instruction[0]), .D(execute_instruction[2]), .Z(n18879)) /* synthesis lut_function=(A (B+((D)+!C))+!A ((D)+!C)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i2963_2_lut_rep_284_3_lut_4_lut.init = 16'hff8f;
    LUT4 n1589_bdd_2_lut_16409_3_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(n18659), .Z(n18660)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam n1589_bdd_2_lut_16409_3_lut.init = 16'h8080;
    LUT4 i332_2_lut_rep_307_3_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(execute_instruction[2]), .Z(n18902)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i332_2_lut_rep_307_3_lut.init = 16'hf8f8;
    LUT4 i1_4_lut_rep_306_then_4_lut (.A(stop_run_c), .B(global_state[1]), 
         .C(global_state[3]), .D(global_state[0]), .Z(n19474)) /* synthesis lut_function=(!(A+!(B (C)+!B (C+!(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    defparam i1_4_lut_rep_306_then_4_lut.init = 16'h5051;
    LUT4 i1_2_lut_rep_294_3_lut (.A(stop_run_c), .B(reset_c), .C(global_state[3]), 
         .Z(n18889)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_294_3_lut.init = 16'h1010;
    LUT4 i16169_2_lut_3_lut_4_lut (.A(stop_run_c), .B(reset_c), .C(n18207), 
         .D(global_state[3]), .Z(clk_0_enable_63)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i16169_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 n2873_bdd_4_lut (.A(n2873), .B(n18888), .C(n6_adj_1182), .D(instruction[2]), 
         .Z(n18702)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n2873_bdd_4_lut.init = 16'hf088;
    LUT4 n18115_bdd_4_lut (.A(n18115), .B(n18116), .C(IR[22]), .D(IR[23]), 
         .Z(n18707)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam n18115_bdd_4_lut.init = 16'hffca;
    LUT4 intermediate_carry_11__bdd_4_lut_16512 (.A(intermediate_carry[11]), 
         .B(intermediate_carry[0]), .C(A_temp[11]), .D(B_temp[11]), .Z(n18658)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam intermediate_carry_11__bdd_4_lut_16512.init = 16'h7e24;
    LUT4 i3478_3_lut (.A(de[5]), .B(un[5]), .C(temp_control[3]), .Z(n5571)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(295[4] 312[13])
    defparam i3478_3_lut.init = 16'hcaca;
    LUT4 execute_instruction_2__bdd_4_lut (.A(instruction[1]), .B(instruction[3]), 
         .C(instruction[0]), .D(n18959), .Z(n18434)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !((C)+!B))) */ ;
    defparam execute_instruction_2__bdd_4_lut.init = 16'h5171;
    LUT4 i305_1_lut_rep_342 (.A(reset_c), .Z(clk_enable_18)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i305_1_lut_rep_342.init = 16'h5555;
    FD1P3IX count_674__i7 (.D(n88), .SP(clk_enable_18), .CD(n8536), .CK(clk), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(326[14:19])
    defparam count_674__i7.GSR = "DISABLED";
    FD1P3IX IR_i0_i5 (.D(MBR[5]), .SP(clk_0_enable_67), .CD(n18880), .CK(clk_0), 
            .Q(IR[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam IR_i0_i5.GSR = "ENABLED";
    LUT4 i8275_2_lut_3_lut_3_lut (.A(reset_c), .B(n6251), .C(n18724), 
         .Z(DISPLAY_6__N_584_adj_1202[4])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8275_2_lut_3_lut_3_lut.init = 16'h8c8c;
    LUT4 mux_640_i6_3_lut (.A(mi[5]), .B(ce[5]), .C(temp_control[1]), 
         .Z(n2486)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(295[4] 312[13])
    defparam mux_640_i6_3_lut.init = 16'hcaca;
    LUT4 i13804_4_lut (.A(PC[0]), .B(IR[0]), .C(global_state[3]), .D(n17948), 
         .Z(MAR_7__N_176[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    defparam i13804_4_lut.init = 16'hca0a;
    LUT4 i3476_3_lut (.A(de[4]), .B(un[4]), .C(temp_control[3]), .Z(n5569)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(295[4] 312[13])
    defparam i3476_3_lut.init = 16'hcaca;
    FD1P3IX count_674__i6 (.D(n89), .SP(clk_enable_18), .CD(n8536), .CK(clk), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(326[14:19])
    defparam count_674__i6.GSR = "DISABLED";
    FD1P3IX IR_i0_i4 (.D(MBR[4]), .SP(clk_0_enable_67), .CD(n18880), .CK(clk_0), 
            .Q(IR[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam IR_i0_i4.GSR = "ENABLED";
    FD1P3IX rpg_in_i0_i0 (.D(n7714), .SP(clk_0_enable_105), .CD(n8497), 
            .CK(clk_0), .Q(rpg_in[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam rpg_in_i0_i0.GSR = "DISABLED";
    LUT4 n18434_bdd_2_lut (.A(n18434), .B(execute_instruction[2]), .Z(n18435)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n18434_bdd_2_lut.init = 16'h2222;
    FD1P3IX count_674__i5 (.D(n90), .SP(clk_enable_18), .CD(n8536), .CK(clk), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(326[14:19])
    defparam count_674__i5.GSR = "DISABLED";
    LUT4 i4_4_lut (.A(n18051), .B(n17929), .C(n18902), .D(global_state[0]), 
         .Z(clk_0_enable_7)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i4_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_adj_105 (.A(global_state[3]), .B(stop_run_c), .Z(n17929)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i1_2_lut_adj_105.init = 16'h2222;
    FD1P3IX count_674__i4 (.D(n91), .SP(clk_enable_18), .CD(n8536), .CK(clk), 
            .Q(n14_adj_1120)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(326[14:19])
    defparam count_674__i4.GSR = "DISABLED";
    LUT4 n18375_bdd_4_lut (.A(n18375), .B(n18374), .C(instruction[1]), 
         .D(n7291), .Z(n18708)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n18375_bdd_4_lut.init = 16'h00ca;
    LUT4 mux_640_i5_3_lut (.A(mi[4]), .B(ce[4]), .C(temp_control[1]), 
         .Z(n2487)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(295[4] 312[13])
    defparam mux_640_i5_3_lut.init = 16'hcaca;
    LUT4 i3474_3_lut (.A(de[3]), .B(un[3]), .C(temp_control[3]), .Z(n5567)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(295[4] 312[13])
    defparam i3474_3_lut.init = 16'hcaca;
    FD1P3AX B_i0_i0 (.D(n17983), .SP(clk_0_enable_127), .CK(clk_0), .Q(B[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam B_i0_i0.GSR = "DISABLED";
    LUT4 bcd_out_15__N_360_bdd_4_lut (.A(n18844), .B(bcd_out_15__N_364), 
         .C(bcd_out_15__N_373), .D(n18841), .Z(n18682)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A (B (C+(D))+!B !(C+(D))))) */ ;
    defparam bcd_out_15__N_360_bdd_4_lut.init = 16'h399c;
    LUT4 i16161_2_lut (.A(n1683), .B(reset_c), .Z(clk_0_enable_37)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(292[3] 314[10])
    defparam i16161_2_lut.init = 16'h1111;
    FD1P3IX count_674__i3 (.D(n92), .SP(clk_enable_18), .CD(n8536), .CK(clk), 
            .Q(n15)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(326[14:19])
    defparam count_674__i3.GSR = "DISABLED";
    FD1P3IX IR_i0_i3 (.D(MBR[3]), .SP(clk_0_enable_67), .CD(n18880), .CK(clk_0), 
            .Q(IR[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam IR_i0_i3.GSR = "ENABLED";
    LUT4 mux_640_i4_3_lut (.A(mi[3]), .B(ce[3]), .C(temp_control[1]), 
         .Z(n2488)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(295[4] 312[13])
    defparam mux_640_i4_3_lut.init = 16'hcaca;
    FD1P3IX count_674__i2 (.D(n93), .SP(clk_enable_18), .CD(n8536), .CK(clk), 
            .Q(n16)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(326[14:19])
    defparam count_674__i2.GSR = "DISABLED";
    LUT4 mux_1778_i3_then_4_lut (.A(n2543), .B(Q[13]), .C(Q[11]), .D(Q[10]), 
         .Z(n18971)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))) */ ;
    defparam mux_1778_i3_then_4_lut.init = 16'ha220;
    FD1P3IX count_674__i1 (.D(n94), .SP(clk_enable_18), .CD(n8536), .CK(clk), 
            .Q(n17)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(326[14:19])
    defparam count_674__i1.GSR = "DISABLED";
    LUT4 mux_1778_i3_else_4_lut (.A(Q[13]), .B(Q[11]), .Z(n18970)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam mux_1778_i3_else_4_lut.init = 16'h2222;
    LUT4 i1_2_lut_adj_106 (.A(clk_0), .B(n10760), .Z(clk_0_N_347)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_106.init = 16'h6666;
    LUT4 i1_4_lut_adj_107 (.A(stop_run_c), .B(n25), .C(global_state[0]), 
         .D(n18999), .Z(clk_0_enable_151)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;
    defparam i1_4_lut_adj_107.init = 16'h4544;
    LUT4 i8643_4_lut (.A(count[16]), .B(count[17]), .C(n16948), .D(count[15]), 
         .Z(n10760)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i8643_4_lut.init = 16'heccc;
    LUT4 mux_56_Mux_0_i15_4_lut (.A(n232), .B(n589), .C(global_state[3]), 
         .D(n19471), .Z(PC_7__N_168[0])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam mux_56_Mux_0_i15_4_lut.init = 16'h0aca;
    LUT4 i3472_3_lut (.A(de[2]), .B(un[2]), .C(temp_control[3]), .Z(n5565)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(295[4] 312[13])
    defparam i3472_3_lut.init = 16'hcaca;
    LUT4 mux_640_i3_3_lut (.A(mi[2]), .B(ce[2]), .C(temp_control[1]), 
         .Z(n2489)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(295[4] 312[13])
    defparam mux_640_i3_3_lut.init = 16'hcaca;
    LUT4 mux_52_Mux_0_i15_4_lut (.A(n7), .B(n487), .C(instruction[3]), 
         .D(n18899), .Z(n589)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam mux_52_Mux_0_i15_4_lut.init = 16'hca0a;
    LUT4 i4_4_lut_adj_108 (.A(count[12]), .B(count[14]), .C(count[13]), 
         .D(n6_adj_1162), .Z(n16948)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_108.init = 16'hfffe;
    LUT4 i3470_3_lut (.A(de[1]), .B(un[1]), .C(temp_control[3]), .Z(n5563)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(295[4] 312[13])
    defparam i3470_3_lut.init = 16'hcaca;
    LUT4 mux_54_Mux_1_i15_4_lut (.A(PC[1]), .B(IR[1]), .C(global_state[3]), 
         .D(n17948), .Z(MAR_7__N_176[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam mux_54_Mux_1_i15_4_lut.init = 16'hca0a;
    FD1P3IX IR_i0_i2 (.D(MBR[2]), .SP(clk_0_enable_67), .CD(n18880), .CK(clk_0), 
            .Q(IR[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam IR_i0_i2.GSR = "ENABLED";
    FD1P3AX execute_instruction_i0_i2 (.D(n18012), .SP(clk_0_enable_59), 
            .CK(clk_0), .Q(execute_instruction[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam execute_instruction_i0_i2.GSR = "ENABLED";
    FD1P3AX global_state_i0_i3 (.D(global_state_3__N_159[3]), .SP(clk_0_enable_60), 
            .CK(clk_0), .Q(global_state[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam global_state_i0_i3.GSR = "ENABLED";
    FD1P3AX global_state_i0_i1 (.D(global_state_3__N_159[1]), .SP(clk_0_enable_61), 
            .CK(clk_0), .Q(global_state[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam global_state_i0_i1.GSR = "ENABLED";
    FD1P3IX Rdisplay_i0_i13 (.D(n7827), .SP(clk_0_enable_83), .CD(n8512), 
            .CK(clk_0), .Q(Q[13]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam Rdisplay_i0_i13.GSR = "DISABLED";
    LUT4 mux_640_i2_3_lut (.A(mi[1]), .B(ce[1]), .C(temp_control[1]), 
         .Z(n2490)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(295[4] 312[13])
    defparam mux_640_i2_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_109 (.A(count[10]), .B(count[11]), .C(n10732), .D(count[9]), 
         .Z(n6_adj_1162)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_109.init = 16'heccc;
    LUT4 Qbcd_3__bdd_4_lut_16280_4_lut (.A(reset_c), .B(n18751), .C(n18754), 
         .D(Q[0]), .Z(n18484)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam Qbcd_3__bdd_4_lut_16280_4_lut.init = 16'h0203;
    FD1P3AX Rdisplay_i0_i12 (.D(n17996), .SP(clk_0_enable_63), .CK(clk_0), 
            .Q(Q[12]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam Rdisplay_i0_i12.GSR = "DISABLED";
    FD1P3IX IR_i0_i1 (.D(MBR[1]), .SP(clk_0_enable_67), .CD(n18880), .CK(clk_0), 
            .Q(IR[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam IR_i0_i1.GSR = "ENABLED";
    FD1P3IX Rdisplay_i0_i11 (.D(n7831), .SP(clk_0_enable_83), .CD(n8512), 
            .CK(clk_0), .Q(Q[11]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam Rdisplay_i0_i11.GSR = "DISABLED";
    PFUMX i3471 (.BLUT(n2490), .ALUT(n5563), .C0(n18108), .Z(n5564));
    LUT4 i7510_4_lut_then_4_lut (.A(stop_run_c), .B(global_state[2]), .C(global_state[3]), 
         .D(global_state[1]), .Z(n18974)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    defparam i7510_4_lut_then_4_lut.init = 16'h5140;
    LUT4 i7666_4_lut (.A(PC[2]), .B(n18896), .C(global_state[3]), .D(n18897), 
         .Z(MAR_7__N_176[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    defparam i7666_4_lut.init = 16'hca0a;
    LUT4 i7510_4_lut_else_4_lut (.A(stop_run_c), .B(global_state[2]), .C(global_state[3]), 
         .D(global_state[1]), .Z(n18973)) /* synthesis lut_function=(!(A+!(B (C)+!B (C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    defparam i7510_4_lut_else_4_lut.init = 16'h5040;
    LUT4 i7452_4_lut (.A(PC[3]), .B(IR[3]), .C(global_state[3]), .D(n17948), 
         .Z(MAR_7__N_176[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    defparam i7452_4_lut.init = 16'hca0a;
    LUT4 i7586_4_lut (.A(PC[4]), .B(IR[4]), .C(global_state[3]), .D(n17948), 
         .Z(MAR_7__N_176[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    defparam i7586_4_lut.init = 16'hca0a;
    LUT4 i8333_2_lut_3_lut_3_lut (.A(reset_c), .B(n18756), .C(Q[1]), .Z(Qbcd[1])) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8333_2_lut_3_lut_3_lut.init = 16'h1414;
    LUT4 i7314_4_lut (.A(PC[5]), .B(IR[5]), .C(global_state[3]), .D(n17948), 
         .Z(MAR_7__N_176[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    defparam i7314_4_lut.init = 16'hca0a;
    LUT4 i7357_4_lut (.A(PC[6]), .B(IR[6]), .C(global_state[3]), .D(n17948), 
         .Z(MAR_7__N_176[6])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    defparam i7357_4_lut.init = 16'hca0a;
    LUT4 i7400_4_lut (.A(PC[7]), .B(IR[7]), .C(global_state[3]), .D(n17948), 
         .Z(MAR_7__N_176[7])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    defparam i7400_4_lut.init = 16'hca0a;
    LUT4 i8620_4_lut (.A(count[5]), .B(count[8]), .C(count[7]), .D(count[6]), 
         .Z(n10732)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i8620_4_lut.init = 16'hfcec;
    LUT4 i1_4_lut_adj_110 (.A(global_state[3]), .B(global_state[2]), .C(global_state[1]), 
         .D(global_state[0]), .Z(global_state_3__N_159[2])) /* synthesis lut_function=(!(A+(B (C (D))+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i1_4_lut_adj_110.init = 16'h1444;
    LUT4 i1_4_lut_adj_111 (.A(n10333), .B(n17929), .C(n19471), .D(n18041), 
         .Z(clk_0_enable_48)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i1_4_lut_adj_111.init = 16'hc0c8;
    LUT4 i15920_2_lut (.A(global_state[0]), .B(instruction[2]), .Z(n18041)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i15920_2_lut.init = 16'heeee;
    FD1P3IX Rdisplay_i0_i10 (.D(n7833), .SP(clk_0_enable_83), .CD(n8512), 
            .CK(clk_0), .Q(Q[10]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam Rdisplay_i0_i10.GSR = "DISABLED";
    PFUMX i16440 (.BLUT(n18970), .ALUT(n18971), .C0(Q[12]), .Z(bcd_out_15__N_364));
    LUT4 reduce_or_235_i1_2_lut (.A(temp_control[3]), .B(n1683), .Z(n1699)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(295[4] 312[13])
    defparam reduce_or_235_i1_2_lut.init = 16'heeee;
    LUT4 i2_4_lut (.A(instruction[2]), .B(n16947), .C(n99), .D(instruction[1]), 
         .Z(n7291)) /* synthesis lut_function=(A+!(B (C+!(D)))) */ ;
    defparam i2_4_lut.init = 16'hbfbb;
    FD1P3IX IR_i0_i0 (.D(MBR[0]), .SP(clk_0_enable_67), .CD(n18880), .CK(clk_0), 
            .Q(IR[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam IR_i0_i0.GSR = "ENABLED";
    CCU2D count_674_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16846), .COUT(n16847), .S0(n90), .S1(n89));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(326[14:19])
    defparam count_674_add_4_7.INIT0 = 16'hfaaa;
    defparam count_674_add_4_7.INIT1 = 16'hfaaa;
    defparam count_674_add_4_7.INJECT1_0 = "NO";
    defparam count_674_add_4_7.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_112 (.A(n23), .B(bcd_out_15__N_373), .C(n18841), 
         .D(n18844), .Z(bcd_out_15__N_407)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2_4_lut_adj_112.init = 16'h36c9;
    LUT4 i2_3_lut_adj_113 (.A(execute_instruction[2]), .B(n6794), .C(instruction[1]), 
         .Z(n16947)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_113.init = 16'hfefe;
    FD1P3IX MBR_i0_i0 (.D(data_out_23__N_591[0]), .SP(clk_0_enable_142), 
            .CD(n18880), .CK(clk_0), .Q(MBR[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MBR_i0_i0.GSR = "ENABLED";
    GSR GSR_INST (.GSR(clk_enable_18));
    LUT4 i4670_3_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(instruction[0]), .Z(n6794)) /* synthesis lut_function=(A (B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(244[8] 266[17])
    defparam i4670_3_lut.init = 16'h8282;
    PFUMX i3473 (.BLUT(n2489), .ALUT(n5565), .C0(n18108), .Z(n5566));
    FD1P3IX MBR_i0_i23 (.D(data_out_23__N_591[23]), .SP(clk_0_enable_142), 
            .CD(n18880), .CK(clk_0), .Q(MBR[23]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MBR_i0_i23.GSR = "ENABLED";
    LUT4 i16198_2_lut (.A(reset_c), .B(n10760), .Z(n8536)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i16198_2_lut.init = 16'h4444;
    LUT4 i11_4_lut_4_lut_4_lut_adj_114 (.A(control[0]), .B(B[7]), .C(control[1]), 
         .D(A[7]), .Z(n13)) /* synthesis lut_function=(A (C (D))+!A !((C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(95[8:15])
    defparam i11_4_lut_4_lut_4_lut_adj_114.init = 16'ha404;
    LUT4 n18561_bdd_4_lut (.A(n18561), .B(n18560), .C(IR[20]), .D(IR[23]), 
         .Z(n18709)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam n18561_bdd_4_lut.init = 16'hffca;
    FD1P3IX MBR_i0_i22 (.D(data_out_23__N_591[22]), .SP(clk_0_enable_142), 
            .CD(n18880), .CK(clk_0), .Q(MBR[22]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MBR_i0_i22.GSR = "ENABLED";
    LUT4 i8287_2_lut_3_lut_3_lut (.A(reset_c), .B(n6267), .C(n18715), 
         .Z(DISPLAY_6__N_584_adj_1206[4])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8287_2_lut_3_lut_3_lut.init = 16'h8c8c;
    FD1P3IX Rdisplay_i0_i9 (.D(n7_adj_1134), .SP(clk_0_enable_83), .CD(n8512), 
            .CK(clk_0), .Q(Q[9]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam Rdisplay_i0_i9.GSR = "DISABLED";
    FD1P3IX Rdisplay_i0_i8 (.D(n7837), .SP(clk_0_enable_83), .CD(n8512), 
            .CK(clk_0), .Q(Q[8]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam Rdisplay_i0_i8.GSR = "DISABLED";
    FD1P3IX MBR_i0_i21 (.D(data_out_23__N_591[21]), .SP(clk_0_enable_142), 
            .CD(n18880), .CK(clk_0), .Q(MBR[21]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MBR_i0_i21.GSR = "ENABLED";
    FD1P3IX Rdisplay_i0_i7 (.D(n7839), .SP(clk_0_enable_83), .CD(n8512), 
            .CK(clk_0), .Q(Q[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam Rdisplay_i0_i7.GSR = "DISABLED";
    FD1P3IX Rdisplay_i0_i6 (.D(n7841), .SP(clk_0_enable_83), .CD(n8512), 
            .CK(clk_0), .Q(Q[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam Rdisplay_i0_i6.GSR = "DISABLED";
    FD1P3IX Rdisplay_i0_i5 (.D(n7851), .SP(clk_0_enable_83), .CD(n8512), 
            .CK(clk_0), .Q(Q[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam Rdisplay_i0_i5.GSR = "DISABLED";
    FD1P3IX MBR_i0_i20 (.D(data_out_23__N_591[20]), .SP(clk_0_enable_142), 
            .CD(n18880), .CK(clk_0), .Q(MBR[20]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MBR_i0_i20.GSR = "ENABLED";
    FD1P3IX MBR_i0_i19 (.D(data_out_23__N_591[19]), .SP(clk_0_enable_142), 
            .CD(n18880), .CK(clk_0), .Q(MBR[19]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MBR_i0_i19.GSR = "ENABLED";
    FD1P3IX Rdisplay_i0_i4 (.D(n7857), .SP(clk_0_enable_83), .CD(n8512), 
            .CK(clk_0), .Q(Q[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam Rdisplay_i0_i4.GSR = "DISABLED";
    FD1P3IX MBR_i0_i18 (.D(data_out_23__N_591[18]), .SP(clk_0_enable_142), 
            .CD(n18880), .CK(clk_0), .Q(MBR[18]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MBR_i0_i18.GSR = "ENABLED";
    FD1P3IX Rdisplay_i0_i3 (.D(n7869), .SP(clk_0_enable_83), .CD(n8512), 
            .CK(clk_0), .Q(Q[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam Rdisplay_i0_i3.GSR = "DISABLED";
    LUT4 Qbcd_3__bdd_4_lut_4_lut (.A(reset_c), .B(n18751), .C(n18744), 
         .D(Q[0]), .Z(n18485)) /* synthesis lut_function=(A (C)+!A !(B (D)+!B ((D)+!C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam Qbcd_3__bdd_4_lut_4_lut.init = 16'ha0f4;
    FD1P3IX Rdisplay_i0_i2 (.D(n7885), .SP(clk_0_enable_83), .CD(n8512), 
            .CK(clk_0), .Q(Q[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam Rdisplay_i0_i2.GSR = "DISABLED";
    LUT4 i2_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(global_state[3]), .C(stop_run_c), 
         .D(n19471), .Z(n9596)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i2_2_lut_3_lut_4_lut_4_lut.init = 16'h0400;
    FD1P3IX Rdisplay_i0_i1 (.D(n7893), .SP(clk_0_enable_83), .CD(n8512), 
            .CK(clk_0), .Q(Q[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam Rdisplay_i0_i1.GSR = "DISABLED";
    FD1P3IX MBR_i0_i17 (.D(data_out_23__N_591[17]), .SP(clk_0_enable_142), 
            .CD(n18880), .CK(clk_0), .Q(MBR[17]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MBR_i0_i17.GSR = "ENABLED";
    FD1P3AX rpg_in_i0_i15 (.D(n17898), .SP(clk_0_enable_87), .CK(clk_0), 
            .Q(rpg_in[15])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam rpg_in_i0_i15.GSR = "DISABLED";
    LUT4 i1_2_lut_4_lut (.A(n6187), .B(n18888), .C(n18875), .D(n2872), 
         .Z(n17999)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam i1_2_lut_4_lut.init = 16'h0400;
    LUT4 i1_2_lut_4_lut_adj_115 (.A(n6187), .B(n18888), .C(n18875), .D(n2870), 
         .Z(n17998)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam i1_2_lut_4_lut_adj_115.init = 16'h0400;
    LUT4 i40_4_lut_rep_273 (.A(n19471), .B(n18889), .C(n18917), .D(n10_adj_1172), 
         .Z(clk_0_enable_83)) /* synthesis lut_function=(A (B)+!A !((C+!(D))+!B)) */ ;
    defparam i40_4_lut_rep_273.init = 16'h8c88;
    LUT4 i1_4_lut_rep_306_else_4_lut (.A(stop_run_c), .B(global_state[1]), 
         .C(global_state[3]), .Z(n19473)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    defparam i1_4_lut_rep_306_else_4_lut.init = 16'h4040;
    PFUMX i3475 (.BLUT(n2488), .ALUT(n5567), .C0(n18108), .Z(n5568));
    FD1P3AX rpg_in_i0_i14 (.D(n17897), .SP(clk_0_enable_87), .CK(clk_0), 
            .Q(rpg_in[14])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam rpg_in_i0_i14.GSR = "DISABLED";
    bcdDisplay_U5 millar (.mi({mi}), .clk_0(clk_0), .n6348(n6348), .n18131(n18131), 
            .n18713(n18713), .\DISPLAY_6__N_584[4] (DISPLAY_6__N_584_adj_1206[4]), 
            .n18448(n18448), .reset_c(reset_c), .n2572(n2572), .n18739(n18739), 
            .n18740(n18740), .n18711(n18711), .n5069(n5069), .n4008(n4008), 
            .n4038(n4038), .n18712(n18712), .n10715(n10715), .n18710(n18710), 
            .n4072(n4072), .n10728(n10728), .n6267(n6267), .n18715(n18715));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(119[9:19])
    LUT4 mux_56_Mux_1_i15_4_lut (.A(n231), .B(n588), .C(global_state[3]), 
         .D(n19471), .Z(PC_7__N_168[1])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam mux_56_Mux_1_i15_4_lut.init = 16'h0aca;
    FD1P3AX rpg_in_i0_i13 (.D(n17899), .SP(clk_0_enable_87), .CK(clk_0), 
            .Q(rpg_in[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam rpg_in_i0_i13.GSR = "DISABLED";
    LUT4 mux_52_Mux_1_i15_4_lut (.A(n19011), .B(n486), .C(instruction[3]), 
         .D(n18899), .Z(n588)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam mux_52_Mux_1_i15_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_3_lut_4_lut_adj_116 (.A(n18922), .B(n18894), .C(n2871), 
         .D(n18888), .Z(n17904)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_116.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_117 (.A(n18922), .B(n18894), .C(n2869), 
         .D(n18888), .Z(n17906)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_117.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_118 (.A(n18922), .B(n18894), .C(n2863), 
         .D(n18888), .Z(n17907)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_118.init = 16'h2000;
    FD1P3IX rpg_in_i0_i12 (.D(n18661), .SP(clk_0_enable_105), .CD(n8497), 
            .CK(clk_0), .Q(rpg_in[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam rpg_in_i0_i12.GSR = "DISABLED";
    FD1P3IX MBR_i0_i16 (.D(data_out_23__N_591[16]), .SP(clk_0_enable_142), 
            .CD(n18880), .CK(clk_0), .Q(MBR[16]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MBR_i0_i16.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_119 (.A(n18922), .B(n18894), .C(n2862), 
         .D(n18888), .Z(n17905)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_119.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_120 (.A(n18888), .B(n2864), .C(n18894), 
         .D(n18922), .Z(n14_adj_1187)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam i1_2_lut_3_lut_4_lut_adj_120.init = 16'h0800;
    FD1P3IX rpg_in_i0_i11 (.D(n8007), .SP(clk_0_enable_105), .CD(n8497), 
            .CK(clk_0), .Q(rpg_in[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam rpg_in_i0_i11.GSR = "DISABLED";
    FD1P3IX rpg_in_i0_i10 (.D(n7968), .SP(clk_0_enable_105), .CD(n8497), 
            .CK(clk_0), .Q(rpg_in[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam rpg_in_i0_i10.GSR = "DISABLED";
    LUT4 i7453_3_lut_4_lut (.A(n18888), .B(n2864), .C(instruction[2]), 
         .D(IR[3]), .Z(n7869)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam i7453_3_lut_4_lut.init = 16'hf808;
    FD1P3IX rpg_in_i0_i9 (.D(n8003), .SP(clk_0_enable_105), .CD(n8497), 
            .CK(clk_0), .Q(rpg_in[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam rpg_in_i0_i9.GSR = "DISABLED";
    LUT4 i7587_3_lut_4_lut (.A(n18888), .B(n2865), .C(instruction[2]), 
         .D(IR[4]), .Z(n7857)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam i7587_3_lut_4_lut.init = 16'hf808;
    LUT4 i1_2_lut_3_lut_adj_121 (.A(n18888), .B(n2865), .C(n18875), .Z(n17984)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam i1_2_lut_3_lut_adj_121.init = 16'h0808;
    LUT4 i8336_2_lut_rep_143_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_574), 
         .C(n18762), .D(n18763), .Z(n18738)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8336_2_lut_rep_143_4_lut_4_lut_4_lut.init = 16'h1450;
    LUT4 i1_2_lut_3_lut_4_lut_adj_122 (.A(n18888), .B(n2866), .C(n18894), 
         .D(n18922), .Z(n14_adj_1185)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_122.init = 16'h0800;
    LUT4 i13802_3_lut_4_lut (.A(n18888), .B(n2866), .C(instruction[2]), 
         .D(IR[5]), .Z(n7851)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i13802_3_lut_4_lut.init = 16'hf808;
    LUT4 i16110_4_lut (.A(n5_adj_1152), .B(stop_run_c), .C(n18895), .D(n6_adj_1150), 
         .Z(clk_0_enable_60)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B))) */ ;
    defparam i16110_4_lut.init = 16'h3133;
    LUT4 i1_3_lut (.A(instruction[2]), .B(global_state[3]), .C(instruction[3]), 
         .Z(n5_adj_1152)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_3_lut.init = 16'h0404;
    LUT4 i1_2_lut_3_lut_4_lut_adj_123 (.A(n18888), .B(n2867), .C(n18894), 
         .D(n18922), .Z(n14_adj_1184)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam i1_2_lut_3_lut_4_lut_adj_123.init = 16'h0800;
    LUT4 i2_4_lut_then_4_lut (.A(n19472), .B(global_state[2]), .C(global_state[0]), 
         .D(global_state[3]), .Z(n18962)) /* synthesis lut_function=(!(A+!(B ((D)+!C)+!B (D)))) */ ;
    defparam i2_4_lut_then_4_lut.init = 16'h5504;
    PFUMX i8059 (.BLUT(n13), .ALUT(n10167), .C0(n18915), .Z(B_temp_11__N_981));
    LUT4 i7358_3_lut_4_lut (.A(n18888), .B(n2867), .C(instruction[2]), 
         .D(IR[6]), .Z(n7841)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam i7358_3_lut_4_lut.init = 16'hf808;
    LUT4 i8401_4_lut (.A(n18890), .B(instruction[2]), .C(n18879), .D(instruction[1]), 
         .Z(n134)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i8401_4_lut.init = 16'hfcee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_124 (.A(n18888), .B(n2868), .C(n18894), 
         .D(n18922), .Z(n14_adj_1183)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam i1_2_lut_3_lut_4_lut_adj_124.init = 16'h0800;
    LUT4 i7401_3_lut_4_lut (.A(n18888), .B(n2868), .C(instruction[2]), 
         .D(IR[7]), .Z(n7839)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam i7401_3_lut_4_lut.init = 16'hf808;
    FD1P3IX rpg_in_i0_i8 (.D(n7974), .SP(clk_0_enable_105), .CD(n8497), 
            .CK(clk_0), .Q(rpg_in[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam rpg_in_i0_i8.GSR = "DISABLED";
    FD1P3IX rpg_in_i0_i7 (.D(n7999), .SP(clk_0_enable_105), .CD(n8497), 
            .CK(clk_0), .Q(rpg_in[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam rpg_in_i0_i7.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut (.A(n18959), .B(n18894), .C(n18938), .D(instruction[3]), 
         .Z(n18012)) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i1_3_lut_4_lut.init = 16'h2202;
    FD1P3IX MBR_i0_i15 (.D(data_out_23__N_591[15]), .SP(clk_0_enable_142), 
            .CD(n18880), .CK(clk_0), .Q(MBR[15]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MBR_i0_i15.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(n18899), .B(n18876), .C(IR[15]), 
         .D(n18917), .Z(n18015)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_125 (.A(n18899), .B(n18876), .C(IR[13]), 
         .D(n18917), .Z(n18014)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_125.init = 16'h0080;
    LUT4 i13798_3_lut_4_lut (.A(n18888), .B(n2861), .C(instruction[2]), 
         .D(IR[0]), .Z(n7717)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i13798_3_lut_4_lut.init = 16'hf808;
    LUT4 m0_lut (.Z(n19476)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    PFUMX i16422 (.BLUT(n18682), .ALUT(n18681), .C0(n23), .Z(bcd_out_15__N_403));
    LUT4 i1_2_lut_3_lut_adj_126 (.A(n18888), .B(n2861), .C(n18029), .Z(n14_adj_1131)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_126.init = 16'h0808;
    LUT4 i4070_4_lut_4_lut (.A(n18903), .B(instruction[3]), .C(global_state[0]), 
         .D(n18899), .Z(n6187)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (B+(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i4070_4_lut_4_lut.init = 16'hf4f7;
    FD1P3IX rpg_in_i0_i6 (.D(n7981), .SP(clk_0_enable_105), .CD(n8497), 
            .CK(clk_0), .Q(rpg_in[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam rpg_in_i0_i6.GSR = "DISABLED";
    LUT4 i2_3_lut_4_lut (.A(Q[11]), .B(n18958), .C(Q[10]), .D(n2543), 
         .Z(bcd_out_15__N_378)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2_3_lut_4_lut.init = 16'h6966;
    LUT4 i6396_2_lut_2_lut_3_lut (.A(global_state[1]), .B(global_state[2]), 
         .C(n18889), .Z(n8512)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    defparam i6396_2_lut_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1_4_lut_adj_127 (.A(n18889), .B(n19471), .C(n18872), .D(n16_adj_1133), 
         .Z(clk_0_enable_127)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_127.init = 16'h8a88;
    FD1P3IX MBR_i0_i14 (.D(data_out_23__N_591[14]), .SP(clk_0_enable_142), 
            .CD(n18880), .CK(clk_0), .Q(MBR[14]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MBR_i0_i14.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_adj_128 (.A(n19471), .B(execute_instruction[2]), 
         .C(n18922), .D(IR[4]), .Z(n17983)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_4_lut_adj_128.init = 16'h1000;
    LUT4 mux_56_Mux_4_i15_4_lut_4_lut (.A(n19471), .B(n2_adj_1191), .C(global_state[3]), 
         .D(n228), .Z(PC_7__N_168[4])) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam mux_56_Mux_4_i15_4_lut_4_lut.init = 16'h4f40;
    LUT4 i8340_2_lut_rep_127_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_550), 
         .C(n18752), .D(n18753), .Z(n18722)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8340_2_lut_rep_127_4_lut_4_lut_4_lut.init = 16'h1450;
    LUT4 i1_3_lut_4_lut_4_lut (.A(n19471), .B(execute_instruction[2]), .C(n18920), 
         .D(instruction[3]), .Z(n16888)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i7442_4_lut_4_lut (.A(n19471), .B(n2_adj_1186), .C(global_state[3]), 
         .D(n229), .Z(PC_7__N_168[3])) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i7442_4_lut_4_lut.init = 16'h4f40;
    PFUMX i3477 (.BLUT(n2487), .ALUT(n5569), .C0(n18108), .Z(n5570));
    LUT4 i1_4_lut_4_lut (.A(n19471), .B(instruction[2]), .C(n18918), .D(n18917), 
         .Z(n7_adj_1146)) /* synthesis lut_function=(!(A+!(B ((D)+!C)+!B (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i1_4_lut_4_lut.init = 16'h5504;
    LUT4 i8518_4_lut (.A(ACC[0]), .B(n18959), .C(data_out_23__N_591[0]), 
         .D(n8389), .Z(n8217)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i8518_4_lut.init = 16'hc088;
    LUT4 i16139_4_lut (.A(stop_run_c), .B(n5_adj_1132), .C(n18435), .D(n18041), 
         .Z(clk_0_enable_61)) /* synthesis lut_function=(!(A+!(((D)+!C)+!B))) */ ;
    defparam i16139_4_lut.init = 16'h5515;
    LUT4 i1_3_lut_adj_129 (.A(global_state[3]), .B(global_state[1]), .C(global_state[0]), 
         .Z(global_state_3__N_159[1])) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i1_3_lut_adj_129.init = 16'h1414;
    LUT4 i5703_4_lut (.A(n2874), .B(IR[13]), .C(instruction[2]), .D(n18888), 
         .Z(n7827)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i5703_4_lut.init = 16'hcac0;
    LUT4 i7304_4_lut_4_lut (.A(n19471), .B(n2_adj_1176), .C(global_state[3]), 
         .D(n227), .Z(PC_7__N_168[5])) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i7304_4_lut_4_lut.init = 16'h4f40;
    LUT4 i1_2_lut_adj_130 (.A(control[1]), .B(A[11]), .Z(n5633)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i1_2_lut_adj_130.init = 16'h8888;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i16168_4_lut (.A(n18886), .B(n7_adj_1146), .C(instruction[2]), 
         .D(n17017), .Z(n18207)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(103[8:19])
    defparam i16168_4_lut.init = 16'h3332;
    LUT4 i7390_4_lut_4_lut (.A(n19471), .B(n2), .C(global_state[3]), .D(n225), 
         .Z(PC_7__N_168[7])) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i7390_4_lut_4_lut.init = 16'h4f40;
    LUT4 mux_56_Mux_2_i15_4_lut_4_lut (.A(n19471), .B(global_state[3]), 
         .C(n587), .D(n230), .Z(PC_7__N_168[2])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam mux_56_Mux_2_i15_4_lut_4_lut.init = 16'h7340;
    LUT4 i7347_4_lut_4_lut (.A(n19471), .B(n2_adj_1157), .C(global_state[3]), 
         .D(n226), .Z(PC_7__N_168[6])) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i7347_4_lut_4_lut.init = 16'h4f40;
    LUT4 i8448_2_lut_2_lut_4_lut (.A(global_state[0]), .B(n18921), .C(execute_instruction[2]), 
         .D(n18903), .Z(n141)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i8448_2_lut_2_lut_4_lut.init = 16'hcaff;
    LUT4 i6900_4_lut (.A(n18888), .B(IR[11]), .C(instruction[2]), .D(n2872), 
         .Z(n7831)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(103[8:19])
    defparam i6900_4_lut.init = 16'hcac0;
    LUT4 i16140_2_lut (.A(temp_control[3]), .B(temp_control[2]), .Z(n18108)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(295[4] 312[13])
    defparam i16140_2_lut.init = 16'heeee;
    LUT4 i5709_4_lut (.A(n2871), .B(IR[10]), .C(instruction[2]), .D(n18888), 
         .Z(n7833)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i5709_4_lut.init = 16'hcac0;
    LUT4 n6377_bdd_2_lut_4_lut (.A(global_state[3]), .B(n18921), .C(execute_instruction[2]), 
         .D(n18903), .Z(n18508)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam n6377_bdd_2_lut_4_lut.init = 16'h3500;
    LUT4 mux_51_Mux_9_i7_4_lut (.A(n18888), .B(IR[9]), .C(instruction[2]), 
         .D(n2870), .Z(n7_adj_1134)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam mux_51_Mux_9_i7_4_lut.init = 16'hcac0;
    LUT4 i5713_4_lut (.A(n2869), .B(IR[8]), .C(instruction[2]), .D(n18888), 
         .Z(n7837)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i5713_4_lut.init = 16'hcac0;
    FD1P3IX MBR_i0_i13 (.D(data_out_23__N_591[13]), .SP(clk_0_enable_142), 
            .CD(n18880), .CK(clk_0), .Q(MBR[13]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MBR_i0_i13.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_131 (.A(n19471), .B(execute_instruction[2]), 
         .C(IR[7]), .D(n18922), .Z(n14_adj_1178)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_131.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_132 (.A(n19471), .B(execute_instruction[2]), 
         .C(IR[5]), .D(n18922), .Z(n14_adj_1181)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_132.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_133 (.A(n19471), .B(execute_instruction[2]), 
         .C(IR[6]), .D(n18922), .Z(n14_adj_1180)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_133.init = 16'h1000;
    LUT4 i1_3_lut_4_lut_adj_134 (.A(n19471), .B(execute_instruction[2]), 
         .C(n18920), .D(n18922), .Z(n17957)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_134.init = 16'h1110;
    LUT4 i1_2_lut_3_lut_4_lut_adj_135 (.A(n19471), .B(execute_instruction[2]), 
         .C(IR[11]), .D(n18922), .Z(n14_adj_1154)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_135.init = 16'h1000;
    PFUMX i16405 (.BLUT(n18660), .ALUT(n18657), .C0(execute_instruction[2]), 
          .Z(n18661));
    FD1P3IX rpg_in_i0_i5 (.D(n7985), .SP(clk_0_enable_105), .CD(n8497), 
            .CK(clk_0), .Q(rpg_in[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam rpg_in_i0_i5.GSR = "DISABLED";
    LUT4 i8430_4_lut (.A(ACC[1]), .B(n18959), .C(data_out_23__N_591[1]), 
         .D(n8389), .Z(n8315)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i8430_4_lut.init = 16'hc088;
    LUT4 i7673_4_lut (.A(n18888), .B(IR[2]), .C(instruction[2]), .D(n2863), 
         .Z(n7885)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(103[8:19])
    defparam i7673_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_136 (.A(n19471), .B(execute_instruction[2]), 
         .C(IR[3]), .D(n18922), .Z(n14_adj_1188)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_136.init = 16'h1000;
    FD1P3IX MBR_i0_i12 (.D(data_out_23__N_591[12]), .SP(clk_0_enable_142), 
            .CD(n18880), .CK(clk_0), .Q(MBR[12]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MBR_i0_i12.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_137 (.A(control[1]), .B(A[10]), .Z(n5641)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i1_2_lut_adj_137.init = 16'h8888;
    LUT4 i5769_4_lut (.A(n18888), .B(IR[1]), .C(instruction[2]), .D(n2862), 
         .Z(n7893)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i5769_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_138 (.A(n19471), .B(execute_instruction[2]), 
         .C(IR[14]), .D(n18922), .Z(n18009)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_138.init = 16'h1000;
    FD1P3IX MBR_i0_i11 (.D(data_out_23__N_591[11]), .SP(clk_0_enable_142), 
            .CD(n18880), .CK(clk_0), .Q(MBR[11]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MBR_i0_i11.GSR = "ENABLED";
    PFUMX i16403 (.BLUT(n18658), .ALUT(data_out_23__N_591[12]), .C0(n8389), 
          .Z(n18659));
    LUT4 i1_2_lut_3_lut_4_lut_adj_139 (.A(n19471), .B(execute_instruction[2]), 
         .C(IR[12]), .D(n18922), .Z(n18007)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_139.init = 16'h1000;
    LUT4 i15997_3_lut_rep_293_then_3_lut (.A(n2794), .B(n2789), .C(rpg_sel[0]), 
         .Z(n18980)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i15997_3_lut_rep_293_then_3_lut.init = 16'hacac;
    LUT4 i1_2_lut_3_lut_4_lut_adj_140 (.A(n19471), .B(execute_instruction[2]), 
         .C(IR[10]), .D(n18922), .Z(n18006)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_140.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_141 (.A(n19471), .B(execute_instruction[2]), 
         .C(IR[9]), .D(n18922), .Z(n18002)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_141.init = 16'h1000;
    LUT4 i1_2_lut_adj_142 (.A(data_out_23__N_640[15]), .B(n17896), .Z(n17898)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_142.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_143 (.A(n19471), .B(execute_instruction[2]), 
         .C(IR[8]), .D(n18922), .Z(n18005)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_143.init = 16'h1000;
    LUT4 i1_2_lut_adj_144 (.A(data_out_23__N_640[14]), .B(n17896), .Z(n17897)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_144.init = 16'h8888;
    LUT4 i1_2_lut_adj_145 (.A(data_out_23__N_640[13]), .B(n17896), .Z(n17899)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_145.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_146 (.A(n19471), .B(execute_instruction[2]), 
         .C(IR[1]), .D(n18922), .Z(n18008)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_146.init = 16'h1000;
    FD1P3IX rpg_in_i0_i4 (.D(n7991), .SP(clk_0_enable_105), .CD(n8497), 
            .CK(clk_0), .Q(rpg_in[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam rpg_in_i0_i4.GSR = "DISABLED";
    LUT4 i8481_4_lut (.A(ACC[2]), .B(n18959), .C(data_out_23__N_591[2]), 
         .D(n8389), .Z(n8327)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i8481_4_lut.init = 16'hc088;
    LUT4 i2_2_lut_3_lut_4_lut (.A(n18959), .B(execute_instruction[2]), .C(instruction[1]), 
         .D(instruction[0]), .Z(n6_adj_1150)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i2_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i15930_4_lut_4_lut (.A(instruction[0]), .B(n18938), .C(instruction[3]), 
         .D(reset_c), .Z(n18051)) /* synthesis lut_function=(A (B+(D))+!A (B+(C+(D)))) */ ;
    defparam i15930_4_lut_4_lut.init = 16'hffdc;
    LUT4 i1_2_lut_adj_147 (.A(control[1]), .B(A[9]), .Z(n5661)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i1_2_lut_adj_147.init = 16'h8888;
    LUT4 n18362_bdd_4_lut (.A(n18362), .B(instruction[2]), .C(n18920), 
         .D(instruction[3]), .Z(n18693)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;
    defparam n18362_bdd_4_lut.init = 16'hf022;
    FD1P3IX rpg_in_i0_i3 (.D(n8001), .SP(clk_0_enable_105), .CD(n8497), 
            .CK(clk_0), .Q(rpg_in[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam rpg_in_i0_i3.GSR = "DISABLED";
    FD1P3IX rpg_in_i0_i2 (.D(n8005), .SP(clk_0_enable_105), .CD(n8497), 
            .CK(clk_0), .Q(rpg_in[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam rpg_in_i0_i2.GSR = "DISABLED";
    LUT4 i15997_3_lut_rep_293_else_3_lut (.A(n2779), .B(n2784), .C(rpg_sel[0]), 
         .Z(n18979)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i15997_3_lut_rep_293_else_3_lut.init = 16'hcaca;
    FD1P3IX rpg_in_i0_i1 (.D(n8020), .SP(clk_0_enable_105), .CD(n8497), 
            .CK(clk_0), .Q(rpg_in[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam rpg_in_i0_i1.GSR = "DISABLED";
    LUT4 i8426_4_lut (.A(ACC[3]), .B(n18959), .C(data_out_23__N_591[3]), 
         .D(n8389), .Z(n8323)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i8426_4_lut.init = 16'hc088;
    FD1P3AX B_i0_i11 (.D(n18015), .SP(clk_0_enable_127), .CK(clk_0), .Q(B[11]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam B_i0_i11.GSR = "DISABLED";
    LUT4 i1_4_lut_4_lut_4_lut_then_4_lut (.A(global_state[0]), .B(instruction[2]), 
         .C(instruction[1]), .D(instruction[3]), .Z(n18965)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam i1_4_lut_4_lut_4_lut_then_4_lut.init = 16'h0111;
    LUT4 i1_4_lut_4_lut_4_lut_else_4_lut (.A(global_state[0]), .B(instruction[2]), 
         .C(instruction[1]), .D(instruction[3]), .Z(n18964)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i1_4_lut_4_lut_4_lut_else_4_lut.init = 16'h0001;
    LUT4 i8339_2_lut_rep_128_3_lut_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_550), 
         .C(n18752), .D(n18753), .Z(n18723)) /* synthesis lut_function=(!(A+(B (D)+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8339_2_lut_rep_128_3_lut_4_lut_4_lut_4_lut.init = 16'h1044;
    LUT4 i15964_2_lut_3_lut (.A(control[0]), .B(control[1]), .C(control[3]), 
         .Z(n18087)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i15964_2_lut_3_lut.init = 16'he0e0;
    LUT4 i2116_1_lut_rep_315 (.A(control[2]), .Z(n18910)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i2116_1_lut_rep_315.init = 16'h5555;
    LUT4 i1_2_lut_2_lut (.A(control[2]), .B(control[1]), .Z(n6005)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i16203_4_lut_4_lut (.A(control[3]), .B(control[2]), .C(control[1]), 
         .D(control[0]), .Z(substract_N_990)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D))))) */ ;
    defparam i16203_4_lut_4_lut.init = 16'h755d;
    LUT4 i16035_3_lut_4_lut_4_lut (.A(IR[18]), .B(IR[19]), .C(IR[20]), 
         .D(IR[21]), .Z(n18116)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(153[6] 165[15])
    defparam i16035_3_lut_4_lut_4_lut.init = 16'hfe6d;
    LUT4 i15932_4_lut_4_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(n18053), .D(execute_instruction[2]), .Z(n18054)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C (D)))) */ ;
    defparam i15932_4_lut_4_lut.init = 16'he080;
    PFUMX i3479 (.BLUT(n2486), .ALUT(n5571), .C0(n18108), .Z(n5572));
    LUT4 i1_2_lut_3_lut_adj_148 (.A(control[2]), .B(control[1]), .C(A[6]), 
         .Z(n7_adj_1160)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(95[8:15])
    defparam i1_2_lut_3_lut_adj_148.init = 16'hd0d0;
    LUT4 i8350_3_lut_4_lut_4_lut (.A(reset_c), .B(n18717), .C(n2572), 
         .D(n18739), .Z(n6348)) /* synthesis lut_function=(!(A+!(B+!(C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8350_3_lut_4_lut_4_lut.init = 16'h4554;
    LUT4 i16092_2_lut_2_lut_3_lut_3_lut_3_lut (.A(reset_c), .B(n18716), 
         .C(n18715), .Z(n18131)) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i16092_2_lut_2_lut_3_lut_3_lut_3_lut.init = 16'hebeb;
    LUT4 i8384_2_lut_3_lut (.A(control[2]), .B(control[1]), .C(A[0]), 
         .Z(n7_adj_1173)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(95[8:15])
    defparam i8384_2_lut_3_lut.init = 16'hf2f2;
    FD1P3AX B_i0_i10 (.D(n18009), .SP(clk_0_enable_127), .CK(clk_0), .Q(B[10]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam B_i0_i10.GSR = "DISABLED";
    FD1P3IX MBR_i0_i10 (.D(data_out_23__N_591[10]), .SP(clk_0_enable_142), 
            .CD(n18880), .CK(clk_0), .Q(MBR[10]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MBR_i0_i10.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_149 (.A(n18889), .B(n19471), .C(n18041), .D(n4), 
         .Z(clk_0_enable_119)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_149.init = 16'h8a88;
    LUT4 i1_2_lut_3_lut_adj_150 (.A(control[2]), .B(control[1]), .C(A[7]), 
         .Z(n7_adj_1159)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(95[8:15])
    defparam i1_2_lut_3_lut_adj_150.init = 16'hd0d0;
    LUT4 i8390_2_lut_3_lut (.A(control[2]), .B(control[1]), .C(A[2]), 
         .Z(n7_adj_1170)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(95[8:15])
    defparam i8390_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i8346_2_lut_rep_115_4_lut_4_lut (.A(reset_c), .B(n18739), .C(n2572), 
         .D(n18740), .Z(n18710)) /* synthesis lut_function=(!(A+!(B (D)+!B !(C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8346_2_lut_rep_115_4_lut_4_lut.init = 16'h4510;
    LUT4 i8387_2_lut_3_lut (.A(control[2]), .B(control[1]), .C(A[1]), 
         .Z(n7_adj_1171)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(95[8:15])
    defparam i8387_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i8399_2_lut_3_lut (.A(control[2]), .B(control[1]), .C(A[5]), 
         .Z(n7_adj_1167)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(95[8:15])
    defparam i8399_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i8396_2_lut_3_lut (.A(control[2]), .B(control[1]), .C(A[4]), 
         .Z(n7_adj_1168)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(95[8:15])
    defparam i8396_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i8393_2_lut_3_lut (.A(control[2]), .B(control[1]), .C(A[3]), 
         .Z(n7_adj_1169)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(95[8:15])
    defparam i8393_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i16191_2_lut_rep_320 (.A(control[2]), .B(control[3]), .Z(n18915)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(95[8:15])
    defparam i16191_2_lut_rep_320.init = 16'h7777;
    LUT4 i14679_4_lut_4_lut (.A(control[2]), .B(control[3]), .C(control[0]), 
         .D(control[1]), .Z(substract_N_989)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A (B+!(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(95[8:15])
    defparam i14679_4_lut_4_lut.init = 16'h3038;
    LUT4 i16206_2_lut_rep_321 (.A(control[3]), .B(control[2]), .Z(n18916)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i16206_2_lut_rep_321.init = 16'hdddd;
    FD1P3IX MBR_i0_i9 (.D(data_out_23__N_591[9]), .SP(clk_0_enable_142), 
            .CD(n18880), .CK(clk_0), .Q(MBR[9]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MBR_i0_i9.GSR = "ENABLED";
    CCU2D count_674_add_4_5 (.A0(n15), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n14_adj_1120), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n16845), .COUT(n16846), .S0(n92), .S1(n91));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(326[14:19])
    defparam count_674_add_4_5.INIT0 = 16'hfaaa;
    defparam count_674_add_4_5.INIT1 = 16'hfaaa;
    defparam count_674_add_4_5.INJECT1_0 = "NO";
    defparam count_674_add_4_5.INJECT1_1 = "NO";
    FD1P3AX B_i0_i9 (.D(n18014), .SP(clk_0_enable_127), .CK(clk_0), .Q(B[9]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam B_i0_i9.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_adj_151 (.A(rpg_sel[0]), .B(rpg_write), .C(rpg_sel[1]), 
         .Z(clk_0_enable_6)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_151.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_adj_152 (.A(rpg_sel[0]), .B(rpg_write), .C(rpg_sel[1]), 
         .Z(clk_0_enable_20)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_152.init = 16'h0808;
    LUT4 i1_4_lut_adj_153 (.A(instruction[2]), .B(n18875), .C(n18885), 
         .D(global_state[0]), .Z(n18029)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_153.init = 16'hfffe;
    FD1P3IX MBR_i0_i8 (.D(data_out_23__N_591[8]), .SP(clk_0_enable_142), 
            .CD(n18880), .CK(clk_0), .Q(MBR[8]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MBR_i0_i8.GSR = "ENABLED";
    CCU2D count_674_add_4_3 (.A0(n17), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n16), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n16844), 
          .COUT(n16845), .S0(n94), .S1(n93));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(326[14:19])
    defparam count_674_add_4_3.INIT0 = 16'hfaaa;
    defparam count_674_add_4_3.INIT1 = 16'hfaaa;
    defparam count_674_add_4_3.INJECT1_0 = "NO";
    defparam count_674_add_4_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_322 (.A(global_state[0]), .B(instruction[3]), .Z(n18917)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i1_2_lut_rep_322.init = 16'heeee;
    FD1P3AX B_i0_i8 (.D(n18007), .SP(clk_0_enable_127), .CK(clk_0), .Q(B[8]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam B_i0_i8.GSR = "DISABLED";
    FD1P3IX MBR_i0_i7 (.D(data_out_23__N_591[7]), .SP(clk_0_enable_142), 
            .CD(n18880), .CK(clk_0), .Q(MBR[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MBR_i0_i7.GSR = "ENABLED";
    CCU2D count_674_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n18), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n16844), .S1(n95));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(326[14:19])
    defparam count_674_add_4_1.INIT0 = 16'hF000;
    defparam count_674_add_4_1.INIT1 = 16'h0555;
    defparam count_674_add_4_1.INJECT1_0 = "NO";
    defparam count_674_add_4_1.INJECT1_1 = "NO";
    FD1P3AX A_i0_i0 (.D(n14_adj_1131), .SP(clk_0_enable_119), .CK(clk_0), 
            .Q(A[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam A_i0_i0.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_277_2_lut_3_lut_4_lut (.A(global_state[0]), .B(instruction[3]), 
         .C(n18938), .D(instruction[0]), .Z(n18872)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i1_2_lut_rep_277_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_154 (.A(global_state[0]), .B(instruction[3]), 
         .C(n18702), .D(n19471), .Z(n17996)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i1_2_lut_3_lut_4_lut_adj_154.init = 16'h0010;
    LUT4 i16183_2_lut_rep_323 (.A(instruction[0]), .B(instruction[1]), .Z(n18918)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i16183_2_lut_rep_323.init = 16'h1111;
    FD1P3IX MBR_i0_i6 (.D(data_out_23__N_591[6]), .SP(clk_0_enable_142), 
            .CD(n18880), .CK(clk_0), .Q(MBR[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MBR_i0_i6.GSR = "ENABLED";
    LUT4 i16158_4_lut_4_lut_4_lut (.A(reset_c), .B(n18716), .C(n18717), 
         .D(n18718), .Z(n5069)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i16158_4_lut_4_lut_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_3_lut_adj_155 (.A(instruction[0]), .B(instruction[1]), 
         .C(IR[12]), .Z(n6_adj_1182)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i1_2_lut_3_lut_adj_155.init = 16'h1010;
    LUT4 i1_2_lut_adj_156 (.A(IR[0]), .B(n18029), .Z(n14)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    defparam i1_2_lut_adj_156.init = 16'h2222;
    LUT4 i16_3_lut_4_lut (.A(instruction[0]), .B(instruction[1]), .C(instruction[2]), 
         .D(n17017), .Z(n10_adj_1172)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i16_3_lut_4_lut.init = 16'h1f10;
    LUT4 i8058_3_lut_3_lut_4_lut (.A(control[3]), .B(control[1]), .C(B[7]), 
         .D(control[2]), .Z(n10167)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C))) */ ;
    defparam i8058_3_lut_3_lut_4_lut.init = 16'hf010;
    FD1P3AX B_i0_i7 (.D(n14_adj_1154), .SP(clk_0_enable_127), .CK(clk_0), 
            .Q(B[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam B_i0_i7.GSR = "DISABLED";
    LUT4 i8027_3_lut_3_lut_4_lut (.A(control[3]), .B(control[1]), .C(B[6]), 
         .D(control[2]), .Z(n10136)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C))) */ ;
    defparam i8027_3_lut_3_lut_4_lut.init = 16'hf010;
    LUT4 i16165_4_lut_then_4_lut (.A(n18902), .B(instruction[3]), .C(global_state[2]), 
         .D(global_state[1]), .Z(n18983)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i16165_4_lut_then_4_lut.init = 16'hfff8;
    LUT4 i16165_4_lut_else_4_lut (.A(n18902), .B(global_state[2]), .C(global_state[1]), 
         .Z(n18982)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i16165_4_lut_else_4_lut.init = 16'hfefe;
    LUT4 i16178_4_lut_4_lut (.A(instruction[3]), .B(n4_adj_1194), .C(n18091), 
         .D(n16888), .Z(clk_0_enable_144)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i16178_4_lut_4_lut.init = 16'h00b0;
    LUT4 i3_4_lut_4_lut (.A(instruction[3]), .B(n18877), .C(data_out_23__N_592), 
         .D(instruction[0]), .Z(n17896)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i3_4_lut_4_lut.init = 16'h4000;
    LUT4 i8432_4_lut (.A(ACC[4]), .B(n18959), .C(data_out_23__N_591[4]), 
         .D(n8389), .Z(n8317)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i8432_4_lut.init = 16'hc088;
    LUT4 i2_3_lut_3_lut (.A(IR[20]), .B(IR[18]), .C(IR[19]), .Z(n17894)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i2_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i1_4_lut_4_lut_adj_157 (.A(global_state[0]), .B(n6_adj_1149), .C(n18903), 
         .D(n19471), .Z(n20)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;
    defparam i1_4_lut_4_lut_adj_157.init = 16'hff40;
    LUT4 i1_2_lut_rep_366 (.A(global_state[1]), .B(global_state[2]), .Z(n19471)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(100[8:20])
    defparam i1_2_lut_rep_366.init = 16'heeee;
    PFUMX i16373 (.BLUT(n18619), .ALUT(n18618), .C0(n2562), .Z(bcd_out_15__N_449));
    LUT4 i15968_4_lut_4_lut (.A(global_state[0]), .B(n5_adj_1163), .C(n19471), 
         .D(n18889), .Z(n18091)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;
    defparam i15968_4_lut_4_lut.init = 16'hf400;
    LUT4 i1_4_lut_4_lut_adj_158 (.A(global_state[0]), .B(n18054), .C(n19471), 
         .D(n18889), .Z(clk_0_enable_87)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_158.init = 16'hf400;
    PFUMX i3481 (.BLUT(n2485), .ALUT(n5573), .C0(n18108), .Z(n5574));
    LUT4 i1_2_lut_rep_325 (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .Z(n18920)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i1_2_lut_rep_325.init = 16'h2222;
    LUT4 i1_2_lut_rep_301_3_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(execute_instruction[2]), .Z(n18896)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i1_2_lut_rep_301_3_lut.init = 16'h0202;
    FD1P3AX B_i0_i6 (.D(n18006), .SP(clk_0_enable_127), .CK(clk_0), .Q(B[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam B_i0_i6.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_159 (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(instruction[0]), .D(execute_instruction[2]), .Z(n99)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i1_2_lut_3_lut_4_lut_adj_159.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_160 (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(n19471), .D(execute_instruction[2]), .Z(n17948)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i1_2_lut_3_lut_4_lut_adj_160.init = 16'h0002;
    FD1P3IX MBR_i0_i5 (.D(data_out_23__N_591[5]), .SP(clk_0_enable_142), 
            .CD(n18880), .CK(clk_0), .Q(MBR[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MBR_i0_i5.GSR = "ENABLED";
    FD1P3AX control_i0_i0 (.D(n14), .SP(clk_0_enable_119), .CK(clk_0), 
            .Q(control[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam control_i0_i0.GSR = "DISABLED";
    CCU2D add_163_3 (.A0(PC[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n16832), 
          .COUT(n16833), .S0(n1599), .S1(n1598));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_163_3.INIT0 = 16'h5555;
    defparam add_163_3.INIT1 = 16'h5555;
    defparam add_163_3.INJECT1_0 = "NO";
    defparam add_163_3.INJECT1_1 = "NO";
    LUT4 i16105_2_lut_rep_326 (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .Z(n18921)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i16105_2_lut_rep_326.init = 16'h1111;
    CCU2D add_7_3 (.A0(PC[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n16828), 
          .COUT(n16829), .S0(n231), .S1(n230));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_7_3.INIT0 = 16'h5aaa;
    defparam add_7_3.INIT1 = 16'h5aaa;
    defparam add_7_3.INJECT1_0 = "NO";
    defparam add_7_3.INJECT1_1 = "NO";
    LUT4 mux_289_i4_3_lut_rep_296_4_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(execute_instruction[2]), .D(global_state[3]), .Z(n18891)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam mux_289_i4_3_lut_rep_296_4_lut.init = 16'h1f10;
    LUT4 n6377_bdd_4_lut (.A(n18879), .B(n18891), .C(instruction[2]), 
         .D(instruction[1]), .Z(n18509)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+!(D))+!B (C)))) */ ;
    defparam n6377_bdd_4_lut.init = 16'h0503;
    CCU2D add_519_9 (.A0(PC[6]), .B0(n22), .C0(n21), .D0(n3_adj_1179), 
          .A1(PC[7]), .B1(n22), .C1(n21), .D1(n3_adj_1158), .CIN(n16842), 
          .S0(n481), .S1(n480));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(268[8] 277[15])
    defparam add_519_9.INIT0 = 16'h56aa;
    defparam add_519_9.INIT1 = 16'h56aa;
    defparam add_519_9.INJECT1_0 = "NO";
    defparam add_519_9.INJECT1_1 = "NO";
    FD1P3AX B_i0_i5 (.D(n18002), .SP(clk_0_enable_127), .CK(clk_0), .Q(B[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam B_i0_i5.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_adj_161 (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(rpg_sel[0]), .Z(n76)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i1_2_lut_3_lut_adj_161.init = 16'h1010;
    LUT4 n5906_bdd_2_lut_3_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(rpg_in[12]), .Z(n18657)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam n5906_bdd_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_162 (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(rpg_sel[1]), .Z(n9337)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i1_2_lut_3_lut_adj_162.init = 16'h1010;
    LUT4 i8410_2_lut_3_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(rpg_in[5]), .Z(n6_adj_1161)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i8410_2_lut_3_lut.init = 16'h1010;
    LUT4 i8414_2_lut_3_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(rpg_in[6]), .Z(n6_adj_1151)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i8414_2_lut_3_lut.init = 16'h1010;
    LUT4 i8419_2_lut_3_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(rpg_in[2]), .Z(n6_adj_1147)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i8419_2_lut_3_lut.init = 16'h1010;
    LUT4 i8400_2_lut_3_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(rpg_in[3]), .Z(n6_adj_1166)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i8400_2_lut_3_lut.init = 16'h1010;
    LUT4 i8413_2_lut_3_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(rpg_in[1]), .Z(n6_adj_1153)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i8413_2_lut_3_lut.init = 16'h1010;
    LUT4 i8403_2_lut_3_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(rpg_in[4]), .Z(n6_adj_1165)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i8403_2_lut_3_lut.init = 16'h1010;
    LUT4 i8_2_lut_adj_163 (.A(IR[6]), .B(IR[17]), .Z(n3_adj_1179)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(83[8:10])
    defparam i8_2_lut_adj_163.init = 16'h6666;
    LUT4 i8559_2_lut_3_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(rpg_in[0]), .Z(n6)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i8559_2_lut_3_lut.init = 16'h1010;
    LUT4 i8418_2_lut_3_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(rpg_in[7]), .Z(n6_adj_1148)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i8418_2_lut_3_lut.init = 16'h1010;
    LUT4 i8425_2_lut_3_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(rpg_in[8]), .Z(n6_adj_1145)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i8425_2_lut_3_lut.init = 16'h1010;
    LUT4 i8428_2_lut_3_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(rpg_in[9]), .Z(n6_adj_1144)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i8428_2_lut_3_lut.init = 16'h1010;
    LUT4 i8431_2_lut_3_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(rpg_in[10]), .Z(n6_adj_1142)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i8431_2_lut_3_lut.init = 16'h1010;
    LUT4 i8433_2_lut_3_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(rpg_in[11]), .Z(n6_adj_1141)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam i8433_2_lut_3_lut.init = 16'h1010;
    FD1P3AX B_i0_i4 (.D(n18005), .SP(clk_0_enable_127), .CK(clk_0), .Q(B[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam B_i0_i4.GSR = "DISABLED";
    FD1P3IX MBR_i0_i4 (.D(data_out_23__N_591[4]), .SP(clk_0_enable_142), 
            .CD(n18880), .CK(clk_0), .Q(MBR[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MBR_i0_i4.GSR = "ENABLED";
    LUT4 i8_2_lut_adj_164 (.A(IR[7]), .B(IR[17]), .Z(n3_adj_1158)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(83[8:10])
    defparam i8_2_lut_adj_164.init = 16'h6666;
    LUT4 mux_289_i1_3_lut_rep_295_4_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(execute_instruction[2]), .D(global_state[0]), .Z(n18890)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(135[4] 285[13])
    defparam mux_289_i1_3_lut_rep_295_4_lut.init = 16'h1f10;
    LUT4 i1_2_lut_rep_327 (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .Z(n18922)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i1_2_lut_rep_327.init = 16'h4444;
    FD1P3AX B_i0_i3 (.D(n14_adj_1178), .SP(clk_0_enable_127), .CK(clk_0), 
            .Q(B[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam B_i0_i3.GSR = "DISABLED";
    FD1P3IX rpg_sel_i0_i0 (.D(n18378), .SP(clk_0_enable_144), .CD(n8497), 
            .CK(clk_0), .Q(rpg_sel[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam rpg_sel_i0_i0.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_281_3_lut_4_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(execute_instruction[2]), .D(n19471), .Z(n18876)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i1_2_lut_rep_281_3_lut_4_lut.init = 16'h0004;
    alu ALU_imp (.n10(n10_adj_1121), .control({control}), .A_temp_11__N_976(A_temp_11__N_976), 
        .logic_result_11__N_951(logic_result_11__N_951), .n18916(n18916), 
        .\intermediate_carry[0] (intermediate_carry[0]), .substract_N_990(substract_N_990), 
        .substract_N_989(substract_N_989), .\A_temp[11] (A_temp[11]), .B_temp_11__N_982(B_temp_11__N_982), 
        .B_temp_11__N_981(B_temp_11__N_981), .n18910(n18910), .n17806(n17806), 
        .n17858(n17858), .n17804(n17804), .\B_temp[11] (B_temp[11]), .n17856(n17856), 
        .\logic_result[2] (logic_result[2]), .\logic_result[3] (logic_result[3]), 
        .\logic_result[4] (logic_result[4]), .\logic_result[5] (logic_result[5]), 
        .\logic_result[6] (logic_result[6]), .n18576(n18576), .\logic_result[7] (logic_result[7]), 
        .n18575(n18575), .\logic_result[8] (logic_result[8]), .\logic_result[9] (logic_result[9]), 
        .\logic_result[10] (logic_result[10]), .\logic_result[11] (logic_result[11]), 
        .n6005(n6005), .\B[3] (B[3]), .n5661(n5661), .n6742(n6742), 
        .n10_adj_11(n10_adj_1127), .n10_adj_12(n10_adj_1128), .n10_adj_13(n10_adj_1124), 
        .n5641(n5641), .n6739(n6739), .n10_adj_14(n10_adj_1123), .n5633(n5633), 
        .n6737(n6737), .\B[5] (B[5]), .n10_adj_15(n10_adj_1122), .\A[0] (A[0]), 
        .n7615(n7615), .ACC({ACC}), .n18(n18_adj_1143), .n17(n17_adj_1156), 
        .\A[11] (A[11]), .\B[11] (B[11]), .\A[10] (A[10]), .\B[10] (B[10]), 
        .\A[9] (A[9]), .\B[9] (B[9]), .\A[8] (A[8]), .\B[8] (B[8]), 
        .\A[5] (A[5]), .\B[2] (B[2]), .\A[4] (A[4]), .\B[4] (B[4]), 
        .\A[3] (A[3]), .\A[2] (A[2]), .\A[1] (A[1]), .\B[1] (B[1]), 
        .\B[0] (B[0]), .n7(n7_adj_1173), .n7_adj_16(n7_adj_1171), .n7_adj_17(n7_adj_1170), 
        .n7_adj_18(n7_adj_1169), .n18953(n18953), .n7_adj_19(n7_adj_1168), 
        .n7_adj_20(n7_adj_1167), .n10_adj_21(n10_adj_1189), .n22(n22), 
        .n21(n21), .n7_adj_22(n7_adj_1160), .n6748(n6748), .\intermediate_carry[11] (intermediate_carry[11]), 
        .n7_adj_23(n7_adj_1159), .n6746(n6746), .n5670(n5670), .n6744(n6744), 
        .n10_adj_24(n10_adj_1190), .n10_adj_25(n10_adj_1192), .n10_adj_26(n10_adj_1193));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(124[11:14])
    LUT4 i15958_3_lut_rep_292_4_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(execute_instruction[2]), .D(n19471), .Z(n18875)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i15958_3_lut_rep_292_4_lut.init = 16'hfffb;
    FD1P3AX B_i0_i2 (.D(n14_adj_1180), .SP(clk_0_enable_127), .CK(clk_0), 
            .Q(B[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam B_i0_i2.GSR = "DISABLED";
    LUT4 i6869_3_lut_4_lut_3_lut (.A(execute_instruction[0]), .B(execute_instruction[1]), 
         .C(execute_instruction[2]), .Z(n16_adj_1133)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i6869_3_lut_4_lut_3_lut.init = 16'he4e4;
    LUT4 i4175_3_lut_rep_290_4_lut_3_lut (.A(instruction[0]), .B(instruction[1]), 
         .C(instruction[3]), .Z(n18885)) /* synthesis lut_function=(A (B+!(C))+!A (B+(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i4175_3_lut_rep_290_4_lut_3_lut.init = 16'hdede;
    LUT4 i8556_2_lut_3_lut (.A(instruction[0]), .B(instruction[1]), .C(n1600), 
         .Z(n6_adj_1129)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i8556_2_lut_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_165 (.A(instruction[0]), .B(instruction[1]), 
         .C(n1595), .Z(n7_adj_1137)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i1_2_lut_3_lut_adj_165.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_166 (.A(instruction[0]), .B(instruction[1]), 
         .C(n1594), .Z(n7_adj_1138)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i1_2_lut_3_lut_adj_166.init = 16'h2020;
    FD1P3IX MBR_i0_i3 (.D(data_out_23__N_591[3]), .SP(clk_0_enable_142), 
            .CD(n18880), .CK(clk_0), .Q(MBR[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MBR_i0_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_167 (.A(instruction[0]), .B(instruction[1]), 
         .C(n1593), .Z(n7_adj_1177)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i1_2_lut_3_lut_adj_167.init = 16'h2020;
    LUT4 i8227_3_lut_4_lut_3_lut (.A(instruction[0]), .B(instruction[1]), 
         .C(instruction[3]), .Z(n10333)) /* synthesis lut_function=(!(A (B (C))+!A (B+(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i8227_3_lut_4_lut_3_lut.init = 16'h2b2b;
    LUT4 i1_2_lut_3_lut_adj_168 (.A(instruction[0]), .B(instruction[1]), 
         .C(IR[6]), .Z(n6_adj_1155)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i1_2_lut_3_lut_adj_168.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_169 (.A(instruction[0]), .B(instruction[1]), 
         .C(IR[0]), .Z(n7_adj_1130)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i1_2_lut_3_lut_adj_169.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_170 (.A(instruction[0]), .B(instruction[1]), 
         .C(IR[5]), .Z(n5)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i1_2_lut_3_lut_adj_170.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_171 (.A(instruction[0]), .B(instruction[1]), 
         .C(IR[7]), .Z(n6_adj_1140)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i1_2_lut_3_lut_adj_171.init = 16'h4040;
    LUT4 i1_1_lut_rep_329 (.A(stop_run_c), .Z(clk_0_enable_41)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut_rep_329.init = 16'h5555;
    LUT4 i1_4_lut_4_lut_adj_172 (.A(stop_run_c), .B(n18966), .C(n19471), 
         .D(global_state[3]), .Z(clk_0_enable_59)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_172.init = 16'h5400;
    LUT4 i1_2_lut_3_lut_adj_173 (.A(global_state[0]), .B(global_state[1]), 
         .C(global_state[2]), .Z(n17980)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i1_2_lut_3_lut_adj_173.init = 16'h8080;
    LUT4 i1_2_lut_4_lut_4_lut (.A(instruction[0]), .B(instruction[1]), .C(instruction[3]), 
         .D(n16_adj_1133), .Z(n4)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+(C+!(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i1_2_lut_4_lut_4_lut.init = 16'h2100;
    PFUMX i16232 (.BLUT(n18708), .ALUT(n18373), .C0(instruction[3]), .Z(n18378));
    LUT4 i16156_2_lut_2_lut_3_lut_3_lut_3_lut (.A(reset_c), .B(n18716), 
         .C(n18717), .Z(n4008)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i16156_2_lut_2_lut_3_lut_3_lut_3_lut.init = 16'hfbfb;
    FD1P3AX B_i0_i1 (.D(n14_adj_1181), .SP(clk_0_enable_127), .CK(clk_0), 
            .Q(B[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam B_i0_i1.GSR = "DISABLED";
    LUT4 i16154_4_lut_4_lut_4_lut (.A(reset_c), .B(n18725), .C(n18720), 
         .D(n18727), .Z(n5151)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i16154_4_lut_4_lut_4_lut.init = 16'hfeff;
    LUT4 n1867_bdd_4_lut_16269_4_lut_4_lut (.A(reset_c), .B(n18727), .C(n18724), 
         .D(n18725), .Z(n18460)) /* synthesis lut_function=(A+!(B (C+!(D))+!B !((D)+!C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam n1867_bdd_4_lut_16269_4_lut_4_lut.init = 16'hbfab;
    FD1P3AX A_i0_i11 (.D(n17999), .SP(clk_0_enable_143), .CK(clk_0), .Q(A[11]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam A_i0_i11.GSR = "DISABLED";
    CCU2D add_519_7 (.A0(PC[4]), .B0(n22), .C0(n21), .D0(n3_adj_1174), 
          .A1(PC[5]), .B1(n22), .C1(n21), .D1(n3_adj_1136), .CIN(n16841), 
          .COUT(n16842), .S0(n483), .S1(n482));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(268[8] 277[15])
    defparam add_519_7.INIT0 = 16'h56aa;
    defparam add_519_7.INIT1 = 16'h56aa;
    defparam add_519_7.INJECT1_0 = "NO";
    defparam add_519_7.INJECT1_1 = "NO";
    FD1P3AX A_i0_i10 (.D(n17904), .SP(clk_0_enable_143), .CK(clk_0), .Q(A[10]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam A_i0_i10.GSR = "DISABLED";
    FD1P3AX A_i0_i9 (.D(n17998), .SP(clk_0_enable_143), .CK(clk_0), .Q(A[9]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam A_i0_i9.GSR = "DISABLED";
    FD1P3AX A_i0_i8 (.D(n17906), .SP(clk_0_enable_143), .CK(clk_0), .Q(A[8]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam A_i0_i8.GSR = "DISABLED";
    FD1P3AX A_i0_i7 (.D(n14_adj_1183), .SP(clk_0_enable_143), .CK(clk_0), 
            .Q(A[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam A_i0_i7.GSR = "DISABLED";
    FD1P3AX A_i0_i6 (.D(n14_adj_1184), .SP(clk_0_enable_143), .CK(clk_0), 
            .Q(A[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam A_i0_i6.GSR = "DISABLED";
    FD1P3AX A_i0_i5 (.D(n14_adj_1185), .SP(clk_0_enable_143), .CK(clk_0), 
            .Q(A[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam A_i0_i5.GSR = "DISABLED";
    LUT4 n1867_bdd_4_lut_16279_4_lut_4_lut (.A(reset_c), .B(n18735), .C(n18745), 
         .D(n18737), .Z(n18468)) /* synthesis lut_function=(A+!(B (C+!(D))+!B !((D)+!C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam n1867_bdd_4_lut_16279_4_lut_4_lut.init = 16'hbfab;
    LUT4 i8548_3_lut_4_lut_4_lut (.A(reset_c), .B(n18727), .C(n18733), 
         .D(bcd_out_15__N_517), .Z(n4358)) /* synthesis lut_function=(!(A+!(B+!(C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8548_3_lut_4_lut_4_lut.init = 16'h4554;
    FD1P3AX A_i0_i4 (.D(n17984), .SP(clk_0_enable_143), .CK(clk_0), .Q(A[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam A_i0_i4.GSR = "DISABLED";
    FD1P3AX A_i0_i3 (.D(n14_adj_1187), .SP(clk_0_enable_143), .CK(clk_0), 
            .Q(A[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam A_i0_i3.GSR = "DISABLED";
    LUT4 i16150_4_lut_4_lut_4_lut (.A(reset_c), .B(n18737), .C(n18728), 
         .D(n18735), .Z(n5831)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i16150_4_lut_4_lut_4_lut.init = 16'hfeff;
    FD1P3AX A_i0_i2 (.D(n17907), .SP(clk_0_enable_143), .CK(clk_0), .Q(A[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam A_i0_i2.GSR = "DISABLED";
    FD1P3AX A_i0_i1 (.D(n17905), .SP(clk_0_enable_143), .CK(clk_0), .Q(A[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam A_i0_i1.GSR = "DISABLED";
    FD1P3IX MBR_i0_i2 (.D(data_out_23__N_591[2]), .SP(clk_0_enable_142), 
            .CD(n18880), .CK(clk_0), .Q(MBR[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MBR_i0_i2.GSR = "ENABLED";
    LUT4 i8351_3_lut_4_lut_4_lut (.A(reset_c), .B(n18751), .C(n18757), 
         .D(bcd_out_15__N_574), .Z(n6328)) /* synthesis lut_function=(!(A+!(B+!(C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8351_3_lut_4_lut_4_lut.init = 16'h4554;
    LUT4 i1886_2_lut_3_lut_3_lut_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_554), 
         .C(n18746), .D(n18761), .Z(n3940)) /* synthesis lut_function=(A+!(B (C (D))+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1886_2_lut_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hbeff;
    LUT4 i8609_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n18715), .C(n2572), 
         .D(n18739), .Z(n10715)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8609_2_lut_3_lut_4_lut_4_lut.init = 16'h0440;
    LUT4 bcd_out_15__N_582_bdd_4_lut_4_lut (.A(reset_c), .B(n18741), .C(n18744), 
         .D(n18751), .Z(n18402)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam bcd_out_15__N_582_bdd_4_lut_4_lut.init = 16'hefff;
    LUT4 i8343_2_lut_rep_119_3_lut_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_517), 
         .C(n18742), .D(n18743), .Z(n18714)) /* synthesis lut_function=(!(A+(B (D)+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8343_2_lut_rep_119_3_lut_4_lut_4_lut_4_lut.init = 16'h1044;
    LUT4 i8604_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_554), 
         .C(n18746), .D(n18745), .Z(n10709)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8604_2_lut_3_lut_4_lut_4_lut.init = 16'h1400;
    LUT4 i8341_2_lut_rep_126_3_lut_3_lut (.A(reset_c), .B(n18732), .C(bcd_out_15__N_521), 
         .Z(n18721)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8341_2_lut_rep_126_3_lut_3_lut.init = 16'h1414;
    LUT4 i8344_2_lut_rep_116_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_517), 
         .C(n18742), .D(n18743), .Z(n18711)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8344_2_lut_rep_116_4_lut_4_lut_4_lut.init = 16'h1450;
    LUT4 n1867_bdd_4_lut_4_lut (.A(reset_c), .B(Q[0]), .C(n18751), .D(n18744), 
         .Z(n18483)) /* synthesis lut_function=(A+!(B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam n1867_bdd_4_lut_4_lut.init = 16'habbf;
    LUT4 i16148_2_lut_2_lut_3_lut_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_550), 
         .C(n18747), .D(n18737), .Z(n3881)) /* synthesis lut_function=(A+!(B (C (D))+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i16148_2_lut_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hbeff;
    LUT4 i8611_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n18724), .C(n18732), 
         .D(bcd_out_15__N_521), .Z(n10717)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8611_2_lut_3_lut_4_lut_4_lut.init = 16'h0440;
    LUT4 i8352_3_lut_4_lut_4_lut (.A(reset_c), .B(n18735), .C(n18747), 
         .D(bcd_out_15__N_550), .Z(n6324)) /* synthesis lut_function=(!(A+!(B+!(C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8352_3_lut_4_lut_4_lut.init = 16'h4554;
    LUT4 n1867_bdd_4_lut_16265_4_lut_4_lut (.A(reset_c), .B(n18718), .C(n18715), 
         .D(n18716), .Z(n18448)) /* synthesis lut_function=(A+!(B (C+!(D))+!B !((D)+!C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam n1867_bdd_4_lut_16265_4_lut_4_lut.init = 16'hbfab;
    LUT4 i8261_2_lut_3_lut_3_lut (.A(reset_c), .B(n6242), .C(n18745), 
         .Z(DISPLAY_6__N_584_adj_1198[4])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8261_2_lut_3_lut_3_lut.init = 16'h8c8c;
    LUT4 i16090_2_lut_2_lut_3_lut_4_lut_3_lut (.A(reset_c), .B(n18754), 
         .C(Q[0]), .Z(n18129)) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i16090_2_lut_2_lut_3_lut_4_lut_3_lut.init = 16'hebeb;
    CCU2D add_163_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n16832), 
          .S1(n1600));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_163_1.INIT0 = 16'hF000;
    defparam add_163_1.INIT1 = 16'h5555;
    defparam add_163_1.INJECT1_0 = "NO";
    defparam add_163_1.INJECT1_1 = "NO";
    CCU2D add_7_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n16828), 
          .S1(n232));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_7_1.INIT0 = 16'hF000;
    defparam add_7_1.INIT1 = 16'h5555;
    defparam add_7_1.INJECT1_0 = "NO";
    defparam add_7_1.INJECT1_1 = "NO";
    LUT4 i16144_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n18744), .C(n18757), 
         .D(bcd_out_15__N_574), .Z(n4113)) /* synthesis lut_function=(A (B)+!A (B+!(C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i16144_2_lut_3_lut_4_lut_4_lut.init = 16'hcddc;
    LUT4 i8335_2_lut_rep_141_3_lut_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_574), 
         .C(n18762), .D(n18763), .Z(n18736)) /* synthesis lut_function=(!(A+(B (D)+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8335_2_lut_rep_141_3_lut_4_lut_4_lut_4_lut.init = 16'h1044;
    LUT4 i8345_2_lut_rep_117_3_lut_3_lut (.A(reset_c), .B(n2572), .C(n18739), 
         .Z(n18712)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8345_2_lut_rep_117_3_lut_3_lut.init = 16'h1414;
    CCU2D add_519_5 (.A0(PC[2]), .B0(n22), .C0(n21), .D0(n3), .A1(PC[3]), 
          .B1(n22), .C1(n21), .D1(n3_adj_1135), .CIN(n16840), .COUT(n16841), 
          .S0(n485), .S1(n484));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(268[8] 277[15])
    defparam add_519_5.INIT0 = 16'h56aa;
    defparam add_519_5.INIT1 = 16'h56aa;
    defparam add_519_5.INJECT1_0 = "NO";
    defparam add_519_5.INJECT1_1 = "NO";
    LUT4 i8363_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(Q[1]), .C(n18756), 
         .D(Q[0]), .Z(n10468)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8363_2_lut_3_lut_4_lut_4_lut.init = 16'h1400;
    LUT4 i16152_2_lut_2_lut_3_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n18725), 
         .C(n18733), .D(bcd_out_15__N_517), .Z(n3960)) /* synthesis lut_function=(A+!(B (C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i16152_2_lut_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'hbffb;
    LUT4 i8342_2_lut_rep_124_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_521), 
         .C(n18732), .D(n18750), .Z(n18719)) /* synthesis lut_function=(!(A+!(B (D)+!B !(C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8342_2_lut_rep_124_4_lut_4_lut.init = 16'h4510;
    LUT4 i1995_2_lut_3_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n18716), .C(n2572), 
         .D(n18739), .Z(n4072)) /* synthesis lut_function=(A+!(B (C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1995_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'hbffb;
    LUT4 i1925_2_lut_3_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n18725), .C(n18732), 
         .D(bcd_out_15__N_521), .Z(n3983)) /* synthesis lut_function=(A+!(B (C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1925_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'hbffb;
    LUT4 i8258_2_lut_rep_312_2_lut (.A(reset_c), .B(Q[0]), .Z(n18907)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8258_2_lut_rep_312_2_lut.init = 16'h4444;
    CCU2D add_519_3 (.A0(PC[0]), .B0(n22), .C0(n21), .D0(n3799), .A1(PC[1]), 
          .B1(n22), .C1(n21), .D1(n3797), .CIN(n16839), .COUT(n16840), 
          .S0(n487), .S1(n486));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(268[8] 277[15])
    defparam add_519_3.INIT0 = 16'h56aa;
    defparam add_519_3.INIT1 = 16'h56aa;
    defparam add_519_3.INJECT1_0 = "NO";
    defparam add_519_3.INJECT1_1 = "NO";
    LUT4 IR_22__bdd_3_lut_16339 (.A(IR[22]), .B(IR[20]), .C(IR[21]), .Z(n18523)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam IR_22__bdd_3_lut_16339.init = 16'h0202;
    CCU2D add_519_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n18_adj_1143), .B1(n17_adj_1156), .C1(n22), .D1(IR[17]), 
          .COUT(n16839));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(268[8] 277[15])
    defparam add_519_1.INIT0 = 16'hF000;
    defparam add_519_1.INIT1 = 16'h01ff;
    defparam add_519_1.INJECT1_0 = "NO";
    defparam add_519_1.INJECT1_1 = "NO";
    LUT4 IR_22__bdd_4_lut_16340 (.A(IR[22]), .B(IR[19]), .C(IR[20]), .D(IR[21]), 
         .Z(n18524)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B+((D)+!C)))) */ ;
    defparam IR_22__bdd_4_lut_16340.init = 16'h0290;
    LUT4 i16088_2_lut_2_lut_3_lut_3_lut_3_lut (.A(reset_c), .B(n18725), 
         .C(n18724), .Z(n18127)) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i16088_2_lut_2_lut_3_lut_3_lut_3_lut.init = 16'hebeb;
    LUT4 i8337_2_lut_rep_134_3_lut_3_lut (.A(reset_c), .B(n18746), .C(bcd_out_15__N_554), 
         .Z(n18729)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8337_2_lut_rep_134_3_lut_3_lut.init = 16'h1414;
    LUT4 i8338_2_lut_rep_135_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_554), 
         .C(n18746), .D(n18761), .Z(n18730)) /* synthesis lut_function=(!(A+!(B (D)+!B !(C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8338_2_lut_rep_135_4_lut_4_lut.init = 16'h4510;
    LUT4 i8347_2_lut_rep_118_4_lut_4_lut (.A(reset_c), .B(n18731), .C(n2572), 
         .D(bcd_out_15__N_355), .Z(n18713)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8347_2_lut_rep_118_4_lut_4_lut.init = 16'h1540;
    LUT4 i16086_2_lut_3_lut_3_lut_3_lut_3_lut (.A(reset_c), .B(n18737), 
         .C(n18745), .Z(n18125)) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i16086_2_lut_3_lut_3_lut_3_lut_3_lut.init = 16'hebeb;
    LUT4 i1_2_lut_3_lut_adj_174 (.A(rpg_write), .B(rpg_sel[0]), .C(rpg_sel[1]), 
         .Z(clk_0_enable_19)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_174.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_175 (.A(rpg_write), .B(rpg_sel[0]), .C(rpg_sel[1]), 
         .Z(clk_0_enable_21)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_175.init = 16'h0202;
    LUT4 i2162_2_lut_rep_343 (.A(instruction[1]), .B(instruction[2]), .Z(n18938)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i2162_2_lut_rep_343.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(instruction[1]), .B(instruction[2]), 
         .C(instruction[0]), .D(instruction[3]), .Z(n5_adj_1163)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C+!(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h10ff;
    PFUMX i5883 (.BLUT(n8329), .ALUT(n6_adj_1141), .C0(execute_instruction[2]), 
          .Z(n8007));
    LUT4 i33_3_lut_3_lut_4_lut (.A(instruction[1]), .B(instruction[2]), 
         .C(instruction[3]), .D(instruction[0]), .Z(n18053)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i33_3_lut_3_lut_4_lut.init = 16'h1101;
    LUT4 i16136_2_lut_rep_304_3_lut (.A(instruction[1]), .B(instruction[2]), 
         .C(instruction[0]), .Z(n18899)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i16136_2_lut_rep_304_3_lut.init = 16'h0101;
    LUT4 i1_2_lut_rep_308_3_lut (.A(instruction[1]), .B(instruction[2]), 
         .C(instruction[0]), .Z(n18903)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i1_2_lut_rep_308_3_lut.init = 16'h1010;
    LUT4 n6794_bdd_4_lut_16314 (.A(n6794), .B(n18920), .C(instruction[1]), 
         .D(instruction[0]), .Z(n18362)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam n6794_bdd_4_lut_16314.init = 16'hca0a;
    LUT4 i6881_1_lut_rep_344 (.A(execute_instruction[2]), .Z(n18939)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i6881_1_lut_rep_344.init = 16'h5555;
    LUT4 n102_bdd_3_lut_4_lut_4_lut (.A(execute_instruction[2]), .B(IR[16]), 
         .C(n18920), .D(instruction[0]), .Z(n18374)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam n102_bdd_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i3_3_lut_4_lut_4_lut (.A(execute_instruction[2]), .B(n18959), .C(instruction[1]), 
         .D(instruction[0]), .Z(n17017)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i3_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i2_3_lut_4_lut_4_lut (.A(execute_instruction[2]), .B(n18922), .C(IR[2]), 
         .D(n19471), .Z(n17928)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i1_4_lut_adj_176 (.A(n18889), .B(n19471), .C(n6187), .D(n16_adj_1133), 
         .Z(clk_0_enable_143)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_176.init = 16'h8a88;
    LUT4 i1784_2_lut_rep_203_3_lut_3_lut_3_lut (.A(n2587), .B(n18844), .C(bcd_out_15__N_402), 
         .Z(n18798)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1784_2_lut_rep_203_3_lut_3_lut_3_lut.init = 16'h3838;
    LUT4 i1_4_lut_adj_177 (.A(n17913), .B(B[8]), .C(A[8]), .D(n18087), 
         .Z(n17806)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(95[8:15])
    defparam i1_4_lut_adj_177.init = 16'ha0ec;
    FD1P3AX control_i0_i3 (.D(n14_adj_1188), .SP(clk_0_enable_143), .CK(clk_0), 
            .Q(control[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam control_i0_i3.GSR = "DISABLED";
    LUT4 i789_2_lut_rep_211_3_lut (.A(n2587), .B(n18844), .C(bcd_out_15__N_402), 
         .Z(n18806)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i789_2_lut_rep_211_3_lut.init = 16'hc8c8;
    FD1P3AX control_i0_i2 (.D(n17928), .SP(clk_0_enable_143), .CK(clk_0), 
            .Q(control[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam control_i0_i2.GSR = "DISABLED";
    FD1P3IX MBR_i0_i1 (.D(data_out_23__N_591[1]), .SP(clk_0_enable_142), 
            .CD(n18880), .CK(clk_0), .Q(MBR[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam MBR_i0_i1.GSR = "ENABLED";
    LUT4 i8_2_lut_adj_178 (.A(IR[4]), .B(IR[17]), .Z(n3_adj_1174)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(83[8:10])
    defparam i8_2_lut_adj_178.init = 16'h6666;
    LUT4 i5_2_lut (.A(IR[5]), .B(IR[17]), .Z(n3_adj_1136)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(83[8:10])
    defparam i5_2_lut.init = 16'h6666;
    PFUMX i6177 (.BLUT(n8368), .ALUT(n6_adj_1142), .C0(execute_instruction[2]), 
          .Z(n7968));
    PFUMX i1965 (.BLUT(n2491), .ALUT(n4035), .C0(n18108), .Z(n4036));
    FD1P3AX control_i0_i1 (.D(n18008), .SP(clk_0_enable_143), .CK(clk_0), 
            .Q(control[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam control_i0_i1.GSR = "DISABLED";
    LUT4 i750_2_lut_rep_210_4_lut (.A(n2583), .B(n2587), .C(n18844), .D(bcd_out_15__N_402), 
         .Z(n18805)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i750_2_lut_rep_210_4_lut.init = 16'hffca;
    LUT4 bcd_out_15__N_383_bdd_3_lut_4_lut_3_lut_4_lut (.A(n2583), .B(n2587), 
         .C(n18844), .D(bcd_out_15__N_402), .Z(n18619)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam bcd_out_15__N_383_bdd_3_lut_4_lut_3_lut_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut_adj_179 (.A(n17913), .B(B[9]), .C(A[9]), .D(n18087), 
         .Z(n17858)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(95[8:15])
    defparam i1_4_lut_adj_179.init = 16'ha0ec;
    PFUMX i16472 (.BLUT(n19018), .ALUT(n19019), .C0(n1597), .Z(n19020));
    PFUMX i16470 (.BLUT(n19015), .ALUT(n19016), .C0(n18844), .Z(bcd_out_15__N_356));
    FD1P3IX rpg_sel_i0_i1 (.D(n19469), .SP(clk_0_enable_144), .CD(n8497), 
            .CK(clk_0), .Q(rpg_sel[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam rpg_sel_i0_i1.GSR = "DISABLED";
    FD1P3AX instruction_i0_i3 (.D(n17895), .SP(clk_0_enable_145), .CK(clk_0), 
            .Q(instruction[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam instruction_i0_i3.GSR = "DISABLED";
    PFUMX i16468 (.BLUT(n19012), .ALUT(n19013), .C0(n1596), .Z(n19014));
    FD1P3AX PC_i0_i2 (.D(PC_7__N_168[2]), .SP(clk_0_enable_151), .CK(clk_0), 
            .Q(PC[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam PC_i0_i2.GSR = "ENABLED";
    FD1P3AX PC_i0_i3 (.D(PC_7__N_168[3]), .SP(clk_0_enable_151), .CK(clk_0), 
            .Q(PC[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam PC_i0_i3.GSR = "ENABLED";
    FD1P3AX PC_i0_i4 (.D(PC_7__N_168[4]), .SP(clk_0_enable_151), .CK(clk_0), 
            .Q(PC[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam PC_i0_i4.GSR = "ENABLED";
    FD1P3AX PC_i0_i5 (.D(PC_7__N_168[5]), .SP(clk_0_enable_151), .CK(clk_0), 
            .Q(PC[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam PC_i0_i5.GSR = "ENABLED";
    FD1P3AX PC_i0_i6 (.D(PC_7__N_168[6]), .SP(clk_0_enable_151), .CK(clk_0), 
            .Q(PC[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam PC_i0_i6.GSR = "ENABLED";
    FD1P3AX PC_i0_i7 (.D(PC_7__N_168[7]), .SP(clk_0_enable_151), .CK(clk_0), 
            .Q(PC[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam PC_i0_i7.GSR = "ENABLED";
    PFUMX i5879 (.BLUT(n8325), .ALUT(n6_adj_1144), .C0(execute_instruction[2]), 
          .Z(n8003));
    PFUMX i16466 (.BLUT(n19009), .ALUT(n19010), .C0(n1599), .Z(n19011));
    PFUMX i16464 (.BLUT(n19006), .ALUT(n19007), .C0(n1598), .Z(n19008));
    PFUMX i6183 (.BLUT(n8370), .ALUT(n6_adj_1145), .C0(execute_instruction[2]), 
          .Z(n7974));
    PFUMX i16458 (.BLUT(n18997), .ALUT(n18998), .C0(global_state[3]), 
          .Z(n18999));
    LUT4 i8429_4_lut (.A(ACC[6]), .B(n18959), .C(data_out_23__N_591[6]), 
         .D(n8389), .Z(n8313)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(170[6] 280[15])
    defparam i8429_4_lut.init = 16'hc088;
    PFUMX i5875 (.BLUT(n8321), .ALUT(n6_adj_1148), .C0(execute_instruction[2]), 
          .Z(n7999));
    bcdDisplay unidades (.un({un}), .clk_0(clk_0), .n6328(n6328), .n18129(n18129), 
            .n18736(n18736), .n18483(n18483), .\DISPLAY_6__N_584[6] (DISPLAY_6__N_584[6]), 
            .\Q[1] (Q[1]), .n18485(n18485), .n18484(n18484), .n18907(n18907), 
            .n18402(n18402), .n4113(n4113), .n4101(n4101), .n18756(n18756), 
            .\Q[0] (Q[0]), .reset_c(reset_c), .n18772(n18772));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(116[11:21])
    Bin2BCD imp_binBCD (.n2572(n2572), .n18718(n18718), .n18740(n18740), 
            .n18731(n18731), .bcd_out_15__N_373(bcd_out_15__N_373), .n1612({bcd_out_15__N_364, 
            bcd_out_15__N_374, bcd_out_15__N_378, Open_0}), .n18958(n18958), 
            .n2587(n2587), .n2562(n2562), .Q({Q}), .n2543(n2543), .n18798(n18798), 
            .bcd_out_15__N_407(bcd_out_15__N_407), .bcd_out_15__N_403(bcd_out_15__N_403), 
            .bcd_out_15__N_356(bcd_out_15__N_356), .n18806(n18806), .bcd_out_15__N_355(bcd_out_15__N_355), 
            .n18841(n18841), .n23(n23), .bcd_out_15__N_554(bcd_out_15__N_554), 
            .n18746(n18746), .reset_c(reset_c), .n18745(n18745), .n3899(n3899), 
            .n18744(n18744), .n10468(n10468), .n18736(n18736), .\Qbcd[1] (Qbcd[1]), 
            .\DISPLAY_6__N_584[6] (DISPLAY_6__N_584[6]), .n18354(n18354), 
            .n18844(n18844), .n18353(n18353), .n18739(n18739), .n10728(n10728), 
            .n18716(n18716), .bcd_out_15__N_517(bcd_out_15__N_517), .n18743(n18743), 
            .n18732(n18732), .n18715(n18715), .n18720(n18720), .n18733(n18733), 
            .bcd_out_15__N_521(bcd_out_15__N_521), .n18750(n18750), .n18742(n18742), 
            .n18727(n18727), .n18725(n18725), .n2583(n2583), .bcd_out_15__N_402(bcd_out_15__N_402), 
            .n10460(n10460), .bcd_out_15__N_574(bcd_out_15__N_574), .n18763(n18763), 
            .n18741(n18741), .n18772(n18772), .n18762(n18762), .n18751(n18751), 
            .n18756(n18756), .n4101(n4101), .bcd_out_15__N_550(bcd_out_15__N_550), 
            .n18753(n18753), .bcd_out_15__N_449(bcd_out_15__N_449), .n18747(n18747), 
            .n18724(n18724), .n3980(n3980), .n18728(n18728), .n18752(n18752), 
            .n18761(n18761), .n18735(n18735), .n18754(n18754), .n18717(n18717), 
            .n18805(n18805), .n4038(n4038), .n18797(n18797), .n18970(n18970), 
            .n18618(n18618), .n18737(n18737), .n10730(n10730), .n18757(n18757), 
            .n18681(n18681));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(114[13:20])
    LUT4 i1_2_lut_rep_358 (.A(control[0]), .B(control[1]), .Z(n18953)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i1_2_lut_rep_358.init = 16'h8888;
    bcdDisplay_U6 decenas (.de({de}), .clk_0(clk_0), .n6324(n6324), .n18125(n18125), 
            .n18723(n18723), .\DISPLAY_6__N_584[4] (DISPLAY_6__N_584_adj_1198[4]), 
            .n18468(n18468), .reset_c(reset_c), .n18746(n18746), .bcd_out_15__N_554(bcd_out_15__N_554), 
            .n18761(n18761), .n18738(n18738), .n5831(n5831), .n3881(n3881), 
            .n3899(n3899), .n18729(n18729), .n10709(n10709), .n18730(n18730), 
            .n3940(n3940), .n10730(n10730), .n6242(n6242), .n18745(n18745));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(117[10:20])
    LUT4 i8543_3_lut_4_lut (.A(control[0]), .B(control[1]), .C(control[2]), 
         .D(A[11]), .Z(n6737)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i8543_3_lut_4_lut.init = 16'h8008;
    ROM ROM_imp (.MAR({MAR}), .clk_0(clk_0), .reset_c(reset_c), .GND_net(GND_net), 
        .VCC_net(VCC_net), .\data_out_23__N_640[13] (data_out_23__N_640[13]), 
        .\data_out_23__N_640[14] (data_out_23__N_640[14]), .\data_out_23__N_640[15] (data_out_23__N_640[15]), 
        .data_out_23__N_592(data_out_23__N_592), .data_out_23__N_591({data_out_23__N_591}), 
        .n19477(n19477));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(122[10:13])
    LUT4 i8357_2_lut_2_lut_3_lut (.A(control[0]), .B(control[1]), .C(logic_result[8]), 
         .Z(n10_adj_1193)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[3] 286[10])
    defparam i8357_2_lut_2_lut_3_lut.init = 16'h7070;
    PFUMX i5857 (.BLUT(n8313), .ALUT(n6_adj_1151), .C0(execute_instruction[2]), 
          .Z(n7981));
    bcdDisplay_U7 centenas (.ce({ce}), .clk_0(clk_0), .n4358(n4358), .n18127(n18127), 
            .n18714(n18714), .\DISPLAY_6__N_584[4] (DISPLAY_6__N_584_adj_1202[4]), 
            .n18460(n18460), .reset_c(reset_c), .n18732(n18732), .bcd_out_15__N_521(bcd_out_15__N_521), 
            .n18750(n18750), .n18722(n18722), .n5151(n5151), .n3960(n3960), 
            .n3980(n3980), .n18721(n18721), .n10717(n10717), .n18719(n18719), 
            .n3983(n3983), .n10460(n10460), .n6251(n6251), .n18724(n18724));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(118[11:21])
    
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
// Verilog Description of module bcdDisplay_U5
//

module bcdDisplay_U5 (mi, clk_0, n6348, n18131, n18713, \DISPLAY_6__N_584[4] , 
            n18448, reset_c, n2572, n18739, n18740, n18711, n5069, 
            n4008, n4038, n18712, n10715, n18710, n4072, n10728, 
            n6267, n18715);
    output [6:0]mi;
    input clk_0;
    input n6348;
    input n18131;
    input n18713;
    input \DISPLAY_6__N_584[4] ;
    input n18448;
    input reset_c;
    input n2572;
    input n18739;
    input n18740;
    input n18711;
    input n5069;
    input n4008;
    input n4038;
    input n18712;
    input n10715;
    input n18710;
    input n4072;
    input n10728;
    output n6267;
    input n18715;
    
    wire clk_0 /* synthesis is_clock=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(72[8:13])
    
    wire n18996;
    wire [6:0]DISPLAY_6__N_584;
    
    wire n18995, n18994;
    
    FD1S3JX DISPLAY_i0 (.D(n18131), .CK(clk_0), .PD(n6348), .Q(mi[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i0.GSR = "ENABLED";
    FD1S3JX DISPLAY_i3 (.D(n18996), .CK(clk_0), .PD(n18713), .Q(mi[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i3.GSR = "ENABLED";
    FD1S3AY DISPLAY_i4 (.D(\DISPLAY_6__N_584[4] ), .CK(clk_0), .Q(mi[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i4.GSR = "ENABLED";
    FD1S3JX DISPLAY_i5 (.D(n18448), .CK(clk_0), .PD(n18713), .Q(mi[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i5.GSR = "ENABLED";
    FD1S3AX DISPLAY_i6 (.D(DISPLAY_6__N_584[6]), .CK(clk_0), .Q(mi[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i6.GSR = "ENABLED";
    LUT4 i16261_then_4_lut (.A(reset_c), .B(n2572), .C(n18739), .D(n18740), 
         .Z(n18995)) /* synthesis lut_function=(A+(B (D)+!B !(C (D)+!C !(D)))) */ ;
    defparam i16261_then_4_lut.init = 16'hefba;
    LUT4 i16261_else_4_lut (.A(reset_c), .B(n2572), .C(n18739), .D(n18740), 
         .Z(n18994)) /* synthesis lut_function=(A+!(B (C (D))+!B !(C+!(D)))) */ ;
    defparam i16261_else_4_lut.init = 16'hbeff;
    FD1S3JX DISPLAY_i2 (.D(n5069), .CK(clk_0), .PD(n18711), .Q(mi[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i2.GSR = "ENABLED";
    FD1S3JX DISPLAY_i1 (.D(n4038), .CK(clk_0), .PD(n4008), .Q(mi[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i1.GSR = "ENABLED";
    LUT4 i8274_4_lut (.A(n18712), .B(n18713), .C(n10715), .D(n18710), 
         .Z(DISPLAY_6__N_584[6])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(30[3] 41[12])
    defparam i8274_4_lut.init = 16'hcfee;
    PFUMX i4172 (.BLUT(n4072), .ALUT(n10728), .C0(n18713), .Z(n6267));
    PFUMX i16456 (.BLUT(n18994), .ALUT(n18995), .C0(n18715), .Z(n18996));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module alu
//

module alu (n10, control, A_temp_11__N_976, logic_result_11__N_951, 
            n18916, \intermediate_carry[0] , substract_N_990, substract_N_989, 
            \A_temp[11] , B_temp_11__N_982, B_temp_11__N_981, n18910, 
            n17806, n17858, n17804, \B_temp[11] , n17856, \logic_result[2] , 
            \logic_result[3] , \logic_result[4] , \logic_result[5] , \logic_result[6] , 
            n18576, \logic_result[7] , n18575, \logic_result[8] , \logic_result[9] , 
            \logic_result[10] , \logic_result[11] , n6005, \B[3] , n5661, 
            n6742, n10_adj_11, n10_adj_12, n10_adj_13, n5641, n6739, 
            n10_adj_14, n5633, n6737, \B[5] , n10_adj_15, \A[0] , 
            n7615, ACC, n18, n17, \A[11] , \B[11] , \A[10] , \B[10] , 
            \A[9] , \B[9] , \A[8] , \B[8] , \A[5] , \B[2] , \A[4] , 
            \B[4] , \A[3] , \A[2] , \A[1] , \B[1] , \B[0] , n7, 
            n7_adj_16, n7_adj_17, n7_adj_18, n18953, n7_adj_19, n7_adj_20, 
            n10_adj_21, n22, n21, n7_adj_22, n6748, \intermediate_carry[11] , 
            n7_adj_23, n6746, n5670, n6744, n10_adj_24, n10_adj_25, 
            n10_adj_26);
    input n10;
    input [3:0]control;
    input A_temp_11__N_976;
    input logic_result_11__N_951;
    input n18916;
    output \intermediate_carry[0] ;
    input substract_N_990;
    input substract_N_989;
    output \A_temp[11] ;
    input B_temp_11__N_982;
    input B_temp_11__N_981;
    input n18910;
    input n17806;
    input n17858;
    input n17804;
    output \B_temp[11] ;
    input n17856;
    output \logic_result[2] ;
    output \logic_result[3] ;
    output \logic_result[4] ;
    output \logic_result[5] ;
    output \logic_result[6] ;
    input n18576;
    output \logic_result[7] ;
    input n18575;
    output \logic_result[8] ;
    output \logic_result[9] ;
    output \logic_result[10] ;
    output \logic_result[11] ;
    input n6005;
    input \B[3] ;
    input n5661;
    input n6742;
    input n10_adj_11;
    input n10_adj_12;
    input n10_adj_13;
    input n5641;
    input n6739;
    input n10_adj_14;
    input n5633;
    input n6737;
    input \B[5] ;
    input n10_adj_15;
    input \A[0] ;
    input n7615;
    output [11:0]ACC;
    output n18;
    output n17;
    input \A[11] ;
    input \B[11] ;
    input \A[10] ;
    input \B[10] ;
    input \A[9] ;
    input \B[9] ;
    input \A[8] ;
    input \B[8] ;
    input \A[5] ;
    input \B[2] ;
    input \A[4] ;
    input \B[4] ;
    input \A[3] ;
    input \A[2] ;
    input \A[1] ;
    input \B[1] ;
    input \B[0] ;
    input n7;
    input n7_adj_16;
    input n7_adj_17;
    input n7_adj_18;
    input n18953;
    input n7_adj_19;
    input n7_adj_20;
    input n10_adj_21;
    output n22;
    output n21;
    input n7_adj_22;
    input n6748;
    output \intermediate_carry[11] ;
    input n7_adj_23;
    input n6746;
    input n5670;
    input n6744;
    input n10_adj_24;
    input n10_adj_25;
    input n10_adj_26;
    
    wire A_temp_11__N_976 /* synthesis is_clock=1, SET_AS_NETWORK=\ALU_imp/A_temp_11__N_976 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(39[9:15])
    wire substract_N_990 /* synthesis is_clock=1, SET_AS_NETWORK=\ALU_imp/substract_N_990 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(33[9:18])
    
    wire n17938, n14;
    wire [11:0]A_temp;   // c:/users/cassandra/desktop/arqui2/alu.vhd(39[9:15])
    wire [39:0]n1718;
    wire [11:0]B_temp;   // c:/users/cassandra/desktop/arqui2/alu.vhd(39[16:22])
    wire [11:0]logic_result;   // c:/users/cassandra/desktop/arqui2/alu.vhd(35[9:21])
    
    wire n18352, n18586, n18585, n18584, n18583, n18582, n18570, 
        n18569, n18568, n18567, n18492, n17939, n14_adj_1078, n17943, 
        n14_adj_1080, n17942, n14_adj_1082, n17940, n14_adj_1084, 
        n18850, n18952;
    wire [11:0]v56;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(21[22:25])
    wire [11:0]v12_34;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(21[27:33])
    
    wire n18505, n17941, n14_adj_1086, n14_adj_1087, n18849, n4, 
        n18842, n17936, n18835, n17946;
    wire [11:0]v2;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(20[16:18])
    
    wire n18564, n18967, n18475, n14_adj_1088, n18472;
    wire [12:0]intermediate_carry;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(18[8:26])
    
    wire n18854;
    wire [11:0]SumRest_11__N_991;
    
    wire n18678, n18858, n4_adj_1089, n18865, n4_adj_1090, n18873, 
        n4_adj_1091, n14_adj_1093, n18900, n4_adj_1094, n14_adj_1096, 
        n18930, n18705, n4_adj_1097, n14_adj_1099, n18969, n14_adj_1101, 
        n14_adj_1103, n18679, n18968, n18883;
    wire [11:0]v34;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(21[17:20])
    wire [11:0]v12;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(21[12:15])
    
    wire n18499, n18861, n18906, n14_adj_1105, n10_adj_1106, n18859, 
        n18819, n14_adj_1107, n4_adj_1108, n4_adj_1110, n18832, n14_adj_1111, 
        n4_adj_1112, n18838, n4_adj_1113, n18826, n14_adj_1114, n4_adj_1115, 
        n17947;
    
    PFUMX control_3__I_0_276_Mux_7_i14 (.BLUT(n10), .ALUT(n17938), .C0(control[2]), 
          .Z(n14)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    FD1S1A A_temp_11__I_0_i1 (.D(n1718[27]), .CK(A_temp_11__N_976), .Q(A_temp[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam A_temp_11__I_0_i1.GSR = "DISABLED";
    FD1S1A B_temp_11__I_0_i1 (.D(n1718[15]), .CK(A_temp_11__N_976), .Q(B_temp[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam B_temp_11__I_0_i1.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i1 (.D(n18352), .CK(logic_result_11__N_951), 
           .CD(n18916), .Q(logic_result[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam logic_result_11__I_0_i1.GSR = "DISABLED";
    FD1S1A substract_I_0 (.D(substract_N_989), .CK(substract_N_990), .Q(\intermediate_carry[0] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam substract_I_0.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i2 (.D(n1718[28]), .CK(A_temp_11__N_976), .Q(A_temp[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam A_temp_11__I_0_i2.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i3 (.D(n1718[29]), .CK(A_temp_11__N_976), .Q(A_temp[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam A_temp_11__I_0_i3.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i4 (.D(n1718[30]), .CK(A_temp_11__N_976), .Q(A_temp[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam A_temp_11__I_0_i4.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i5 (.D(n1718[31]), .CK(A_temp_11__N_976), .Q(A_temp[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam A_temp_11__I_0_i5.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i6 (.D(n1718[32]), .CK(A_temp_11__N_976), .Q(A_temp[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam A_temp_11__I_0_i6.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i7 (.D(n1718[33]), .CK(A_temp_11__N_976), .Q(A_temp[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam A_temp_11__I_0_i7.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i8 (.D(n1718[34]), .CK(A_temp_11__N_976), .Q(A_temp[7])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam A_temp_11__I_0_i8.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i9 (.D(n1718[35]), .CK(A_temp_11__N_976), .Q(A_temp[8])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam A_temp_11__I_0_i9.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i10 (.D(n1718[36]), .CK(A_temp_11__N_976), .Q(A_temp[9])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam A_temp_11__I_0_i10.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i11 (.D(n1718[38]), .CK(A_temp_11__N_976), .Q(A_temp[10])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam A_temp_11__I_0_i11.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i12 (.D(n1718[39]), .CK(A_temp_11__N_976), .Q(\A_temp[11] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam A_temp_11__I_0_i12.GSR = "DISABLED";
    FD1S1A B_temp_11__I_0_i2 (.D(n1718[16]), .CK(A_temp_11__N_976), .Q(B_temp[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam B_temp_11__I_0_i2.GSR = "DISABLED";
    FD1S1A B_temp_11__I_0_i3 (.D(n1718[17]), .CK(A_temp_11__N_976), .Q(B_temp[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam B_temp_11__I_0_i3.GSR = "DISABLED";
    FD1S1A B_temp_11__I_0_i4 (.D(n1718[18]), .CK(A_temp_11__N_976), .Q(B_temp[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam B_temp_11__I_0_i4.GSR = "DISABLED";
    FD1S1A B_temp_11__I_0_i5 (.D(n1718[19]), .CK(A_temp_11__N_976), .Q(B_temp[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam B_temp_11__I_0_i5.GSR = "DISABLED";
    FD1S1A B_temp_11__I_0_i6 (.D(n1718[20]), .CK(A_temp_11__N_976), .Q(B_temp[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam B_temp_11__I_0_i6.GSR = "DISABLED";
    FD1S1A B_temp_11__I_0_i7 (.D(B_temp_11__N_982), .CK(A_temp_11__N_976), 
           .Q(B_temp[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam B_temp_11__I_0_i7.GSR = "DISABLED";
    FD1S1A B_temp_11__I_0_i8 (.D(B_temp_11__N_981), .CK(A_temp_11__N_976), 
           .Q(B_temp[7])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam B_temp_11__I_0_i8.GSR = "DISABLED";
    FD1S1I B_temp_11__I_0_i9 (.D(n17806), .CK(A_temp_11__N_976), .CD(n18910), 
           .Q(B_temp[8])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam B_temp_11__I_0_i9.GSR = "DISABLED";
    FD1S1I B_temp_11__I_0_i10 (.D(n17858), .CK(A_temp_11__N_976), .CD(n18910), 
           .Q(B_temp[9])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam B_temp_11__I_0_i10.GSR = "DISABLED";
    FD1S1I B_temp_11__I_0_i11 (.D(n17804), .CK(A_temp_11__N_976), .CD(n18910), 
           .Q(B_temp[10])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam B_temp_11__I_0_i11.GSR = "DISABLED";
    FD1S1I B_temp_11__I_0_i12 (.D(n17856), .CK(A_temp_11__N_976), .CD(n18910), 
           .Q(\B_temp[11] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam B_temp_11__I_0_i12.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i2 (.D(n18586), .CK(logic_result_11__N_951), 
           .CD(n18916), .Q(logic_result[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam logic_result_11__I_0_i2.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i3 (.D(n18585), .CK(logic_result_11__N_951), 
           .CD(n18916), .Q(\logic_result[2] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam logic_result_11__I_0_i3.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i4 (.D(n18584), .CK(logic_result_11__N_951), 
           .CD(n18916), .Q(\logic_result[3] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam logic_result_11__I_0_i4.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i5 (.D(n18583), .CK(logic_result_11__N_951), 
           .CD(n18916), .Q(\logic_result[4] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam logic_result_11__I_0_i5.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i6 (.D(n18582), .CK(logic_result_11__N_951), 
           .CD(n18916), .Q(\logic_result[5] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam logic_result_11__I_0_i6.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i7 (.D(n18576), .CK(logic_result_11__N_951), 
           .CD(n18916), .Q(\logic_result[6] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam logic_result_11__I_0_i7.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i8 (.D(n18575), .CK(logic_result_11__N_951), 
           .CD(n18916), .Q(\logic_result[7] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam logic_result_11__I_0_i8.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i9 (.D(n18570), .CK(logic_result_11__N_951), 
           .CD(n18916), .Q(\logic_result[8] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam logic_result_11__I_0_i9.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i10 (.D(n18569), .CK(logic_result_11__N_951), 
           .CD(n18916), .Q(\logic_result[9] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam logic_result_11__I_0_i10.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i11 (.D(n18568), .CK(logic_result_11__N_951), 
           .CD(n18916), .Q(\logic_result[10] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam logic_result_11__I_0_i11.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i12 (.D(n18567), .CK(logic_result_11__N_951), 
           .CD(n18916), .Q(\logic_result[11] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(45[2] 107[28])
    defparam logic_result_11__I_0_i12.GSR = "DISABLED";
    LUT4 n6005_bdd_4_lut_16432 (.A(n6005), .B(\B[3] ), .C(n18492), .D(control[3]), 
         .Z(n1718[18])) /* synthesis lut_function=(A (C (D))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam n6005_bdd_4_lut_16432.init = 16'hf044;
    PFUMX mux_245_Mux_36_i15 (.BLUT(n5661), .ALUT(n6742), .C0(control[3]), 
          .Z(n1718[36])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    PFUMX control_3__I_0_276_Mux_6_i14 (.BLUT(n10_adj_11), .ALUT(n17939), 
          .C0(control[2]), .Z(n14_adj_1078)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    PFUMX control_3__I_0_276_Mux_5_i14 (.BLUT(n10_adj_12), .ALUT(n17943), 
          .C0(control[2]), .Z(n14_adj_1080)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    PFUMX control_3__I_0_276_Mux_4_i14 (.BLUT(n10_adj_13), .ALUT(n17942), 
          .C0(control[2]), .Z(n14_adj_1082)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    PFUMX mux_245_Mux_38_i15 (.BLUT(n5641), .ALUT(n6739), .C0(control[3]), 
          .Z(n1718[38])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    PFUMX control_3__I_0_276_Mux_3_i14 (.BLUT(n10_adj_14), .ALUT(n17940), 
          .C0(control[2]), .Z(n14_adj_1084)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    PFUMX mux_245_Mux_39_i15 (.BLUT(n5633), .ALUT(n6737), .C0(control[3]), 
          .Z(n1718[39])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    LUT4 i1_4_lut (.A(n18850), .B(n18952), .C(v56[7]), .D(v12_34[7]), 
         .Z(n17938)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !((C (D)+!C !(D))+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(118[2] 134[29])
    defparam i1_4_lut.init = 16'h8448;
    LUT4 n6005_bdd_4_lut_16429 (.A(n6005), .B(\B[5] ), .C(n18505), .D(control[3]), 
         .Z(n1718[20])) /* synthesis lut_function=(A (C (D))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam n6005_bdd_4_lut_16429.init = 16'hf044;
    PFUMX control_3__I_0_276_Mux_2_i14 (.BLUT(n10_adj_15), .ALUT(n17941), 
          .C0(control[2]), .Z(n14_adj_1086)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    LUT4 mux_245_Mux_27_i14_4_lut_4_lut (.A(\A[0] ), .B(control[0]), .C(control[1]), 
         .D(control[2]), .Z(n14_adj_1087)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(((D)+!C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam mux_245_Mux_27_i14_4_lut_4_lut.init = 16'ha840;
    LUT4 control_3__I_0_276_Mux_6_i15_4_lut (.A(n18849), .B(n14_adj_1078), 
         .C(n7615), .D(n4), .Z(ACC[6])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(118[2] 134[29])
    defparam control_3__I_0_276_Mux_6_i15_4_lut.init = 16'hc5ca;
    LUT4 i1_4_lut_adj_88 (.A(n18842), .B(n18952), .C(v56[8]), .D(v12_34[8]), 
         .Z(n17936)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !((C (D)+!C !(D))+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(118[2] 134[29])
    defparam i1_4_lut_adj_88.init = 16'h8448;
    LUT4 i1_4_lut_adj_89 (.A(n18835), .B(n18952), .C(v56[9]), .D(v12_34[9]), 
         .Z(n17946)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !((C (D)+!C !(D))+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(118[2] 134[29])
    defparam i1_4_lut_adj_89.init = 16'h8448;
    LUT4 i6_2_lut (.A(ACC[5]), .B(ACC[11]), .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(111[12:30])
    defparam i6_2_lut.init = 16'heeee;
    LUT4 i5_2_lut (.A(ACC[10]), .B(ACC[8]), .Z(n17)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(111[12:30])
    defparam i5_2_lut.init = 16'heeee;
    LUT4 n17935_bdd_4_lut (.A(n18952), .B(v2[1]), .C(A_temp[1]), .D(B_temp[0]), 
         .Z(n18564)) /* synthesis lut_function=(!((B (C (D))+!B !(C (D)))+!A)) */ ;
    defparam n17935_bdd_4_lut.init = 16'h2888;
    LUT4 control_1__bdd_4_lut_16346 (.A(control[1]), .B(control[0]), .C(\A[11] ), 
         .D(\B[11] ), .Z(n18567)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_16346.init = 16'h5660;
    LUT4 control_1__bdd_4_lut_16347 (.A(control[1]), .B(control[0]), .C(\A[10] ), 
         .D(\B[10] ), .Z(n18568)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_16347.init = 16'h5660;
    LUT4 control_1__bdd_4_lut_16348 (.A(control[1]), .B(control[0]), .C(\A[9] ), 
         .D(\B[9] ), .Z(n18569)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_16348.init = 16'h5660;
    LUT4 control_1__bdd_4_lut_16349 (.A(control[1]), .B(control[0]), .C(\A[8] ), 
         .D(\B[8] ), .Z(n18570)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_16349.init = 16'h5660;
    LUT4 control_1__bdd_4_lut_16352 (.A(control[1]), .B(control[0]), .C(\A[5] ), 
         .D(\B[5] ), .Z(n18582)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_16352.init = 16'h5660;
    LUT4 logic_result_0__bdd_4_lut_4_lut_else_4_lut (.A(control[1]), .B(control[0]), 
         .C(logic_result[0]), .Z(n18967)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(118[2] 134[29])
    defparam logic_result_0__bdd_4_lut_4_lut_else_4_lut.init = 16'h7070;
    LUT4 n6005_bdd_4_lut_16433 (.A(n6005), .B(\B[2] ), .C(n18475), .D(control[3]), 
         .Z(n1718[17])) /* synthesis lut_function=(A (C (D))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam n6005_bdd_4_lut_16433.init = 16'hf044;
    LUT4 control_1__bdd_4_lut_16353 (.A(control[1]), .B(control[0]), .C(\A[4] ), 
         .D(\B[4] ), .Z(n18583)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_16353.init = 16'h5660;
    LUT4 control_1__bdd_4_lut_16354 (.A(control[1]), .B(control[0]), .C(\A[3] ), 
         .D(\B[3] ), .Z(n18584)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_16354.init = 16'h5660;
    LUT4 control_1__bdd_4_lut_16355 (.A(control[1]), .B(control[0]), .C(\A[2] ), 
         .D(\B[2] ), .Z(n18585)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_16355.init = 16'h5660;
    LUT4 control_1__bdd_4_lut (.A(control[1]), .B(control[0]), .C(\A[1] ), 
         .D(\B[1] ), .Z(n18586)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut.init = 16'h5660;
    LUT4 B_0__bdd_4_lut (.A(\B[0] ), .B(n6005), .C(n14_adj_1088), .D(control[3]), 
         .Z(n1718[15])) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam B_0__bdd_4_lut.init = 16'hf0ee;
    LUT4 n6005_bdd_4_lut (.A(n6005), .B(\B[1] ), .C(n18472), .D(control[3]), 
         .Z(n1718[16])) /* synthesis lut_function=(A (C (D))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam n6005_bdd_4_lut.init = 16'hf044;
    LUT4 n10_bdd_4_lut (.A(intermediate_carry[10]), .B(n18854), .C(SumRest_11__N_991[10]), 
         .D(n18952), .Z(n18678)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (C (D)))) */ ;
    defparam n10_bdd_4_lut.init = 16'he800;
    LUT4 control_3__I_0_276_Mux_5_i15_4_lut (.A(n18858), .B(n14_adj_1080), 
         .C(n7615), .D(n4_adj_1089), .Z(ACC[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(118[2] 134[29])
    defparam control_3__I_0_276_Mux_5_i15_4_lut.init = 16'hc5ca;
    LUT4 control_3__I_0_276_Mux_4_i15_4_lut (.A(n18865), .B(n14_adj_1082), 
         .C(n7615), .D(n4_adj_1090), .Z(ACC[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(118[2] 134[29])
    defparam control_3__I_0_276_Mux_4_i15_4_lut.init = 16'hc5ca;
    PFUMX mux_245_Mux_27_i15 (.BLUT(n7), .ALUT(n14_adj_1087), .C0(control[3]), 
          .Z(n1718[27])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    LUT4 control_3__I_0_276_Mux_3_i15_4_lut (.A(n18873), .B(n14_adj_1084), 
         .C(n7615), .D(n4_adj_1091), .Z(ACC[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(118[2] 134[29])
    defparam control_3__I_0_276_Mux_3_i15_4_lut.init = 16'hc5ca;
    PFUMX mux_245_Mux_28_i15 (.BLUT(n7_adj_16), .ALUT(n14_adj_1093), .C0(control[3]), 
          .Z(n1718[28])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    LUT4 control_3__I_0_276_Mux_2_i15_4_lut (.A(n18900), .B(n14_adj_1086), 
         .C(n7615), .D(n4_adj_1094), .Z(ACC[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(118[2] 134[29])
    defparam control_3__I_0_276_Mux_2_i15_4_lut.init = 16'hc5ca;
    PFUMX mux_245_Mux_29_i15 (.BLUT(n7_adj_17), .ALUT(n14_adj_1096), .C0(control[3]), 
          .Z(n1718[29])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    LUT4 control_3__I_0_276_Mux_1_i15_4_lut (.A(n18930), .B(n18705), .C(n7615), 
         .D(n4_adj_1097), .Z(ACC[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(118[2] 134[29])
    defparam control_3__I_0_276_Mux_1_i15_4_lut.init = 16'hc5ca;
    PFUMX mux_245_Mux_30_i15 (.BLUT(n7_adj_18), .ALUT(n14_adj_1099), .C0(control[3]), 
          .Z(n1718[30])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    LUT4 control_3__I_0_276_Mux_0_i15_4_lut (.A(A_temp[0]), .B(n18969), 
         .C(n7615), .D(B_temp[0]), .Z(ACC[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(118[2] 134[29])
    defparam control_3__I_0_276_Mux_0_i15_4_lut.init = 16'hc5ca;
    LUT4 n6005_bdd_4_lut_16272 (.A(n18953), .B(\B[1] ), .C(control[2]), 
         .D(\A[1] ), .Z(n18472)) /* synthesis lut_function=(A (C (D))+!A (B (C))) */ ;
    defparam n6005_bdd_4_lut_16272.init = 16'he040;
    PFUMX mux_245_Mux_31_i15 (.BLUT(n7_adj_19), .ALUT(n14_adj_1101), .C0(control[3]), 
          .Z(n1718[31])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    LUT4 i8483_4_lut (.A(\B[0] ), .B(control[2]), .C(\A[0] ), .D(n18953), 
         .Z(n14_adj_1088)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam i8483_4_lut.init = 16'hc088;
    LUT4 n6005_bdd_4_lut_16287 (.A(n18953), .B(\B[2] ), .C(control[2]), 
         .D(\A[2] ), .Z(n18475)) /* synthesis lut_function=(A (C (D))+!A (B (C))) */ ;
    defparam n6005_bdd_4_lut_16287.init = 16'he040;
    PFUMX mux_245_Mux_32_i15 (.BLUT(n7_adj_20), .ALUT(n14_adj_1103), .C0(control[3]), 
          .Z(n1718[32])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    PFUMX i16420 (.BLUT(n10_adj_21), .ALUT(n18678), .C0(control[2]), .Z(n18679));
    PFUMX i16438 (.BLUT(n18967), .ALUT(n18968), .C0(control[2]), .Z(n18969));
    LUT4 n6005_bdd_4_lut_16294 (.A(n18953), .B(\B[3] ), .C(control[2]), 
         .D(\A[3] ), .Z(n18492)) /* synthesis lut_function=(A (C (D))+!A (B (C))) */ ;
    defparam n6005_bdd_4_lut_16294.init = 16'he040;
    LUT4 i1_4_lut_adj_90 (.A(n18883), .B(n18952), .C(v34[3]), .D(v12[3]), 
         .Z(n17940)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !((C (D)+!C !(D))+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(118[2] 134[29])
    defparam i1_4_lut_adj_90.init = 16'h8448;
    LUT4 control_1__bdd_4_lut_16345 (.A(control[1]), .B(control[0]), .C(\A[0] ), 
         .D(\B[0] ), .Z(n18352)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_16345.init = 16'h5660;
    LUT4 n6005_bdd_4_lut_16300 (.A(n18953), .B(\B[4] ), .C(control[2]), 
         .D(\A[4] ), .Z(n18499)) /* synthesis lut_function=(A (C (D))+!A (B (C))) */ ;
    defparam n6005_bdd_4_lut_16300.init = 16'he040;
    LUT4 n6005_bdd_4_lut_16430 (.A(n6005), .B(\B[4] ), .C(n18499), .D(control[3]), 
         .Z(n1718[19])) /* synthesis lut_function=(A (C (D))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam n6005_bdd_4_lut_16430.init = 16'hf044;
    LUT4 n10150_bdd_4_lut_4_lut (.A(n18953), .B(control[2]), .C(n18564), 
         .D(logic_result[1]), .Z(n18705)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(118[2] 134[29])
    defparam n10150_bdd_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i1_4_lut_adj_91 (.A(n18861), .B(n18952), .C(n18906), .D(v12_34[5]), 
         .Z(n17943)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !((C (D)+!C !(D))+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(118[2] 134[29])
    defparam i1_4_lut_adj_91.init = 16'h8448;
    LUT4 n6005_bdd_4_lut_16428 (.A(n18953), .B(\B[5] ), .C(control[2]), 
         .D(\A[5] ), .Z(n18505)) /* synthesis lut_function=(A (C (D))+!A (B (C))) */ ;
    defparam n6005_bdd_4_lut_16428.init = 16'he040;
    LUT4 logic_result_0__bdd_4_lut_4_lut_then_4_lut (.A(B_temp[0]), .B(control[1]), 
         .C(control[0]), .D(A_temp[0]), .Z(n18968)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(118[2] 134[29])
    defparam logic_result_0__bdd_4_lut_4_lut_then_4_lut.init = 16'h2000;
    LUT4 i7_4_lut (.A(ACC[0]), .B(n14_adj_1105), .C(n10_adj_1106), .D(ACC[9]), 
         .Z(n22)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(111[12:30])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_92 (.A(n18859), .B(n18952), .C(v56[6]), .D(v12_34[6]), 
         .Z(n17939)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !((C (D)+!C !(D))+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(118[2] 134[29])
    defparam i1_4_lut_adj_92.init = 16'h8448;
    LUT4 i6_4_lut (.A(ACC[4]), .B(ACC[1]), .C(ACC[7]), .D(ACC[2]), .Z(n14_adj_1105)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(111[12:30])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(ACC[3]), .B(ACC[6]), .Z(n10_adj_1106)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(111[12:30])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i3_4_lut (.A(ACC[10]), .B(ACC[11]), .C(ACC[5]), .D(ACC[8]), 
         .Z(n21)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(111[12:30])
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 control_3__I_0_276_Mux_10_i15_4_lut (.A(n18819), .B(n14_adj_1107), 
         .C(n7615), .D(n4_adj_1108), .Z(ACC[10])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(118[2] 134[29])
    defparam control_3__I_0_276_Mux_10_i15_4_lut.init = 16'hc5ca;
    PFUMX mux_245_Mux_33_i15 (.BLUT(n7_adj_22), .ALUT(n6748), .C0(control[3]), 
          .Z(n1718[33])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    LUT4 control_3__I_0_276_Mux_11_i15_4_lut (.A(\intermediate_carry[11] ), 
         .B(n18679), .C(n7615), .D(n4_adj_1110), .Z(ACC[11])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(118[2] 134[29])
    defparam control_3__I_0_276_Mux_11_i15_4_lut.init = 16'hc5ca;
    LUT4 control_3__I_0_276_Mux_8_i15_4_lut (.A(n18832), .B(n14_adj_1111), 
         .C(n7615), .D(n4_adj_1112), .Z(ACC[8])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(118[2] 134[29])
    defparam control_3__I_0_276_Mux_8_i15_4_lut.init = 16'hc5ca;
    LUT4 control_3__I_0_276_Mux_7_i15_4_lut (.A(n18838), .B(n14), .C(n7615), 
         .D(n4_adj_1113), .Z(ACC[7])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(118[2] 134[29])
    defparam control_3__I_0_276_Mux_7_i15_4_lut.init = 16'hc5ca;
    LUT4 control_3__I_0_276_Mux_9_i15_4_lut (.A(n18826), .B(n14_adj_1114), 
         .C(n7615), .D(n4_adj_1115), .Z(ACC[9])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(118[2] 134[29])
    defparam control_3__I_0_276_Mux_9_i15_4_lut.init = 16'hc5ca;
    PFUMX mux_245_Mux_34_i15 (.BLUT(n7_adj_23), .ALUT(n6746), .C0(control[3]), 
          .Z(n1718[34])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    LUT4 mux_245_Mux_28_i14_4_lut_4_lut (.A(\A[1] ), .B(control[0]), .C(control[1]), 
         .D(control[2]), .Z(n14_adj_1093)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(((D)+!C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam mux_245_Mux_28_i14_4_lut_4_lut.init = 16'ha840;
    LUT4 mux_245_Mux_29_i14_4_lut_4_lut (.A(\A[2] ), .B(control[0]), .C(control[1]), 
         .D(control[2]), .Z(n14_adj_1096)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(((D)+!C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam mux_245_Mux_29_i14_4_lut_4_lut.init = 16'ha840;
    PFUMX mux_245_Mux_35_i15 (.BLUT(n5670), .ALUT(n6744), .C0(control[3]), 
          .Z(n1718[35])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    LUT4 mux_245_Mux_30_i14_4_lut_4_lut (.A(\A[3] ), .B(control[0]), .C(control[1]), 
         .D(control[2]), .Z(n14_adj_1099)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(((D)+!C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam mux_245_Mux_30_i14_4_lut_4_lut.init = 16'ha840;
    LUT4 mux_245_Mux_31_i14_4_lut_4_lut (.A(\A[4] ), .B(control[0]), .C(control[1]), 
         .D(control[2]), .Z(n14_adj_1101)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(((D)+!C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam mux_245_Mux_31_i14_4_lut_4_lut.init = 16'ha840;
    LUT4 mux_245_Mux_32_i14_4_lut_4_lut (.A(\A[5] ), .B(control[0]), .C(control[1]), 
         .D(control[2]), .Z(n14_adj_1103)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(((D)+!C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(47[3] 106[12])
    defparam mux_245_Mux_32_i14_4_lut_4_lut.init = 16'ha840;
    PFUMX control_3__I_0_276_Mux_10_i14 (.BLUT(n10_adj_24), .ALUT(n17947), 
          .C0(control[2]), .Z(n14_adj_1107)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    PFUMX control_3__I_0_276_Mux_9_i14 (.BLUT(n10_adj_25), .ALUT(n17946), 
          .C0(control[2]), .Z(n14_adj_1114)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    PFUMX control_3__I_0_276_Mux_8_i14 (.BLUT(n10_adj_26), .ALUT(n17936), 
          .C0(control[2]), .Z(n14_adj_1111)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=124, LSE_RLINE=124 */ ;
    LUT4 i1_2_lut_rep_357 (.A(control[0]), .B(control[1]), .Z(n18952)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(118[2] 134[29])
    defparam i1_2_lut_rep_357.init = 16'h2222;
    multi6 imp_multi (.\A_temp[3] (A_temp[3]), .\B_temp[4] (B_temp[4]), 
           .\v56[7] (v56[7]), .\A_temp[4] (A_temp[4]), .\B_temp[2] (B_temp[2]), 
           .\A_temp[5] (A_temp[5]), .\B_temp[5] (B_temp[5]), .\SumRest_11__N_991[10] (SumRest_11__N_991[10]), 
           .\v56[9] (v56[9]), .n18854(n18854), .\B_temp[3] (B_temp[3]), 
           .\v12_34[9] (v12_34[9]), .\v12_34[8] (v12_34[8]), .\v56[8] (v56[8]), 
           .\B_temp[1] (B_temp[1]), .\B_temp[0] (B_temp[0]), .\A_temp[0] (A_temp[0]), 
           .\v2[1] (v2[1]), .\A_temp[2] (A_temp[2]), .\A_temp[1] (A_temp[1]), 
           .n18906(n18906), .\v34[3] (v34[3]), .n18883(n18883), .n18952(n18952), 
           .n17941(n17941), .\v12[3] (v12[3]), .n17942(n17942), .n18835(n18835), 
           .\intermediate_carry[10] (intermediate_carry[10]), .n18842(n18842), 
           .n18850(n18850), .\v12_34[7] (v12_34[7]), .\v56[6] (v56[6]), 
           .n18859(n18859), .\v12_34[6] (v12_34[6]), .\v12_34[5] (v12_34[5]), 
           .n18861(n18861), .n17947(n17947));   // c:/users/cassandra/desktop/arqui2/alu.vhd(43[13:19])
    SumRest12Bits_U4 imp_add_sub_12 (.\intermediate_carry[0] (\intermediate_carry[0] ), 
            .A_temp({\A_temp[11] , A_temp[10:0]}), .B_temp({\B_temp[11] , 
            B_temp[10:0]}), .n18930(n18930), .n18900(n18900), .n4(n4_adj_1097), 
            .n18873(n18873), .n4_adj_1(n4_adj_1094), .n18865(n18865), 
            .n4_adj_2(n4_adj_1091), .n18858(n18858), .n4_adj_3(n4_adj_1090), 
            .n4_adj_4(n4_adj_1110), .n18826(n18826), .n18819(n18819), 
            .n4_adj_5(n4_adj_1115), .\intermediate_carry[11] (\intermediate_carry[11] ), 
            .n4_adj_6(n4_adj_1108), .n18838(n18838), .n18832(n18832), 
            .n4_adj_7(n4_adj_1113), .n4_adj_8(n4_adj_1112), .n18849(n18849), 
            .n4_adj_9(n4_adj_1089), .n4_adj_10(n4));   // c:/users/cassandra/desktop/arqui2/alu.vhd(42[18:31])
    
endmodule
//
// Verilog Description of module multi6
//

module multi6 (\A_temp[3] , \B_temp[4] , \v56[7] , \A_temp[4] , \B_temp[2] , 
            \A_temp[5] , \B_temp[5] , \SumRest_11__N_991[10] , \v56[9] , 
            n18854, \B_temp[3] , \v12_34[9] , \v12_34[8] , \v56[8] , 
            \B_temp[1] , \B_temp[0] , \A_temp[0] , \v2[1] , \A_temp[2] , 
            \A_temp[1] , n18906, \v34[3] , n18883, n18952, n17941, 
            \v12[3] , n17942, n18835, \intermediate_carry[10] , n18842, 
            n18850, \v12_34[7] , \v56[6] , n18859, \v12_34[6] , \v12_34[5] , 
            n18861, n17947);
    input \A_temp[3] ;
    input \B_temp[4] ;
    output \v56[7] ;
    input \A_temp[4] ;
    input \B_temp[2] ;
    input \A_temp[5] ;
    input \B_temp[5] ;
    output \SumRest_11__N_991[10] ;
    output \v56[9] ;
    output n18854;
    input \B_temp[3] ;
    output \v12_34[9] ;
    output \v12_34[8] ;
    output \v56[8] ;
    input \B_temp[1] ;
    input \B_temp[0] ;
    input \A_temp[0] ;
    output \v2[1] ;
    input \A_temp[2] ;
    input \A_temp[1] ;
    output n18906;
    output \v34[3] ;
    output n18883;
    input n18952;
    output n17941;
    output \v12[3] ;
    output n17942;
    output n18835;
    output \intermediate_carry[10] ;
    output n18842;
    output n18850;
    output \v12_34[7] ;
    output \v56[6] ;
    output n18859;
    output \v12_34[6] ;
    output \v12_34[5] ;
    output n18861;
    output n17947;
    
    wire [11:0]v6;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(20[32:34])
    
    wire n18881;
    wire [11:0]v4;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(20[24:26])
    
    wire n18882;
    wire [11:0]v34;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(21[17:20])
    
    wire n18869, n18862, n18863;
    wire [12:0]intermediate_carry;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(18[8:26])
    
    wire n18871;
    wire [11:0]v2;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(20[16:18])
    wire [11:0]v1;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(20[12:14])
    wire [11:0]SumRest_11__N_991;
    wire [11:0]v5;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(20[28:30])
    
    wire n18927, n18870;
    wire [11:0]v12;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(21[12:15])
    
    wire n18860, n18904, n18943, n18944, n18945, n18947, n18905, 
        n18884, n18950, n18867, n18857, n17969;
    
    LUT4 i2_3_lut_4_lut (.A(\A_temp[3] ), .B(\B_temp[4] ), .C(v6[7]), 
         .D(n18881), .Z(\v56[7] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(27[19:32])
    defparam i2_3_lut_4_lut.init = 16'h8778;
    LUT4 i2_3_lut_4_lut_adj_79 (.A(\A_temp[4] ), .B(\B_temp[2] ), .C(v4[6]), 
         .D(n18882), .Z(v34[6])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(25[21:34])
    defparam i2_3_lut_4_lut_adj_79.init = 16'h8778;
    LUT4 intermediate_carry_12__I_0_100_i7_4_lut_3_lut_rep_274_4_lut (.A(\A_temp[4] ), 
         .B(\B_temp[2] ), .C(n18882), .D(v4[6]), .Z(n18869)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(25[21:34])
    defparam intermediate_carry_12__I_0_100_i7_4_lut_3_lut_rep_274_4_lut.init = 16'hf880;
    LUT4 A_5__I_0_i6_2_lut (.A(\A_temp[5] ), .B(\B_temp[5] ), .Z(\SumRest_11__N_991[10] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(28[18:31])
    defparam A_5__I_0_i6_2_lut.init = 16'h8888;
    LUT4 A_5__I_0_i5_2_lut (.A(\A_temp[4] ), .B(\B_temp[5] ), .Z(v6[9])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(28[18:31])
    defparam A_5__I_0_i5_2_lut.init = 16'h8888;
    LUT4 A_5__I_0_i4_2_lut (.A(\A_temp[3] ), .B(\B_temp[5] ), .Z(v6[8])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(28[18:31])
    defparam A_5__I_0_i4_2_lut.init = 16'h8888;
    LUT4 intermediate_carry_12__I_0_100_i8_4_lut_3_lut_rep_267_4_lut (.A(\A_temp[5] ), 
         .B(\B_temp[2] ), .C(n18869), .D(v4[7]), .Z(n18862)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(25[21:34])
    defparam intermediate_carry_12__I_0_100_i8_4_lut_3_lut_rep_267_4_lut.init = 16'hf880;
    LUT4 i2_3_lut_4_lut_adj_80 (.A(\A_temp[5] ), .B(\B_temp[4] ), .C(v6[9]), 
         .D(n18863), .Z(\v56[9] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(27[19:32])
    defparam i2_3_lut_4_lut_adj_80.init = 16'h8778;
    LUT4 i2_3_lut_4_lut_adj_81 (.A(\A_temp[5] ), .B(\B_temp[2] ), .C(v4[7]), 
         .D(n18869), .Z(v34[7])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(25[21:34])
    defparam i2_3_lut_4_lut_adj_81.init = 16'h8778;
    LUT4 intermediate_carry_12__I_0_100_i10_4_lut_3_lut_rep_259_4_lut (.A(\A_temp[5] ), 
         .B(\B_temp[4] ), .C(n18863), .D(v6[9]), .Z(n18854)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(27[19:32])
    defparam intermediate_carry_12__I_0_100_i10_4_lut_3_lut_rep_259_4_lut.init = 16'hf880;
    LUT4 SumRest_11__I_0_i10_4_lut_3_lut_4_lut (.A(\A_temp[5] ), .B(\B_temp[3] ), 
         .C(intermediate_carry[8]), .D(n18862), .Z(\v12_34[9] )) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(26[20:33])
    defparam SumRest_11__I_0_i10_4_lut_3_lut_4_lut.init = 16'hf880;
    LUT4 SumRest_11__I_0_i9_3_lut_4_lut (.A(\A_temp[5] ), .B(\B_temp[3] ), 
         .C(n18862), .D(intermediate_carry[8]), .Z(\v12_34[8] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(26[20:33])
    defparam SumRest_11__I_0_i9_3_lut_4_lut.init = 16'h8778;
    LUT4 intermediate_carry_12__I_0_100_i9_4_lut_3_lut_rep_268_4_lut (.A(\A_temp[4] ), 
         .B(\B_temp[4] ), .C(n18871), .D(v6[8]), .Z(n18863)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(27[19:32])
    defparam intermediate_carry_12__I_0_100_i9_4_lut_3_lut_rep_268_4_lut.init = 16'hf880;
    LUT4 i2_3_lut_4_lut_adj_82 (.A(\A_temp[4] ), .B(\B_temp[4] ), .C(v6[8]), 
         .D(n18871), .Z(\v56[8] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(27[19:32])
    defparam i2_3_lut_4_lut_adj_82.init = 16'h8778;
    LUT4 A_5__I_0_47_i4_2_lut (.A(\A_temp[3] ), .B(\B_temp[1] ), .Z(v2[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(24[22:35])
    defparam A_5__I_0_47_i4_2_lut.init = 16'h8888;
    LUT4 A_5__I_0_46_i4_2_lut (.A(\A_temp[3] ), .B(\B_temp[0] ), .Z(v1[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(23[23:36])
    defparam A_5__I_0_46_i4_2_lut.init = 16'h8888;
    LUT4 A_5__I_0_47_i1_2_lut (.A(\A_temp[0] ), .B(\B_temp[1] ), .Z(\v2[1] )) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(24[22:35])
    defparam A_5__I_0_47_i1_2_lut.init = 16'h8888;
    LUT4 A_5__I_0_47_i5_2_lut (.A(\A_temp[4] ), .B(\B_temp[1] ), .Z(v2[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(24[22:35])
    defparam A_5__I_0_47_i5_2_lut.init = 16'h8888;
    LUT4 A_5__I_0_47_i6_2_lut (.A(\A_temp[5] ), .B(\B_temp[1] ), .Z(SumRest_11__N_991[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(24[22:35])
    defparam A_5__I_0_47_i6_2_lut.init = 16'h8888;
    LUT4 A_5__I_0_49_i5_2_lut (.A(\A_temp[4] ), .B(\B_temp[3] ), .Z(v4[7])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(26[20:33])
    defparam A_5__I_0_49_i5_2_lut.init = 16'h8888;
    LUT4 A_5__I_0_49_i4_2_lut (.A(\A_temp[3] ), .B(\B_temp[3] ), .Z(v4[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(26[20:33])
    defparam A_5__I_0_49_i4_2_lut.init = 16'h8888;
    LUT4 A_5__I_0_i3_2_lut (.A(\A_temp[2] ), .B(\B_temp[5] ), .Z(v6[7])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(28[18:31])
    defparam A_5__I_0_i3_2_lut.init = 16'h8888;
    LUT4 A_5__I_0_50_i3_2_lut (.A(\A_temp[2] ), .B(\B_temp[4] ), .Z(v5[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(27[19:32])
    defparam A_5__I_0_50_i3_2_lut.init = 16'h8888;
    LUT4 A_5__I_0_i2_2_lut_rep_332 (.A(\A_temp[1] ), .B(\B_temp[5] ), .Z(n18927)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(28[18:31])
    defparam A_5__I_0_i2_2_lut_rep_332.init = 16'h8888;
    LUT4 intermediate_carry_12__I_0_100_i8_4_lut_3_lut_rep_276_4_lut (.A(\A_temp[3] ), 
         .B(\B_temp[4] ), .C(n18881), .D(v6[7]), .Z(n18871)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(27[19:32])
    defparam intermediate_carry_12__I_0_100_i8_4_lut_3_lut_rep_276_4_lut.init = 16'hf880;
    LUT4 i2_3_lut_4_lut_adj_83 (.A(\A_temp[5] ), .B(\B_temp[0] ), .C(v2[5]), 
         .D(n18870), .Z(v12[5])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(23[23:36])
    defparam i2_3_lut_4_lut_adj_83.init = 16'h8778;
    LUT4 intermediate_carry_12__I_0_100_i6_4_lut_3_lut_rep_265_4_lut (.A(\A_temp[5] ), 
         .B(\B_temp[0] ), .C(n18870), .D(v2[5]), .Z(n18860)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(23[23:36])
    defparam intermediate_carry_12__I_0_100_i6_4_lut_3_lut_rep_265_4_lut.init = 16'hf880;
    LUT4 intermediate_carry_12__I_0_100_i6_4_lut_3_lut_rep_287_4_lut (.A(\A_temp[3] ), 
         .B(\B_temp[2] ), .C(n18904), .D(n18943), .Z(n18882)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(25[21:34])
    defparam intermediate_carry_12__I_0_100_i6_4_lut_3_lut_rep_287_4_lut.init = 16'hf880;
    LUT4 i2_3_lut_4_lut_adj_84 (.A(\A_temp[3] ), .B(\B_temp[2] ), .C(n18943), 
         .D(n18904), .Z(v34[5])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(25[21:34])
    defparam i2_3_lut_4_lut_adj_84.init = 16'h8778;
    LUT4 A_5__I_0_49_i3_2_lut_rep_348 (.A(\A_temp[2] ), .B(\B_temp[3] ), 
         .Z(n18943)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(26[20:33])
    defparam A_5__I_0_49_i3_2_lut_rep_348.init = 16'h8888;
    LUT4 A_5__I_0_i1_2_lut_rep_349 (.A(\A_temp[0] ), .B(\B_temp[5] ), .Z(n18944)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(28[18:31])
    defparam A_5__I_0_i1_2_lut_rep_349.init = 16'h8888;
    LUT4 A_5__I_0_50_i2_2_lut_rep_350 (.A(\A_temp[1] ), .B(\B_temp[4] ), 
         .Z(n18945)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(27[19:32])
    defparam A_5__I_0_50_i2_2_lut_rep_350.init = 16'h8888;
    LUT4 A_11__I_0_i6_2_lut_rep_311_3_lut_4_lut (.A(\A_temp[1] ), .B(\B_temp[4] ), 
         .C(\B_temp[5] ), .D(\A_temp[0] ), .Z(n18906)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(27[19:32])
    defparam A_11__I_0_i6_2_lut_rep_311_3_lut_4_lut.init = 16'h7888;
    LUT4 A_11__I_0_i4_3_lut_4_lut (.A(\A_temp[0] ), .B(\B_temp[3] ), .C(\B_temp[2] ), 
         .D(\A_temp[1] ), .Z(\v34[3] )) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(26[20:33])
    defparam A_11__I_0_i4_3_lut_4_lut.init = 16'h7888;
    LUT4 A_5__I_0_48_i1_2_lut_rep_352 (.A(\A_temp[0] ), .B(\B_temp[2] ), 
         .Z(n18947)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(25[21:34])
    defparam A_5__I_0_48_i1_2_lut_rep_352.init = 16'h8888;
    LUT4 and_93_i3_2_lut_rep_288_3_lut (.A(\A_temp[0] ), .B(\B_temp[2] ), 
         .C(v12[2]), .Z(n18883)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(25[21:34])
    defparam and_93_i3_2_lut_rep_288_3_lut.init = 16'h8080;
    LUT4 i1_3_lut_4_lut (.A(\A_temp[0] ), .B(\B_temp[2] ), .C(n18952), 
         .D(v12[2]), .Z(n17941)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(25[21:34])
    defparam i1_3_lut_4_lut.init = 16'h7080;
    LUT4 i2_3_lut_4_lut_adj_85 (.A(\A_temp[2] ), .B(\B_temp[1] ), .C(v1[3]), 
         .D(n18905), .Z(\v12[3] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(24[22:35])
    defparam i2_3_lut_4_lut_adj_85.init = 16'h8778;
    LUT4 intermediate_carry_12__I_0_100_i4_4_lut_3_lut_rep_289_4_lut (.A(\A_temp[2] ), 
         .B(\B_temp[1] ), .C(v1[3]), .D(n18905), .Z(n18884)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(24[22:35])
    defparam intermediate_carry_12__I_0_100_i4_4_lut_3_lut_rep_289_4_lut.init = 16'hf880;
    LUT4 i2_3_lut_4_lut_adj_86 (.A(\A_temp[4] ), .B(\B_temp[0] ), .C(v2[4]), 
         .D(n18884), .Z(v12[4])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(23[23:36])
    defparam i2_3_lut_4_lut_adj_86.init = 16'h8778;
    LUT4 intermediate_carry_12__I_0_100_i5_4_lut_3_lut_rep_275_4_lut (.A(\A_temp[4] ), 
         .B(\B_temp[0] ), .C(n18884), .D(v2[4]), .Z(n18870)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(23[23:36])
    defparam intermediate_carry_12__I_0_100_i5_4_lut_3_lut_rep_275_4_lut.init = 16'hf880;
    LUT4 A_5__I_0_50_i1_2_lut_rep_355 (.A(\A_temp[0] ), .B(\B_temp[4] ), 
         .Z(n18950)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(27[19:32])
    defparam A_5__I_0_50_i1_2_lut_rep_355.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_87 (.A(\A_temp[0] ), .B(\B_temp[4] ), .C(n18952), 
         .D(n18867), .Z(n17942)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(27[19:32])
    defparam i1_3_lut_4_lut_adj_87.init = 16'h7080;
    SumRest12Bits adder5 (.\v56[9] (\v56[9] ), .n18835(n18835), .\v12_34[9] (\v12_34[9] ), 
            .\intermediate_carry[10] (\intermediate_carry[10] ), .\v56[8] (\v56[8] ), 
            .n18842(n18842), .\v12_34[8] (\v12_34[8] ), .\v56[7] (\v56[7] ), 
            .n18850(n18850), .\v12_34[7] (\v12_34[7] ), .\v56[6] (\v56[6] ), 
            .n18859(n18859), .\v12_34[6] (\v12_34[6] ), .n18867(n18867), 
            .n18950(n18950), .\v12_34[5] (\v12_34[5] ), .n18906(n18906));   // c:/users/cassandra/desktop/arqui2/multi6.vhd(34[13:26])
    SumRest12Bits_U0 adder4 (.\v34[5] (v34[5]), .\v12[5] (v12[5]), .\v12_34[5] (\v12_34[5] ), 
            .n18857(n18857), .\v34[4] (v34[4]), .\v12[4] (v12[4]), .n18867(n18867), 
            .n18950(n18950), .n18861(n18861), .\v12[2] (v12[2]), .n18947(n18947), 
            .\v12[3] (\v12[3] ), .\v34[3] (\v34[3] ));   // c:/users/cassandra/desktop/arqui2/multi6.vhd(33[13:26])
    SumRest12Bits_U1 adder3 (.\SumRest_11__N_991[10] (\SumRest_11__N_991[10] ), 
            .n18854(n18854), .\intermediate_carry[10] (\intermediate_carry[10] ), 
            .n18952(n18952), .n17947(n17947), .n18945(n18945), .n18944(n18944), 
            .\v5[6] (v5[6]), .n18927(n18927), .\v56[6] (\v56[6] ), .n18881(n18881));   // c:/users/cassandra/desktop/arqui2/multi6.vhd(32[13:26])
    SumRest12Bits_U2 adder2 (.\B_temp[3] (\B_temp[3] ), .\A_temp[2] (\A_temp[2] ), 
            .\A_temp[0] (\A_temp[0] ), .\B_temp[2] (\B_temp[2] ), .\A_temp[1] (\A_temp[1] ), 
            .n17969(n17969), .n18904(n18904), .\v34[4] (v34[4]));   // c:/users/cassandra/desktop/arqui2/multi6.vhd(31[13:26])
    SumRest12Bits_U3 adder1 (.\B_temp[1] (\B_temp[1] ), .\A_temp[2] (\A_temp[2] ), 
            .\A_temp[0] (\A_temp[0] ), .\B_temp[0] (\B_temp[0] ), .\SumRest_11__N_991[6] (SumRest_11__N_991[6]), 
            .n18860(n18860), .n18857(n18857), .\v34[6] (v34[6]), .\v12_34[6] (\v12_34[6] ), 
            .\v34[7] (v34[7]), .\intermediate_carry[8] (intermediate_carry[8]), 
            .\v12_34[7] (\v12_34[7] ), .n17969(n17969), .n18905(n18905), 
            .\A_temp[1] (\A_temp[1] ), .\v12[2] (v12[2]));   // c:/users/cassandra/desktop/arqui2/multi6.vhd(30[13:26])
    
endmodule
//
// Verilog Description of module SumRest12Bits
//

module SumRest12Bits (\v56[9] , n18835, \v12_34[9] , \intermediate_carry[10] , 
            \v56[8] , n18842, \v12_34[8] , \v56[7] , n18850, \v12_34[7] , 
            \v56[6] , n18859, \v12_34[6] , n18867, n18950, \v12_34[5] , 
            n18906);
    input \v56[9] ;
    output n18835;
    input \v12_34[9] ;
    output \intermediate_carry[10] ;
    input \v56[8] ;
    output n18842;
    input \v12_34[8] ;
    input \v56[7] ;
    output n18850;
    input \v12_34[7] ;
    input \v56[6] ;
    output n18859;
    input \v12_34[6] ;
    input n18867;
    input n18950;
    input \v12_34[5] ;
    input n18906;
    
    
    LUT4 intermediate_carry_12__I_0_100_i10_4_lut_3_lut (.A(\v56[9] ), .B(n18835), 
         .C(\v12_34[9] ), .Z(\intermediate_carry[10] )) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(38[32:87])
    defparam intermediate_carry_12__I_0_100_i10_4_lut_3_lut.init = 16'he8e8;
    LUT4 intermediate_carry_12__I_0_100_i9_4_lut_3_lut_rep_240 (.A(\v56[8] ), 
         .B(n18842), .C(\v12_34[8] ), .Z(n18835)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(38[32:87])
    defparam intermediate_carry_12__I_0_100_i9_4_lut_3_lut_rep_240.init = 16'he8e8;
    LUT4 intermediate_carry_12__I_0_100_i8_4_lut_3_lut_rep_247 (.A(\v56[7] ), 
         .B(n18850), .C(\v12_34[7] ), .Z(n18842)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(38[32:87])
    defparam intermediate_carry_12__I_0_100_i8_4_lut_3_lut_rep_247.init = 16'he8e8;
    LUT4 intermediate_carry_12__I_0_100_i7_4_lut_3_lut_rep_255 (.A(\v56[6] ), 
         .B(n18859), .C(\v12_34[6] ), .Z(n18850)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(38[32:87])
    defparam intermediate_carry_12__I_0_100_i7_4_lut_3_lut_rep_255.init = 16'he8e8;
    LUT4 intermediate_carry_12__I_0_100_i6_4_lut_3_lut_rep_264_4_lut (.A(n18867), 
         .B(n18950), .C(\v12_34[5] ), .D(n18906), .Z(n18859)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(38[33:50])
    defparam intermediate_carry_12__I_0_100_i6_4_lut_3_lut_rep_264_4_lut.init = 16'hf880;
    
endmodule
//
// Verilog Description of module SumRest12Bits_U0
//

module SumRest12Bits_U0 (\v34[5] , \v12[5] , \v12_34[5] , n18857, \v34[4] , 
            \v12[4] , n18867, n18950, n18861, \v12[2] , n18947, 
            \v12[3] , \v34[3] );
    input \v34[5] ;
    input \v12[5] ;
    output \v12_34[5] ;
    output n18857;
    input \v34[4] ;
    input \v12[4] ;
    output n18867;
    input n18950;
    output n18861;
    input \v12[2] ;
    input n18947;
    input \v12[3] ;
    input \v34[3] ;
    
    
    wire n18866, n18874;
    
    LUT4 i2_3_lut (.A(n18866), .B(\v34[5] ), .C(\v12[5] ), .Z(\v12_34[5] )) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(37[19:62])
    defparam i2_3_lut.init = 16'h9696;
    LUT4 intermediate_carry_12__I_0_100_i6_4_lut_3_lut_rep_262 (.A(\v34[5] ), 
         .B(n18866), .C(\v12[5] ), .Z(n18857)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(38[32:87])
    defparam intermediate_carry_12__I_0_100_i6_4_lut_3_lut_rep_262.init = 16'he8e8;
    LUT4 intermediate_carry_12__I_0_100_i5_4_lut_3_lut_rep_271 (.A(\v34[4] ), 
         .B(n18874), .C(\v12[4] ), .Z(n18866)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(38[32:87])
    defparam intermediate_carry_12__I_0_100_i5_4_lut_3_lut_rep_271.init = 16'he8e8;
    LUT4 i2_3_lut_rep_272 (.A(n18874), .B(\v34[4] ), .C(\v12[4] ), .Z(n18867)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(37[19:62])
    defparam i2_3_lut_rep_272.init = 16'h9696;
    LUT4 and_93_i5_2_lut_rep_266_4_lut (.A(n18874), .B(\v34[4] ), .C(\v12[4] ), 
         .D(n18950), .Z(n18861)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(37[19:62])
    defparam and_93_i5_2_lut_rep_266_4_lut.init = 16'h9600;
    LUT4 intermediate_carry_12__I_0_100_i4_4_lut_3_lut_rep_279_4_lut (.A(\v12[2] ), 
         .B(n18947), .C(\v12[3] ), .D(\v34[3] ), .Z(n18874)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(38[33:50])
    defparam intermediate_carry_12__I_0_100_i4_4_lut_3_lut_rep_279_4_lut.init = 16'hf880;
    
endmodule
//
// Verilog Description of module SumRest12Bits_U1
//

module SumRest12Bits_U1 (\SumRest_11__N_991[10] , n18854, \intermediate_carry[10] , 
            n18952, n17947, n18945, n18944, \v5[6] , n18927, \v56[6] , 
            n18881);
    input \SumRest_11__N_991[10] ;
    input n18854;
    input \intermediate_carry[10] ;
    input n18952;
    output n17947;
    input n18945;
    input n18944;
    input \v5[6] ;
    input n18927;
    output \v56[6] ;
    output n18881;
    
    
    LUT4 i1_3_lut_4_lut (.A(\SumRest_11__N_991[10] ), .B(n18854), .C(\intermediate_carry[10] ), 
         .D(n18952), .Z(n17947)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(37[19:62])
    defparam i1_3_lut_4_lut.init = 16'h9600;
    LUT4 i2_3_lut_4_lut (.A(n18945), .B(n18944), .C(\v5[6] ), .D(n18927), 
         .Z(\v56[6] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(38[33:50])
    defparam i2_3_lut_4_lut.init = 16'h8778;
    LUT4 intermediate_carry_12__I_0_100_i7_4_lut_3_lut_rep_286_4_lut (.A(n18945), 
         .B(n18944), .C(\v5[6] ), .D(n18927), .Z(n18881)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(38[33:50])
    defparam intermediate_carry_12__I_0_100_i7_4_lut_3_lut_rep_286_4_lut.init = 16'hf880;
    
endmodule
//
// Verilog Description of module SumRest12Bits_U2
//

module SumRest12Bits_U2 (\B_temp[3] , \A_temp[2] , \A_temp[0] , \B_temp[2] , 
            \A_temp[1] , n17969, n18904, \v34[4] );
    input \B_temp[3] ;
    input \A_temp[2] ;
    input \A_temp[0] ;
    input \B_temp[2] ;
    input \A_temp[1] ;
    output n17969;
    output n18904;
    output \v34[4] ;
    
    
    wire n19004, n19003;
    
    LUT4 i2_4_lut_then_4_lut (.A(\B_temp[3] ), .B(\A_temp[2] ), .C(\A_temp[0] ), 
         .D(\B_temp[2] ), .Z(n19004)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)))+!A (B (D))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(37[19:62])
    defparam i2_4_lut_then_4_lut.init = 16'hc6aa;
    LUT4 i2_4_lut_else_4_lut (.A(\A_temp[2] ), .B(\B_temp[2] ), .Z(n19003)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(37[19:62])
    defparam i2_4_lut_else_4_lut.init = 16'h8888;
    LUT4 i1_3_lut (.A(\A_temp[1] ), .B(\A_temp[2] ), .C(\A_temp[0] ), 
         .Z(n17969)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(38[32:127])
    defparam i1_3_lut.init = 16'ha8a8;
    LUT4 i2_3_lut_rep_309 (.A(n17969), .B(\B_temp[3] ), .C(\B_temp[2] ), 
         .Z(n18904)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(38[32:127])
    defparam i2_3_lut_rep_309.init = 16'h8080;
    PFUMX i16462 (.BLUT(n19003), .ALUT(n19004), .C0(\A_temp[1] ), .Z(\v34[4] ));
    
endmodule
//
// Verilog Description of module SumRest12Bits_U3
//

module SumRest12Bits_U3 (\B_temp[1] , \A_temp[2] , \A_temp[0] , \B_temp[0] , 
            \SumRest_11__N_991[6] , n18860, n18857, \v34[6] , \v12_34[6] , 
            \v34[7] , \intermediate_carry[8] , \v12_34[7] , n17969, 
            n18905, \A_temp[1] , \v12[2] );
    input \B_temp[1] ;
    input \A_temp[2] ;
    input \A_temp[0] ;
    input \B_temp[0] ;
    input \SumRest_11__N_991[6] ;
    input n18860;
    input n18857;
    input \v34[6] ;
    output \v12_34[6] ;
    input \v34[7] ;
    output \intermediate_carry[8] ;
    output \v12_34[7] ;
    input n17969;
    output n18905;
    input \A_temp[1] ;
    output \v12[2] ;
    
    
    wire n19001, n19000, n18848;
    
    LUT4 i2_4_lut_then_4_lut (.A(\B_temp[1] ), .B(\A_temp[2] ), .C(\A_temp[0] ), 
         .D(\B_temp[0] ), .Z(n19001)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)))+!A (B (D))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(37[19:62])
    defparam i2_4_lut_then_4_lut.init = 16'hc6aa;
    LUT4 i2_4_lut_else_4_lut (.A(\A_temp[2] ), .B(\B_temp[0] ), .Z(n19000)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(37[19:62])
    defparam i2_4_lut_else_4_lut.init = 16'h8888;
    LUT4 intermediate_carry_12__I_0_100_i7_4_lut_3_lut_rep_253_4_lut (.A(\SumRest_11__N_991[6] ), 
         .B(n18860), .C(n18857), .D(\v34[6] ), .Z(n18848)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(37[19:62])
    defparam intermediate_carry_12__I_0_100_i7_4_lut_3_lut_rep_253_4_lut.init = 16'hf660;
    LUT4 i2_3_lut_4_lut (.A(\SumRest_11__N_991[6] ), .B(n18860), .C(\v34[6] ), 
         .D(n18857), .Z(\v12_34[6] )) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(37[19:62])
    defparam i2_3_lut_4_lut.init = 16'h6996;
    LUT4 intermediate_carry_12__I_0_100_i8_4_lut_3_lut_4_lut (.A(\SumRest_11__N_991[6] ), 
         .B(n18860), .C(n18848), .D(\v34[7] ), .Z(\intermediate_carry[8] )) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(38[92:126])
    defparam intermediate_carry_12__I_0_100_i8_4_lut_3_lut_4_lut.init = 16'hf880;
    LUT4 i2_3_lut_4_lut_adj_78 (.A(\SumRest_11__N_991[6] ), .B(n18860), 
         .C(\v34[7] ), .D(n18848), .Z(\v12_34[7] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(38[92:126])
    defparam i2_3_lut_4_lut_adj_78.init = 16'h8778;
    LUT4 i2_3_lut_rep_310 (.A(n17969), .B(\B_temp[1] ), .C(\B_temp[0] ), 
         .Z(n18905)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(38[32:127])
    defparam i2_3_lut_rep_310.init = 16'h8080;
    PFUMX i16460 (.BLUT(n19000), .ALUT(n19001), .C0(\A_temp[1] ), .Z(\v12[2] ));
    
endmodule
//
// Verilog Description of module SumRest12Bits_U4
//

module SumRest12Bits_U4 (\intermediate_carry[0] , A_temp, B_temp, n18930, 
            n18900, n4, n18873, n4_adj_1, n18865, n4_adj_2, n18858, 
            n4_adj_3, n4_adj_4, n18826, n18819, n4_adj_5, \intermediate_carry[11] , 
            n4_adj_6, n18838, n18832, n4_adj_7, n4_adj_8, n18849, 
            n4_adj_9, n4_adj_10);
    input \intermediate_carry[0] ;
    input [11:0]A_temp;
    input [11:0]B_temp;
    output n18930;
    output n18900;
    output n4;
    output n18873;
    output n4_adj_1;
    output n18865;
    output n4_adj_2;
    output n18858;
    output n4_adj_3;
    output n4_adj_4;
    output n18826;
    output n18819;
    output n4_adj_5;
    output \intermediate_carry[11] ;
    output n4_adj_6;
    output n18838;
    output n18832;
    output n4_adj_7;
    output n4_adj_8;
    output n18849;
    output n4_adj_9;
    output n4_adj_10;
    
    
    LUT4 i11_3_lut_rep_335 (.A(\intermediate_carry[0] ), .B(A_temp[0]), 
         .C(B_temp[0]), .Z(n18930)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(38[32:127])
    defparam i11_3_lut_rep_335.init = 16'hcaca;
    LUT4 intermediate_carry_12__I_0_100_i2_4_lut_3_lut_rep_305_4_lut (.A(B_temp[1]), 
         .B(\intermediate_carry[0] ), .C(A_temp[1]), .D(n18930), .Z(n18900)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 31[12])
    defparam intermediate_carry_12__I_0_100_i2_4_lut_3_lut_rep_305_4_lut.init = 16'hf660;
    LUT4 i1_2_lut_3_lut (.A(B_temp[1]), .B(\intermediate_carry[0] ), .C(A_temp[1]), 
         .Z(n4)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 31[12])
    defparam i1_2_lut_3_lut.init = 16'h9696;
    LUT4 intermediate_carry_12__I_0_100_i3_4_lut_3_lut_rep_278_4_lut (.A(B_temp[2]), 
         .B(\intermediate_carry[0] ), .C(A_temp[2]), .D(n18900), .Z(n18873)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 31[12])
    defparam intermediate_carry_12__I_0_100_i3_4_lut_3_lut_rep_278_4_lut.init = 16'hf660;
    LUT4 i1_2_lut_3_lut_adj_68 (.A(B_temp[2]), .B(\intermediate_carry[0] ), 
         .C(A_temp[2]), .Z(n4_adj_1)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 31[12])
    defparam i1_2_lut_3_lut_adj_68.init = 16'h9696;
    LUT4 intermediate_carry_12__I_0_100_i4_4_lut_3_lut_rep_270_4_lut (.A(B_temp[3]), 
         .B(\intermediate_carry[0] ), .C(A_temp[3]), .D(n18873), .Z(n18865)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 31[12])
    defparam intermediate_carry_12__I_0_100_i4_4_lut_3_lut_rep_270_4_lut.init = 16'hf660;
    LUT4 i1_2_lut_3_lut_adj_69 (.A(B_temp[3]), .B(\intermediate_carry[0] ), 
         .C(A_temp[3]), .Z(n4_adj_2)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 31[12])
    defparam i1_2_lut_3_lut_adj_69.init = 16'h9696;
    LUT4 intermediate_carry_12__I_0_100_i5_4_lut_3_lut_rep_263_4_lut (.A(B_temp[4]), 
         .B(\intermediate_carry[0] ), .C(A_temp[4]), .D(n18865), .Z(n18858)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 31[12])
    defparam intermediate_carry_12__I_0_100_i5_4_lut_3_lut_rep_263_4_lut.init = 16'hf660;
    LUT4 i1_2_lut_3_lut_adj_70 (.A(B_temp[4]), .B(\intermediate_carry[0] ), 
         .C(A_temp[4]), .Z(n4_adj_3)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 31[12])
    defparam i1_2_lut_3_lut_adj_70.init = 16'h9696;
    LUT4 i1_2_lut_3_lut_adj_71 (.A(B_temp[11]), .B(\intermediate_carry[0] ), 
         .C(A_temp[11]), .Z(n4_adj_4)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 31[12])
    defparam i1_2_lut_3_lut_adj_71.init = 16'h9696;
    LUT4 intermediate_carry_12__I_0_100_i10_4_lut_3_lut_rep_224_4_lut (.A(B_temp[9]), 
         .B(\intermediate_carry[0] ), .C(A_temp[9]), .D(n18826), .Z(n18819)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 31[12])
    defparam intermediate_carry_12__I_0_100_i10_4_lut_3_lut_rep_224_4_lut.init = 16'hf660;
    LUT4 i1_2_lut_3_lut_adj_72 (.A(B_temp[9]), .B(\intermediate_carry[0] ), 
         .C(A_temp[9]), .Z(n4_adj_5)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 31[12])
    defparam i1_2_lut_3_lut_adj_72.init = 16'h9696;
    LUT4 intermediate_carry_12__I_0_100_i11_4_lut_3_lut_4_lut (.A(B_temp[10]), 
         .B(\intermediate_carry[0] ), .C(A_temp[10]), .D(n18819), .Z(\intermediate_carry[11] )) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 31[12])
    defparam intermediate_carry_12__I_0_100_i11_4_lut_3_lut_4_lut.init = 16'hf660;
    LUT4 i1_2_lut_3_lut_adj_73 (.A(B_temp[10]), .B(\intermediate_carry[0] ), 
         .C(A_temp[10]), .Z(n4_adj_6)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 31[12])
    defparam i1_2_lut_3_lut_adj_73.init = 16'h9696;
    LUT4 intermediate_carry_12__I_0_100_i8_4_lut_3_lut_rep_237_4_lut (.A(B_temp[7]), 
         .B(\intermediate_carry[0] ), .C(A_temp[7]), .D(n18838), .Z(n18832)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 31[12])
    defparam intermediate_carry_12__I_0_100_i8_4_lut_3_lut_rep_237_4_lut.init = 16'hf660;
    LUT4 i1_2_lut_3_lut_adj_74 (.A(B_temp[7]), .B(\intermediate_carry[0] ), 
         .C(A_temp[7]), .Z(n4_adj_7)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 31[12])
    defparam i1_2_lut_3_lut_adj_74.init = 16'h9696;
    LUT4 intermediate_carry_12__I_0_100_i9_4_lut_3_lut_rep_231_4_lut (.A(B_temp[8]), 
         .B(\intermediate_carry[0] ), .C(A_temp[8]), .D(n18832), .Z(n18826)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 31[12])
    defparam intermediate_carry_12__I_0_100_i9_4_lut_3_lut_rep_231_4_lut.init = 16'hf660;
    LUT4 i1_2_lut_3_lut_adj_75 (.A(B_temp[8]), .B(\intermediate_carry[0] ), 
         .C(A_temp[8]), .Z(n4_adj_8)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 31[12])
    defparam i1_2_lut_3_lut_adj_75.init = 16'h9696;
    LUT4 intermediate_carry_12__I_0_100_i6_4_lut_3_lut_rep_254_4_lut (.A(B_temp[5]), 
         .B(\intermediate_carry[0] ), .C(A_temp[5]), .D(n18858), .Z(n18849)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 31[12])
    defparam intermediate_carry_12__I_0_100_i6_4_lut_3_lut_rep_254_4_lut.init = 16'hf660;
    LUT4 i1_2_lut_3_lut_adj_76 (.A(B_temp[5]), .B(\intermediate_carry[0] ), 
         .C(A_temp[5]), .Z(n4_adj_9)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 31[12])
    defparam i1_2_lut_3_lut_adj_76.init = 16'h9696;
    LUT4 i1_2_lut_3_lut_adj_77 (.A(B_temp[6]), .B(\intermediate_carry[0] ), 
         .C(A_temp[6]), .Z(n4_adj_10)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 31[12])
    defparam i1_2_lut_3_lut_adj_77.init = 16'h9696;
    LUT4 intermediate_carry_12__I_0_100_i7_4_lut_3_lut_rep_243_4_lut (.A(B_temp[6]), 
         .B(\intermediate_carry[0] ), .C(A_temp[6]), .D(n18849), .Z(n18838)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(25[5] 31[12])
    defparam intermediate_carry_12__I_0_100_i7_4_lut_3_lut_rep_243_4_lut.init = 16'hf660;
    
endmodule
//
// Verilog Description of module bcdDisplay
//

module bcdDisplay (un, clk_0, n6328, n18129, n18736, n18483, \DISPLAY_6__N_584[6] , 
            \Q[1] , n18485, n18484, n18907, n18402, n4113, n4101, 
            n18756, \Q[0] , reset_c, n18772);
    output [6:0]un;
    input clk_0;
    input n6328;
    input n18129;
    input n18736;
    input n18483;
    input \DISPLAY_6__N_584[6] ;
    input \Q[1] ;
    input n18485;
    input n18484;
    input n18907;
    input n18402;
    input n4113;
    input n4101;
    input n18756;
    input \Q[0] ;
    input reset_c;
    input n18772;
    
    wire clk_0 /* synthesis is_clock=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(72[8:13])
    
    wire n18978;
    wire [6:0]DISPLAY_6__N_584;
    
    wire n18976, n18977;
    
    FD1S3JX DISPLAY_i0 (.D(n18129), .CK(clk_0), .PD(n6328), .Q(un[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=116, LSE_RLINE=116 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i0.GSR = "ENABLED";
    FD1S3JX DISPLAY_i3 (.D(n18978), .CK(clk_0), .PD(n18736), .Q(un[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=116, LSE_RLINE=116 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i3.GSR = "ENABLED";
    FD1S3AY DISPLAY_i4 (.D(DISPLAY_6__N_584[4]), .CK(clk_0), .Q(un[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=116, LSE_RLINE=116 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i4.GSR = "ENABLED";
    FD1S3JX DISPLAY_i5 (.D(n18483), .CK(clk_0), .PD(n18736), .Q(un[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=116, LSE_RLINE=116 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i5.GSR = "ENABLED";
    FD1S3AX DISPLAY_i6 (.D(\DISPLAY_6__N_584[6] ), .CK(clk_0), .Q(un[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=116, LSE_RLINE=116 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i6.GSR = "ENABLED";
    PFUMX i16444 (.BLUT(n18976), .ALUT(n18977), .C0(\Q[1] ), .Z(n18978));
    PFUMX i16281 (.BLUT(n18485), .ALUT(n18484), .C0(n18736), .Z(DISPLAY_6__N_584[4]));
    FD1S3JX DISPLAY_i2 (.D(n18402), .CK(clk_0), .PD(n18907), .Q(un[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=116, LSE_RLINE=116 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i2.GSR = "ENABLED";
    FD1S3JX DISPLAY_i1 (.D(n4101), .CK(clk_0), .PD(n4113), .Q(un[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=116, LSE_RLINE=116 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i1.GSR = "ENABLED";
    LUT4 i16284_then_4_lut (.A(n18756), .B(\Q[0] ), .C(reset_c), .D(n18772), 
         .Z(n18977)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A ((C+!(D))+!B)) */ ;
    defparam i16284_then_4_lut.init = 16'hf9f7;
    LUT4 i16284_else_4_lut (.A(n18756), .B(\Q[0] ), .C(reset_c), .D(n18772), 
         .Z(n18976)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam i16284_else_4_lut.init = 16'hfef3;
    
endmodule
//
// Verilog Description of module Bin2BCD
//

module Bin2BCD (n2572, n18718, n18740, n18731, bcd_out_15__N_373, 
            n1612, n18958, n2587, n2562, Q, n2543, n18798, bcd_out_15__N_407, 
            bcd_out_15__N_403, bcd_out_15__N_356, n18806, bcd_out_15__N_355, 
            n18841, n23, bcd_out_15__N_554, n18746, reset_c, n18745, 
            n3899, n18744, n10468, n18736, \Qbcd[1] , \DISPLAY_6__N_584[6] , 
            n18354, n18844, n18353, n18739, n10728, n18716, bcd_out_15__N_517, 
            n18743, n18732, n18715, n18720, n18733, bcd_out_15__N_521, 
            n18750, n18742, n18727, n18725, n2583, bcd_out_15__N_402, 
            n10460, bcd_out_15__N_574, n18763, n18741, n18772, n18762, 
            n18751, n18756, n4101, bcd_out_15__N_550, n18753, bcd_out_15__N_449, 
            n18747, n18724, n3980, n18728, n18752, n18761, n18735, 
            n18754, n18717, n18805, n4038, n18797, n18970, n18618, 
            n18737, n10730, n18757, n18681);
    output n2572;
    output n18718;
    output n18740;
    output n18731;
    output bcd_out_15__N_373;
    input [3:0]n1612;
    output n18958;
    output n2587;
    output n2562;
    input [13:0]Q;
    output n2543;
    input n18798;
    input bcd_out_15__N_407;
    input bcd_out_15__N_403;
    input bcd_out_15__N_356;
    input n18806;
    output bcd_out_15__N_355;
    output n18841;
    output n23;
    output bcd_out_15__N_554;
    output n18746;
    input reset_c;
    output n18745;
    output n3899;
    output n18744;
    input n10468;
    input n18736;
    input \Qbcd[1] ;
    output \DISPLAY_6__N_584[6] ;
    output n18354;
    output n18844;
    output n18353;
    output n18739;
    output n10728;
    output n18716;
    output bcd_out_15__N_517;
    output n18743;
    output n18732;
    output n18715;
    output n18720;
    output n18733;
    output bcd_out_15__N_521;
    output n18750;
    output n18742;
    output n18727;
    output n18725;
    output n2583;
    output bcd_out_15__N_402;
    output n10460;
    output bcd_out_15__N_574;
    output n18763;
    output n18741;
    output n18772;
    output n18762;
    output n18751;
    output n18756;
    output n4101;
    output bcd_out_15__N_550;
    output n18753;
    input bcd_out_15__N_449;
    output n18747;
    output n18724;
    output n3980;
    output n18728;
    output n18752;
    output n18761;
    output n18735;
    output n18754;
    output n18717;
    input n18805;
    output n4038;
    output n18797;
    input n18970;
    output n18618;
    output n18737;
    output n10730;
    output n18757;
    output n18681;
    
    
    wire n18765, n18764;
    wire [3:0]n1628;
    
    wire n4, n18813, n18812;
    wire [3:0]n1619;
    
    wire n18783, n2547, n18856, n4_adj_1063;
    wire [3:0]n1618;
    
    wire n18815;
    wire [3:0]n1620;
    
    wire n18811, n18804, n29, n32, n18795, n18791;
    wire [3:0]n1623;
    
    wire n18814, n18810, n18796, n18831, n18828, n2555, n18992, 
        n18991, n18818, n18825;
    wire [3:0]n1614;
    
    wire n18837;
    wire [3:0]n1616;
    
    wire n18830, n18827, n18820, n18824, n18833, n18829, n18823, 
        n18836, n18957, n18675, n4_adj_1064, n18748, n18759, n18840, 
        n18839, n18817;
    wire [3:0]n1613;
    
    wire n18847, n18843, n18846, n18768, n18758;
    wire [2:0]n1615;
    
    wire n18822;
    wire [3:0]n1626;
    
    wire n18773, n18852, n18851;
    wire [3:0]n1625;
    
    wire n18767, n18133, n18769, n4_adj_1065;
    wire [3:0]n1627;
    
    wire n18760, n18855, n2568, n18779, n18784;
    wire [3:0]n1624;
    
    wire n18781, n18771, n18766, n18135, n18776, n18770;
    wire [3:0]n1612_c;
    
    wire n18774, n18780, n18787, n18778, n18782, n18777, n4_adj_1066, 
        n18786, n18785, n18788;
    wire [3:0]n1621;
    
    wire n18794, n18790, n18808, n6335, n18793, n18792, n18800, 
        n18799, n18809, n18803, n18816, n18821;
    
    LUT4 i1659_2_lut_rep_123_4_lut_4_lut (.A(n18765), .B(n18764), .C(n1628[1]), 
         .D(n2572), .Z(n18718)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i1659_2_lut_rep_123_4_lut_4_lut.init = 16'h936c;
    LUT4 i1672_2_lut_rep_136_4_lut_4_lut (.A(n18765), .B(n18764), .C(n1628[1]), 
         .D(n18740), .Z(n18731)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i1672_2_lut_rep_136_4_lut_4_lut.init = 16'hff6c;
    LUT4 i2_4_lut_4_lut (.A(bcd_out_15__N_373), .B(n1612[3]), .C(n18958), 
         .D(n4), .Z(n2587)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C))+!A !(B (C)+!B (C (D)+!C !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2_4_lut_4_lut.init = 16'h871e;
    LUT4 i973_2_lut_rep_188_4_lut_4_lut (.A(n18813), .B(n18812), .C(n1619[1]), 
         .D(n2562), .Z(n18783)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i973_2_lut_rep_188_4_lut_4_lut.init = 16'h936c;
    LUT4 i4248_2_lut_rep_261_3_lut_4_lut (.A(Q[9]), .B(Q[10]), .C(n2543), 
         .D(n2547), .Z(n18856)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(C (D)))) */ ;
    defparam i4248_2_lut_rep_261_3_lut_4_lut.init = 16'hbe00;
    LUT4 i786_2_lut_4_lut_4_lut (.A(n18813), .B(n18812), .C(n1619[1]), 
         .D(n18798), .Z(n4_adj_1063)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i786_2_lut_4_lut_4_lut.init = 16'hff6c;
    LUT4 i772_3_lut_rep_209_4_lut (.A(n1618[1]), .B(n18815), .C(n1620[1]), 
         .D(n18811), .Z(n18804)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i772_3_lut_rep_209_4_lut.init = 16'hf666;
    LUT4 i1_4_lut_4_lut (.A(bcd_out_15__N_373), .B(n1612[3]), .C(n18958), 
         .D(n29), .Z(n32)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_4_lut.init = 16'hee60;
    LUT4 i4188_2_lut_rep_200_3_lut_4_lut (.A(n1618[1]), .B(n18815), .C(n1620[1]), 
         .D(n18811), .Z(n18795)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i4188_2_lut_rep_200_3_lut_4_lut.init = 16'hf600;
    LUT4 i1450_2_lut_rep_196_3_lut_3_lut_4_lut (.A(n1618[1]), .B(n18815), 
         .C(n1620[1]), .D(n18811), .Z(n18791)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1450_2_lut_rep_196_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1457_3_lut_4_lut_3_lut_4_lut (.A(n1618[1]), .B(n18815), .C(n1620[1]), 
         .D(n18811), .Z(n1623[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1457_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1435_2_lut_rep_201_4_lut_4_lut (.A(Q[4]), .B(n18814), .C(n1620[1]), 
         .D(n18810), .Z(n18796)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i1435_2_lut_rep_201_4_lut_4_lut.init = 16'h554a;
    LUT4 i715_3_lut_4_lut (.A(n18831), .B(n18828), .C(bcd_out_15__N_407), 
         .D(bcd_out_15__N_403), .Z(n2555)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i715_3_lut_4_lut.init = 16'hffe0;
    LUT4 i1366_2_lut_rep_217_3_lut_4_lut (.A(n18831), .B(n18828), .C(bcd_out_15__N_407), 
         .D(n2555), .Z(n18812)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;
    defparam i1366_2_lut_rep_217_3_lut_4_lut.init = 16'h1ef0;
    LUT4 i1058_3_lut_4_lut_3_lut (.A(bcd_out_15__N_356), .B(n1628[3]), .C(n18806), 
         .Z(bcd_out_15__N_355)) /* synthesis lut_function=(A (B+!(C))) */ ;
    defparam i1058_3_lut_4_lut_3_lut.init = 16'h8a8a;
    LUT4 i1261_3_lut_4_lut_then_4_lut (.A(Q[9]), .B(n1612[1]), .C(n1612[2]), 
         .D(n2543), .Z(n18992)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C (D)+!C !(D))+!B (C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1261_3_lut_4_lut_then_4_lut.init = 16'h783c;
    LUT4 i1261_3_lut_4_lut_else_4_lut (.A(Q[9]), .B(n1612[1]), .C(n1612[2]), 
         .D(n2543), .Z(n18991)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1261_3_lut_4_lut_else_4_lut.init = 16'h3c78;
    LUT4 i4232_2_lut_rep_223_3_lut_4_lut (.A(n18841), .B(n23), .C(n2555), 
         .D(n18831), .Z(n18818)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C (D))+!B (C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i4232_2_lut_rep_223_3_lut_4_lut.init = 16'hf090;
    LUT4 i753_2_lut_rep_230_3_lut (.A(n18841), .B(n23), .C(n18831), .Z(n18825)) /* synthesis lut_function=(A (B+(C))+!A ((C)+!B)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i753_2_lut_rep_230_3_lut.init = 16'hf9f9;
    LUT4 i1359_3_lut_4_lut (.A(n18841), .B(n23), .C(n18831), .D(n2555), 
         .Z(n1619[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1359_3_lut_4_lut.init = 16'h9699;
    LUT4 i716_3_lut_rep_232_4_lut (.A(n1614[1]), .B(n18837), .C(n1616[1]), 
         .D(n18830), .Z(n18827)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i716_3_lut_rep_232_4_lut.init = 16'hf666;
    LUT4 i16124_3_lut_4_lut (.A(bcd_out_15__N_554), .B(n18746), .C(reset_c), 
         .D(n18745), .Z(n3899)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i16124_3_lut_4_lut.init = 16'hf6f9;
    LUT4 i8260_4_lut_4_lut (.A(n18744), .B(n10468), .C(n18736), .D(\Qbcd[1] ), 
         .Z(\DISPLAY_6__N_584[6] )) /* synthesis lut_function=(A (C+(D))+!A ((C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i8260_4_lut_4_lut.init = 16'hfbf1;
    LUT4 i1338_2_lut_rep_225_3_lut_3_lut_4_lut (.A(n1614[1]), .B(n18837), 
         .C(n1616[1]), .D(n18830), .Z(n18820)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1338_2_lut_rep_225_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i4235_2_lut_rep_229_3_lut_4_lut (.A(n1614[1]), .B(n18837), .C(n1616[1]), 
         .D(n18830), .Z(n18824)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i4235_2_lut_rep_229_3_lut_4_lut.init = 16'hf600;
    LUT4 i1345_3_lut_4_lut_3_lut_4_lut (.A(n1614[1]), .B(n18837), .C(n1616[1]), 
         .D(n18830), .Z(n1618[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1345_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1323_2_lut_rep_228_4_lut_4_lut (.A(Q[6]), .B(n18833), .C(n1616[1]), 
         .D(n18829), .Z(n18823)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i1323_2_lut_rep_228_4_lut_4_lut.init = 16'h554a;
    LUT4 i754_2_lut_rep_235_3_lut (.A(Q[7]), .B(n18836), .C(Q[6]), .Z(n18830)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i754_2_lut_rep_235_3_lut.init = 16'hf6f6;
    LUT4 i1331_3_lut_4_lut (.A(Q[7]), .B(n18836), .C(Q[6]), .D(n18827), 
         .Z(n1618[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1331_3_lut_4_lut.init = 16'h6966;
    LUT4 i761_2_lut_rep_362 (.A(Q[11]), .B(Q[12]), .Z(n18957)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i761_2_lut_rep_362.init = 16'heeee;
    LUT4 Q_10__bdd_4_lut_4_lut_3_lut (.A(Q[11]), .B(Q[10]), .C(Q[13]), 
         .Z(n18675)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam Q_10__bdd_4_lut_4_lut_3_lut.init = 16'h8e8e;
    LUT4 bcd_out_15__N_363_bdd_3_lut_4_lut_3_lut (.A(Q[11]), .B(Q[12]), 
         .C(Q[13]), .Z(n18354)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam bcd_out_15__N_363_bdd_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i796_2_lut_rep_249_3_lut_4_lut (.A(Q[11]), .B(Q[12]), .C(n4_adj_1064), 
         .D(Q[13]), .Z(n18844)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i796_2_lut_rep_249_3_lut_4_lut.init = 16'he000;
    LUT4 n6349_bdd_4_lut (.A(n18731), .B(n18806), .C(bcd_out_15__N_356), 
         .D(n1628[3]), .Z(n2572)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C))+!A !((C+(D))+!B)) */ ;
    defparam n6349_bdd_4_lut.init = 16'ha02c;
    LUT4 i800_2_lut_rep_363 (.A(Q[11]), .B(Q[12]), .C(Q[13]), .Z(n18958)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i800_2_lut_rep_363.init = 16'he0e0;
    LUT4 bcd_out_15__N_363_bdd_4_lut_4_lut (.A(Q[11]), .B(Q[12]), .C(Q[13]), 
         .D(Q[10]), .Z(n18353)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A !(B (C+!(D))+!B (D)))) */ ;
    defparam bcd_out_15__N_363_bdd_4_lut_4_lut.init = 16'h73c6;
    LUT4 i8617_2_lut_4_lut_3_lut_4_lut (.A(n1628[3]), .B(n18748), .C(n2572), 
         .D(n18739), .Z(n10728)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i8617_2_lut_4_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i1667_3_lut_rep_121_4_lut (.A(n1628[3]), .B(n18748), .C(n18739), 
         .D(n2572), .Z(n18716)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1667_3_lut_rep_121_4_lut.init = 16'h6966;
    LUT4 i773_3_lut_rep_137_4_lut (.A(n1628[1]), .B(n18759), .C(bcd_out_15__N_517), 
         .D(n18743), .Z(n18732)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i773_3_lut_rep_137_4_lut.init = 16'hf666;
    LUT4 i1351_2_lut_rep_222_4_lut_4_lut (.A(n18840), .B(n18839), .C(n1614[1]), 
         .D(n2555), .Z(n18817)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i1351_2_lut_rep_222_4_lut_4_lut.init = 16'h936c;
    LUT4 i1233_3_lut_rep_120_4_lut_3_lut_4_lut (.A(n1628[1]), .B(n18759), 
         .C(bcd_out_15__N_517), .D(n18743), .Z(n18715)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1233_3_lut_rep_120_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i718_3_lut_rep_241_4_lut (.A(n1613[1]), .B(n18847), .C(n1614[1]), 
         .D(n18840), .Z(n18836)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i718_3_lut_rep_241_4_lut.init = 16'hf666;
    LUT4 i1226_2_lut_rep_125_3_lut_3_lut_4_lut (.A(n1628[1]), .B(n18759), 
         .C(bcd_out_15__N_517), .D(n18743), .Z(n18720)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1226_2_lut_rep_125_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1310_2_lut_rep_234_3_lut_3_lut_4_lut (.A(n1613[1]), .B(n18847), 
         .C(n1614[1]), .D(n18840), .Z(n18829)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1310_2_lut_rep_234_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1317_3_lut_rep_236_4_lut_3_lut_4_lut (.A(n1613[1]), .B(n18847), 
         .C(n1614[1]), .D(n18840), .Z(n18831)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1317_3_lut_rep_236_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4251_2_lut_rep_138_4_lut (.A(n1628[1]), .B(n18759), .C(bcd_out_15__N_517), 
         .D(n18743), .Z(n18733)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i4251_2_lut_rep_138_4_lut.init = 16'hf600;
    LUT4 i1211_2_lut_rep_132_4_lut_4_lut (.A(bcd_out_15__N_521), .B(n18750), 
         .C(bcd_out_15__N_517), .D(n18742), .Z(n18727)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i1211_2_lut_rep_132_4_lut_4_lut.init = 16'h554a;
    LUT4 i4242_2_lut_rep_242_4_lut (.A(n1613[1]), .B(n18847), .C(n1614[1]), 
         .D(n18840), .Z(n18837)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i4242_2_lut_rep_242_4_lut.init = 16'hf600;
    LUT4 i1295_2_lut_rep_238_4_lut_4_lut (.A(Q[7]), .B(n18843), .C(n1614[1]), 
         .D(n18839), .Z(n18833)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i1295_2_lut_rep_238_4_lut_4_lut.init = 16'h554a;
    LUT4 i756_2_lut_rep_245_3_lut (.A(Q[8]), .B(n18846), .C(Q[7]), .Z(n18840)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i756_2_lut_rep_245_3_lut.init = 16'hf6f6;
    LUT4 i1303_3_lut_4_lut (.A(Q[8]), .B(n18846), .C(Q[7]), .D(n18836), 
         .Z(n1616[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1303_3_lut_4_lut.init = 16'h6966;
    LUT4 i776_2_lut_rep_148_3_lut (.A(n18768), .B(n18758), .C(bcd_out_15__N_521), 
         .Z(n18743)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i776_2_lut_rep_148_3_lut.init = 16'hf6f6;
    LUT4 i1219_3_lut_rep_130_4_lut (.A(n18768), .B(n18758), .C(bcd_out_15__N_521), 
         .D(n18732), .Z(n18725)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1219_3_lut_rep_130_4_lut.init = 16'h6966;
    LUT4 n2583_bdd_4_lut_16596 (.A(n2583), .B(n18844), .C(n2587), .D(bcd_out_15__N_402), 
         .Z(n1615[1])) /* synthesis lut_function=(A ((C (D))+!B)+!A (B (C (D)))) */ ;
    defparam n2583_bdd_4_lut_16596.init = 16'he222;
    LUT4 mux_1777_i3_3_lut_rep_227_4_lut (.A(n4_adj_1064), .B(n18958), .C(n2587), 
         .D(n2583), .Z(n18822)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_1777_i3_3_lut_rep_227_4_lut.init = 16'hf780;
    LUT4 i8355_2_lut_4_lut_3_lut_4_lut (.A(n18768), .B(n18758), .C(n18732), 
         .D(bcd_out_15__N_521), .Z(n10460)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i8355_2_lut_4_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i1695_2_lut_rep_146_3_lut_3_lut_4_lut (.A(n1626[1]), .B(n18773), 
         .C(bcd_out_15__N_574), .D(n18763), .Z(n18741)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1695_2_lut_rep_146_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1702_3_lut_rep_150_4_lut_3_lut_4_lut (.A(n1626[1]), .B(n18773), 
         .C(bcd_out_15__N_574), .D(n18763), .Z(n18745)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1702_3_lut_rep_150_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1680_2_lut_rep_156_4_lut_4_lut (.A(n18772), .B(Q[1]), .C(bcd_out_15__N_574), 
         .D(n18762), .Z(n18751)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1680_2_lut_rep_156_4_lut_4_lut.init = 16'h332c;
    LUT4 i16115_3_lut_4_lut (.A(Q[1]), .B(n18756), .C(reset_c), .D(Q[0]), 
         .Z(n4101)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i16115_3_lut_4_lut.init = 16'hf6f9;
    LUT4 i1071_2_lut_rep_233_4_lut_4_lut (.A(n18852), .B(n18851), .C(n1613[1]), 
         .D(n23), .Z(n18828)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D)))) */ ;
    defparam i1071_2_lut_rep_233_4_lut_4_lut.init = 16'h6c93;
    LUT4 i764_3_lut_rep_163_4_lut (.A(n1625[1]), .B(n18767), .C(n1628[1]), 
         .D(n18765), .Z(n18758)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i764_3_lut_rep_163_4_lut.init = 16'hf666;
    LUT4 i1_2_lut_4_lut_4_lut (.A(n18852), .B(n18851), .C(n1613[1]), .D(n18133), 
         .Z(n29)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D)))) */ ;
    defparam i1_2_lut_4_lut_4_lut.init = 16'h0093;
    LUT4 i1646_2_lut_rep_147_3_lut_3_lut_4_lut (.A(n1625[1]), .B(n18767), 
         .C(n1628[1]), .D(n18765), .Z(n18742)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1646_2_lut_rep_147_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1653_3_lut_rep_144_4_lut_3_lut_4_lut (.A(n1625[1]), .B(n18767), 
         .C(n1628[1]), .D(n18765), .Z(n18739)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1653_3_lut_rep_144_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4241_2_lut_rep_164_4_lut (.A(n1625[1]), .B(n18767), .C(n1628[1]), 
         .D(n18765), .Z(n18759)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i4241_2_lut_rep_164_4_lut.init = 16'hf600;
    LUT4 i1631_2_lut_rep_155_4_lut_4_lut (.A(n18769), .B(n18768), .C(n1628[1]), 
         .D(n18764), .Z(n18750)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1631_2_lut_rep_155_4_lut_4_lut.init = 16'h332c;
    LUT4 i4246_2_lut_rep_252_4_lut (.A(n1612[1]), .B(n18856), .C(n1613[1]), 
         .D(n18852), .Z(n18847)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i4246_2_lut_rep_252_4_lut.init = 16'hf600;
    LUT4 i719_3_lut_rep_251_4_lut (.A(n1612[1]), .B(n18856), .C(n1613[1]), 
         .D(n18852), .Z(n18846)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i719_3_lut_rep_251_4_lut.init = 16'hf666;
    LUT4 i4187_3_lut (.A(n2543), .B(Q[11]), .C(Q[10]), .Z(n4_adj_1065)) /* synthesis lut_function=(A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i4187_3_lut.init = 16'ha8a8;
    LUT4 i774_3_lut_rep_151_4_lut (.A(n1627[1]), .B(n18760), .C(bcd_out_15__N_550), 
         .D(n18753), .Z(n18746)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i774_3_lut_rep_151_4_lut.init = 16'hf666;
    LUT4 i1282_2_lut_rep_244_3_lut_3_lut_4_lut (.A(n1612[1]), .B(n18856), 
         .C(n1613[1]), .D(n18852), .Z(n18839)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1282_2_lut_rep_244_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1289_3_lut_rep_246_4_lut_3_lut_4_lut (.A(n1612[1]), .B(n18856), 
         .C(n1613[1]), .D(n18852), .Z(n18841)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1289_3_lut_rep_246_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1267_2_lut_rep_248_4_lut_4_lut (.A(Q[8]), .B(n18855), .C(n1613[1]), 
         .D(n18851), .Z(n18843)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i1267_2_lut_rep_248_4_lut_4_lut.init = 16'h554a;
    LUT4 i1569_3_lut_4_lut (.A(n2568), .B(n18779), .C(n1625[1]), .D(bcd_out_15__N_449), 
         .Z(n1628[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1569_3_lut_4_lut.init = 16'h7f80;
    LUT4 i4252_2_lut_rep_152_4_lut (.A(n1627[1]), .B(n18760), .C(bcd_out_15__N_550), 
         .D(n18753), .Z(n18747)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i4252_2_lut_rep_152_4_lut.init = 16'hf600;
    LUT4 i16121_3_lut_4_lut (.A(bcd_out_15__N_521), .B(n18732), .C(reset_c), 
         .D(n18724), .Z(n3980)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i16121_3_lut_4_lut.init = 16'hf6f9;
    LUT4 i1239_2_lut_rep_260 (.A(Q[9]), .B(n2547), .Z(n18855)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1239_2_lut_rep_260.init = 16'h6666;
    LUT4 i758_2_lut_rep_257_3_lut (.A(Q[9]), .B(n2547), .C(Q[8]), .Z(n18852)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i758_2_lut_rep_257_3_lut.init = 16'hf6f6;
    LUT4 i1639_3_lut_4_lut (.A(n18784), .B(n2568), .C(n18768), .D(n18758), 
         .Z(bcd_out_15__N_517)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1639_3_lut_4_lut.init = 16'h6966;
    LUT4 i1275_3_lut_4_lut (.A(Q[9]), .B(n2547), .C(Q[8]), .D(n18846), 
         .Z(n1614[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1275_3_lut_4_lut.init = 16'h6966;
    LUT4 i1198_2_lut_rep_133_3_lut_3_lut_4_lut (.A(n1627[1]), .B(n18760), 
         .C(bcd_out_15__N_550), .D(n18753), .Z(n18728)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1198_2_lut_rep_133_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1205_3_lut_rep_129_4_lut_3_lut_4_lut (.A(n1627[1]), .B(n18760), 
         .C(bcd_out_15__N_550), .D(n18753), .Z(n18724)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1205_3_lut_rep_129_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4243_2_lut_rep_165_3_lut_4_lut (.A(n1624[1]), .B(n18781), .C(n1627[1]), 
         .D(n18771), .Z(n18760)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i4243_2_lut_rep_165_3_lut_4_lut.init = 16'hf600;
    LUT4 i1618_2_lut_rep_157_3_lut_3_lut_4_lut (.A(n1624[1]), .B(n18781), 
         .C(n1627[1]), .D(n18771), .Z(n18752)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1618_2_lut_rep_157_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i765_3_lut_rep_171_4_lut (.A(n1624[1]), .B(n18781), .C(n1627[1]), 
         .D(n18771), .Z(n18766)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i765_3_lut_rep_171_4_lut.init = 16'hf666;
    LUT4 i1625_3_lut_4_lut_3_lut_4_lut (.A(n1624[1]), .B(n18781), .C(n1627[1]), 
         .D(n18771), .Z(bcd_out_15__N_521)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1625_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1_4_lut (.A(n32), .B(n18958), .C(n29), .D(n18135), .Z(n23)) /* synthesis lut_function=(A+!(B+!(C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'hbabb;
    LUT4 i757_2_lut (.A(bcd_out_15__N_373), .B(n1612[3]), .Z(n4_adj_1064)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i757_2_lut.init = 16'heeee;
    LUT4 i1603_2_lut_rep_166_4_lut_4_lut (.A(n18776), .B(n1626[3]), .C(n1627[1]), 
         .D(n18770), .Z(n18761)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1603_2_lut_rep_166_4_lut_4_lut.init = 16'h332c;
    LUT4 i1183_2_lut_rep_140_4_lut_4_lut (.A(bcd_out_15__N_554), .B(n18761), 
         .C(bcd_out_15__N_550), .D(n18752), .Z(n18735)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i1183_2_lut_rep_140_4_lut_4_lut.init = 16'h554a;
    LUT4 i720_3_lut_4_lut (.A(Q[9]), .B(n1612_c[0]), .C(n1612[1]), .D(n1612[2]), 
         .Z(n2547)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i720_3_lut_4_lut.init = 16'hffe0;
    LUT4 i1688_3_lut_rep_159_4_lut (.A(Q[2]), .B(n18774), .C(Q[1]), .D(n18756), 
         .Z(n18754)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1688_3_lut_rep_159_4_lut.init = 16'h6966;
    LUT4 i1254_2_lut_rep_256_3_lut_4_lut (.A(Q[9]), .B(n1612_c[0]), .C(n1612[1]), 
         .D(n2547), .Z(n18851)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;
    defparam i1254_2_lut_rep_256_3_lut_4_lut.init = 16'h1ef0;
    LUT4 i1693_2_lut_rep_168_3_lut (.A(Q[2]), .B(n18774), .C(Q[1]), .Z(n18763)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1693_2_lut_rep_168_3_lut.init = 16'hf6f6;
    LUT4 i16096_2_lut_3_lut (.A(Q[12]), .B(n4_adj_1065), .C(Q[13]), .Z(n18135)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i16096_2_lut_3_lut.init = 16'h7878;
    LUT4 i16176_2_lut_rep_149_4_lut (.A(n18772), .B(n18756), .C(Q[1]), 
         .D(reset_c), .Z(n18744)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A ((C+(D))+!B)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i16176_2_lut_rep_149_4_lut.init = 16'hff59;
    LUT4 i1611_3_lut_4_lut (.A(n1623[3]), .B(n18780), .C(n1626[3]), .D(n18766), 
         .Z(bcd_out_15__N_550)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1611_3_lut_4_lut.init = 16'h6966;
    LUT4 i1616_2_lut_rep_176_3_lut (.A(n1623[3]), .B(n18780), .C(n1626[3]), 
         .Z(n18771)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1616_2_lut_rep_176_3_lut.init = 16'hf6f6;
    LUT4 i766_3_lut_rep_179_4_lut (.A(n1623[1]), .B(n18787), .C(n1626[1]), 
         .D(n18778), .Z(n18774)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i766_3_lut_rep_179_4_lut.init = 16'hf666;
    LUT4 i1674_3_lut_rep_122_4_lut (.A(n18740), .B(n18739), .C(n2572), 
         .D(bcd_out_15__N_355), .Z(n18717)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1674_3_lut_rep_122_4_lut.init = 16'h1fe0;
    LUT4 i4244_2_lut_rep_178_3_lut_4_lut (.A(n1623[1]), .B(n18787), .C(n1626[1]), 
         .D(n18778), .Z(n18773)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i4244_2_lut_rep_178_3_lut_4_lut.init = 16'hf600;
    LUT4 i770_4_lut (.A(n4_adj_1063), .B(n18805), .C(n1615[1]), .D(n18844), 
         .Z(n2562)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i770_4_lut.init = 16'hb3a0;
    LUT4 i1590_2_lut_rep_167_3_lut_3_lut_4_lut (.A(n1623[1]), .B(n18787), 
         .C(n1626[1]), .D(n18778), .Z(n18762)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1590_2_lut_rep_167_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1597_3_lut_4_lut_3_lut_4_lut (.A(n1623[1]), .B(n18787), .C(n1626[1]), 
         .D(n18778), .Z(bcd_out_15__N_554)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1597_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1575_2_lut_rep_177_4_lut_4_lut (.A(n18782), .B(Q[2]), .C(n1626[1]), 
         .D(n18777), .Z(n18772)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1575_2_lut_rep_177_4_lut_4_lut.init = 16'h332c;
    LUT4 i767_3_lut_4_lut (.A(n18783), .B(n18784), .C(n1625[1]), .D(bcd_out_15__N_449), 
         .Z(n2568)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i767_3_lut_4_lut.init = 16'hffe0;
    LUT4 i1562_2_lut_rep_169_3_lut_4_lut (.A(n18783), .B(n18784), .C(n1625[1]), 
         .D(n2568), .Z(n18764)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1562_2_lut_rep_169_3_lut_4_lut.init = 16'h1ef0;
    LUT4 i4228_3_lut (.A(n23), .B(bcd_out_15__N_373), .C(n18841), .Z(n4_adj_1066)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i4228_3_lut.init = 16'h5454;
    LUT4 i16118_3_lut_4_lut (.A(n18739), .B(n2572), .C(reset_c), .D(n18715), 
         .Z(n4038)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i16118_3_lut_4_lut.init = 16'hf6f9;
    LUT4 i1644_2_lut_rep_170_4_lut_4_lut (.A(n18786), .B(n18785), .C(n1624[1]), 
         .D(n18769), .Z(n18765)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i1644_2_lut_rep_170_4_lut_4_lut.init = 16'hff6c;
    LUT4 i4229_3_lut (.A(n23), .B(bcd_out_15__N_373), .C(n18841), .Z(n4)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i4229_3_lut.init = 16'h5151;
    LUT4 i1583_3_lut_4_lut (.A(Q[3]), .B(n18788), .C(Q[2]), .D(n18774), 
         .Z(bcd_out_15__N_574)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1583_3_lut_4_lut.init = 16'h6966;
    LUT4 i1588_2_lut_rep_183_3_lut (.A(Q[3]), .B(n18788), .C(Q[2]), .Z(n18778)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1588_2_lut_rep_183_3_lut.init = 16'hf6f6;
    LUT4 i1555_3_lut_4_lut (.A(n18797), .B(n2562), .C(n18784), .D(n2568), 
         .Z(n1628[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1555_3_lut_4_lut.init = 16'h6966;
    LUT4 i1560_2_lut_rep_184_3_lut (.A(n18797), .B(n2562), .C(n18784), 
         .Z(n18779)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1560_2_lut_rep_184_3_lut.init = 16'hf6f6;
    LUT4 i4245_2_lut_rep_172_3_lut_4_lut (.A(n18797), .B(n2562), .C(n2568), 
         .D(n18784), .Z(n18767)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i4245_2_lut_rep_172_3_lut_4_lut.init = 16'hf060;
    LUT4 i768_3_lut_rep_185_4_lut (.A(n1621[1]), .B(n18794), .C(n1624[1]), 
         .D(n18786), .Z(n18780)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i768_3_lut_rep_185_4_lut.init = 16'hf666;
    LUT4 i1541_3_lut_rep_173_4_lut_3_lut_4_lut (.A(n1621[1]), .B(n18794), 
         .C(n1624[1]), .D(n18786), .Z(n18768)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1541_3_lut_rep_173_4_lut_3_lut_4_lut.init = 16'h9666;
    PFUMX i16418 (.BLUT(n18970), .ALUT(n18675), .C0(Q[12]), .Z(n2543));
    LUT4 i1534_2_lut_rep_175_3_lut_3_lut_4_lut (.A(n1621[1]), .B(n18794), 
         .C(n1624[1]), .D(n18786), .Z(n18770)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1534_2_lut_rep_175_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i4247_2_lut_rep_186_4_lut (.A(n1621[1]), .B(n18794), .C(n1624[1]), 
         .D(n18786), .Z(n18781)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i4247_2_lut_rep_186_4_lut.init = 16'hf600;
    LUT4 i1519_2_lut_rep_181_4_lut_4_lut (.A(n18790), .B(n1623[3]), .C(n1624[1]), 
         .D(n18785), .Z(n18776)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1519_2_lut_rep_181_4_lut_4_lut.init = 16'h332c;
    LUT4 i713_3_lut_rep_213_4_lut (.A(bcd_out_15__N_407), .B(n18818), .C(n1619[1]), 
         .D(n18813), .Z(n18808)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i713_3_lut_rep_213_4_lut.init = 16'hf666;
    LUT4 i16094_2_lut_3_lut_4_lut (.A(n18957), .B(Q[13]), .C(bcd_out_15__N_373), 
         .D(n4_adj_1064), .Z(n18133)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i16094_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1121_3_lut_4_lut (.A(n18957), .B(Q[13]), .C(n4_adj_1066), .D(n1612[3]), 
         .Z(n2583)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A !(C (D)))) */ ;
    defparam i1121_3_lut_4_lut.init = 16'h7888;
    LUT4 i1063_2_lut (.A(bcd_out_15__N_356), .B(n1628[3]), .Z(n6335)) /* synthesis lut_function=(A+(B)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1063_2_lut.init = 16'heeee;
    LUT4 i1527_3_lut_4_lut (.A(n1620[3]), .B(n18793), .C(n1623[3]), .D(n18780), 
         .Z(n1627[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1527_3_lut_4_lut.init = 16'h6966;
    LUT4 i1532_2_lut_rep_191_3_lut (.A(n1620[3]), .B(n18793), .C(n1623[3]), 
         .Z(n18786)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1532_2_lut_rep_191_3_lut.init = 16'hf6f6;
    LUT4 i769_3_lut_rep_193_4_lut (.A(n1620[1]), .B(n18795), .C(n1623[1]), 
         .D(n18792), .Z(n18788)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i769_3_lut_rep_193_4_lut.init = 16'hf666;
    LUT4 i4230_2_lut_rep_192_3_lut_4_lut (.A(n1620[1]), .B(n18795), .C(n1623[1]), 
         .D(n18792), .Z(n18787)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i4230_2_lut_rep_192_3_lut_4_lut.init = 16'hf600;
    LUT4 i1513_3_lut_4_lut_3_lut_4_lut (.A(n1620[1]), .B(n18795), .C(n1623[1]), 
         .D(n18792), .Z(n1626[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1513_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1506_2_lut_rep_182_3_lut_3_lut_4_lut (.A(n1620[1]), .B(n18795), 
         .C(n1623[1]), .D(n18792), .Z(n18777)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1506_2_lut_rep_182_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1491_2_lut_rep_187_4_lut_4_lut (.A(n18796), .B(Q[3]), .C(n1623[1]), 
         .D(n18791), .Z(n18782)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1491_2_lut_rep_187_4_lut_4_lut.init = 16'h332c;
    LUT4 i1547_2_lut_rep_174_4_lut_4_lut (.A(n18800), .B(n18799), .C(n1621[1]), 
         .D(n2568), .Z(n18769)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i1547_2_lut_rep_174_4_lut_4_lut.init = 16'h936c;
    LUT4 i1499_3_lut_4_lut (.A(Q[4]), .B(n18804), .C(Q[3]), .D(n18788), 
         .Z(n1626[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1499_3_lut_4_lut.init = 16'h6966;
    LUT4 i1504_2_lut_rep_197_3_lut (.A(Q[4]), .B(n18804), .C(Q[3]), .Z(n18792)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1504_2_lut_rep_197_3_lut.init = 16'hf6f6;
    LUT4 i1429_3_lut_rep_202_4_lut_3_lut_4_lut (.A(bcd_out_15__N_407), .B(n18818), 
         .C(n1619[1]), .D(n18813), .Z(n18797)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1429_3_lut_rep_202_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1029_2_lut_rep_145_3_lut_4_lut_4_lut (.A(n18805), .B(n18844), 
         .C(n1628[3]), .D(bcd_out_15__N_356), .Z(n18740)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;
    defparam i1029_2_lut_rep_145_3_lut_4_lut_4_lut.init = 16'h7870;
    LUT4 i2_3_lut_4_lut (.A(bcd_out_15__N_402), .B(n18806), .C(n18797), 
         .D(n2562), .Z(n1625[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2_3_lut_4_lut.init = 16'h6966;
    LUT4 i4250_2_lut_rep_199_4_lut (.A(n1619[1]), .B(n18809), .C(n1621[1]), 
         .D(n18800), .Z(n18794)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i4250_2_lut_rep_199_4_lut.init = 16'hf600;
    LUT4 i771_3_lut_rep_198_4_lut (.A(n1619[1]), .B(n18809), .C(n1621[1]), 
         .D(n18800), .Z(n18793)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i771_3_lut_rep_198_4_lut.init = 16'hf666;
    LUT4 i1478_2_lut_rep_190_3_lut_3_lut_4_lut (.A(n1619[1]), .B(n18809), 
         .C(n1621[1]), .D(n18800), .Z(n18785)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1478_2_lut_rep_190_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1485_3_lut_rep_189_4_lut_3_lut_4_lut (.A(n1619[1]), .B(n18809), 
         .C(n1621[1]), .D(n18800), .Z(n18784)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1485_3_lut_rep_189_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1463_2_lut_rep_195_4_lut_4_lut (.A(n18803), .B(n1620[3]), .C(n1621[1]), 
         .D(n18799), .Z(n18790)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1463_2_lut_rep_195_4_lut_4_lut.init = 16'h332c;
    LUT4 i1476_2_lut_rep_205_3_lut (.A(n1618[3]), .B(n18808), .C(n1620[3]), 
         .Z(n18800)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1476_2_lut_rep_205_3_lut.init = 16'hf6f6;
    LUT4 i1471_3_lut_4_lut (.A(n1618[3]), .B(n18808), .C(n1620[3]), .D(n18793), 
         .Z(n1624[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1471_3_lut_4_lut.init = 16'h6966;
    LUT4 i801_2_lut_rep_153_3_lut_4_lut (.A(bcd_out_15__N_402), .B(n18822), 
         .C(n6335), .D(n18844), .Z(n18748)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i801_2_lut_rep_153_3_lut_4_lut.init = 16'he000;
    LUT4 bcd_out_15__N_383_bdd_4_lut_4_lut (.A(bcd_out_15__N_402), .B(n18822), 
         .C(n18844), .D(n18797), .Z(n18618)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A !(B (C+!(D))+!B (D)))) */ ;
    defparam bcd_out_15__N_383_bdd_4_lut_4_lut.init = 16'h73c6;
    LUT4 i1422_2_lut_rep_204_3_lut_3_lut_4_lut (.A(bcd_out_15__N_407), .B(n18818), 
         .C(n1619[1]), .D(n18813), .Z(n18799)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1422_2_lut_rep_204_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i4222_2_lut_rep_214_4_lut (.A(bcd_out_15__N_407), .B(n18818), .C(n1619[1]), 
         .D(n18813), .Z(n18809)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i4222_2_lut_rep_214_4_lut.init = 16'hf600;
    LUT4 i1407_2_lut_rep_208_4_lut_4_lut (.A(n18817), .B(n1618[3]), .C(n1619[1]), 
         .D(n18812), .Z(n18803)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1407_2_lut_rep_208_4_lut_4_lut.init = 16'h332c;
    LUT4 i748_2_lut_rep_216_3_lut (.A(Q[5]), .B(n18816), .C(Q[4]), .Z(n18811)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i748_2_lut_rep_216_3_lut.init = 16'hf6f6;
    LUT4 i1443_3_lut_4_lut (.A(Q[5]), .B(n18816), .C(Q[4]), .D(n18804), 
         .Z(n1623[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1443_3_lut_4_lut.init = 16'h6966;
    LUT4 i1415_3_lut_4_lut (.A(n18831), .B(n2555), .C(n1618[3]), .D(n18808), 
         .Z(n1621[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1415_3_lut_4_lut.init = 16'h6966;
    LUT4 i1420_2_lut_rep_218_3_lut (.A(n18831), .B(n2555), .C(n1618[3]), 
         .Z(n18813)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1420_2_lut_rep_218_3_lut.init = 16'hf6f6;
    LUT4 i1373_3_lut_4_lut (.A(n2555), .B(n18825), .C(bcd_out_15__N_407), 
         .D(bcd_out_15__N_403), .Z(bcd_out_15__N_402)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1373_3_lut_4_lut.init = 16'h7f80;
    LUT4 i714_3_lut_rep_221_4_lut (.A(n1616[1]), .B(n18824), .C(n1618[1]), 
         .D(n18821), .Z(n18816)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i714_3_lut_rep_221_4_lut.init = 16'hf666;
    LUT4 i1394_2_lut_rep_215_3_lut_3_lut_4_lut (.A(n1616[1]), .B(n18824), 
         .C(n1618[1]), .D(n18821), .Z(n18810)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1394_2_lut_rep_215_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i4221_2_lut_rep_220_3_lut_4_lut (.A(n1616[1]), .B(n18824), .C(n1618[1]), 
         .D(n18821), .Z(n18815)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i4221_2_lut_rep_220_3_lut_4_lut.init = 16'hf600;
    LUT4 i1401_3_lut_4_lut_3_lut_4_lut (.A(n1616[1]), .B(n18824), .C(n1618[1]), 
         .D(n18821), .Z(n1620[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1401_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1379_2_lut_rep_219_4_lut_4_lut (.A(n18823), .B(Q[5]), .C(n1618[1]), 
         .D(n18820), .Z(n18814)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1379_2_lut_rep_219_4_lut_4_lut.init = 16'h332c;
    LUT4 i1247_3_lut_4_lut (.A(Q[10]), .B(n2543), .C(n2547), .D(Q[9]), 
         .Z(n1613[1])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A !(B ((D)+!C)+!B !((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1247_3_lut_4_lut.init = 16'h6696;
    LUT4 i1191_3_lut_rep_142_4_lut (.A(n1626[3]), .B(n18766), .C(bcd_out_15__N_554), 
         .D(n18746), .Z(n18737)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1191_3_lut_rep_142_4_lut.init = 16'h6966;
    LUT4 i8619_2_lut_3_lut_3_lut_4_lut (.A(n1626[3]), .B(n18766), .C(bcd_out_15__N_554), 
         .D(n18746), .Z(n10730)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i8619_2_lut_3_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i777_2_lut_rep_158_3_lut (.A(n1626[3]), .B(n18766), .C(bcd_out_15__N_554), 
         .Z(n18753)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i777_2_lut_rep_158_3_lut.init = 16'hf6f6;
    LUT4 i762_3_lut_rep_161_4_lut (.A(n1626[1]), .B(n18773), .C(bcd_out_15__N_574), 
         .D(n18763), .Z(n18756)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i762_3_lut_rep_161_4_lut.init = 16'hf666;
    LUT4 i1387_3_lut_4_lut (.A(Q[6]), .B(n18827), .C(Q[5]), .D(n18816), 
         .Z(n1620[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1387_3_lut_4_lut.init = 16'h6966;
    LUT4 i4237_2_lut_rep_162_4_lut (.A(n1626[1]), .B(n18773), .C(bcd_out_15__N_574), 
         .D(n18763), .Z(n18757)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i4237_2_lut_rep_162_4_lut.init = 16'hf600;
    LUT4 i1392_2_lut_rep_226_3_lut (.A(Q[6]), .B(n18827), .C(Q[5]), .Z(n18821)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1392_2_lut_rep_226_3_lut.init = 16'hf6f6;
    LUT4 bcd_out_15__N_360_bdd_3_lut_4_lut_3_lut (.A(bcd_out_15__N_373), .B(n1612[3]), 
         .C(n18958), .Z(n18681)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam bcd_out_15__N_360_bdd_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i1127_2_lut (.A(Q[10]), .B(n2543), .Z(n1612_c[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1127_2_lut.init = 16'h6666;
    PFUMX i16454 (.BLUT(n18991), .ALUT(n18992), .C0(Q[10]), .Z(bcd_out_15__N_373));
    
endmodule
//
// Verilog Description of module bcdDisplay_U6
//

module bcdDisplay_U6 (de, clk_0, n6324, n18125, n18723, \DISPLAY_6__N_584[4] , 
            n18468, reset_c, n18746, bcd_out_15__N_554, n18761, n18738, 
            n5831, n3881, n3899, n18729, n10709, n18730, n3940, 
            n10730, n6242, n18745);
    output [6:0]de;
    input clk_0;
    input n6324;
    input n18125;
    input n18723;
    input \DISPLAY_6__N_584[4] ;
    input n18468;
    input reset_c;
    input n18746;
    input bcd_out_15__N_554;
    input n18761;
    input n18738;
    input n5831;
    input n3881;
    input n3899;
    input n18729;
    input n10709;
    input n18730;
    input n3940;
    input n10730;
    output n6242;
    input n18745;
    
    wire clk_0 /* synthesis is_clock=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(72[8:13])
    
    wire n18987;
    wire [6:0]DISPLAY_6__N_584;
    
    wire n18985, n18986;
    
    FD1S3JX DISPLAY_i0 (.D(n18125), .CK(clk_0), .PD(n6324), .Q(de[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i0.GSR = "ENABLED";
    FD1S3JX DISPLAY_i3 (.D(n18987), .CK(clk_0), .PD(n18723), .Q(de[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i3.GSR = "ENABLED";
    FD1S3AY DISPLAY_i4 (.D(\DISPLAY_6__N_584[4] ), .CK(clk_0), .Q(de[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i4.GSR = "ENABLED";
    FD1S3JX DISPLAY_i5 (.D(n18468), .CK(clk_0), .PD(n18723), .Q(de[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i5.GSR = "ENABLED";
    FD1S3AX DISPLAY_i6 (.D(DISPLAY_6__N_584[6]), .CK(clk_0), .Q(de[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i6.GSR = "ENABLED";
    LUT4 i16277_else_4_lut (.A(reset_c), .B(n18746), .C(bcd_out_15__N_554), 
         .D(n18761), .Z(n18985)) /* synthesis lut_function=(A+!(B (C (D))+!B !(C+!(D)))) */ ;
    defparam i16277_else_4_lut.init = 16'hbeff;
    FD1S3JX DISPLAY_i2 (.D(n5831), .CK(clk_0), .PD(n18738), .Q(de[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i2.GSR = "ENABLED";
    FD1S3JX DISPLAY_i1 (.D(n3899), .CK(clk_0), .PD(n3881), .Q(de[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i1.GSR = "ENABLED";
    LUT4 i8271_4_lut (.A(n18729), .B(n18723), .C(n10709), .D(n18730), 
         .Z(DISPLAY_6__N_584[6])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(30[3] 41[12])
    defparam i8271_4_lut.init = 16'hcfee;
    PFUMX i4147 (.BLUT(n3940), .ALUT(n10730), .C0(n18723), .Z(n6242));
    LUT4 i16277_then_4_lut (.A(reset_c), .B(n18746), .C(bcd_out_15__N_554), 
         .D(n18761), .Z(n18986)) /* synthesis lut_function=(A+(B (D)+!B !(C (D)+!C !(D)))) */ ;
    defparam i16277_then_4_lut.init = 16'hefba;
    PFUMX i16450 (.BLUT(n18985), .ALUT(n18986), .C0(n18745), .Z(n18987));
    
endmodule
//
// Verilog Description of module ROM
//

module ROM (MAR, clk_0, reset_c, GND_net, VCC_net, \data_out_23__N_640[13] , 
            \data_out_23__N_640[14] , \data_out_23__N_640[15] , data_out_23__N_592, 
            data_out_23__N_591, n19477);
    input [7:0]MAR;
    input clk_0;
    input reset_c;
    input GND_net;
    input VCC_net;
    output \data_out_23__N_640[13] ;
    output \data_out_23__N_640[14] ;
    output \data_out_23__N_640[15] ;
    output data_out_23__N_592;
    output [23:0]data_out_23__N_591;
    input n19477;
    
    wire clk_0 /* synthesis is_clock=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(72[8:13])
    wire [23:0]data_out_23__N_640;
    
    PDPW8KC mux_247 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
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
            .OCER(VCC_net), .CLKR(clk_0), .CSR0(GND_net), .CSR1(GND_net), 
            .CSR2(GND_net), .RST(reset_c), .DO9(data_out_23__N_640[18]), 
            .DO10(data_out_23__N_640[19]), .DO11(data_out_23__N_640[20]), 
            .DO12(data_out_23__N_640[21]), .DO13(data_out_23__N_640[22]), 
            .DO14(data_out_23__N_640[23]));
    defparam mux_247.DATA_WIDTH_W = 18;
    defparam mux_247.DATA_WIDTH_R = 18;
    defparam mux_247.REGMODE = "NOREG";
    defparam mux_247.CSDECODE_W = "0b000";
    defparam mux_247.CSDECODE_R = "0b000";
    defparam mux_247.GSR = "DISABLED";
    defparam mux_247.RESETMODE = "ASYNC";
    defparam mux_247.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_247.INIT_DATA = "STATIC";
    defparam mux_247.INITVAL_00 = "0x00009000110001400016000040001100018000090001100014000160000400011000180000900011";
    defparam mux_247.INITVAL_01 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F000130001400016000040001100018";
    defparam mux_247.INITVAL_02 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_247.INITVAL_03 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_247.INITVAL_04 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_247.INITVAL_05 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_247.INITVAL_06 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_247.INITVAL_07 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_247.INITVAL_08 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_247.INITVAL_09 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_247.INITVAL_0A = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_247.INITVAL_0B = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_247.INITVAL_0C = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_247.INITVAL_0D = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_247.INITVAL_0E = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_247.INITVAL_0F = "0x000000000000000000000000000000000000000000000000000003F0003F0003F0003F0003F0003F";
    defparam mux_247.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_247.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_247.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_247.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_247.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_247.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_247.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_247.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_247.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_247.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_247.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_247.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_247.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_247.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_247.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_247.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    PDPW8KC mux_246 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
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
            .OCER(VCC_net), .CLKR(clk_0), .CSR0(GND_net), .CSR1(GND_net), 
            .CSR2(GND_net), .RST(reset_c), .DO0(data_out_23__N_640[9]), 
            .DO1(data_out_23__N_640[10]), .DO2(data_out_23__N_640[11]), 
            .DO3(data_out_23__N_640[12]), .DO4(\data_out_23__N_640[13] ), 
            .DO5(\data_out_23__N_640[14] ), .DO6(\data_out_23__N_640[15] ), 
            .DO7(data_out_23__N_640[16]), .DO8(data_out_23__N_640[17]), 
            .DO9(data_out_23__N_640[0]), .DO10(data_out_23__N_640[1]), .DO11(data_out_23__N_640[2]), 
            .DO12(data_out_23__N_640[3]), .DO13(data_out_23__N_640[4]), 
            .DO14(data_out_23__N_640[5]), .DO15(data_out_23__N_640[6]), 
            .DO16(data_out_23__N_640[7]), .DO17(data_out_23__N_640[8]));
    defparam mux_246.DATA_WIDTH_W = 18;
    defparam mux_246.DATA_WIDTH_R = 18;
    defparam mux_246.REGMODE = "NOREG";
    defparam mux_246.CSDECODE_W = "0b000";
    defparam mux_246.CSDECODE_R = "0b000";
    defparam mux_246.GSR = "DISABLED";
    defparam mux_246.RESETMODE = "ASYNC";
    defparam mux_246.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_246.INIT_DATA = "STATIC";
    defparam mux_246.INITVAL_00 = "0x00076000F9200030000010003100F60000000066000F8200030000010003100F60000000056000F7";
    defparam mux_246.INITVAL_01 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF00000200030000010003100F600000";
    defparam mux_246.INITVAL_02 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_246.INITVAL_03 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_246.INITVAL_04 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_246.INITVAL_05 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_246.INITVAL_06 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_246.INITVAL_07 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_246.INITVAL_08 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_246.INITVAL_09 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_246.INITVAL_0A = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_246.INITVAL_0B = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_246.INITVAL_0C = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_246.INITVAL_0D = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_246.INITVAL_0E = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_246.INITVAL_0F = "0x0004D00037000170000700012000320004600065003EB000123FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_246.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_246.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_246.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_246.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_246.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_246.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_246.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_246.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_246.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_246.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_246.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_246.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_246.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_246.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_246.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_246.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    LUT4 i258_2_lut (.A(data_out_23__N_640[6]), .B(data_out_23__N_592), 
         .Z(data_out_23__N_591[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(84[3] 94[10])
    defparam i258_2_lut.init = 16'h8888;
    LUT4 i257_2_lut (.A(data_out_23__N_640[5]), .B(data_out_23__N_592), 
         .Z(data_out_23__N_591[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(84[3] 94[10])
    defparam i257_2_lut.init = 16'h8888;
    LUT4 i256_2_lut (.A(data_out_23__N_640[4]), .B(data_out_23__N_592), 
         .Z(data_out_23__N_591[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(84[3] 94[10])
    defparam i256_2_lut.init = 16'h8888;
    LUT4 i255_2_lut (.A(data_out_23__N_640[3]), .B(data_out_23__N_592), 
         .Z(data_out_23__N_591[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(84[3] 94[10])
    defparam i255_2_lut.init = 16'h8888;
    LUT4 i254_2_lut (.A(data_out_23__N_640[2]), .B(data_out_23__N_592), 
         .Z(data_out_23__N_591[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(84[3] 94[10])
    defparam i254_2_lut.init = 16'h8888;
    LUT4 i253_2_lut (.A(data_out_23__N_640[1]), .B(data_out_23__N_592), 
         .Z(data_out_23__N_591[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(84[3] 94[10])
    defparam i253_2_lut.init = 16'h8888;
    LUT4 i252_2_lut (.A(data_out_23__N_640[0]), .B(data_out_23__N_592), 
         .Z(data_out_23__N_591[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(84[3] 94[10])
    defparam i252_2_lut.init = 16'h8888;
    LUT4 i275_2_lut (.A(data_out_23__N_640[23]), .B(data_out_23__N_592), 
         .Z(data_out_23__N_591[23])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(84[3] 94[10])
    defparam i275_2_lut.init = 16'h8888;
    LUT4 i274_2_lut (.A(data_out_23__N_640[22]), .B(data_out_23__N_592), 
         .Z(data_out_23__N_591[22])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(84[3] 94[10])
    defparam i274_2_lut.init = 16'h8888;
    LUT4 i273_2_lut (.A(data_out_23__N_640[21]), .B(data_out_23__N_592), 
         .Z(data_out_23__N_591[21])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(84[3] 94[10])
    defparam i273_2_lut.init = 16'h8888;
    LUT4 i272_2_lut (.A(data_out_23__N_640[20]), .B(data_out_23__N_592), 
         .Z(data_out_23__N_591[20])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(84[3] 94[10])
    defparam i272_2_lut.init = 16'h8888;
    LUT4 i271_2_lut (.A(data_out_23__N_640[19]), .B(data_out_23__N_592), 
         .Z(data_out_23__N_591[19])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(84[3] 94[10])
    defparam i271_2_lut.init = 16'h8888;
    LUT4 i270_2_lut (.A(data_out_23__N_640[18]), .B(data_out_23__N_592), 
         .Z(data_out_23__N_591[18])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(84[3] 94[10])
    defparam i270_2_lut.init = 16'h8888;
    LUT4 i269_2_lut (.A(data_out_23__N_640[17]), .B(data_out_23__N_592), 
         .Z(data_out_23__N_591[17])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(84[3] 94[10])
    defparam i269_2_lut.init = 16'h8888;
    LUT4 i268_2_lut (.A(data_out_23__N_640[16]), .B(data_out_23__N_592), 
         .Z(data_out_23__N_591[16])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(84[3] 94[10])
    defparam i268_2_lut.init = 16'h8888;
    LUT4 i267_2_lut (.A(\data_out_23__N_640[15] ), .B(data_out_23__N_592), 
         .Z(data_out_23__N_591[15])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(84[3] 94[10])
    defparam i267_2_lut.init = 16'h8888;
    LUT4 i266_2_lut (.A(\data_out_23__N_640[14] ), .B(data_out_23__N_592), 
         .Z(data_out_23__N_591[14])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(84[3] 94[10])
    defparam i266_2_lut.init = 16'h8888;
    LUT4 i265_2_lut (.A(\data_out_23__N_640[13] ), .B(data_out_23__N_592), 
         .Z(data_out_23__N_591[13])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(84[3] 94[10])
    defparam i265_2_lut.init = 16'h8888;
    LUT4 i264_2_lut (.A(data_out_23__N_640[12]), .B(data_out_23__N_592), 
         .Z(data_out_23__N_591[12])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(84[3] 94[10])
    defparam i264_2_lut.init = 16'h8888;
    LUT4 i263_2_lut (.A(data_out_23__N_640[11]), .B(data_out_23__N_592), 
         .Z(data_out_23__N_591[11])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(84[3] 94[10])
    defparam i263_2_lut.init = 16'h8888;
    LUT4 i262_2_lut (.A(data_out_23__N_640[10]), .B(data_out_23__N_592), 
         .Z(data_out_23__N_591[10])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(84[3] 94[10])
    defparam i262_2_lut.init = 16'h8888;
    LUT4 i261_2_lut (.A(data_out_23__N_640[9]), .B(data_out_23__N_592), 
         .Z(data_out_23__N_591[9])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(84[3] 94[10])
    defparam i261_2_lut.init = 16'h8888;
    LUT4 i260_2_lut (.A(data_out_23__N_640[8]), .B(data_out_23__N_592), 
         .Z(data_out_23__N_591[8])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(84[3] 94[10])
    defparam i260_2_lut.init = 16'h8888;
    LUT4 i259_2_lut (.A(data_out_23__N_640[7]), .B(data_out_23__N_592), 
         .Z(data_out_23__N_591[7])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(84[3] 94[10])
    defparam i259_2_lut.init = 16'h8888;
    FD1S3AX data_out (.D(n19477), .CK(clk_0), .Q(data_out_23__N_592));   // c:/users/cassandra/desktop/arqui2/rom.vhd(84[3] 94[10])
    defparam data_out.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module bcdDisplay_U7
//

module bcdDisplay_U7 (ce, clk_0, n4358, n18127, n18714, \DISPLAY_6__N_584[4] , 
            n18460, reset_c, n18732, bcd_out_15__N_521, n18750, n18722, 
            n5151, n3960, n3980, n18721, n10717, n18719, n3983, 
            n10460, n6251, n18724);
    output [6:0]ce;
    input clk_0;
    input n4358;
    input n18127;
    input n18714;
    input \DISPLAY_6__N_584[4] ;
    input n18460;
    input reset_c;
    input n18732;
    input bcd_out_15__N_521;
    input n18750;
    input n18722;
    input n5151;
    input n3960;
    input n3980;
    input n18721;
    input n10717;
    input n18719;
    input n3983;
    input n10460;
    output n6251;
    input n18724;
    
    wire clk_0 /* synthesis is_clock=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(72[8:13])
    
    wire n18990;
    wire [6:0]DISPLAY_6__N_584;
    
    wire n18989, n18988;
    
    FD1S3JX DISPLAY_i0 (.D(n18127), .CK(clk_0), .PD(n4358), .Q(ce[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i0.GSR = "ENABLED";
    FD1S3JX DISPLAY_i3 (.D(n18990), .CK(clk_0), .PD(n18714), .Q(ce[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i3.GSR = "ENABLED";
    FD1S3AY DISPLAY_i4 (.D(\DISPLAY_6__N_584[4] ), .CK(clk_0), .Q(ce[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i4.GSR = "ENABLED";
    FD1S3JX DISPLAY_i5 (.D(n18460), .CK(clk_0), .PD(n18714), .Q(ce[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i5.GSR = "ENABLED";
    FD1S3AX DISPLAY_i6 (.D(DISPLAY_6__N_584[6]), .CK(clk_0), .Q(ce[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i6.GSR = "ENABLED";
    LUT4 i16267_then_4_lut (.A(reset_c), .B(n18732), .C(bcd_out_15__N_521), 
         .D(n18750), .Z(n18989)) /* synthesis lut_function=(A+(B (D)+!B !(C (D)+!C !(D)))) */ ;
    defparam i16267_then_4_lut.init = 16'hefba;
    LUT4 i16267_else_4_lut (.A(reset_c), .B(n18732), .C(bcd_out_15__N_521), 
         .D(n18750), .Z(n18988)) /* synthesis lut_function=(A+!(B (C (D))+!B !(C+!(D)))) */ ;
    defparam i16267_else_4_lut.init = 16'hbeff;
    FD1S3JX DISPLAY_i2 (.D(n5151), .CK(clk_0), .PD(n18722), .Q(ce[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i2.GSR = "ENABLED";
    FD1S3JX DISPLAY_i1 (.D(n3980), .CK(clk_0), .PD(n3960), .Q(ce[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i1.GSR = "ENABLED";
    LUT4 i8280_4_lut (.A(n18721), .B(n18714), .C(n10717), .D(n18719), 
         .Z(DISPLAY_6__N_584[6])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(30[3] 41[12])
    defparam i8280_4_lut.init = 16'hcfee;
    PFUMX i4156 (.BLUT(n3983), .ALUT(n10460), .C0(n18714), .Z(n6251));
    PFUMX i16452 (.BLUT(n18988), .ALUT(n18989), .C0(n18724), .Z(n18990));
    
endmodule
