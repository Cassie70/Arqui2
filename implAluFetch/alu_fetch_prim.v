// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Wed Apr 10 03:16:33 2024
//
// Verilog Description of module alu_fetch
//

module alu_fetch (reset, stop_run, display, sel, CI);   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(11[8:17])
    input reset;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    input stop_run;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(13[2:10])
    output [6:0]display;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    output [3:0]sel;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    output [23:0]CI;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(64[8:11])
    wire clk_0 /* synthesis is_clock=1, SET_AS_NETWORK=clk_0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(65[8:13])
    wire clk_1 /* synthesis SET_AS_NETWORK=clk_1, is_clock=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(66[8:13])
    
    wire GND_net, VCC_net, reset_c, stop_run_c, display_c_6, display_c_5, 
        display_c_4, display_c_3, display_c_2, display_c_1, display_c_0, 
        sel_c_3, sel_c_2, sel_c_1, sel_c_0, n3534, n10353, n3357, 
        n10352, n10366;
    wire [13:0]Q;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(67[8:9])
    wire [15:0]Qbcd;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(68[8:12])
    wire [3:0]temp_control;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(69[8:20])
    wire [6:0]un;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(70[8:10])
    wire [6:0]de;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(70[11:13])
    wire [6:0]ce;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(70[14:16])
    wire [6:0]mi;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(70[17:19])
    wire [7:0]PC;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(73[8:10])
    wire [7:0]MAR;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(74[8:11])
    wire [23:0]MBR;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(75[8:11])
    
    wire n3337, n3336;
    wire [23:0]IR;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(76[8:10])
    
    wire n10350, n10162;
    wire [2:0]instruction;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(95[8:19])
    
    wire n10322, n3529, n3531, n3444, n10313, n10343, n10341, 
        n7323, n10365, n3334, n10145, n7319, n7317, n3415, n22, 
        n21, n20, n19, n18, n17, n10364, n1985, n45, n44, 
        n43, n42, n41, n40, n39, n38;
    wire [17:0]count;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(209[11:16])
    
    wire n10436, n3347;
    wire [21:0]count1;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(210[11:17])
    
    wire n3532, n10332, n3530, n3528, n3526, clk_0_N_275, n3524, 
        n3523, n3666, clk_1_N_277, n7294, n10330, n10400, n10398, 
        bcd_out_15__N_289, bcd_out_15__N_299, bcd_out_15__N_298, bcd_out_15__N_328, 
        bcd_out_15__N_332, n115, n114, bcd_out_15__N_327, n113, n112, 
        n111, n110, n109, bcd_out_15__N_281, bcd_out_15__N_374, bcd_out_15__N_378, 
        n108, n107, n106, n105, bcd_out_15__N_479, bcd_out_15__N_495, 
        bcd_out_15__N_499, n104, bcd_out_15__N_446, bcd_out_15__N_475, 
        n103, bcd_out_15__N_442, n102, bcd_out_15__N_280, n101, n100, 
        n99, n98, n10354;
    wire [6:0]DISPLAY_6__N_509;
    wire [6:0]DISPLAY_6__N_509_adj_653;
    wire [6:0]DISPLAY_6__N_509_adj_657;
    wire [6:0]DISPLAY_6__N_509_adj_661;
    
    wire n10323;
    wire [23:0]data_out_23__N_516;
    
    wire n977, n3489, n10321, n1014, n3525, n3527, n95, n94, 
        n93, n92, n91, n90, n89, n84, n83, n82, n986, n81, 
        n985, n984, n80, n983, n982, n79, n981, n980, n78, 
        n979, n978, n10505, n3351, n9768, n9758, n9757, n3888, 
        n3533, n10314, n9767, clk_1_enable_76, clk_1_enable_54, n3865, 
        n3648, n9756, n1337, n10312, n1353, n10363, n10309, n10397, 
        n9766, n9755, n3618, n18_adj_645, n17_adj_646, n16, n15, 
        n14, n9765, n1984, n10396, clk_0_enable_11, n10395, n3349, 
        clk_1_enable_83, n2123, n10392, n2119, n10302, n10362, n10390, 
        n9784, n10389, n97, n96, n95_adj_647, n2097, n94_adj_648, 
        n10301, n1983, n3625, n2081, n2069, n10388, n10387, n10295, 
        n10160, n10294, n10386, n1982, n10263, n10361, n10360, 
        n10292, n1981, n1987, n1986, clk_1_enable_56, clk_1_enable_26, 
        n10385, n10384, n10164, n10383, n10519, n3175, n10291, 
        clk_1_enable_35, clk_enable_40, n10513, clk_1_enable_63, n10512, 
        n85, n86, n87, n88, n9785, n7374, n9782, n10381, n7366, 
        n10486, n10684, n10380, n10683, n6, n9754, n10378, n9748, 
        n10377, n9764, n10376, n10507, n10477, n10375, n10308, 
        n10374, n10359, n10358, n10475, n10342, n6_adj_649, n9763, 
        n9753, n9752, n7201, n10331, n9762, n9751, n9747, n9761, 
        n9750, n9760, n9749, n10506, n23, n10357, n10410, n10138, 
        n9759, n10373, n8, n7, n10372, n10371, n8_adj_650, n10158, 
        n10369, n10274, n10368, n10447, n10367, n9770, n9769, 
        n10356, n10446, n10406, n10405, n10355, n10404, n10269;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i705_2_lut_rep_166_4_lut (.A(n2119), .B(n2123), .C(n10477), .D(bcd_out_15__N_327), 
         .Z(n10446)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i705_2_lut_rep_166_4_lut.init = 16'hffca;
    OSCH OSCinst0 (.STDBY(GND_net), .OSC(clk)) /* synthesis NOM_FREQ="26.60", syn_instantiated=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(103[11:15])
    defparam OSCinst0.NOM_FREQ = "26.60";
    FD1P3AX Rdisplay__i0 (.D(IR[0]), .SP(clk_1_enable_76), .CK(clk_1), 
            .Q(Q[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam Rdisplay__i0.GSR = "DISABLED";
    FD1P3IX count1_585__i15 (.D(n100), .SP(clk_enable_40), .CD(n3865), 
            .CK(clk), .Q(count1[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585__i15.GSR = "DISABLED";
    OB display_pad_4 (.I(display_c_4), .O(display[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    FD1P3AX MAR__i0 (.D(PC[0]), .SP(clk_1_enable_63), .CK(clk_1), .Q(MAR[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam MAR__i0.GSR = "ENABLED";
    FD1P3AX instruction__i0 (.D(n10309), .SP(clk_1_enable_56), .CK(clk_1), 
            .Q(instruction[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam instruction__i0.GSR = "DISABLED";
    FD1P3AX sel_i0_i1 (.D(temp_control[0]), .SP(clk_enable_40), .CK(clk_0), 
            .Q(sel_c_0));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(183[3] 205[10])
    defparam sel_i0_i1.GSR = "DISABLED";
    FD1P3AX MBR__i0 (.D(data_out_23__N_516[0]), .SP(clk_1_enable_54), .CK(clk_1), 
            .Q(MBR[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam MBR__i0.GSR = "ENABLED";
    FD1P3AY global_state_FSM__i1 (.D(n10683), .SP(clk_1_enable_35), .CK(clk_1), 
            .Q(n986));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[4] 175[13])
    defparam global_state_FSM__i1.GSR = "ENABLED";
    FD1P3AX IR__i0 (.D(MBR[0]), .SP(clk_1_enable_26), .CK(clk_1), .Q(IR[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam IR__i0.GSR = "ENABLED";
    FD1S3AX clk_0_82 (.D(clk_0_N_275), .CK(clk), .Q(clk_0)) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(212[3] 229[10])
    defparam clk_0_82.GSR = "ENABLED";
    FD1S3AX clk_1_83 (.D(clk_1_N_277), .CK(clk), .Q(clk_1)) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(212[3] 229[10])
    defparam clk_1_83.GSR = "ENABLED";
    FD1S3AY temp_control_FSM_i1 (.D(n10683), .CK(clk_0), .Q(n1337));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(186[4] 203[13])
    defparam temp_control_FSM_i1.GSR = "ENABLED";
    FD1P3IX count1_585__i16 (.D(n99), .SP(clk_enable_40), .CD(n3865), 
            .CK(clk), .Q(count1[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585__i16.GSR = "DISABLED";
    FD1P3IX count1_585__i14 (.D(n101), .SP(clk_enable_40), .CD(n3865), 
            .CK(clk), .Q(count1[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585__i14.GSR = "DISABLED";
    FD1P3IX count1_585__i17 (.D(n98), .SP(clk_enable_40), .CD(n3865), 
            .CK(clk), .Q(count1[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585__i17.GSR = "DISABLED";
    PFUMX i1840 (.BLUT(n1983), .ALUT(n3529), .C0(n10145), .Z(n3530));
    OB display_pad_3 (.I(display_c_3), .O(display[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    OB display_pad_5 (.I(display_c_5), .O(display[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    OB display_pad_6 (.I(display_c_6), .O(display[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    FD1P3IX count_583__i14 (.D(n81), .SP(clk_enable_40), .CD(n3888), .CK(clk), 
            .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(217[14:19])
    defparam count_583__i14.GSR = "DISABLED";
    FD1S3AX temp_control_FSM_i5 (.D(temp_control[2]), .CK(clk_0), .Q(temp_control[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(186[4] 203[13])
    defparam temp_control_FSM_i5.GSR = "ENABLED";
    FD1S3AX temp_control_FSM_i4 (.D(temp_control[1]), .CK(clk_0), .Q(temp_control[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(186[4] 203[13])
    defparam temp_control_FSM_i4.GSR = "ENABLED";
    FD1S3AX temp_control_FSM_i3 (.D(temp_control[0]), .CK(clk_0), .Q(temp_control[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(186[4] 203[13])
    defparam temp_control_FSM_i3.GSR = "ENABLED";
    FD1S3AX temp_control_FSM_i2 (.D(n1353), .CK(clk_0), .Q(temp_control[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(186[4] 203[13])
    defparam temp_control_FSM_i2.GSR = "ENABLED";
    FD1P3AX PC_586__i0 (.D(n45), .SP(clk_1_enable_83), .CK(clk_1), .Q(PC[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam PC_586__i0.GSR = "ENABLED";
    FD1P3IX count_583__i13 (.D(n82), .SP(clk_enable_40), .CD(n3888), .CK(clk), 
            .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(217[14:19])
    defparam count_583__i13.GSR = "DISABLED";
    FD1P3IX count_583__i12 (.D(n83), .SP(clk_enable_40), .CD(n3888), .CK(clk), 
            .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(217[14:19])
    defparam count_583__i12.GSR = "DISABLED";
    FD1P3IX count_583__i11 (.D(n84), .SP(clk_enable_40), .CD(n3888), .CK(clk), 
            .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(217[14:19])
    defparam count_583__i11.GSR = "DISABLED";
    FD1P3IX count_583__i10 (.D(n85), .SP(clk_enable_40), .CD(n3888), .CK(clk), 
            .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(217[14:19])
    defparam count_583__i10.GSR = "DISABLED";
    FD1P3IX count_583__i9 (.D(n86), .SP(clk_enable_40), .CD(n3888), .CK(clk), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(217[14:19])
    defparam count_583__i9.GSR = "DISABLED";
    FD1P3IX count_583__i8 (.D(n87), .SP(clk_enable_40), .CD(n3888), .CK(clk), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(217[14:19])
    defparam count_583__i8.GSR = "DISABLED";
    FD1P3IX count_583__i7 (.D(n88), .SP(clk_enable_40), .CD(n3888), .CK(clk), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(217[14:19])
    defparam count_583__i7.GSR = "DISABLED";
    FD1P3IX count_583__i6 (.D(n89), .SP(clk_enable_40), .CD(n3888), .CK(clk), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(217[14:19])
    defparam count_583__i6.GSR = "DISABLED";
    FD1P3IX count_583__i5 (.D(n90), .SP(clk_enable_40), .CD(n3888), .CK(clk), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(217[14:19])
    defparam count_583__i5.GSR = "DISABLED";
    FD1P3IX count_583__i4 (.D(n91), .SP(clk_enable_40), .CD(n3888), .CK(clk), 
            .Q(n14)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(217[14:19])
    defparam count_583__i4.GSR = "DISABLED";
    FD1P3IX count_583__i3 (.D(n92), .SP(clk_enable_40), .CD(n3888), .CK(clk), 
            .Q(n15)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(217[14:19])
    defparam count_583__i3.GSR = "DISABLED";
    FD1P3IX count_583__i2 (.D(n93), .SP(clk_enable_40), .CD(n3888), .CK(clk), 
            .Q(n16)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(217[14:19])
    defparam count_583__i2.GSR = "DISABLED";
    FD1P3IX count_583__i1 (.D(n94), .SP(clk_enable_40), .CD(n3888), .CK(clk), 
            .Q(n17_adj_646)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(217[14:19])
    defparam count_583__i1.GSR = "DISABLED";
    FD1P3IX count1_585__i18 (.D(n97), .SP(clk_enable_40), .CD(n3865), 
            .CK(clk), .Q(count1[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585__i18.GSR = "DISABLED";
    FD1P3IX count1_585__i19 (.D(n96), .SP(clk_enable_40), .CD(n3865), 
            .CK(clk), .Q(count1[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585__i19.GSR = "DISABLED";
    FD1P3IX count1_585__i20 (.D(n95_adj_647), .SP(clk_enable_40), .CD(n3865), 
            .CK(clk), .Q(count1[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585__i20.GSR = "DISABLED";
    FD1P3AX IR__i23 (.D(MBR[23]), .SP(clk_1_enable_26), .CK(clk_1), .Q(IR[23]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam IR__i23.GSR = "ENABLED";
    FD1P3IX count1_585__i21 (.D(n94_adj_648), .SP(clk_enable_40), .CD(n3865), 
            .CK(clk), .Q(count1[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585__i21.GSR = "DISABLED";
    FD1P3IX count1_585__i0 (.D(n115), .SP(clk_enable_40), .CD(n3865), 
            .CK(clk), .Q(n22)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585__i0.GSR = "DISABLED";
    FD1P3AX IR__i22 (.D(MBR[22]), .SP(clk_1_enable_26), .CK(clk_1), .Q(IR[22]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam IR__i22.GSR = "ENABLED";
    FD1P3AX IR__i21 (.D(MBR[21]), .SP(clk_1_enable_26), .CK(clk_1), .Q(IR[21]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam IR__i21.GSR = "ENABLED";
    FD1P3AX IR__i20 (.D(MBR[20]), .SP(clk_1_enable_26), .CK(clk_1), .Q(IR[20]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam IR__i20.GSR = "ENABLED";
    FD1P3AX IR__i19 (.D(MBR[19]), .SP(clk_1_enable_26), .CK(clk_1), .Q(IR[19]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam IR__i19.GSR = "ENABLED";
    FD1P3IX count1_585__i1 (.D(n114), .SP(clk_enable_40), .CD(n3865), 
            .CK(clk), .Q(n21)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585__i1.GSR = "DISABLED";
    FD1P3AX IR__i18 (.D(MBR[18]), .SP(clk_1_enable_26), .CK(clk_1), .Q(IR[18]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam IR__i18.GSR = "ENABLED";
    FD1P3AX display_i0_i1 (.D(n3337), .SP(clk_0_enable_11), .CK(clk_0), 
            .Q(display_c_0));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(183[3] 205[10])
    defparam display_i0_i1.GSR = "DISABLED";
    FD1P3AX IR__i13 (.D(MBR[13]), .SP(clk_1_enable_26), .CK(clk_1), .Q(IR[13]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam IR__i13.GSR = "ENABLED";
    FD1P3IX count1_585__i2 (.D(n113), .SP(clk_enable_40), .CD(n3865), 
            .CK(clk), .Q(n20)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585__i2.GSR = "DISABLED";
    FD1P3AX IR__i12 (.D(MBR[12]), .SP(clk_1_enable_26), .CK(clk_1), .Q(IR[12]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam IR__i12.GSR = "ENABLED";
    FD1P3AX IR__i11 (.D(MBR[11]), .SP(clk_1_enable_26), .CK(clk_1), .Q(IR[11]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam IR__i11.GSR = "ENABLED";
    FD1P3AX IR__i10 (.D(MBR[10]), .SP(clk_1_enable_26), .CK(clk_1), .Q(IR[10]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam IR__i10.GSR = "ENABLED";
    FD1P3AX IR__i9 (.D(MBR[9]), .SP(clk_1_enable_26), .CK(clk_1), .Q(IR[9]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam IR__i9.GSR = "ENABLED";
    FD1P3AX IR__i8 (.D(MBR[8]), .SP(clk_1_enable_26), .CK(clk_1), .Q(IR[8]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam IR__i8.GSR = "ENABLED";
    FD1P3AX IR__i7 (.D(MBR[7]), .SP(clk_1_enable_26), .CK(clk_1), .Q(IR[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam IR__i7.GSR = "ENABLED";
    FD1P3AX IR__i6 (.D(MBR[6]), .SP(clk_1_enable_26), .CK(clk_1), .Q(IR[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam IR__i6.GSR = "ENABLED";
    FD1P3AX IR__i5 (.D(MBR[5]), .SP(clk_1_enable_26), .CK(clk_1), .Q(IR[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam IR__i5.GSR = "ENABLED";
    FD1P3AX IR__i4 (.D(MBR[4]), .SP(clk_1_enable_26), .CK(clk_1), .Q(IR[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam IR__i4.GSR = "ENABLED";
    FD1P3AX IR__i3 (.D(MBR[3]), .SP(clk_1_enable_26), .CK(clk_1), .Q(IR[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam IR__i3.GSR = "ENABLED";
    FD1P3AX IR__i2 (.D(MBR[2]), .SP(clk_1_enable_26), .CK(clk_1), .Q(IR[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam IR__i2.GSR = "ENABLED";
    FD1P3AX IR__i1 (.D(MBR[1]), .SP(clk_1_enable_26), .CK(clk_1), .Q(IR[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam IR__i1.GSR = "ENABLED";
    FD1P3AX global_state_FSM__i10 (.D(n978), .SP(clk_1_enable_35), .CK(clk_1), 
            .Q(n977));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[4] 175[13])
    defparam global_state_FSM__i10.GSR = "ENABLED";
    FD1P3IX count1_585__i3 (.D(n112), .SP(clk_enable_40), .CD(n3865), 
            .CK(clk), .Q(n19)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585__i3.GSR = "DISABLED";
    FD1P3AX global_state_FSM__i9 (.D(n979), .SP(clk_1_enable_35), .CK(clk_1), 
            .Q(n978));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[4] 175[13])
    defparam global_state_FSM__i9.GSR = "ENABLED";
    FD1P3AX global_state_FSM__i8 (.D(n980), .SP(clk_1_enable_35), .CK(clk_1), 
            .Q(n979));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[4] 175[13])
    defparam global_state_FSM__i8.GSR = "ENABLED";
    FD1P3AX global_state_FSM__i7 (.D(n981), .SP(clk_1_enable_35), .CK(clk_1), 
            .Q(n980));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[4] 175[13])
    defparam global_state_FSM__i7.GSR = "ENABLED";
    FD1P3AX global_state_FSM__i6 (.D(n982), .SP(clk_1_enable_35), .CK(clk_1), 
            .Q(n981));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[4] 175[13])
    defparam global_state_FSM__i6.GSR = "ENABLED";
    FD1P3AX global_state_FSM__i5 (.D(n983), .SP(clk_1_enable_35), .CK(clk_1), 
            .Q(n982));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[4] 175[13])
    defparam global_state_FSM__i5.GSR = "ENABLED";
    FD1P3AX global_state_FSM__i4 (.D(n984), .SP(clk_1_enable_35), .CK(clk_1), 
            .Q(n983));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[4] 175[13])
    defparam global_state_FSM__i4.GSR = "ENABLED";
    FD1P3AX global_state_FSM__i3 (.D(n985), .SP(clk_1_enable_35), .CK(clk_1), 
            .Q(n984));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[4] 175[13])
    defparam global_state_FSM__i3.GSR = "ENABLED";
    FD1P3AX global_state_FSM__i2 (.D(n1014), .SP(clk_1_enable_35), .CK(clk_1), 
            .Q(n985));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[4] 175[13])
    defparam global_state_FSM__i2.GSR = "ENABLED";
    FD1P3AX MBR__i23 (.D(data_out_23__N_516[23]), .SP(clk_1_enable_54), 
            .CK(clk_1), .Q(MBR[23]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam MBR__i23.GSR = "ENABLED";
    FD1P3AX MBR__i22 (.D(data_out_23__N_516[22]), .SP(clk_1_enable_54), 
            .CK(clk_1), .Q(MBR[22]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam MBR__i22.GSR = "ENABLED";
    FD1P3AX MBR__i21 (.D(data_out_23__N_516[21]), .SP(clk_1_enable_54), 
            .CK(clk_1), .Q(MBR[21]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam MBR__i21.GSR = "ENABLED";
    FD1P3AX MBR__i20 (.D(data_out_23__N_516[20]), .SP(clk_1_enable_54), 
            .CK(clk_1), .Q(MBR[20]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam MBR__i20.GSR = "ENABLED";
    FD1P3AX MBR__i19 (.D(data_out_23__N_516[19]), .SP(clk_1_enable_54), 
            .CK(clk_1), .Q(MBR[19]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam MBR__i19.GSR = "ENABLED";
    FD1P3AX MBR__i18 (.D(data_out_23__N_516[18]), .SP(clk_1_enable_54), 
            .CK(clk_1), .Q(MBR[18]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam MBR__i18.GSR = "ENABLED";
    FD1P3AX MBR__i13 (.D(data_out_23__N_516[13]), .SP(clk_1_enable_54), 
            .CK(clk_1), .Q(MBR[13]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam MBR__i13.GSR = "ENABLED";
    FD1P3AX MBR__i12 (.D(data_out_23__N_516[12]), .SP(clk_1_enable_54), 
            .CK(clk_1), .Q(MBR[12]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam MBR__i12.GSR = "ENABLED";
    FD1P3AX MBR__i11 (.D(data_out_23__N_516[11]), .SP(clk_1_enable_54), 
            .CK(clk_1), .Q(MBR[11]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam MBR__i11.GSR = "ENABLED";
    FD1P3AX MBR__i10 (.D(data_out_23__N_516[10]), .SP(clk_1_enable_54), 
            .CK(clk_1), .Q(MBR[10]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam MBR__i10.GSR = "ENABLED";
    FD1P3AX MBR__i9 (.D(data_out_23__N_516[9]), .SP(clk_1_enable_54), .CK(clk_1), 
            .Q(MBR[9]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam MBR__i9.GSR = "ENABLED";
    FD1P3AX MBR__i8 (.D(data_out_23__N_516[8]), .SP(clk_1_enable_54), .CK(clk_1), 
            .Q(MBR[8]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam MBR__i8.GSR = "ENABLED";
    FD1P3AX MBR__i7 (.D(data_out_23__N_516[7]), .SP(clk_1_enable_54), .CK(clk_1), 
            .Q(MBR[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam MBR__i7.GSR = "ENABLED";
    FD1P3AX MBR__i6 (.D(data_out_23__N_516[6]), .SP(clk_1_enable_54), .CK(clk_1), 
            .Q(MBR[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam MBR__i6.GSR = "ENABLED";
    FD1P3AX MBR__i5 (.D(data_out_23__N_516[5]), .SP(clk_1_enable_54), .CK(clk_1), 
            .Q(MBR[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam MBR__i5.GSR = "ENABLED";
    FD1P3AX MBR__i4 (.D(data_out_23__N_516[4]), .SP(clk_1_enable_54), .CK(clk_1), 
            .Q(MBR[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam MBR__i4.GSR = "ENABLED";
    FD1P3AX MBR__i3 (.D(data_out_23__N_516[3]), .SP(clk_1_enable_54), .CK(clk_1), 
            .Q(MBR[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam MBR__i3.GSR = "ENABLED";
    FD1P3AX MBR__i2 (.D(data_out_23__N_516[2]), .SP(clk_1_enable_54), .CK(clk_1), 
            .Q(MBR[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam MBR__i2.GSR = "ENABLED";
    FD1P3AX MBR__i1 (.D(data_out_23__N_516[1]), .SP(clk_1_enable_54), .CK(clk_1), 
            .Q(MBR[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam MBR__i1.GSR = "ENABLED";
    FD1P3AX sel_i0_i4 (.D(temp_control[3]), .SP(clk_enable_40), .CK(clk_0), 
            .Q(sel_c_3));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(183[3] 205[10])
    defparam sel_i0_i4.GSR = "DISABLED";
    FD1P3AX sel_i0_i3 (.D(temp_control[2]), .SP(clk_enable_40), .CK(clk_0), 
            .Q(sel_c_2));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(183[3] 205[10])
    defparam sel_i0_i3.GSR = "DISABLED";
    FD1P3AX sel_i0_i2 (.D(temp_control[1]), .SP(clk_enable_40), .CK(clk_0), 
            .Q(sel_c_1));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(183[3] 205[10])
    defparam sel_i0_i2.GSR = "DISABLED";
    FD1P3AX instruction__i2 (.D(n10355), .SP(clk_1_enable_56), .CK(clk_1), 
            .Q(instruction[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam instruction__i2.GSR = "DISABLED";
    FD1P3AX instruction__i1 (.D(n10353), .SP(clk_1_enable_56), .CK(clk_1), 
            .Q(instruction[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam instruction__i1.GSR = "DISABLED";
    FD1P3AX MAR__i7 (.D(PC[7]), .SP(clk_1_enable_63), .CK(clk_1), .Q(MAR[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam MAR__i7.GSR = "ENABLED";
    FD1P3AX MAR__i6 (.D(PC[6]), .SP(clk_1_enable_63), .CK(clk_1), .Q(MAR[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam MAR__i6.GSR = "ENABLED";
    FD1P3AX MAR__i5 (.D(PC[5]), .SP(clk_1_enable_63), .CK(clk_1), .Q(MAR[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam MAR__i5.GSR = "ENABLED";
    FD1P3AX MAR__i4 (.D(PC[4]), .SP(clk_1_enable_63), .CK(clk_1), .Q(MAR[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam MAR__i4.GSR = "ENABLED";
    FD1P3AX MAR__i3 (.D(PC[3]), .SP(clk_1_enable_63), .CK(clk_1), .Q(MAR[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam MAR__i3.GSR = "ENABLED";
    FD1P3AX MAR__i2 (.D(PC[2]), .SP(clk_1_enable_63), .CK(clk_1), .Q(MAR[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam MAR__i2.GSR = "ENABLED";
    FD1P3AX MAR__i1 (.D(PC[1]), .SP(clk_1_enable_63), .CK(clk_1), .Q(MAR[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam MAR__i1.GSR = "ENABLED";
    FD1P3AX Rdisplay__i13 (.D(IR[13]), .SP(clk_1_enable_76), .CK(clk_1), 
            .Q(Q[13]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam Rdisplay__i13.GSR = "DISABLED";
    FD1P3AX Rdisplay__i12 (.D(IR[12]), .SP(clk_1_enable_76), .CK(clk_1), 
            .Q(Q[12]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam Rdisplay__i12.GSR = "DISABLED";
    FD1P3AX Rdisplay__i11 (.D(IR[11]), .SP(clk_1_enable_76), .CK(clk_1), 
            .Q(Q[11]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam Rdisplay__i11.GSR = "DISABLED";
    FD1P3AX Rdisplay__i10 (.D(IR[10]), .SP(clk_1_enable_76), .CK(clk_1), 
            .Q(Q[10]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam Rdisplay__i10.GSR = "DISABLED";
    FD1P3AX Rdisplay__i9 (.D(IR[9]), .SP(clk_1_enable_76), .CK(clk_1), 
            .Q(Q[9]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam Rdisplay__i9.GSR = "DISABLED";
    FD1P3AX Rdisplay__i8 (.D(IR[8]), .SP(clk_1_enable_76), .CK(clk_1), 
            .Q(Q[8]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam Rdisplay__i8.GSR = "DISABLED";
    FD1P3AX Rdisplay__i7 (.D(IR[7]), .SP(clk_1_enable_76), .CK(clk_1), 
            .Q(Q[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam Rdisplay__i7.GSR = "DISABLED";
    FD1P3AX Rdisplay__i6 (.D(IR[6]), .SP(clk_1_enable_76), .CK(clk_1), 
            .Q(Q[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam Rdisplay__i6.GSR = "DISABLED";
    FD1P3AX Rdisplay__i5 (.D(IR[5]), .SP(clk_1_enable_76), .CK(clk_1), 
            .Q(Q[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam Rdisplay__i5.GSR = "DISABLED";
    FD1P3AX Rdisplay__i4 (.D(IR[4]), .SP(clk_1_enable_76), .CK(clk_1), 
            .Q(Q[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam Rdisplay__i4.GSR = "DISABLED";
    FD1P3AX Rdisplay__i3 (.D(IR[3]), .SP(clk_1_enable_76), .CK(clk_1), 
            .Q(Q[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam Rdisplay__i3.GSR = "DISABLED";
    FD1P3AX Rdisplay__i2 (.D(IR[2]), .SP(clk_1_enable_76), .CK(clk_1), 
            .Q(Q[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam Rdisplay__i2.GSR = "DISABLED";
    FD1P3AX Rdisplay__i1 (.D(IR[1]), .SP(clk_1_enable_76), .CK(clk_1), 
            .Q(Q[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam Rdisplay__i1.GSR = "DISABLED";
    FD1P3IX count1_585__i4 (.D(n111), .SP(clk_enable_40), .CD(n3865), 
            .CK(clk), .Q(n18)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585__i4.GSR = "DISABLED";
    OB display_pad_2 (.I(display_c_2), .O(display[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    OB display_pad_1 (.I(display_c_1), .O(display[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    OB display_pad_0 (.I(display_c_0), .O(display[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    OB sel_pad_3 (.I(sel_c_3), .O(sel[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    OB sel_pad_2 (.I(sel_c_2), .O(sel[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    OB sel_pad_1 (.I(sel_c_1), .O(sel[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    OB sel_pad_0 (.I(sel_c_0), .O(sel[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    OBZ CI_pad_23 (.I(data_out_23__N_516[23]), .T(n3175), .O(CI[23]));   // c:/users/cassandra/desktop/arqui2/rom.vhd(64[2] 77[14])
    FD1P3IX count1_585__i5 (.D(n110), .SP(clk_enable_40), .CD(n3865), 
            .CK(clk), .Q(n17)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585__i5.GSR = "DISABLED";
    OBZ CI_pad_22 (.I(data_out_23__N_516[22]), .T(n3175), .O(CI[22]));   // c:/users/cassandra/desktop/arqui2/rom.vhd(64[2] 77[14])
    FD1P3IX count_583__i0 (.D(n95), .SP(clk_enable_40), .CD(n3888), .CK(clk), 
            .Q(n18_adj_645)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(217[14:19])
    defparam count_583__i0.GSR = "DISABLED";
    OBZ CI_pad_21 (.I(data_out_23__N_516[21]), .T(n3175), .O(CI[21]));   // c:/users/cassandra/desktop/arqui2/rom.vhd(64[2] 77[14])
    FD1P3IX count1_585__i6 (.D(n109), .SP(clk_enable_40), .CD(n3865), 
            .CK(clk), .Q(count1[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585__i6.GSR = "DISABLED";
    OBZ CI_pad_20 (.I(data_out_23__N_516[20]), .T(n3175), .O(CI[20]));   // c:/users/cassandra/desktop/arqui2/rom.vhd(64[2] 77[14])
    FD1P3IX count1_585__i7 (.D(n108), .SP(clk_enable_40), .CD(n3865), 
            .CK(clk), .Q(count1[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585__i7.GSR = "DISABLED";
    OBZ CI_pad_19 (.I(data_out_23__N_516[19]), .T(n3175), .O(CI[19]));   // c:/users/cassandra/desktop/arqui2/rom.vhd(64[2] 77[14])
    FD1P3IX count1_585__i8 (.D(n107), .SP(clk_enable_40), .CD(n3865), 
            .CK(clk), .Q(count1[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585__i8.GSR = "DISABLED";
    OBZ CI_pad_18 (.I(data_out_23__N_516[18]), .T(n3175), .O(CI[18]));   // c:/users/cassandra/desktop/arqui2/rom.vhd(64[2] 77[14])
    FD1P3IX count1_585__i9 (.D(n106), .SP(clk_enable_40), .CD(n3865), 
            .CK(clk), .Q(count1[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585__i9.GSR = "DISABLED";
    OBZ CI_pad_17 (.I(data_out_23__N_516[17]), .T(n3175), .O(CI[17]));   // c:/users/cassandra/desktop/arqui2/rom.vhd(64[2] 77[14])
    FD1P3IX count1_585__i10 (.D(n105), .SP(clk_enable_40), .CD(n3865), 
            .CK(clk), .Q(count1[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585__i10.GSR = "DISABLED";
    OBZ CI_pad_16 (.I(data_out_23__N_516[16]), .T(n3175), .O(CI[16]));   // c:/users/cassandra/desktop/arqui2/rom.vhd(64[2] 77[14])
    FD1P3IX count1_585__i11 (.D(n104), .SP(clk_enable_40), .CD(n3865), 
            .CK(clk), .Q(count1[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585__i11.GSR = "DISABLED";
    OBZ CI_pad_15 (.I(data_out_23__N_516[15]), .T(n3175), .O(CI[15]));   // c:/users/cassandra/desktop/arqui2/rom.vhd(64[2] 77[14])
    FD1P3IX count1_585__i12 (.D(n103), .SP(clk_enable_40), .CD(n3865), 
            .CK(clk), .Q(count1[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585__i12.GSR = "DISABLED";
    OBZ CI_pad_14 (.I(data_out_23__N_516[14]), .T(n3175), .O(CI[14]));   // c:/users/cassandra/desktop/arqui2/rom.vhd(64[2] 77[14])
    FD1P3IX count1_585__i13 (.D(n102), .SP(clk_enable_40), .CD(n3865), 
            .CK(clk), .Q(count1[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585__i13.GSR = "DISABLED";
    OBZ CI_pad_13 (.I(data_out_23__N_516[13]), .T(n3175), .O(CI[13]));   // c:/users/cassandra/desktop/arqui2/rom.vhd(64[2] 77[14])
    OBZ CI_pad_12 (.I(data_out_23__N_516[12]), .T(n3175), .O(CI[12]));   // c:/users/cassandra/desktop/arqui2/rom.vhd(64[2] 77[14])
    GSR GSR_INST (.GSR(clk_enable_40));
    OBZ CI_pad_11 (.I(data_out_23__N_516[11]), .T(n3175), .O(CI[11]));   // c:/users/cassandra/desktop/arqui2/rom.vhd(64[2] 77[14])
    OBZ CI_pad_10 (.I(data_out_23__N_516[10]), .T(n3175), .O(CI[10]));   // c:/users/cassandra/desktop/arqui2/rom.vhd(64[2] 77[14])
    OBZ CI_pad_9 (.I(data_out_23__N_516[9]), .T(n3175), .O(CI[9]));   // c:/users/cassandra/desktop/arqui2/rom.vhd(64[2] 77[14])
    OBZ CI_pad_8 (.I(data_out_23__N_516[8]), .T(n3175), .O(CI[8]));   // c:/users/cassandra/desktop/arqui2/rom.vhd(64[2] 77[14])
    OBZ CI_pad_7 (.I(data_out_23__N_516[7]), .T(n3175), .O(CI[7]));   // c:/users/cassandra/desktop/arqui2/rom.vhd(64[2] 77[14])
    OBZ CI_pad_6 (.I(data_out_23__N_516[6]), .T(n3175), .O(CI[6]));   // c:/users/cassandra/desktop/arqui2/rom.vhd(64[2] 77[14])
    OBZ CI_pad_5 (.I(data_out_23__N_516[5]), .T(n3175), .O(CI[5]));   // c:/users/cassandra/desktop/arqui2/rom.vhd(64[2] 77[14])
    OBZ CI_pad_4 (.I(data_out_23__N_516[4]), .T(n3175), .O(CI[4]));   // c:/users/cassandra/desktop/arqui2/rom.vhd(64[2] 77[14])
    OBZ CI_pad_3 (.I(data_out_23__N_516[3]), .T(n3175), .O(CI[3]));   // c:/users/cassandra/desktop/arqui2/rom.vhd(64[2] 77[14])
    OBZ CI_pad_2 (.I(data_out_23__N_516[2]), .T(n3175), .O(CI[2]));   // c:/users/cassandra/desktop/arqui2/rom.vhd(64[2] 77[14])
    OBZ CI_pad_1 (.I(data_out_23__N_516[1]), .T(n3175), .O(CI[1]));   // c:/users/cassandra/desktop/arqui2/rom.vhd(64[2] 77[14])
    OBZ CI_pad_0 (.I(data_out_23__N_516[0]), .T(n3175), .O(CI[0]));   // c:/users/cassandra/desktop/arqui2/rom.vhd(64[2] 77[14])
    IB reset_pad (.I(reset), .O(reset_c));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    IB stop_run_pad (.I(stop_run), .O(stop_run_c));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(13[2:10])
    FD1P3AX PC_586__i1 (.D(n44), .SP(clk_1_enable_83), .CK(clk_1), .Q(PC[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam PC_586__i1.GSR = "ENABLED";
    FD1P3AX PC_586__i2 (.D(n43), .SP(clk_1_enable_83), .CK(clk_1), .Q(PC[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam PC_586__i2.GSR = "ENABLED";
    FD1P3AX PC_586__i3 (.D(n42), .SP(clk_1_enable_83), .CK(clk_1), .Q(PC[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam PC_586__i3.GSR = "ENABLED";
    FD1P3AX PC_586__i4 (.D(n41), .SP(clk_1_enable_83), .CK(clk_1), .Q(PC[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam PC_586__i4.GSR = "ENABLED";
    FD1P3AX PC_586__i5 (.D(n40), .SP(clk_1_enable_83), .CK(clk_1), .Q(PC[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam PC_586__i5.GSR = "ENABLED";
    FD1P3AX PC_586__i6 (.D(n39), .SP(clk_1_enable_83), .CK(clk_1), .Q(PC[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam PC_586__i6.GSR = "ENABLED";
    FD1P3AX PC_586__i7 (.D(n38), .SP(clk_1_enable_83), .CK(clk_1), .Q(PC[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam PC_586__i7.GSR = "ENABLED";
    FD1P3AX display_i0_i2 (.D(n3524), .SP(clk_0_enable_11), .CK(clk_0), 
            .Q(display_c_1));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(183[3] 205[10])
    defparam display_i0_i2.GSR = "DISABLED";
    FD1P3IX count_583__i17 (.D(n78), .SP(clk_enable_40), .CD(n3888), .CK(clk), 
            .Q(count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(217[14:19])
    defparam count_583__i17.GSR = "DISABLED";
    FD1P3IX count_583__i16 (.D(n79), .SP(clk_enable_40), .CD(n3888), .CK(clk), 
            .Q(count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(217[14:19])
    defparam count_583__i16.GSR = "DISABLED";
    FD1P3AX display_i0_i3 (.D(n3526), .SP(clk_0_enable_11), .CK(clk_0), 
            .Q(display_c_2));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(183[3] 205[10])
    defparam display_i0_i3.GSR = "DISABLED";
    FD1P3AX display_i0_i4 (.D(n3528), .SP(clk_0_enable_11), .CK(clk_0), 
            .Q(display_c_3));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(183[3] 205[10])
    defparam display_i0_i4.GSR = "DISABLED";
    FD1P3AX display_i0_i5 (.D(n3530), .SP(clk_0_enable_11), .CK(clk_0), 
            .Q(display_c_4));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(183[3] 205[10])
    defparam display_i0_i5.GSR = "DISABLED";
    FD1P3AX display_i0_i6 (.D(n3532), .SP(clk_0_enable_11), .CK(clk_0), 
            .Q(display_c_5));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(183[3] 205[10])
    defparam display_i0_i6.GSR = "DISABLED";
    FD1P3AX display_i0_i7 (.D(n3534), .SP(clk_0_enable_11), .CK(clk_0), 
            .Q(display_c_6));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(183[3] 205[10])
    defparam display_i0_i7.GSR = "DISABLED";
    FD1P3IX count_583__i15 (.D(n80), .SP(clk_enable_40), .CD(n3888), .CK(clk), 
            .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(217[14:19])
    defparam count_583__i15.GSR = "DISABLED";
    CCU2D count_583_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9765), .COUT(n9766), .S0(n88), .S1(n87));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(217[14:19])
    defparam count_583_add_4_9.INIT0 = 16'hfaaa;
    defparam count_583_add_4_9.INIT1 = 16'hfaaa;
    defparam count_583_add_4_9.INJECT1_0 = "NO";
    defparam count_583_add_4_9.INJECT1_1 = "NO";
    CCU2D count1_585_add_4_23 (.A0(count1[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9757), .S0(n94_adj_648));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585_add_4_23.INIT0 = 16'hfaaa;
    defparam count1_585_add_4_23.INIT1 = 16'h0000;
    defparam count1_585_add_4_23.INJECT1_0 = "NO";
    defparam count1_585_add_4_23.INJECT1_1 = "NO";
    CCU2D count1_585_add_4_21 (.A0(count1[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count1[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9756), .COUT(n9757), .S0(n96), .S1(n95_adj_647));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585_add_4_21.INIT0 = 16'hfaaa;
    defparam count1_585_add_4_21.INIT1 = 16'hfaaa;
    defparam count1_585_add_4_21.INJECT1_0 = "NO";
    defparam count1_585_add_4_21.INJECT1_1 = "NO";
    CCU2D count_583_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9764), .COUT(n9765), .S0(n90), .S1(n89));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(217[14:19])
    defparam count_583_add_4_7.INIT0 = 16'hfaaa;
    defparam count_583_add_4_7.INIT1 = 16'hfaaa;
    defparam count_583_add_4_7.INJECT1_0 = "NO";
    defparam count_583_add_4_7.INJECT1_1 = "NO";
    CCU2D count1_585_add_4_19 (.A0(count1[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count1[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9755), .COUT(n9756), .S0(n98), .S1(n97));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585_add_4_19.INIT0 = 16'hfaaa;
    defparam count1_585_add_4_19.INIT1 = 16'hfaaa;
    defparam count1_585_add_4_19.INJECT1_0 = "NO";
    defparam count1_585_add_4_19.INJECT1_1 = "NO";
    CCU2D count_583_add_4_5 (.A0(n15), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n14), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9763), 
          .COUT(n9764), .S0(n92), .S1(n91));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(217[14:19])
    defparam count_583_add_4_5.INIT0 = 16'hfaaa;
    defparam count_583_add_4_5.INIT1 = 16'hfaaa;
    defparam count_583_add_4_5.INJECT1_0 = "NO";
    defparam count_583_add_4_5.INJECT1_1 = "NO";
    CCU2D count1_585_add_4_17 (.A0(count1[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count1[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9754), .COUT(n9755), .S0(n100), .S1(n99));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585_add_4_17.INIT0 = 16'hfaaa;
    defparam count1_585_add_4_17.INIT1 = 16'hfaaa;
    defparam count1_585_add_4_17.INJECT1_0 = "NO";
    defparam count1_585_add_4_17.INJECT1_1 = "NO";
    CCU2D count_583_add_4_3 (.A0(n17_adj_646), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n16), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9762), .COUT(n9763), .S0(n94), .S1(n93));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(217[14:19])
    defparam count_583_add_4_3.INIT0 = 16'hfaaa;
    defparam count_583_add_4_3.INIT1 = 16'hfaaa;
    defparam count_583_add_4_3.INJECT1_0 = "NO";
    defparam count_583_add_4_3.INJECT1_1 = "NO";
    LUT4 i8509_2_lut (.A(n1337), .B(reset_c), .Z(clk_0_enable_11)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(183[3] 205[10])
    defparam i8509_2_lut.init = 16'h1111;
    LUT4 reduce_or_146_i1_2_lut (.A(n977), .B(n986), .Z(n1014)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[4] 175[13])
    defparam reduce_or_146_i1_2_lut.init = 16'heeee;
    CCU2D count1_585_add_4_15 (.A0(count1[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count1[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9753), .COUT(n9754), .S0(n102), .S1(n101));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585_add_4_15.INIT0 = 16'hfaaa;
    defparam count1_585_add_4_15.INIT1 = 16'hfaaa;
    defparam count1_585_add_4_15.INJECT1_0 = "NO";
    defparam count1_585_add_4_15.INJECT1_1 = "NO";
    CCU2D count1_585_add_4_3 (.A0(n21), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n20), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9747), 
          .COUT(n9748), .S0(n114), .S1(n113));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585_add_4_3.INIT0 = 16'hfaaa;
    defparam count1_585_add_4_3.INIT1 = 16'hfaaa;
    defparam count1_585_add_4_3.INJECT1_0 = "NO";
    defparam count1_585_add_4_3.INJECT1_1 = "NO";
    LUT4 n10126_bdd_4_lut_8561 (.A(IR[18]), .B(IR[19]), .C(IR[21]), .D(IR[20]), 
         .Z(n10352)) /* synthesis lut_function=(!((B (C+!(D))+!B ((D)+!C))+!A)) */ ;
    defparam n10126_bdd_4_lut_8561.init = 16'h0820;
    CCU2D count_583_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n18_adj_645), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n9762), .S1(n95));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(217[14:19])
    defparam count_583_add_4_1.INIT0 = 16'hF000;
    defparam count_583_add_4_1.INIT1 = 16'h0555;
    defparam count_583_add_4_1.INJECT1_0 = "NO";
    defparam count_583_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(stop_run_c), .B(n985), .Z(clk_1_enable_63)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(13[2:10])
    defparam i1_2_lut.init = 16'h4444;
    LUT4 n10126_bdd_4_lut (.A(IR[19]), .B(IR[20]), .C(IR[21]), .D(IR[18]), 
         .Z(n10354)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A (B+!(C+(D)))) */ ;
    defparam n10126_bdd_4_lut.init = 16'he6ef;
    LUT4 bcd_out_15__N_507_bdd_4_lut_4_lut_then_3_lut (.A(reset_c), .B(Q[1]), 
         .C(bcd_out_15__N_499), .Z(n10506)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam bcd_out_15__N_507_bdd_4_lut_4_lut_then_3_lut.init = 16'hefef;
    LUT4 bcd_out_15__N_507_bdd_4_lut_4_lut_else_3_lut (.A(reset_c), .B(Q[1]), 
         .C(bcd_out_15__N_499), .D(bcd_out_15__N_495), .Z(n10505)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam bcd_out_15__N_507_bdd_4_lut_4_lut_else_3_lut.init = 16'hfffb;
    LUT4 mux_1621_i3_then_4_lut (.A(n2069), .B(n2123), .C(bcd_out_15__N_327), 
         .D(n10436), .Z(n10513)) /* synthesis lut_function=(A (B (C (D))+!B !(C))+!A !(B+(C))) */ ;
    defparam mux_1621_i3_then_4_lut.init = 16'h8303;
    LUT4 mux_1621_i3_else_4_lut (.A(n2119), .B(n2069), .C(bcd_out_15__N_327), 
         .D(n10436), .Z(n10512)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam mux_1621_i3_else_4_lut.init = 16'h8880;
    LUT4 mux_1623_i3_then_4_lut (.A(n2097), .B(Q[13]), .C(Q[11]), .D(Q[10]), 
         .Z(n10519)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))) */ ;
    defparam mux_1623_i3_then_4_lut.init = 16'ha220;
    LUT4 i1664_3_lut (.A(de[0]), .B(un[0]), .C(temp_control[3]), .Z(n3336)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(186[4] 203[13])
    defparam i1664_3_lut.init = 16'hcaca;
    LUT4 mux_519_i1_3_lut (.A(mi[0]), .B(ce[0]), .C(temp_control[1]), 
         .Z(n1987)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(186[4] 203[13])
    defparam mux_519_i1_3_lut.init = 16'hcaca;
    LUT4 i1843_3_lut (.A(de[6]), .B(un[6]), .C(temp_control[3]), .Z(n3533)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(186[4] 203[13])
    defparam i1843_3_lut.init = 16'hcaca;
    LUT4 mux_519_i7_3_lut (.A(mi[6]), .B(ce[6]), .C(temp_control[1]), 
         .Z(n1981)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(186[4] 203[13])
    defparam mux_519_i7_3_lut.init = 16'hcaca;
    LUT4 i1841_3_lut (.A(de[5]), .B(un[5]), .C(temp_control[3]), .Z(n3531)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(186[4] 203[13])
    defparam i1841_3_lut.init = 16'hcaca;
    LUT4 mux_519_i6_3_lut (.A(mi[5]), .B(ce[5]), .C(temp_control[1]), 
         .Z(n1982)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(186[4] 203[13])
    defparam mux_519_i6_3_lut.init = 16'hcaca;
    LUT4 i1839_3_lut (.A(de[4]), .B(un[4]), .C(temp_control[3]), .Z(n3529)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(186[4] 203[13])
    defparam i1839_3_lut.init = 16'hcaca;
    LUT4 i1837_3_lut (.A(de[3]), .B(un[3]), .C(temp_control[3]), .Z(n3527)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(186[4] 203[13])
    defparam i1837_3_lut.init = 16'hcaca;
    LUT4 mux_519_i4_3_lut (.A(mi[3]), .B(ce[3]), .C(temp_control[1]), 
         .Z(n1984)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(186[4] 203[13])
    defparam mux_519_i4_3_lut.init = 16'hcaca;
    LUT4 i1835_3_lut (.A(de[2]), .B(un[2]), .C(temp_control[3]), .Z(n3525)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(186[4] 203[13])
    defparam i1835_3_lut.init = 16'hcaca;
    LUT4 mux_519_i3_3_lut (.A(mi[2]), .B(ce[2]), .C(temp_control[1]), 
         .Z(n1985)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(186[4] 203[13])
    defparam mux_519_i3_3_lut.init = 16'hcaca;
    LUT4 i1833_3_lut (.A(de[1]), .B(un[1]), .C(temp_control[3]), .Z(n3523)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(186[4] 203[13])
    defparam i1833_3_lut.init = 16'hcaca;
    LUT4 mux_519_i2_3_lut (.A(mi[1]), .B(ce[1]), .C(temp_control[1]), 
         .Z(n1986)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(186[4] 203[13])
    defparam mux_519_i2_3_lut.init = 16'hcaca;
    PFUMX i8527 (.BLUT(n10302), .ALUT(n10301), .C0(n2097), .Z(bcd_out_15__N_299));
    LUT4 bcd_out_15__N_284_3__bdd_4_lut (.A(n10477), .B(bcd_out_15__N_289), 
         .C(bcd_out_15__N_298), .D(n10475), .Z(n10295)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A (B (C+(D))+!B !(C+(D))))) */ ;
    defparam bcd_out_15__N_284_3__bdd_4_lut.init = 16'h399c;
    LUT4 i2_4_lut (.A(n23), .B(bcd_out_15__N_298), .C(n10475), .D(n10477), 
         .Z(bcd_out_15__N_332)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2_4_lut.init = 16'h36c9;
    bcdDisplay_U0 millar (.mi({mi}), .clk_0(clk_0), .n3666(n3666), .n10158(n10158), 
            .n10359(n10359), .n10274(n10274), .n3415(n3415), .n3349(n3349), 
            .n10357(n10357), .n10312(n10312), .\DISPLAY_6__N_509[6] (DISPLAY_6__N_509_adj_661[6]), 
            .n10314(n10314), .n10313(n10313), .n2081(n2081), .n10361(n10361), 
            .reset_c(reset_c), .n10385(n10385), .n10384(n10384));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(111[9:19])
    CCU2D PC_586_add_4_9 (.A0(n978), .B0(PC[7]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9761), 
          .S0(n38));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam PC_586_add_4_9.INIT0 = 16'h5666;
    defparam PC_586_add_4_9.INIT1 = 16'h0000;
    defparam PC_586_add_4_9.INJECT1_0 = "NO";
    defparam PC_586_add_4_9.INJECT1_1 = "NO";
    CCU2D count1_585_add_4_13 (.A0(count1[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count1[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9752), .COUT(n9753), .S0(n104), .S1(n103));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585_add_4_13.INIT0 = 16'hfaaa;
    defparam count1_585_add_4_13.INIT1 = 16'hfaaa;
    defparam count1_585_add_4_13.INJECT1_0 = "NO";
    defparam count1_585_add_4_13.INJECT1_1 = "NO";
    CCU2D count1_585_add_4_11 (.A0(count1[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count1[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9751), .COUT(n9752), .S0(n106), .S1(n105));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585_add_4_11.INIT0 = 16'hfaaa;
    defparam count1_585_add_4_11.INIT1 = 16'hfaaa;
    defparam count1_585_add_4_11.INJECT1_0 = "NO";
    defparam count1_585_add_4_11.INJECT1_1 = "NO";
    CCU2D PC_586_add_4_7 (.A0(n978), .B0(PC[5]), .C0(GND_net), .D0(GND_net), 
          .A1(n978), .B1(PC[6]), .C1(GND_net), .D1(GND_net), .CIN(n9760), 
          .COUT(n9761), .S0(n40), .S1(n39));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam PC_586_add_4_7.INIT0 = 16'h5666;
    defparam PC_586_add_4_7.INIT1 = 16'h5666;
    defparam PC_586_add_4_7.INJECT1_0 = "NO";
    defparam PC_586_add_4_7.INJECT1_1 = "NO";
    CCU2D count1_585_add_4_9 (.A0(count1[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count1[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9750), .COUT(n9751), .S0(n108), .S1(n107));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585_add_4_9.INIT0 = 16'hfaaa;
    defparam count1_585_add_4_9.INIT1 = 16'hfaaa;
    defparam count1_585_add_4_9.INJECT1_0 = "NO";
    defparam count1_585_add_4_9.INJECT1_1 = "NO";
    CCU2D count1_585_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n22), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n9747), .S1(n115));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585_add_4_1.INIT0 = 16'hF000;
    defparam count1_585_add_4_1.INIT1 = 16'h0555;
    defparam count1_585_add_4_1.INJECT1_0 = "NO";
    defparam count1_585_add_4_1.INJECT1_1 = "NO";
    LUT4 n10126_bdd_4_lut_8560 (.A(IR[21]), .B(IR[18]), .C(IR[19]), .D(IR[20]), 
         .Z(n10308)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B (C))) */ ;
    defparam n10126_bdd_4_lut_8560.init = 16'hbfbd;
    CCU2D PC_586_add_4_5 (.A0(n978), .B0(PC[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n978), .B1(PC[4]), .C1(GND_net), .D1(GND_net), .CIN(n9759), 
          .COUT(n9760), .S0(n42), .S1(n41));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam PC_586_add_4_5.INIT0 = 16'h5666;
    defparam PC_586_add_4_5.INIT1 = 16'h5666;
    defparam PC_586_add_4_5.INJECT1_0 = "NO";
    defparam PC_586_add_4_5.INJECT1_1 = "NO";
    CCU2D count1_585_add_4_7 (.A0(n17), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count1[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9749), .COUT(n9750), .S0(n110), .S1(n109));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585_add_4_7.INIT0 = 16'hfaaa;
    defparam count1_585_add_4_7.INIT1 = 16'hfaaa;
    defparam count1_585_add_4_7.INJECT1_0 = "NO";
    defparam count1_585_add_4_7.INJECT1_1 = "NO";
    LUT4 i4_4_lut (.A(instruction[2]), .B(instruction[0]), .C(n978), .D(n6), 
         .Z(clk_1_enable_76)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i4_4_lut.init = 16'h4000;
    CCU2D PC_586_add_4_3 (.A0(n978), .B0(PC[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n978), .B1(PC[2]), .C1(GND_net), .D1(GND_net), .CIN(n9758), 
          .COUT(n9759), .S0(n44), .S1(n43));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam PC_586_add_4_3.INIT0 = 16'h5666;
    defparam PC_586_add_4_3.INIT1 = 16'h5666;
    defparam PC_586_add_4_3.INJECT1_0 = "NO";
    defparam PC_586_add_4_3.INJECT1_1 = "NO";
    CCU2D count1_585_add_4_5 (.A0(n19), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n18), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9748), 
          .COUT(n9749), .S0(n112), .S1(n111));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(224[15:21])
    defparam count1_585_add_4_5.INIT0 = 16'hfaaa;
    defparam count1_585_add_4_5.INIT1 = 16'hfaaa;
    defparam count1_585_add_4_5.INJECT1_0 = "NO";
    defparam count1_585_add_4_5.INJECT1_1 = "NO";
    PFUMX i8523 (.BLUT(n10295), .ALUT(n10294), .C0(n23), .Z(bcd_out_15__N_328));
    bcdDisplay_U2 centenas (.ce({ce}), .clk_0(clk_0), .n3618(n3618), .n10160(n10160), 
            .n10365(n10365), .n10269(n10269), .n3444(n3444), .n3347(n3347), 
            .n10356(n10356), .n10321(n10321), .\DISPLAY_6__N_509[6] (DISPLAY_6__N_509_adj_657[6]), 
            .n10323(n10323), .n10322(n10322), .n10376(n10376), .n10369(n10369), 
            .reset_c(reset_c), .n10395(n10395), .bcd_out_15__N_446(bcd_out_15__N_446));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(110[11:21])
    LUT4 i1_2_lut_adj_54 (.A(stop_run_c), .B(n983), .Z(clk_1_enable_54)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(13[2:10])
    defparam i1_2_lut_adj_54.init = 16'h4444;
    LUT4 i2_4_lut_adj_55 (.A(bcd_out_15__N_327), .B(n10447), .C(n2069), 
         .D(n10436), .Z(bcd_out_15__N_378)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A !(B ((D)+!C)+!B !((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2_4_lut_adj_55.init = 16'h6696;
    CCU2D PC_586_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n978), .B1(n982), .C1(PC[0]), .D1(GND_net), .COUT(n9758), 
          .S1(n45));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[3] 176[10])
    defparam PC_586_add_4_1.INIT0 = 16'hF000;
    defparam PC_586_add_4_1.INIT1 = 16'h1e1e;
    defparam PC_586_add_4_1.INJECT1_0 = "NO";
    defparam PC_586_add_4_1.INJECT1_1 = "NO";
    LUT4 i269_1_lut_rep_208 (.A(reset_c), .Z(clk_enable_40)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i269_1_lut_rep_208.init = 16'h5555;
    LUT4 n1434_bdd_4_lut_8544_4_lut (.A(reset_c), .B(n10369), .C(n10371), 
         .D(n10367), .Z(n10321)) /* synthesis lut_function=(A+!(B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam n1434_bdd_4_lut_8544_4_lut.init = 16'habbf;
    LUT4 i5539_2_lut_rep_77_4_lut_4_lut (.A(reset_c), .B(n10375), .C(n2081), 
         .D(bcd_out_15__N_280), .Z(n10357)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5539_2_lut_rep_77_4_lut_4_lut.init = 16'h1540;
    LUT4 i5535_2_lut_rep_76_3_lut_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_442), 
         .C(n10386), .D(n10387), .Z(n10356)) /* synthesis lut_function=(!(A+(B (D)+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5535_2_lut_rep_76_3_lut_4_lut_4_lut_4_lut.init = 16'h1044;
    LUT4 i5536_2_lut_rep_79_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_442), 
         .C(n10386), .D(n10387), .Z(n10359)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5536_2_lut_rep_79_4_lut_4_lut_4_lut.init = 16'h1450;
    LUT4 i8428_2_lut_2_lut_3_lut_4_lut_3_lut (.A(reset_c), .B(n10369), .C(n10368), 
         .Z(n10160)) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8428_2_lut_2_lut_3_lut_4_lut_3_lut.init = 16'hebeb;
    LUT4 i5532_2_lut_rep_85_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_475), 
         .C(n10396), .D(n10397), .Z(n10365)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5532_2_lut_rep_85_4_lut_4_lut_4_lut.init = 16'h1450;
    LUT4 i8498_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n10373), .C(n10389), 
         .D(bcd_out_15__N_475), .Z(n3334)) /* synthesis lut_function=(A (B)+!A (B+!(C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8498_2_lut_3_lut_4_lut_4_lut.init = 16'hcddc;
    LUT4 i8426_2_lut_2_lut_3_lut_4_lut_3_lut (.A(reset_c), .B(n10364), .C(n10361), 
         .Z(n10158)) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8426_2_lut_2_lut_3_lut_4_lut_3_lut.init = 16'hebeb;
    LUT4 i8501_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n10367), .C(n10377), 
         .D(bcd_out_15__N_442), .Z(n3444)) /* synthesis lut_function=(A (B)+!A (B+!(C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8501_2_lut_3_lut_4_lut_4_lut.init = 16'hcddc;
    LUT4 i5531_2_lut_rep_80_3_lut_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_475), 
         .C(n10396), .D(n10397), .Z(n10360)) /* synthesis lut_function=(!(A+(B (D)+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5531_2_lut_rep_80_3_lut_4_lut_4_lut_4_lut.init = 16'h1044;
    LUT4 i5528_2_lut_rep_101_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_499), 
         .C(bcd_out_15__N_495), .D(n10405), .Z(n10381)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5528_2_lut_rep_101_4_lut_4_lut_4_lut.init = 16'h1450;
    LUT4 i8504_2_lut_3_lut_4_lut_3_lut (.A(reset_c), .B(n10362), .C(n10364), 
         .Z(n3415)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8504_2_lut_3_lut_4_lut_3_lut.init = 16'hefef;
    LUT4 i8490_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n10383), .C(n10400), 
         .D(bcd_out_15__N_499), .Z(n3357)) /* synthesis lut_function=(A (B)+!A (B+!(C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8490_2_lut_3_lut_4_lut_4_lut.init = 16'hcddc;
    LUT4 i5592_3_lut_4_lut_4_lut (.A(reset_c), .B(n10371), .C(n10377), 
         .D(bcd_out_15__N_442), .Z(n3618)) /* synthesis lut_function=(!(A+!(B+!(C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5592_3_lut_4_lut_4_lut.init = 16'h4554;
    LUT4 i5426_3_lut_4_lut_4_lut (.A(reset_c), .B(n10362), .C(n2081), 
         .D(n10384), .Z(n3666)) /* synthesis lut_function=(!(A+!(B+!(C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5426_3_lut_4_lut_4_lut.init = 16'h4554;
    LUT4 bcd_out_15__N_437_bdd_4_lut_8531_4_lut (.A(reset_c), .B(n10363), 
         .C(n10364), .D(n10361), .Z(n10313)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam bcd_out_15__N_437_bdd_4_lut_8531_4_lut.init = 16'h0203;
    LUT4 i5525_2_lut_3_lut_3_lut (.A(reset_c), .B(n10406), .C(Q[1]), .Z(Qbcd[1])) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5525_2_lut_3_lut_3_lut.init = 16'h1414;
    LUT4 i5485_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(Q[1]), .C(n10406), 
         .D(Q[0]), .Z(n7201)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5485_2_lut_3_lut_4_lut_4_lut.init = 16'h1400;
    LUT4 i8432_2_lut_2_lut_3_lut_4_lut_3_lut (.A(reset_c), .B(n10398), .C(Q[0]), 
         .Z(n10164)) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8432_2_lut_2_lut_3_lut_4_lut_3_lut.init = 16'hebeb;
    LUT4 Qbcd_11__bdd_4_lut_8538_4_lut (.A(reset_c), .B(n10371), .C(n10368), 
         .D(n10369), .Z(n10322)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam Qbcd_11__bdd_4_lut_8538_4_lut.init = 16'h0203;
    LUT4 Qbcd_11__bdd_4_lut_4_lut (.A(reset_c), .B(n10371), .C(n10367), 
         .D(n10369), .Z(n10323)) /* synthesis lut_function=(A (C)+!A !(B (D)+!B ((D)+!C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam Qbcd_11__bdd_4_lut_4_lut.init = 16'ha0f4;
    LUT4 i5603_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n10369), .C(n10376), 
         .D(bcd_out_15__N_446), .Z(n7319)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5603_2_lut_3_lut_4_lut_4_lut.init = 16'h0440;
    LUT4 i5527_2_lut_rep_94_3_lut_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_499), 
         .C(bcd_out_15__N_495), .D(n10405), .Z(n10374)) /* synthesis lut_function=(!(A+(B (D)+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5527_2_lut_rep_94_3_lut_4_lut_4_lut_4_lut.init = 16'h1044;
    LUT4 n1434_bdd_4_lut_8551_4_lut (.A(reset_c), .B(n10390), .C(n10380), 
         .D(n10373), .Z(n10330)) /* synthesis lut_function=(A+!(B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam n1434_bdd_4_lut_8551_4_lut.init = 16'habbf;
    LUT4 Qbcd_7__bdd_4_lut_8545_4_lut (.A(reset_c), .B(n10380), .C(n10378), 
         .D(n10390), .Z(n10331)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam Qbcd_7__bdd_4_lut_8545_4_lut.init = 16'h0203;
    LUT4 Qbcd_7__bdd_4_lut_4_lut (.A(reset_c), .B(n10380), .C(n10373), 
         .D(n10390), .Z(n10332)) /* synthesis lut_function=(A (C)+!A !(B (D)+!B ((D)+!C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam Qbcd_7__bdd_4_lut_4_lut.init = 16'ha0f4;
    LUT4 i5529_2_lut_3_lut_3_lut (.A(reset_c), .B(n10388), .C(bcd_out_15__N_479), 
         .Z(Qbcd[5])) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5529_2_lut_3_lut_3_lut.init = 16'h1414;
    LUT4 n1434_bdd_4_lut_4_lut (.A(reset_c), .B(Q[0]), .C(n10392), .D(n10383), 
         .Z(n10341)) /* synthesis lut_function=(A+!(B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam n1434_bdd_4_lut_4_lut.init = 16'habbf;
    LUT4 Qbcd_3__bdd_4_lut_8552_4_lut (.A(reset_c), .B(n10392), .C(n10398), 
         .D(Q[0]), .Z(n10342)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam Qbcd_3__bdd_4_lut_8552_4_lut.init = 16'h0203;
    LUT4 Qbcd_3__bdd_4_lut_4_lut (.A(reset_c), .B(n10392), .C(n10383), 
         .D(Q[0]), .Z(n10343)) /* synthesis lut_function=(A (C)+!A !(B (D)+!B ((D)+!C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam Qbcd_3__bdd_4_lut_4_lut.init = 16'ha0f4;
    LUT4 bcd_out_15__N_435_bdd_4_lut_4_lut (.A(reset_c), .B(n10362), .C(n10358), 
         .D(n10363), .Z(n10274)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam bcd_out_15__N_435_bdd_4_lut_4_lut.init = 16'hefff;
    LUT4 bcd_out_15__N_468_bdd_4_lut_4_lut (.A(reset_c), .B(n10366), .C(n10367), 
         .D(n10371), .Z(n10269)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam bcd_out_15__N_468_bdd_4_lut_4_lut.init = 16'hefff;
    LUT4 bcd_out_15__N_492_bdd_4_lut_4_lut (.A(reset_c), .B(n10372), .C(n10373), 
         .D(n10380), .Z(n10263)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam bcd_out_15__N_492_bdd_4_lut_4_lut.init = 16'hefff;
    LUT4 i8430_2_lut_2_lut_3_lut_4_lut_3_lut (.A(reset_c), .B(n10378), .C(n10390), 
         .Z(n10162)) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i8430_2_lut_2_lut_3_lut_4_lut_3_lut.init = 16'hebeb;
    LUT4 n1434_bdd_4_lut_8537_4_lut (.A(reset_c), .B(n10361), .C(n10363), 
         .D(n10358), .Z(n10312)) /* synthesis lut_function=(A+!(B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam n1434_bdd_4_lut_8537_4_lut.init = 16'habbf;
    LUT4 bcd_out_15__N_437_bdd_4_lut_4_lut (.A(reset_c), .B(n10363), .C(n10358), 
         .D(n10361), .Z(n10314)) /* synthesis lut_function=(A (C)+!A !(B (D)+!B ((D)+!C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam bcd_out_15__N_437_bdd_4_lut_4_lut.init = 16'ha0f4;
    LUT4 i5607_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n10361), .C(n2081), 
         .D(n10384), .Z(n7323)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5607_2_lut_3_lut_4_lut_4_lut.init = 16'h0440;
    LUT4 i5593_3_lut_4_lut_4_lut (.A(reset_c), .B(n10380), .C(n10389), 
         .D(bcd_out_15__N_475), .Z(n3625)) /* synthesis lut_function=(!(A+!(B+!(C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5593_3_lut_4_lut_4_lut.init = 16'h4554;
    LUT4 i5533_2_lut_3_lut_3_lut (.A(reset_c), .B(n10376), .C(bcd_out_15__N_446), 
         .Z(Qbcd[9])) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5533_2_lut_3_lut_3_lut.init = 16'h1414;
    LUT4 i5601_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_479), 
         .C(n10388), .D(n10390), .Z(n7317)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5601_2_lut_3_lut_4_lut_4_lut.init = 16'h1400;
    LUT4 i5599_3_lut_4_lut_4_lut (.A(reset_c), .B(n10392), .C(n10400), 
         .D(bcd_out_15__N_499), .Z(n3648)) /* synthesis lut_function=(!(A+!(B+!(C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5599_3_lut_4_lut_4_lut.init = 16'h4554;
    LUT4 i5439_2_lut_rep_206_2_lut (.A(reset_c), .B(Q[0]), .Z(n10486)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5439_2_lut_rep_206_2_lut.init = 16'h4444;
    LUT4 i5537_2_lut_3_lut_3_lut (.A(reset_c), .B(n2081), .C(n10384), 
         .Z(Qbcd[13])) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5537_2_lut_3_lut_3_lut.init = 16'h1414;
    LUT4 stop_run_I_0_1_lut_rep_209 (.A(stop_run_c), .Z(clk_1_enable_35)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(126[33:45])
    defparam stop_run_I_0_1_lut_rep_209.init = 16'h5555;
    LUT4 i1_2_lut_2_lut (.A(stop_run_c), .B(n982), .Z(clk_1_enable_26)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(126[33:45])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_4_lut (.A(stop_run_c), .B(n10138), .C(instruction[2]), 
         .D(n978), .Z(clk_1_enable_83)) /* synthesis lut_function=(!(A+(B (D)+!B !(C+!(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(126[33:45])
    defparam i1_4_lut_4_lut.init = 16'h1055;
    LUT4 n915_bdd_2_lut_3_lut (.A(IR[22]), .B(IR[23]), .C(n10352), .Z(n10353)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam n915_bdd_2_lut_3_lut.init = 16'h2020;
    LUT4 n916_bdd_2_lut_3_lut (.A(IR[22]), .B(IR[23]), .C(n10354), .Z(n10355)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam n916_bdd_2_lut_3_lut.init = 16'hfdfd;
    LUT4 n916_bdd_2_lut_8562_3_lut (.A(IR[22]), .B(IR[23]), .C(n10308), 
         .Z(n10309)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam n916_bdd_2_lut_8562_3_lut.init = 16'hfdfd;
    LUT4 i1_2_lut_3_lut (.A(stop_run_c), .B(reset_c), .C(instruction[1]), 
         .Z(n6)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_56 (.A(stop_run_c), .B(reset_c), .C(n980), 
         .Z(clk_1_enable_56)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_56.init = 16'h1010;
    LUT4 mux_519_i5_3_lut (.A(mi[4]), .B(ce[4]), .C(temp_control[1]), 
         .Z(n1983)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(186[4] 203[13])
    defparam mux_519_i5_3_lut.init = 16'hcaca;
    PFUMX i1834 (.BLUT(n1986), .ALUT(n3523), .C0(n10145), .Z(n3524));
    PFUMX i1836 (.BLUT(n1985), .ALUT(n3525), .C0(n10145), .Z(n3526));
    LUT4 i8492_2_lut (.A(reset_c), .B(n7374), .Z(n3888)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i8492_2_lut.init = 16'h4444;
    LUT4 reduce_or_216_i1_2_lut (.A(temp_control[3]), .B(n1337), .Z(n1353)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(186[4] 203[13])
    defparam reduce_or_216_i1_2_lut.init = 16'heeee;
    LUT4 i8388_2_lut (.A(instruction[0]), .B(instruction[1]), .Z(n10138)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8388_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_57 (.A(clk_0), .B(n7374), .Z(clk_0_N_275)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_57.init = 16'h6666;
    LUT4 i8442_2_lut (.A(reset_c), .B(n9784), .Z(n3865)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i8442_2_lut.init = 16'h4444;
    LUT4 i5646_4_lut (.A(count[16]), .B(count[17]), .C(n9785), .D(count[15]), 
         .Z(n7374)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i5646_4_lut.init = 16'heccc;
    LUT4 i2_4_lut_adj_58 (.A(count1[21]), .B(n7), .C(count1[20]), .D(n8), 
         .Z(n9784)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i2_4_lut_adj_58.init = 16'hfefa;
    LUT4 i2_2_lut (.A(count1[17]), .B(count1[18]), .Z(n7)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i3_4_lut (.A(count1[19]), .B(n7366), .C(count1[16]), .D(count1[15]), 
         .Z(n8)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'ha080;
    PFUMX i1838 (.BLUT(n1984), .ALUT(n3527), .C0(n10145), .Z(n3528));
    CCU2D count_583_add_4_19 (.A0(count[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9770), .S0(n78));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(217[14:19])
    defparam count_583_add_4_19.INIT0 = 16'hfaaa;
    defparam count_583_add_4_19.INIT1 = 16'h0000;
    defparam count_583_add_4_19.INJECT1_0 = "NO";
    defparam count_583_add_4_19.INJECT1_1 = "NO";
    LUT4 i5638_4_lut (.A(count1[11]), .B(count1[14]), .C(n8_adj_650), 
         .D(count1[12]), .Z(n7366)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i5638_4_lut.init = 16'hccc8;
    LUT4 i4_4_lut_adj_59 (.A(count[12]), .B(count[14]), .C(count[13]), 
         .D(n6_adj_649), .Z(n9785)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_59.init = 16'hfffe;
    LUT4 i1_4_lut (.A(count[10]), .B(count[11]), .C(n7294), .D(count[9]), 
         .Z(n6_adj_649)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut.init = 16'heccc;
    LUT4 i5578_4_lut (.A(count[5]), .B(count[8]), .C(count[7]), .D(count[6]), 
         .Z(n7294)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i5578_4_lut.init = 16'hfcec;
    LUT4 i1_2_lut_adj_60 (.A(clk_1), .B(n9784), .Z(clk_1_N_277)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_60.init = 16'h6666;
    LUT4 i8515_2_lut (.A(temp_control[3]), .B(temp_control[2]), .Z(n10145)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(186[4] 203[13])
    defparam i8515_2_lut.init = 16'heeee;
    LUT4 i3_4_lut_adj_61 (.A(count1[13]), .B(n9782), .C(count1[10]), .D(count1[9]), 
         .Z(n8_adj_650)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i3_4_lut_adj_61.init = 16'hfefa;
    LUT4 i2_3_lut (.A(count1[8]), .B(count1[6]), .C(count1[7]), .Z(n9782)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    PFUMX i1842 (.BLUT(n1982), .ALUT(n3531), .C0(n10145), .Z(n3532));
    PFUMX i1844 (.BLUT(n1981), .ALUT(n3533), .C0(n10145), .Z(n3534));
    PFUMX i1665 (.BLUT(n1987), .ALUT(n3336), .C0(n10145), .Z(n3337));
    PFUMX i8521 (.BLUT(n10292), .ALUT(n10291), .C0(n2069), .Z(bcd_out_15__N_374));
    CCU2D count_583_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9769), .COUT(n9770), .S0(n80), .S1(n79));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(217[14:19])
    defparam count_583_add_4_17.INIT0 = 16'hfaaa;
    defparam count_583_add_4_17.INIT1 = 16'hfaaa;
    defparam count_583_add_4_17.INJECT1_0 = "NO";
    defparam count_583_add_4_17.INJECT1_1 = "NO";
    CCU2D count_583_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9768), .COUT(n9769), .S0(n82), .S1(n81));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(217[14:19])
    defparam count_583_add_4_15.INIT0 = 16'hfaaa;
    defparam count_583_add_4_15.INIT1 = 16'hfaaa;
    defparam count_583_add_4_15.INJECT1_0 = "NO";
    defparam count_583_add_4_15.INJECT1_1 = "NO";
    PFUMX i8579 (.BLUT(n10350), .ALUT(n10519), .C0(Q[12]), .Z(bcd_out_15__N_289));
    CCU2D count_583_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9767), .COUT(n9768), .S0(n84), .S1(n83));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(217[14:19])
    defparam count_583_add_4_13.INIT0 = 16'hfaaa;
    defparam count_583_add_4_13.INIT1 = 16'hfaaa;
    defparam count_583_add_4_13.INJECT1_0 = "NO";
    defparam count_583_add_4_13.INJECT1_1 = "NO";
    LUT4 i998_2_lut_rep_167_3_lut (.A(n2123), .B(n10477), .C(bcd_out_15__N_327), 
         .Z(n10447)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i998_2_lut_rep_167_3_lut.init = 16'hc8c8;
    bcdDisplay unidades (.un({un}), .clk_0(clk_0), .n3648(n3648), .n10164(n10164), 
            .n10343(n10343), .n10342(n10342), .n10374(n10374), .n10486(n10486), 
            .n10507(n10507), .n3357(n3357), .n3489(n3489), .n10341(n10341), 
            .\DISPLAY_6__N_509[6] (DISPLAY_6__N_509[6]), .n10406(n10406), 
            .\Q[0] (Q[0]), .reset_c(reset_c), .n10410(n10410), .\Q[1] (Q[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(108[11:21])
    CCU2D count_583_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9766), .COUT(n9767), .S0(n86), .S1(n85));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(217[14:19])
    defparam count_583_add_4_11.INIT0 = 16'hfaaa;
    defparam count_583_add_4_11.INIT1 = 16'hfaaa;
    defparam count_583_add_4_11.INJECT1_0 = "NO";
    defparam count_583_add_4_11.INJECT1_1 = "NO";
    PFUMX i8575 (.BLUT(n10512), .ALUT(n10513), .C0(n10477), .Z(bcd_out_15__N_281));
    LUT4 bcd_out_15__N_307_3__bdd_3_lut_4_lut_3_lut_4_lut (.A(n2119), .B(n2123), 
         .C(n10477), .D(bcd_out_15__N_327), .Z(n10292)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam bcd_out_15__N_307_3__bdd_3_lut_4_lut_3_lut_4_lut.init = 16'hca0a;
    VLO i1 (.Z(GND_net));
    PFUMX i8571 (.BLUT(n10505), .ALUT(n10506), .C0(n10410), .Z(n10507));
    TSALL TSALL_INST (.TSALL(GND_net));
    Bin2BCD imp_binBCD (.Q({Q}), .bcd_out_15__N_475(bcd_out_15__N_475), 
            .n10397(n10397), .n10372(n10372), .n10388(n10388), .bcd_out_15__N_446(bcd_out_15__N_446), 
            .n10387(n10387), .n10369(n10369), .n10389(n10389), .bcd_out_15__N_479(bcd_out_15__N_479), 
            .n10404(n10404), .n10396(n10396), .n10380(n10380), .n10410(n10410), 
            .n10406(n10406), .reset_c(reset_c), .n10383(n10383), .n10375(n10375), 
            .n10447(n10447), .bcd_out_15__N_281(bcd_out_15__N_281), .n2081(n2081), 
            .n10477(n10477), .n10446(n10446), .n10385(n10385), .bcd_out_15__N_280(bcd_out_15__N_280), 
            .n929({bcd_out_15__N_289, Open_0, Open_1, Open_2}), .bcd_out_15__N_298(bcd_out_15__N_298), 
            .n2123(n2123), .n10378(n10378), .n2097(n2097), .n10475(n10475), 
            .n10294(n10294), .n2119(n2119), .n10436(n10436), .n10373(n10373), 
            .n7317(n7317), .n10360(n10360), .\Qbcd[5] (Qbcd[5]), .\DISPLAY_6__N_509[6] (DISPLAY_6__N_509_adj_653[6]), 
            .n10395(n10395), .n10376(n10376), .n10367(n10367), .n7319(n7319), 
            .n10356(n10356), .\Qbcd[9] (Qbcd[9]), .\DISPLAY_6__N_509[6]_adj_1 (DISPLAY_6__N_509_adj_657[6]), 
            .bcd_out_15__N_299(bcd_out_15__N_299), .bcd_out_15__N_499(bcd_out_15__N_499), 
            .bcd_out_15__N_495(bcd_out_15__N_495), .n10392(n10392), .bcd_out_15__N_332(bcd_out_15__N_332), 
            .bcd_out_15__N_328(bcd_out_15__N_328), .n10390(n10390), .n23(n23), 
            .n10400(n10400), .n10398(n10398), .n10358(n10358), .n7323(n7323), 
            .n10357(n10357), .\Qbcd[13] (Qbcd[13]), .\DISPLAY_6__N_509[6]_adj_2 (DISPLAY_6__N_509_adj_661[6]), 
            .n3347(n3347), .bcd_out_15__N_378(bcd_out_15__N_378), .n10384(n10384), 
            .n10361(n10361), .n3349(n3349), .n10386(n10386), .n10405(n10405), 
            .bcd_out_15__N_374(bcd_out_15__N_374), .bcd_out_15__N_442(bcd_out_15__N_442), 
            .bcd_out_15__N_327(bcd_out_15__N_327), .n10302(n10302), .n3351(n3351), 
            .n7201(n7201), .n10374(n10374), .\Qbcd[1] (Qbcd[1]), .\DISPLAY_6__N_509[6]_adj_3 (DISPLAY_6__N_509[6]), 
            .n10301(n10301), .n10364(n10364), .n10366(n10366), .n10377(n10377), 
            .n10371(n10371), .n2069(n2069), .n10291(n10291), .n10363(n10363), 
            .n3489(n3489), .n10368(n10368), .n10362(n10362), .n10350(n10350));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(106[13:20])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    ROM ROM_imp (.clk(clk), .n10684(n10684), .MAR({MAR}), .reset_c(reset_c), 
        .GND_net(GND_net), .VCC_net(VCC_net), .data_out_23__N_516({data_out_23__N_516}), 
        .n3175(n3175));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(114[10:13])
    LUT4 m1_lut (.Z(n10684)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 m0_lut (.Z(n10683)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    bcdDisplay_U1 decenas (.de({de}), .clk_0(clk_0), .n3625(n3625), .n10162(n10162), 
            .n10381(n10381), .n10263(n10263), .n3334(n3334), .n3351(n3351), 
            .n10332(n10332), .n10331(n10331), .n10360(n10360), .n10330(n10330), 
            .\DISPLAY_6__N_509[6] (DISPLAY_6__N_509_adj_653[6]), .bcd_out_15__N_479(bcd_out_15__N_479), 
            .n10388(n10388), .n10390(n10390), .reset_c(reset_c), .n10404(n10404));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(109[10:20])
    
endmodule
//
// Verilog Description of module \OSCH("26.60")(1,5) 
// module not written out since it is a black-box. 
//

//
// Verilog Description of module bcdDisplay_U0
//

module bcdDisplay_U0 (mi, clk_0, n3666, n10158, n10359, n10274, 
            n3415, n3349, n10357, n10312, \DISPLAY_6__N_509[6] , n10314, 
            n10313, n2081, n10361, reset_c, n10385, n10384);
    output [6:0]mi;
    input clk_0;
    input n3666;
    input n10158;
    input n10359;
    input n10274;
    input n3415;
    input n3349;
    input n10357;
    input n10312;
    input \DISPLAY_6__N_509[6] ;
    input n10314;
    input n10313;
    input n2081;
    input n10361;
    input reset_c;
    input n10385;
    input n10384;
    
    wire clk_0 /* synthesis is_clock=1, SET_AS_NETWORK=clk_0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(65[8:13])
    
    wire n10504;
    wire [6:0]DISPLAY_6__N_509;
    
    wire n10503, n10502;
    
    FD1S3JX DISPLAY_i0 (.D(n10158), .CK(clk_0), .PD(n3666), .Q(mi[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=111, LSE_RLINE=111 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i0.GSR = "ENABLED";
    FD1S3JX DISPLAY_i2 (.D(n10274), .CK(clk_0), .PD(n10359), .Q(mi[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=111, LSE_RLINE=111 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i2.GSR = "ENABLED";
    FD1S3JX DISPLAY_i1 (.D(n3349), .CK(clk_0), .PD(n3415), .Q(mi[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=111, LSE_RLINE=111 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i1.GSR = "ENABLED";
    FD1S3JX DISPLAY_i3 (.D(n10504), .CK(clk_0), .PD(n10357), .Q(mi[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=111, LSE_RLINE=111 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i3.GSR = "ENABLED";
    FD1S3AY DISPLAY_i4 (.D(DISPLAY_6__N_509[4]), .CK(clk_0), .Q(mi[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=111, LSE_RLINE=111 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i4.GSR = "ENABLED";
    FD1S3JX DISPLAY_i5 (.D(n10312), .CK(clk_0), .PD(n10357), .Q(mi[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=111, LSE_RLINE=111 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i5.GSR = "ENABLED";
    FD1S3AX DISPLAY_i6 (.D(\DISPLAY_6__N_509[6] ), .CK(clk_0), .Q(mi[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=111, LSE_RLINE=111 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i6.GSR = "ENABLED";
    PFUMX i8532 (.BLUT(n10314), .ALUT(n10313), .C0(n10357), .Z(DISPLAY_6__N_509[4]));
    LUT4 i8535_then_4_lut (.A(n2081), .B(n10361), .C(reset_c), .D(n10385), 
         .Z(n10503)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A ((C+!(D))+!B)) */ ;
    defparam i8535_then_4_lut.init = 16'hf9f7;
    LUT4 i8535_else_4_lut (.A(n2081), .B(n10361), .C(reset_c), .D(n10385), 
         .Z(n10502)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam i8535_else_4_lut.init = 16'hfef3;
    PFUMX i8569 (.BLUT(n10502), .ALUT(n10503), .C0(n10384), .Z(n10504));
    
endmodule
//
// Verilog Description of module bcdDisplay_U2
//

module bcdDisplay_U2 (ce, clk_0, n3618, n10160, n10365, n10269, 
            n3444, n3347, n10356, n10321, \DISPLAY_6__N_509[6] , n10323, 
            n10322, n10376, n10369, reset_c, n10395, bcd_out_15__N_446);
    output [6:0]ce;
    input clk_0;
    input n3618;
    input n10160;
    input n10365;
    input n10269;
    input n3444;
    input n3347;
    input n10356;
    input n10321;
    input \DISPLAY_6__N_509[6] ;
    input n10323;
    input n10322;
    input n10376;
    input n10369;
    input reset_c;
    input n10395;
    input bcd_out_15__N_446;
    
    wire clk_0 /* synthesis is_clock=1, SET_AS_NETWORK=clk_0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(65[8:13])
    
    wire n10501;
    wire [6:0]DISPLAY_6__N_509;
    
    wire n10499, n10500;
    
    FD1S3JX DISPLAY_i0 (.D(n10160), .CK(clk_0), .PD(n3618), .Q(ce[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=110, LSE_RLINE=110 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i0.GSR = "ENABLED";
    FD1S3JX DISPLAY_i2 (.D(n10269), .CK(clk_0), .PD(n10365), .Q(ce[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=110, LSE_RLINE=110 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i2.GSR = "ENABLED";
    FD1S3JX DISPLAY_i1 (.D(n3347), .CK(clk_0), .PD(n3444), .Q(ce[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=110, LSE_RLINE=110 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i1.GSR = "ENABLED";
    FD1S3JX DISPLAY_i3 (.D(n10501), .CK(clk_0), .PD(n10356), .Q(ce[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=110, LSE_RLINE=110 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i3.GSR = "ENABLED";
    FD1S3AY DISPLAY_i4 (.D(DISPLAY_6__N_509[4]), .CK(clk_0), .Q(ce[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=110, LSE_RLINE=110 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i4.GSR = "ENABLED";
    FD1S3JX DISPLAY_i5 (.D(n10321), .CK(clk_0), .PD(n10356), .Q(ce[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=110, LSE_RLINE=110 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i5.GSR = "ENABLED";
    FD1S3AX DISPLAY_i6 (.D(\DISPLAY_6__N_509[6] ), .CK(clk_0), .Q(ce[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=110, LSE_RLINE=110 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i6.GSR = "ENABLED";
    PFUMX i8539 (.BLUT(n10323), .ALUT(n10322), .C0(n10356), .Z(DISPLAY_6__N_509[4]));
    LUT4 i8542_else_4_lut (.A(n10376), .B(n10369), .C(reset_c), .D(n10395), 
         .Z(n10499)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam i8542_else_4_lut.init = 16'hfef3;
    LUT4 i8542_then_4_lut (.A(n10376), .B(n10369), .C(reset_c), .D(n10395), 
         .Z(n10500)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A ((C+!(D))+!B)) */ ;
    defparam i8542_then_4_lut.init = 16'hf9f7;
    PFUMX i8567 (.BLUT(n10499), .ALUT(n10500), .C0(bcd_out_15__N_446), 
          .Z(n10501));
    
endmodule
//
// Verilog Description of module bcdDisplay
//

module bcdDisplay (un, clk_0, n3648, n10164, n10343, n10342, n10374, 
            n10486, n10507, n3357, n3489, n10341, \DISPLAY_6__N_509[6] , 
            n10406, \Q[0] , reset_c, n10410, \Q[1] );
    output [6:0]un;
    input clk_0;
    input n3648;
    input n10164;
    input n10343;
    input n10342;
    input n10374;
    input n10486;
    input n10507;
    input n3357;
    input n3489;
    input n10341;
    input \DISPLAY_6__N_509[6] ;
    input n10406;
    input \Q[0] ;
    input reset_c;
    input n10410;
    input \Q[1] ;
    
    wire clk_0 /* synthesis is_clock=1, SET_AS_NETWORK=clk_0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(65[8:13])
    wire [6:0]DISPLAY_6__N_509;
    
    wire n10495, n10493, n10494;
    
    FD1S3JX DISPLAY_i0 (.D(n10164), .CK(clk_0), .PD(n3648), .Q(un[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i0.GSR = "ENABLED";
    PFUMX i8553 (.BLUT(n10343), .ALUT(n10342), .C0(n10374), .Z(DISPLAY_6__N_509[4]));
    FD1S3JX DISPLAY_i2 (.D(n10507), .CK(clk_0), .PD(n10486), .Q(un[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i2.GSR = "ENABLED";
    FD1S3JX DISPLAY_i1 (.D(n3489), .CK(clk_0), .PD(n3357), .Q(un[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i1.GSR = "ENABLED";
    FD1S3JX DISPLAY_i3 (.D(n10495), .CK(clk_0), .PD(n10374), .Q(un[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i3.GSR = "ENABLED";
    FD1S3AY DISPLAY_i4 (.D(DISPLAY_6__N_509[4]), .CK(clk_0), .Q(un[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i4.GSR = "ENABLED";
    FD1S3JX DISPLAY_i5 (.D(n10341), .CK(clk_0), .PD(n10374), .Q(un[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i5.GSR = "ENABLED";
    FD1S3AX DISPLAY_i6 (.D(\DISPLAY_6__N_509[6] ), .CK(clk_0), .Q(un[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i6.GSR = "ENABLED";
    LUT4 i8556_else_4_lut (.A(n10406), .B(\Q[0] ), .C(reset_c), .D(n10410), 
         .Z(n10493)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam i8556_else_4_lut.init = 16'hfef3;
    PFUMX i8563 (.BLUT(n10493), .ALUT(n10494), .C0(\Q[1] ), .Z(n10495));
    LUT4 i8556_then_4_lut (.A(n10406), .B(\Q[0] ), .C(reset_c), .D(n10410), 
         .Z(n10494)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A ((C+!(D))+!B)) */ ;
    defparam i8556_then_4_lut.init = 16'hf9f7;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module Bin2BCD
//

module Bin2BCD (Q, bcd_out_15__N_475, n10397, n10372, n10388, bcd_out_15__N_446, 
            n10387, n10369, n10389, bcd_out_15__N_479, n10404, n10396, 
            n10380, n10410, n10406, reset_c, n10383, n10375, n10447, 
            bcd_out_15__N_281, n2081, n10477, n10446, n10385, bcd_out_15__N_280, 
            n929, bcd_out_15__N_298, n2123, n10378, n2097, n10475, 
            n10294, n2119, n10436, n10373, n7317, n10360, \Qbcd[5] , 
            \DISPLAY_6__N_509[6] , n10395, n10376, n10367, n7319, 
            n10356, \Qbcd[9] , \DISPLAY_6__N_509[6]_adj_1 , bcd_out_15__N_299, 
            bcd_out_15__N_499, bcd_out_15__N_495, n10392, bcd_out_15__N_332, 
            bcd_out_15__N_328, n10390, n23, n10400, n10398, n10358, 
            n7323, n10357, \Qbcd[13] , \DISPLAY_6__N_509[6]_adj_2 , 
            n3347, bcd_out_15__N_378, n10384, n10361, n3349, n10386, 
            n10405, bcd_out_15__N_374, bcd_out_15__N_442, bcd_out_15__N_327, 
            n10302, n3351, n7201, n10374, \Qbcd[1] , \DISPLAY_6__N_509[6]_adj_3 , 
            n10301, n10364, n10366, n10377, n10371, n2069, n10291, 
            n10363, n3489, n10368, n10362, n10350);
    input [13:0]Q;
    output bcd_out_15__N_475;
    output n10397;
    output n10372;
    output n10388;
    output bcd_out_15__N_446;
    output n10387;
    output n10369;
    output n10389;
    output bcd_out_15__N_479;
    output n10404;
    output n10396;
    output n10380;
    output n10410;
    output n10406;
    input reset_c;
    output n10383;
    output n10375;
    input n10447;
    input bcd_out_15__N_281;
    output n2081;
    output n10477;
    input n10446;
    output n10385;
    output bcd_out_15__N_280;
    input [3:0]n929;
    output bcd_out_15__N_298;
    output n2123;
    output n10378;
    output n2097;
    output n10475;
    output n10294;
    output n2119;
    output n10436;
    output n10373;
    input n7317;
    input n10360;
    input \Qbcd[5] ;
    output \DISPLAY_6__N_509[6] ;
    output n10395;
    output n10376;
    output n10367;
    input n7319;
    input n10356;
    input \Qbcd[9] ;
    output \DISPLAY_6__N_509[6]_adj_1 ;
    input bcd_out_15__N_299;
    output bcd_out_15__N_499;
    output bcd_out_15__N_495;
    output n10392;
    input bcd_out_15__N_332;
    input bcd_out_15__N_328;
    output n10390;
    output n23;
    output n10400;
    output n10398;
    output n10358;
    input n7323;
    input n10357;
    input \Qbcd[13] ;
    output \DISPLAY_6__N_509[6]_adj_2 ;
    output n3347;
    input bcd_out_15__N_378;
    output n10384;
    output n10361;
    output n3349;
    output n10386;
    output n10405;
    input bcd_out_15__N_374;
    output bcd_out_15__N_442;
    output bcd_out_15__N_327;
    output n10302;
    output n3351;
    input n7201;
    input n10374;
    input \Qbcd[1] ;
    output \DISPLAY_6__N_509[6]_adj_3 ;
    output n10301;
    output n10364;
    output n10366;
    output n10377;
    output n10371;
    output n2069;
    output n10291;
    output n10363;
    output n3489;
    output n10368;
    output n10362;
    output n10350;
    
    
    wire n10440, n10432;
    wire [3:0]n944;
    
    wire n10403, n10401;
    wire [3:0]n936;
    
    wire n10450;
    wire [3:0]n938;
    
    wire n10438, n10433, n10422, n10424, n10434;
    wire [3:0]n937;
    
    wire n10443, n10437, n10430;
    wire [3:0]n945;
    wire [3:0]n935;
    
    wire n10449;
    wire [3:0]n941;
    
    wire n10451, n10445, n10492, n4;
    wire [3:0]n943;
    
    wire n10409, n2096, n10484, n29, n10439, n32;
    wire [3:0]n930;
    wire [3:0]n929_c;
    
    wire n10509, n10508, n10516, n10515, n10465, n10459, n10455, 
        n10464, n10466, n2088, n10453, n10456, n10463;
    wire [3:0]n931;
    
    wire n10472;
    wire [3:0]n933;
    
    wire n10468, n10462, n10431;
    wire [3:0]n940;
    
    wire n10458, n10470, n10467, n10461, n10471, n10168, n10474, 
        n10473, n10457, n4_adj_637, n4_adj_638, n10480, n10476, 
        n10411, n10408, n10479, n10460, n10482, n10481, n10483, 
        n10452, n10444, n10435, n10402, n10412, n10407, n10491, 
        n4_adj_640, n3723, n10415, n2077, n10420, n10416, n10414, 
        n10393, n10417, n10413, n10349, n10421, n10427, n10419, 
        n10426, n10418, n10423, n10425, n10454, n10428;
    
    LUT4 i836_2_lut_rep_152_3_lut (.A(Q[4]), .B(n10440), .C(Q[3]), .Z(n10432)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i836_2_lut_rep_152_3_lut.init = 16'hf6f6;
    LUT4 i1537_2_lut_rep_92_3_lut_3_lut_4_lut (.A(n944[1]), .B(n10403), 
         .C(bcd_out_15__N_475), .D(n10397), .Z(n10372)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1537_2_lut_rep_92_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i672_3_lut_rep_108_4_lut (.A(n944[1]), .B(n10403), .C(bcd_out_15__N_475), 
         .D(n10397), .Z(n10388)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i672_3_lut_rep_108_4_lut.init = 16'hf666;
    LUT4 i692_2_lut_rep_107_3_lut (.A(n944[3]), .B(n10401), .C(bcd_out_15__N_446), 
         .Z(n10387)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i692_2_lut_rep_107_3_lut.init = 16'hf6f6;
    LUT4 i682_3_lut_rep_153_4_lut (.A(n936[1]), .B(n10450), .C(n938[1]), 
         .D(n10438), .Z(n10433)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i682_3_lut_rep_153_4_lut.init = 16'hf666;
    LUT4 i1264_3_lut_rep_142_4_lut_3_lut_4_lut (.A(n936[1]), .B(n10450), 
         .C(n938[1]), .D(n10438), .Z(n10422)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1264_3_lut_rep_142_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1257_2_lut_rep_144_3_lut_3_lut_4_lut (.A(n936[1]), .B(n10450), 
         .C(n938[1]), .D(n10438), .Z(n10424)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1257_2_lut_rep_144_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1544_3_lut_rep_89_4_lut_3_lut_4_lut (.A(n944[1]), .B(n10403), 
         .C(bcd_out_15__N_475), .D(n10397), .Z(n10369)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1544_3_lut_rep_89_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i2022_2_lut_rep_109_4_lut (.A(n944[1]), .B(n10403), .C(bcd_out_15__N_475), 
         .D(n10397), .Z(n10389)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2022_2_lut_rep_109_4_lut.init = 16'hf600;
    LUT4 i1992_2_lut_rep_154_4_lut (.A(n936[1]), .B(n10450), .C(n938[1]), 
         .D(n10438), .Z(n10434)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1992_2_lut_rep_154_4_lut.init = 16'hf600;
    LUT4 i1522_2_lut_rep_100_4_lut_4_lut (.A(bcd_out_15__N_479), .B(n10404), 
         .C(bcd_out_15__N_475), .D(n10396), .Z(n10380)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i1522_2_lut_rep_100_4_lut_4_lut.init = 16'h554a;
    LUT4 i1242_2_lut_rep_150_4_lut_4_lut (.A(n937[3]), .B(n10443), .C(n938[1]), 
         .D(n10437), .Z(n10430)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i1242_2_lut_rep_150_4_lut_4_lut.init = 16'h554a;
    LUT4 i8488_2_lut_rep_103_4_lut (.A(n10410), .B(n10406), .C(Q[1]), 
         .D(reset_c), .Z(n10383)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A ((C+(D))+!B)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i8488_2_lut_rep_103_4_lut.init = 16'hff59;
    LUT4 n3715_bdd_4_lut (.A(n10375), .B(n10447), .C(bcd_out_15__N_281), 
         .D(n945[3]), .Z(n2081)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C))+!A !((C+(D))+!B)) */ ;
    defparam n3715_bdd_4_lut.init = 16'ha02c;
    LUT4 i703_2_lut_rep_158_3_lut (.A(n935[3]), .B(n10449), .C(n937[3]), 
         .Z(n10438)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i703_2_lut_rep_158_3_lut.init = 16'hf6f6;
    LUT4 i1250_3_lut_4_lut (.A(n935[3]), .B(n10449), .C(n937[3]), .D(n10433), 
         .Z(n941[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1250_3_lut_4_lut.init = 16'h6966;
    LUT4 i774_2_lut_rep_105_3_lut_4_lut_4_lut (.A(n10477), .B(n10446), .C(n945[3]), 
         .D(bcd_out_15__N_281), .Z(n10385)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i774_2_lut_rep_105_3_lut_4_lut_4_lut.init = 16'h7870;
    LUT4 i683_3_lut_rep_160_4_lut (.A(n935[1]), .B(n10451), .C(n937[1]), 
         .D(n10445), .Z(n10440)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i683_3_lut_rep_160_4_lut.init = 16'hf666;
    LUT4 i782_3_lut_4_lut_3_lut (.A(bcd_out_15__N_281), .B(n945[3]), .C(n10447), 
         .Z(bcd_out_15__N_280)) /* synthesis lut_function=(A (B+!(C))) */ ;
    defparam i782_3_lut_4_lut_3_lut.init = 16'h8a8a;
    LUT4 i2_4_lut_4_lut (.A(n929[3]), .B(bcd_out_15__N_298), .C(n10492), 
         .D(n4), .Z(n2123)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C))+!A !(B (C)+!B (C (D)+!C !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2_4_lut_4_lut.init = 16'h871e;
    LUT4 i693_2_lut_rep_117_3_lut (.A(n943[3]), .B(n10409), .C(bcd_out_15__N_479), 
         .Z(n10397)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i693_2_lut_rep_117_3_lut.init = 16'hf6f6;
    LUT4 i1530_3_lut_rep_98_4_lut (.A(n943[3]), .B(n10409), .C(bcd_out_15__N_479), 
         .D(n10388), .Z(n10378)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1530_3_lut_rep_98_4_lut.init = 16'h6966;
    LUT4 i2009_2_lut_rep_204_3_lut_4_lut (.A(Q[10]), .B(n2097), .C(Q[9]), 
         .D(n2096), .Z(n10484)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2009_2_lut_rep_204_3_lut_4_lut.init = 16'hf600;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(n10492), .B(n929[3]), .C(bcd_out_15__N_298), 
         .D(n10475), .Z(n29)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A (C+(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h00a7;
    LUT4 i2029_2_lut_rep_159_3_lut_4_lut (.A(n935[1]), .B(n10451), .C(n937[1]), 
         .D(n10445), .Z(n10439)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2029_2_lut_rep_159_3_lut_4_lut.init = 16'hf600;
    LUT4 bcd_out_15__N_284_3__bdd_3_lut_4_lut_3_lut (.A(n10492), .B(n929[3]), 
         .C(bcd_out_15__N_298), .Z(n10294)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam bcd_out_15__N_284_3__bdd_3_lut_4_lut_3_lut.init = 16'hc4c4;
    LUT4 i1_4_lut_4_lut (.A(n929[3]), .B(bcd_out_15__N_298), .C(n10492), 
         .D(n10475), .Z(n32)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+!(D)))+!A !(B (C)))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h60e2;
    LUT4 i1474_3_lut_4_lut (.A(Q[10]), .B(n2097), .C(n2096), .D(Q[9]), 
         .Z(n930[1])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A !(B ((D)+!C)+!B !((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1474_3_lut_4_lut.init = 16'h6696;
    LUT4 i1158_2_lut (.A(Q[10]), .B(n2097), .Z(n929_c[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1158_2_lut.init = 16'h6666;
    LUT4 i690_4_lut_then_4_lut (.A(n2123), .B(n2119), .C(n10477), .D(n10436), 
         .Z(n10509)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;
    defparam i690_4_lut_then_4_lut.init = 16'hac0c;
    LUT4 i690_4_lut_else_4_lut (.A(n2123), .B(n2119), .C(n10477), .D(n10436), 
         .Z(n10508)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C)))) */ ;
    defparam i690_4_lut_else_4_lut.init = 16'h5c50;
    LUT4 i5495_4_lut_4_lut (.A(n10373), .B(n7317), .C(n10360), .D(\Qbcd[5] ), 
         .Z(\DISPLAY_6__N_509[6] )) /* synthesis lut_function=(A (C+(D))+!A ((C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i5495_4_lut_4_lut.init = 16'hfbf1;
    LUT4 Q_11__bdd_4_lut_8641 (.A(Q[11]), .B(Q[13]), .C(Q[12]), .D(Q[10]), 
         .Z(n929_c[1])) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A !(B (C+!(D))))) */ ;
    defparam Q_11__bdd_4_lut_8641.init = 16'h6246;
    LUT4 i8474_2_lut_rep_87_4_lut (.A(n10395), .B(n10376), .C(bcd_out_15__N_446), 
         .D(reset_c), .Z(n10367)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A ((C+(D))+!B)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i8474_2_lut_rep_87_4_lut.init = 16'hff59;
    LUT4 i5483_4_lut_4_lut (.A(n10367), .B(n7319), .C(n10356), .D(\Qbcd[9] ), 
         .Z(\DISPLAY_6__N_509[6]_adj_1 )) /* synthesis lut_function=(A (C+(D))+!A ((C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i5483_4_lut_4_lut.init = 16'hfbf1;
    LUT4 i1488_3_lut_4_lut_then_4_lut (.A(Q[10]), .B(n929_c[1]), .C(bcd_out_15__N_299), 
         .D(Q[9]), .Z(n10516)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A (B (C)+!B !(C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1488_3_lut_4_lut_then_4_lut.init = 16'h3cb4;
    LUT4 i1488_3_lut_4_lut_else_4_lut (.A(Q[10]), .B(n929_c[1]), .C(bcd_out_15__N_299), 
         .D(Q[9]), .Z(n10515)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1488_3_lut_4_lut_else_4_lut.init = 16'h3c78;
    LUT4 i795_2_lut_rep_112_4_lut_4_lut (.A(Q[1]), .B(n10410), .C(bcd_out_15__N_499), 
         .D(bcd_out_15__N_495), .Z(n10392)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i795_2_lut_rep_112_4_lut_4_lut.init = 16'h554a;
    LUT4 i1339_2_lut_rep_179_3_lut (.A(Q[6]), .B(n10465), .C(Q[5]), .Z(n10459)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1339_2_lut_rep_179_3_lut.init = 16'hf6f6;
    LUT4 i1334_3_lut_4_lut (.A(Q[6]), .B(n10465), .C(Q[5]), .D(n10455), 
         .Z(n937[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1334_3_lut_4_lut.init = 16'h6966;
    LUT4 i1369_2_lut_rep_173_3_lut_4_lut (.A(n10464), .B(n10466), .C(bcd_out_15__N_332), 
         .D(n2088), .Z(n10453)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1369_2_lut_rep_173_3_lut_4_lut.init = 16'h1ef0;
    LUT4 i678_3_lut_4_lut (.A(n10464), .B(n10466), .C(bcd_out_15__N_332), 
         .D(bcd_out_15__N_328), .Z(n2088)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i678_3_lut_4_lut.init = 16'hffe0;
    LUT4 i817_3_lut_rep_110_4_lut_3_lut_4_lut (.A(Q[1]), .B(n10410), .C(bcd_out_15__N_499), 
         .D(bcd_out_15__N_495), .Z(n10390)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i817_3_lut_rep_110_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i2021_2_lut_rep_176_3_lut_4_lut (.A(n10475), .B(n23), .C(n2088), 
         .D(n10466), .Z(n10456)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C (D))+!B (C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2021_2_lut_rep_176_3_lut_4_lut.init = 16'hf090;
    LUT4 i1367_2_lut_rep_183_3_lut (.A(n10475), .B(n23), .C(n10466), .Z(n10463)) /* synthesis lut_function=(A (B+(C))+!A ((C)+!B)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1367_2_lut_rep_183_3_lut.init = 16'hf9f9;
    LUT4 i1990_2_lut_rep_120_4_lut (.A(Q[1]), .B(n10410), .C(bcd_out_15__N_499), 
         .D(bcd_out_15__N_495), .Z(n10400)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i1990_2_lut_rep_120_4_lut.init = 16'heee0;
    LUT4 i1362_3_lut_4_lut (.A(n10475), .B(n23), .C(n10466), .D(n2088), 
         .Z(n936[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1362_3_lut_4_lut.init = 16'h9699;
    LUT4 i679_3_lut_rep_185_4_lut (.A(n931[1]), .B(n10472), .C(n933[1]), 
         .D(n10468), .Z(n10465)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i679_3_lut_rep_185_4_lut.init = 16'hf666;
    LUT4 i2016_2_lut_rep_182_3_lut_4_lut (.A(n931[1]), .B(n10472), .C(n933[1]), 
         .D(n10468), .Z(n10462)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2016_2_lut_rep_182_3_lut_4_lut.init = 16'hf600;
    LUT4 i1285_2_lut_rep_151_3_lut_3_lut_4_lut (.A(n935[1]), .B(n10451), 
         .C(n937[1]), .D(n10445), .Z(n10431)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1285_2_lut_rep_151_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1292_3_lut_4_lut_3_lut_4_lut (.A(n935[1]), .B(n10451), .C(n937[1]), 
         .D(n10445), .Z(n940[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1292_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1397_2_lut_rep_178_3_lut_3_lut_4_lut (.A(n931[1]), .B(n10472), 
         .C(n933[1]), .D(n10468), .Z(n10458)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1397_2_lut_rep_178_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1404_3_lut_4_lut_3_lut_4_lut (.A(n931[1]), .B(n10472), .C(n933[1]), 
         .D(n10468), .Z(n935[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1404_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1382_2_lut_rep_181_4_lut_4_lut (.A(n10470), .B(Q[6]), .C(n933[1]), 
         .D(n10467), .Z(n10461)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1382_2_lut_rep_181_4_lut_4_lut.init = 16'h332c;
    LUT4 i1395_2_lut_rep_188_3_lut (.A(Q[7]), .B(n10471), .C(Q[6]), .Z(n10468)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1395_2_lut_rep_188_3_lut.init = 16'hf6f6;
    LUT4 i1390_3_lut_4_lut (.A(Q[7]), .B(n10471), .C(Q[6]), .D(n10465), 
         .Z(n935[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1390_3_lut_4_lut.init = 16'h6966;
    LUT4 i669_3_lut_rep_126 (.A(Q[1]), .B(n10410), .C(bcd_out_15__N_499), 
         .D(bcd_out_15__N_495), .Z(n10406)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i669_3_lut_rep_126.init = 16'hffe0;
    LUT4 i1_4_lut (.A(n32), .B(n10492), .C(n29), .D(n10168), .Z(n23)) /* synthesis lut_function=(A+!(B+!(C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'hbabb;
    LUT4 i1354_2_lut_rep_177_4_lut_4_lut (.A(n10474), .B(n10473), .C(n931[1]), 
         .D(n2088), .Z(n10457)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i1354_2_lut_rep_177_4_lut_4_lut.init = 16'h936c;
    LUT4 i803_3_lut_rep_118_4_lut (.A(Q[1]), .B(n10410), .C(bcd_out_15__N_499), 
         .D(bcd_out_15__N_495), .Z(n10398)) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i803_3_lut_rep_118_4_lut.init = 16'h998c;
    LUT4 i942_2_lut (.A(n929[3]), .B(bcd_out_15__N_298), .Z(n4_adj_637)) /* synthesis lut_function=(A+(B)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i942_2_lut.init = 16'heeee;
    LUT4 i2010_3_lut (.A(n2097), .B(Q[11]), .C(Q[10]), .Z(n4_adj_638)) /* synthesis lut_function=(A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2010_3_lut.init = 16'ha8a8;
    LUT4 i2015_2_lut_rep_192_4_lut (.A(n930[1]), .B(n10480), .C(n931[1]), 
         .D(n10474), .Z(n10472)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2015_2_lut_rep_192_4_lut.init = 16'hf600;
    LUT4 i1425_2_lut_rep_187_3_lut_3_lut_4_lut (.A(n930[1]), .B(n10480), 
         .C(n931[1]), .D(n10474), .Z(n10467)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1425_2_lut_rep_187_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1432_3_lut_rep_186_4_lut_3_lut_4_lut (.A(n930[1]), .B(n10480), 
         .C(n931[1]), .D(n10474), .Z(n10466)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1432_3_lut_rep_186_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i5472_4_lut_4_lut (.A(n10358), .B(n7323), .C(n10357), .D(\Qbcd[13] ), 
         .Z(\DISPLAY_6__N_509[6]_adj_2 )) /* synthesis lut_function=(A (C+(D))+!A ((C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i5472_4_lut_4_lut.init = 16'hfbf1;
    LUT4 i670_3_lut_rep_191_4_lut (.A(n930[1]), .B(n10480), .C(n931[1]), 
         .D(n10474), .Z(n10471)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i670_3_lut_rep_191_4_lut.init = 16'hf666;
    LUT4 i1410_2_lut_rep_190_4_lut_4_lut (.A(n10476), .B(Q[7]), .C(n931[1]), 
         .D(n10473), .Z(n10470)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1410_2_lut_rep_190_4_lut_4_lut.init = 16'h332c;
    LUT4 i8449_3_lut_4_lut (.A(bcd_out_15__N_446), .B(n10376), .C(reset_c), 
         .D(n10369), .Z(n3347)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i8449_3_lut_4_lut.init = 16'hf6f9;
    LUT4 i8481_2_lut_rep_93_4_lut (.A(n10404), .B(n10388), .C(bcd_out_15__N_479), 
         .D(reset_c), .Z(n10373)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A ((C+(D))+!B)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i8481_2_lut_rep_93_4_lut.init = 16'hff59;
    LUT4 i686_3_lut_rep_121_4_lut (.A(bcd_out_15__N_378), .B(n10411), .C(n945[1]), 
         .D(n10408), .Z(n10401)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i686_3_lut_rep_121_4_lut.init = 16'hf666;
    LUT4 i8452_3_lut_4_lut (.A(n10384), .B(n2081), .C(reset_c), .D(n10361), 
         .Z(n3349)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i8452_3_lut_4_lut.init = 16'hf6f9;
    LUT4 i1423_2_lut_rep_194_3_lut (.A(Q[8]), .B(n10479), .C(Q[7]), .Z(n10474)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1423_2_lut_rep_194_3_lut.init = 16'hf6f6;
    LUT4 i1418_3_lut_4_lut (.A(Q[8]), .B(n10479), .C(Q[7]), .D(n10471), 
         .Z(n933[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1418_3_lut_4_lut.init = 16'h6966;
    LUT4 i8467_2_lut_rep_78_4_lut (.A(n10385), .B(n2081), .C(n10384), 
         .D(reset_c), .Z(n10358)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A ((C+(D))+!B)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i8467_2_lut_rep_78_4_lut.init = 16'hff59;
    LUT4 mux_1624_i3_3_lut_rep_180_4_lut (.A(n10492), .B(n4_adj_637), .C(n2123), 
         .D(n2119), .Z(n10460)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam mux_1624_i3_3_lut_rep_180_4_lut.init = 16'hf780;
    LUT4 i746_2_lut_rep_184_4_lut_4_lut (.A(n10482), .B(n10481), .C(n930[1]), 
         .D(n23), .Z(n10464)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D)))) */ ;
    defparam i746_2_lut_rep_184_4_lut_4_lut.init = 16'h6c93;
    LUT4 i671_3_lut_rep_199_4_lut (.A(n929_c[1]), .B(n10484), .C(n930[1]), 
         .D(n10482), .Z(n10479)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i671_3_lut_rep_199_4_lut.init = 16'hf666;
    LUT4 i1460_3_lut_rep_195_4_lut_3_lut_4_lut (.A(n929_c[1]), .B(n10484), 
         .C(n930[1]), .D(n10482), .Z(n10475)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1460_3_lut_rep_195_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1124_2_lut_rep_106_3_lut_3_lut_4_lut (.A(bcd_out_15__N_378), .B(n10411), 
         .C(n945[1]), .D(n10408), .Z(n10386)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1124_2_lut_rep_106_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i2013_2_lut_rep_200_4_lut (.A(n929_c[1]), .B(n10484), .C(n930[1]), 
         .D(n10482), .Z(n10480)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2013_2_lut_rep_200_4_lut.init = 16'hf600;
    LUT4 i1453_2_lut_rep_193_3_lut_3_lut_4_lut (.A(n929_c[1]), .B(n10484), 
         .C(n930[1]), .D(n10482), .Z(n10473)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1453_2_lut_rep_193_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1438_2_lut_rep_196_4_lut_4_lut (.A(n10483), .B(Q[8]), .C(n930[1]), 
         .D(n10481), .Z(n10476)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1438_2_lut_rep_196_4_lut_4_lut.init = 16'h332c;
    LUT4 i1270_2_lut_rep_155_4_lut_4_lut (.A(Q[4]), .B(n10452), .C(n937[1]), 
         .D(n10444), .Z(n10435)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i1270_2_lut_rep_155_4_lut_4_lut.init = 16'h554a;
    LUT4 i1466_2_lut_rep_203 (.A(Q[9]), .B(n2096), .Z(n10483)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1466_2_lut_rep_203.init = 16'h6666;
    LUT4 i1446_3_lut_4_lut (.A(Q[9]), .B(n2096), .C(Q[8]), .D(n10479), 
         .Z(n931[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1446_3_lut_4_lut.init = 16'h6966;
    LUT4 i1451_2_lut_rep_202_3_lut (.A(Q[9]), .B(n2096), .C(Q[8]), .Z(n10482)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1451_2_lut_rep_202_3_lut.init = 16'hf6f6;
    LUT4 i1131_3_lut_rep_104_4_lut_3_lut_4_lut (.A(bcd_out_15__N_378), .B(n10411), 
         .C(n945[1]), .D(n10408), .Z(n10384)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1131_3_lut_rep_104_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i8436_2_lut_3_lut (.A(Q[12]), .B(n4_adj_638), .C(Q[13]), .Z(n10168)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i8436_2_lut_3_lut.init = 16'h7878;
    LUT4 i2017_2_lut_rep_122_4_lut (.A(bcd_out_15__N_378), .B(n10411), .C(n945[1]), 
         .D(n10408), .Z(n10402)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2017_2_lut_rep_122_4_lut.init = 16'hf600;
    LUT4 i674_3_lut_4_lut (.A(n929_c[0]), .B(Q[9]), .C(n929_c[1]), .D(bcd_out_15__N_299), 
         .Z(n2096)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i674_3_lut_4_lut.init = 16'hffe0;
    LUT4 i1481_2_lut_rep_201_3_lut_4_lut (.A(n929_c[0]), .B(Q[9]), .C(n929_c[1]), 
         .D(n2096), .Z(n10481)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1481_2_lut_rep_201_3_lut_4_lut.init = 16'h1ef0;
    LUT4 i1109_2_lut_rep_115_4_lut_4_lut (.A(n10412), .B(n944[3]), .C(n945[1]), 
         .D(n10407), .Z(n10395)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1109_2_lut_rep_115_4_lut_4_lut.init = 16'h332c;
    LUT4 i768_3_lut_4_lut (.A(Q[13]), .B(n10491), .C(n4_adj_640), .D(n929[3]), 
         .Z(n2119)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i768_3_lut_4_lut.init = 16'h7888;
    LUT4 i2024_3_lut (.A(n23), .B(bcd_out_15__N_298), .C(n10475), .Z(n4_adj_640)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2024_3_lut.init = 16'h5454;
    LUT4 i2008_3_lut (.A(n23), .B(bcd_out_15__N_298), .C(n10475), .Z(n4)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2008_3_lut.init = 16'h5151;
    LUT4 i787_2_lut (.A(bcd_out_15__N_281), .B(n945[3]), .Z(n3723)) /* synthesis lut_function=(A+(B)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i787_2_lut.init = 16'heeee;
    LUT4 i716_2_lut_rep_211 (.A(Q[11]), .B(Q[12]), .Z(n10491)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i716_2_lut_rep_211.init = 16'heeee;
    LUT4 i694_2_lut_rep_125_3_lut (.A(Q[2]), .B(n10415), .C(Q[1]), .Z(n10405)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i694_2_lut_rep_125_3_lut.init = 16'hf6f6;
    LUT4 i1047_3_lut_4_lut (.A(n2077), .B(n10420), .C(bcd_out_15__N_378), 
         .D(bcd_out_15__N_374), .Z(n945[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1047_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1122_2_lut_rep_128_3_lut (.A(n10422), .B(n2077), .C(n944[3]), 
         .Z(n10408)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1122_2_lut_rep_128_3_lut.init = 16'hf6f6;
    LUT4 i1117_3_lut_4_lut (.A(n10422), .B(n2077), .C(n944[3]), .D(n10401), 
         .Z(bcd_out_15__N_442)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1117_3_lut_4_lut.init = 16'h6966;
    LUT4 i685_3_lut_rep_129_4_lut (.A(n941[1]), .B(n10416), .C(n944[1]), 
         .D(n10414), .Z(n10409)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i685_3_lut_rep_129_4_lut.init = 16'hf666;
    LUT4 i2020_2_lut_rep_123_3_lut_4_lut (.A(n941[1]), .B(n10416), .C(n944[1]), 
         .D(n10414), .Z(n10403)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2020_2_lut_rep_123_3_lut_4_lut.init = 16'hf600;
    LUT4 i1103_3_lut_4_lut_3_lut_4_lut (.A(n941[1]), .B(n10416), .C(n944[1]), 
         .D(n10414), .Z(bcd_out_15__N_446)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1103_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i717_2_lut_rep_113_3_lut_4_lut (.A(bcd_out_15__N_327), .B(n10460), 
         .C(n3723), .D(n10477), .Z(n10393)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i717_2_lut_rep_113_3_lut_4_lut.init = 16'he000;
    LUT4 i947_2_lut_rep_197_3_lut_4_lut (.A(Q[11]), .B(Q[12]), .C(n4_adj_637), 
         .D(Q[13]), .Z(n10477)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i947_2_lut_rep_197_3_lut_4_lut.init = 16'he000;
    LUT4 bcd_out_15__N_287_3__bdd_3_lut_4_lut_3_lut (.A(Q[11]), .B(Q[12]), 
         .C(Q[13]), .Z(n10302)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam bcd_out_15__N_287_3__bdd_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i1096_2_lut_rep_116_3_lut_3_lut_4_lut (.A(n941[1]), .B(n10416), 
         .C(n944[1]), .D(n10414), .Z(n10396)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1096_2_lut_rep_116_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1081_2_lut_rep_124_4_lut_4_lut (.A(n943[3]), .B(n10417), .C(n944[1]), 
         .D(n10413), .Z(n10404)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i1081_2_lut_rep_124_4_lut_4_lut.init = 16'h554a;
    LUT4 Q_10__bdd_4_lut_4_lut_3_lut (.A(Q[11]), .B(Q[10]), .C(Q[13]), 
         .Z(n10349)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam Q_10__bdd_4_lut_4_lut_3_lut.init = 16'h8e8e;
    LUT4 i8455_3_lut_4_lut (.A(bcd_out_15__N_479), .B(n10388), .C(reset_c), 
         .D(n10390), .Z(n3351)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i8455_3_lut_4_lut.init = 16'hf6f9;
    LUT4 i5462_4_lut_4_lut (.A(n10383), .B(n7201), .C(n10374), .D(\Qbcd[1] ), 
         .Z(\DISPLAY_6__N_509[6]_adj_3 )) /* synthesis lut_function=(A (C+(D))+!A ((C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i5462_4_lut_4_lut.init = 16'hfbf1;
    LUT4 i1021_2_lut_rep_212 (.A(Q[11]), .B(Q[12]), .C(Q[13]), .Z(n10492)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1021_2_lut_rep_212.init = 16'he0e0;
    LUT4 bcd_out_15__N_287_3__bdd_4_lut_8530_4_lut (.A(Q[11]), .B(Q[12]), 
         .C(Q[13]), .D(Q[10]), .Z(n10301)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A !(B (C+!(D))+!B (D)))) */ ;
    defparam bcd_out_15__N_287_3__bdd_4_lut_8530_4_lut.init = 16'h73c6;
    LUT4 i697_2_lut_rep_134_3_lut (.A(n940[3]), .B(n10421), .C(n943[3]), 
         .Z(n10414)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i697_2_lut_rep_134_3_lut.init = 16'hf6f6;
    LUT4 i1089_3_lut_4_lut (.A(n940[3]), .B(n10421), .C(n943[3]), .D(n10409), 
         .Z(bcd_out_15__N_475)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1089_3_lut_4_lut.init = 16'h6966;
    LUT4 i1145_3_lut_rep_84_4_lut (.A(n945[3]), .B(n10393), .C(n10384), 
         .D(n2081), .Z(n10364)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1145_3_lut_rep_84_4_lut.init = 16'h6966;
    LUT4 i673_3_lut_rep_96_4_lut (.A(n945[1]), .B(n10402), .C(bcd_out_15__N_442), 
         .D(n10387), .Z(n10376)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i673_3_lut_rep_96_4_lut.init = 16'hf666;
    LUT4 i684_3_lut_rep_135_4_lut (.A(n940[1]), .B(n10427), .C(n943[1]), 
         .D(n10419), .Z(n10415)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i684_3_lut_rep_135_4_lut.init = 16'hf666;
    LUT4 i1516_3_lut_rep_81_4_lut_3_lut_4_lut (.A(n945[1]), .B(n10402), 
         .C(bcd_out_15__N_442), .D(n10387), .Z(n10361)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1516_3_lut_rep_81_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1509_2_lut_rep_86_3_lut_3_lut_4_lut (.A(n945[1]), .B(n10402), 
         .C(bcd_out_15__N_442), .D(n10387), .Z(n10366)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1509_2_lut_rep_86_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1993_2_lut_rep_97_4_lut (.A(n945[1]), .B(n10402), .C(bcd_out_15__N_442), 
         .D(n10387), .Z(n10377)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1993_2_lut_rep_97_4_lut.init = 16'hf600;
    LUT4 i1075_3_lut_4_lut_3_lut_4_lut (.A(n940[1]), .B(n10427), .C(n943[1]), 
         .D(n10419), .Z(bcd_out_15__N_479)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1075_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1068_2_lut_3_lut_3_lut_4_lut (.A(n940[1]), .B(n10427), .C(n943[1]), 
         .D(n10419), .Z(bcd_out_15__N_495)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1068_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1053_2_lut_rep_130_4_lut_4_lut (.A(Q[2]), .B(n10426), .C(n943[1]), 
         .D(n10418), .Z(n10410)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i1053_2_lut_rep_130_4_lut_4_lut.init = 16'h554a;
    LUT4 i1040_2_lut_rep_127_3_lut_4_lut (.A(n10422), .B(n10423), .C(bcd_out_15__N_378), 
         .D(n2077), .Z(n10407)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;
    defparam i1040_2_lut_rep_127_3_lut_4_lut.init = 16'h1ef0;
    LUT4 i687_3_lut_4_lut (.A(n10422), .B(n10423), .C(bcd_out_15__N_378), 
         .D(bcd_out_15__N_374), .Z(n2077)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i687_3_lut_4_lut.init = 16'hffe0;
    LUT4 i1494_2_lut_rep_91_4_lut_4_lut (.A(bcd_out_15__N_446), .B(n10395), 
         .C(bcd_out_15__N_442), .D(n10386), .Z(n10371)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i1494_2_lut_rep_91_4_lut_4_lut.init = 16'h554a;
    LUT4 i1033_3_lut_4_lut (.A(n10436), .B(n2069), .C(n10422), .D(n2077), 
         .Z(n945[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1033_3_lut_4_lut.init = 16'h6966;
    LUT4 i2027_2_lut_rep_131_3_lut_4_lut (.A(n10436), .B(n2069), .C(n2077), 
         .D(n10422), .Z(n10411)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2027_2_lut_rep_131_3_lut_4_lut.init = 16'hf060;
    LUT4 i2028_2_lut_rep_136_3_lut_4_lut (.A(n938[1]), .B(n10434), .C(n941[1]), 
         .D(n10425), .Z(n10416)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2028_2_lut_rep_136_3_lut_4_lut.init = 16'hf600;
    LUT4 bcd_out_15__N_307_3__bdd_4_lut_4_lut (.A(bcd_out_15__N_327), .B(n10460), 
         .C(n10477), .D(n10436), .Z(n10291)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A !(B (C+!(D))+!B (D)))) */ ;
    defparam bcd_out_15__N_307_3__bdd_4_lut_4_lut.init = 16'h73c6;
    LUT4 i689_3_lut_rep_141_4_lut (.A(n938[1]), .B(n10434), .C(n941[1]), 
         .D(n10425), .Z(n10421)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i689_3_lut_rep_141_4_lut.init = 16'hf666;
    LUT4 i900_2_lut_rep_143_4_lut_4_lut (.A(n10454), .B(n10453), .C(n936[1]), 
         .D(n2069), .Z(n10423)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i900_2_lut_rep_143_4_lut_4_lut.init = 16'h936c;
    LUT4 i873_3_lut_4_lut_3_lut_4_lut (.A(n938[1]), .B(n10434), .C(n941[1]), 
         .D(n10425), .Z(n944[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i873_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i866_2_lut_rep_133_3_lut_3_lut_4_lut (.A(n938[1]), .B(n10434), 
         .C(n941[1]), .D(n10425), .Z(n10413)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i866_2_lut_rep_133_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1137_2_lut_rep_83_4_lut_4_lut (.A(n10408), .B(n10407), .C(n945[1]), 
         .D(n2081), .Z(n10363)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i1137_2_lut_rep_83_4_lut_4_lut.init = 16'h936c;
    LUT4 i851_2_lut_rep_137_4_lut_4_lut (.A(n940[3]), .B(n10430), .C(n941[1]), 
         .D(n10424), .Z(n10417)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i851_2_lut_rep_137_4_lut_4_lut.init = 16'h554a;
    LUT4 i698_2_lut_rep_139_3_lut (.A(Q[3]), .B(n10428), .C(Q[2]), .Z(n10419)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i698_2_lut_rep_139_3_lut.init = 16'hf6f6;
    LUT4 i1061_3_lut_4_lut (.A(Q[3]), .B(n10428), .C(Q[2]), .D(n10415), 
         .Z(bcd_out_15__N_499)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1061_3_lut_4_lut.init = 16'h6966;
    LUT4 i700_2_lut_rep_145_3_lut (.A(n937[3]), .B(n10433), .C(n940[3]), 
         .Z(n10425)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i700_2_lut_rep_145_3_lut.init = 16'hf6f6;
    LUT4 i859_3_lut_4_lut (.A(n937[3]), .B(n10433), .C(n940[3]), .D(n10421), 
         .Z(n944[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i859_3_lut_4_lut.init = 16'h6966;
    LUT4 i8460_3_lut_4_lut (.A(Q[1]), .B(n10406), .C(reset_c), .D(Q[0]), 
         .Z(n3489)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i8460_3_lut_4_lut.init = 16'hf6f9;
    LUT4 i2011_2_lut_rep_147_3_lut_4_lut (.A(n937[1]), .B(n10439), .C(n940[1]), 
         .D(n10432), .Z(n10427)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2011_2_lut_rep_147_3_lut_4_lut.init = 16'hf600;
    LUT4 i688_3_lut_rep_148_4_lut (.A(n937[1]), .B(n10439), .C(n940[1]), 
         .D(n10432), .Z(n10428)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i688_3_lut_rep_148_4_lut.init = 16'hf666;
    LUT4 i838_2_lut_rep_138_3_lut_3_lut_4_lut (.A(n937[1]), .B(n10439), 
         .C(n940[1]), .D(n10432), .Z(n10418)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i838_2_lut_rep_138_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1150_2_lut_rep_95_4_lut_4_lut (.A(n10408), .B(n10407), .C(n945[1]), 
         .D(n10385), .Z(n10375)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i1150_2_lut_rep_95_4_lut_4_lut.init = 16'hff6c;
    LUT4 i704_2_lut_rep_165_3_lut (.A(Q[5]), .B(n10455), .C(Q[4]), .Z(n10445)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i704_2_lut_rep_165_3_lut.init = 16'hf6f6;
    LUT4 i831_3_lut_4_lut (.A(Q[4]), .B(n10440), .C(Q[3]), .D(n10428), 
         .Z(n943[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i831_3_lut_4_lut.init = 16'h6966;
    LUT4 i1278_3_lut_4_lut (.A(Q[5]), .B(n10455), .C(Q[4]), .D(n10440), 
         .Z(n940[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1278_3_lut_4_lut.init = 16'h6966;
    LUT4 i676_3_lut_rep_169_4_lut (.A(bcd_out_15__N_332), .B(n10456), .C(n936[1]), 
         .D(n10454), .Z(n10449)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i676_3_lut_rep_169_4_lut.init = 16'hf666;
    LUT4 i699_2_lut_rep_140_4_lut_4_lut (.A(n10438), .B(n10437), .C(n938[1]), 
         .D(n10423), .Z(n10420)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i699_2_lut_rep_140_4_lut_4_lut.init = 16'hff6c;
    LUT4 i1502_3_lut_rep_88_4_lut (.A(n944[3]), .B(n10401), .C(bcd_out_15__N_446), 
         .D(n10376), .Z(n10368)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1502_3_lut_rep_88_4_lut.init = 16'h6966;
    LUT4 i1313_2_lut_rep_157_3_lut_3_lut_4_lut (.A(bcd_out_15__N_332), .B(n10456), 
         .C(n936[1]), .D(n10454), .Z(n10437)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1313_2_lut_rep_157_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1320_3_lut_rep_156_4_lut_3_lut_4_lut (.A(bcd_out_15__N_332), .B(n10456), 
         .C(n936[1]), .D(n10454), .Z(n10436)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1320_3_lut_rep_156_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i845_3_lut_4_lut_3_lut_4_lut (.A(n937[1]), .B(n10439), .C(n940[1]), 
         .D(n10432), .Z(n943[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i845_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i823_2_lut_rep_146_4_lut_4_lut (.A(n10435), .B(Q[3]), .C(n940[1]), 
         .D(n10431), .Z(n10426)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i823_2_lut_rep_146_4_lut_4_lut.init = 16'h332c;
    LUT4 i1152_3_lut_rep_82_4_lut (.A(n10385), .B(n10384), .C(n2081), 
         .D(bcd_out_15__N_280), .Z(n10362)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1152_3_lut_rep_82_4_lut.init = 16'h1fe0;
    LUT4 i2026_2_lut_rep_170_4_lut (.A(bcd_out_15__N_332), .B(n10456), .C(n936[1]), 
         .D(n10454), .Z(n10450)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2026_2_lut_rep_170_4_lut.init = 16'hf600;
    LUT4 i1298_2_lut_rep_163_4_lut_4_lut (.A(n935[3]), .B(n10457), .C(n936[1]), 
         .D(n10453), .Z(n10443)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i1298_2_lut_rep_163_4_lut_4_lut.init = 16'h554a;
    LUT4 i1025_2_lut_rep_132_4_lut_4_lut (.A(n10438), .B(n10437), .C(n938[1]), 
         .D(n2077), .Z(n10412)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i1025_2_lut_rep_132_4_lut_4_lut.init = 16'h936c;
    LUT4 Q_10__bdd_2_lut (.A(Q[13]), .B(Q[11]), .Z(n10350)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam Q_10__bdd_2_lut.init = 16'h2222;
    LUT4 i1376_3_lut_4_lut (.A(n2088), .B(n10463), .C(bcd_out_15__N_332), 
         .D(bcd_out_15__N_328), .Z(bcd_out_15__N_327)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1376_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1306_3_lut_4_lut (.A(n10466), .B(n2088), .C(n935[3]), .D(n10449), 
         .Z(n938[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1306_3_lut_4_lut.init = 16'h6966;
    LUT4 i706_2_lut_rep_174_3_lut (.A(n10466), .B(n2088), .C(n935[3]), 
         .Z(n10454)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i706_2_lut_rep_174_3_lut.init = 16'hf6f6;
    LUT4 i2025_2_lut_rep_171_3_lut_4_lut (.A(n933[1]), .B(n10462), .C(n935[1]), 
         .D(n10459), .Z(n10451)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2025_2_lut_rep_171_3_lut_4_lut.init = 16'hf600;
    LUT4 i677_3_lut_rep_175_4_lut (.A(n933[1]), .B(n10462), .C(n935[1]), 
         .D(n10459), .Z(n10455)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i677_3_lut_rep_175_4_lut.init = 16'hf666;
    LUT4 i1341_2_lut_rep_164_3_lut_3_lut_4_lut (.A(n933[1]), .B(n10462), 
         .C(n935[1]), .D(n10459), .Z(n10444)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1341_2_lut_rep_164_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1348_3_lut_4_lut_3_lut_4_lut (.A(n933[1]), .B(n10462), .C(n935[1]), 
         .D(n10459), .Z(n937[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1348_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1326_2_lut_rep_172_4_lut_4_lut (.A(n10461), .B(Q[5]), .C(n935[1]), 
         .D(n10458), .Z(n10452)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1326_2_lut_rep_172_4_lut_4_lut.init = 16'h332c;
    PFUMX i8577 (.BLUT(n10515), .ALUT(n10516), .C0(n2097), .Z(bcd_out_15__N_298));
    PFUMX i8573 (.BLUT(n10508), .ALUT(n10509), .C0(bcd_out_15__N_327), 
          .Z(n2069));
    PFUMX i8558 (.BLUT(n10350), .ALUT(n10349), .C0(Q[12]), .Z(n2097));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module ROM
//

module ROM (clk, n10684, MAR, reset_c, GND_net, VCC_net, data_out_23__N_516, 
            n3175);
    input clk;
    input n10684;
    input [7:0]MAR;
    input reset_c;
    input GND_net;
    input VCC_net;
    output [23:0]data_out_23__N_516;
    output n3175;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(64[8:11])
    
    wire data_out_23__N_517;
    wire [23:0]data_out_23__N_565;
    
    FD1S3AX data_out (.D(n10684), .CK(clk), .Q(data_out_23__N_517));   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam data_out.GSR = "ENABLED";
    PDPW8KC mux_226 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
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
            .CSR2(GND_net), .RST(reset_c), .DO9(data_out_23__N_565[18]), 
            .DO10(data_out_23__N_565[19]), .DO11(data_out_23__N_565[20]), 
            .DO12(data_out_23__N_565[21]), .DO13(data_out_23__N_565[22]), 
            .DO14(data_out_23__N_565[23]));
    defparam mux_226.DATA_WIDTH_W = 18;
    defparam mux_226.DATA_WIDTH_R = 18;
    defparam mux_226.REGMODE = "NOREG";
    defparam mux_226.CSDECODE_W = "0b000";
    defparam mux_226.CSDECODE_R = "0b000";
    defparam mux_226.GSR = "DISABLED";
    defparam mux_226.RESETMODE = "ASYNC";
    defparam mux_226.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_226.INIT_DATA = "STATIC";
    defparam mux_226.INITVAL_00 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0001800009000110001300019";
    defparam mux_226.INITVAL_01 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_226.INITVAL_02 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_226.INITVAL_03 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_226.INITVAL_04 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_226.INITVAL_05 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_226.INITVAL_06 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_226.INITVAL_07 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_226.INITVAL_08 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_226.INITVAL_09 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_226.INITVAL_0A = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_226.INITVAL_0B = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_226.INITVAL_0C = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_226.INITVAL_0D = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_226.INITVAL_0E = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_226.INITVAL_0F = "0x0000000000000000000000000000000000000000000000003F0003F0003F0003F0003F0003F0003F";
    defparam mux_226.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_226.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_226.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_226.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_226.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_226.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_226.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_226.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_226.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_226.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_226.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_226.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_226.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_226.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_226.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_226.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    PDPW8KC mux_225 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
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
            .CSR2(GND_net), .RST(reset_c), .DO0(data_out_23__N_565[9]), 
            .DO1(data_out_23__N_565[10]), .DO2(data_out_23__N_565[11]), 
            .DO3(data_out_23__N_565[12]), .DO4(data_out_23__N_565[13]), 
            .DO5(data_out_23__N_565[14]), .DO6(data_out_23__N_565[15]), 
            .DO7(data_out_23__N_565[16]), .DO8(data_out_23__N_565[17]), 
            .DO9(data_out_23__N_565[0]), .DO10(data_out_23__N_565[1]), .DO11(data_out_23__N_565[2]), 
            .DO12(data_out_23__N_565[3]), .DO13(data_out_23__N_565[4]), 
            .DO14(data_out_23__N_565[5]), .DO15(data_out_23__N_565[6]), 
            .DO16(data_out_23__N_565[7]), .DO17(data_out_23__N_565[8]));
    defparam mux_225.DATA_WIDTH_W = 18;
    defparam mux_225.DATA_WIDTH_R = 18;
    defparam mux_225.REGMODE = "NOREG";
    defparam mux_225.CSDECODE_W = "0b000";
    defparam mux_225.CSDECODE_R = "0b000";
    defparam mux_225.GSR = "DISABLED";
    defparam mux_225.RESETMODE = "ASYNC";
    defparam mux_225.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_225.INIT_DATA = "STATIC";
    defparam mux_225.INITVAL_00 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF0000000005000F7000000000D";
    defparam mux_225.INITVAL_01 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_225.INITVAL_02 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_225.INITVAL_03 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_225.INITVAL_04 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_225.INITVAL_05 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_225.INITVAL_06 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_225.INITVAL_07 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_225.INITVAL_08 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_225.INITVAL_09 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_225.INITVAL_0A = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_225.INITVAL_0B = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_225.INITVAL_0C = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_225.INITVAL_0D = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_225.INITVAL_0E = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_225.INITVAL_0F = "0x0004D00037000170000700012000320004600065003EB3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_225.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_225.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_225.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_225.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_225.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_225.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_225.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_225.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_225.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_225.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_225.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_225.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_225.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_225.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_225.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_225.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    LUT4 i254_2_lut (.A(data_out_23__N_565[23]), .B(data_out_23__N_517), 
         .Z(data_out_23__N_516[23])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i254_2_lut.init = 16'h8888;
    LUT4 i253_2_lut (.A(data_out_23__N_565[22]), .B(data_out_23__N_517), 
         .Z(data_out_23__N_516[22])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i253_2_lut.init = 16'h8888;
    LUT4 i252_2_lut (.A(data_out_23__N_565[21]), .B(data_out_23__N_517), 
         .Z(data_out_23__N_516[21])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i252_2_lut.init = 16'h8888;
    LUT4 i251_2_lut (.A(data_out_23__N_565[20]), .B(data_out_23__N_517), 
         .Z(data_out_23__N_516[20])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i251_2_lut.init = 16'h8888;
    LUT4 i241_2_lut (.A(data_out_23__N_565[10]), .B(data_out_23__N_517), 
         .Z(data_out_23__N_516[10])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i241_2_lut.init = 16'h8888;
    LUT4 i240_2_lut (.A(data_out_23__N_565[9]), .B(data_out_23__N_517), 
         .Z(data_out_23__N_516[9])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i240_2_lut.init = 16'h8888;
    LUT4 i239_2_lut (.A(data_out_23__N_565[8]), .B(data_out_23__N_517), 
         .Z(data_out_23__N_516[8])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i239_2_lut.init = 16'h8888;
    LUT4 i238_2_lut (.A(data_out_23__N_565[7]), .B(data_out_23__N_517), 
         .Z(data_out_23__N_516[7])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i238_2_lut.init = 16'h8888;
    LUT4 i237_2_lut (.A(data_out_23__N_565[6]), .B(data_out_23__N_517), 
         .Z(data_out_23__N_516[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i237_2_lut.init = 16'h8888;
    LUT4 i236_2_lut (.A(data_out_23__N_565[5]), .B(data_out_23__N_517), 
         .Z(data_out_23__N_516[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i236_2_lut.init = 16'h8888;
    LUT4 i235_2_lut (.A(data_out_23__N_565[4]), .B(data_out_23__N_517), 
         .Z(data_out_23__N_516[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i235_2_lut.init = 16'h8888;
    LUT4 i234_2_lut (.A(data_out_23__N_565[3]), .B(data_out_23__N_517), 
         .Z(data_out_23__N_516[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i234_2_lut.init = 16'h8888;
    LUT4 i233_2_lut (.A(data_out_23__N_565[2]), .B(data_out_23__N_517), 
         .Z(data_out_23__N_516[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i233_2_lut.init = 16'h8888;
    LUT4 i232_2_lut (.A(data_out_23__N_565[1]), .B(data_out_23__N_517), 
         .Z(data_out_23__N_516[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i232_2_lut.init = 16'h8888;
    LUT4 i1585_1_lut (.A(data_out_23__N_517), .Z(n3175)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(64[2] 77[14])
    defparam i1585_1_lut.init = 16'h5555;
    LUT4 i248_2_lut (.A(data_out_23__N_565[17]), .B(data_out_23__N_517), 
         .Z(data_out_23__N_516[17])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i248_2_lut.init = 16'h8888;
    LUT4 i247_2_lut (.A(data_out_23__N_565[16]), .B(data_out_23__N_517), 
         .Z(data_out_23__N_516[16])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i247_2_lut.init = 16'h8888;
    LUT4 i246_2_lut (.A(data_out_23__N_565[15]), .B(data_out_23__N_517), 
         .Z(data_out_23__N_516[15])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i246_2_lut.init = 16'h8888;
    LUT4 i245_2_lut (.A(data_out_23__N_565[14]), .B(data_out_23__N_517), 
         .Z(data_out_23__N_516[14])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i245_2_lut.init = 16'h8888;
    LUT4 i250_2_lut (.A(data_out_23__N_565[19]), .B(data_out_23__N_517), 
         .Z(data_out_23__N_516[19])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i250_2_lut.init = 16'h8888;
    LUT4 i231_2_lut (.A(data_out_23__N_565[0]), .B(data_out_23__N_517), 
         .Z(data_out_23__N_516[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i231_2_lut.init = 16'h8888;
    LUT4 i249_2_lut (.A(data_out_23__N_565[18]), .B(data_out_23__N_517), 
         .Z(data_out_23__N_516[18])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i249_2_lut.init = 16'h8888;
    LUT4 i244_2_lut (.A(data_out_23__N_565[13]), .B(data_out_23__N_517), 
         .Z(data_out_23__N_516[13])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i244_2_lut.init = 16'h8888;
    LUT4 i243_2_lut (.A(data_out_23__N_565[12]), .B(data_out_23__N_517), 
         .Z(data_out_23__N_516[12])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i243_2_lut.init = 16'h8888;
    LUT4 i242_2_lut (.A(data_out_23__N_565[11]), .B(data_out_23__N_517), 
         .Z(data_out_23__N_516[11])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i242_2_lut.init = 16'h8888;
    
endmodule
//
// Verilog Description of module bcdDisplay_U1
//

module bcdDisplay_U1 (de, clk_0, n3625, n10162, n10381, n10263, 
            n3334, n3351, n10332, n10331, n10360, n10330, \DISPLAY_6__N_509[6] , 
            bcd_out_15__N_479, n10388, n10390, reset_c, n10404);
    output [6:0]de;
    input clk_0;
    input n3625;
    input n10162;
    input n10381;
    input n10263;
    input n3334;
    input n3351;
    input n10332;
    input n10331;
    input n10360;
    input n10330;
    input \DISPLAY_6__N_509[6] ;
    input bcd_out_15__N_479;
    input n10388;
    input n10390;
    input reset_c;
    input n10404;
    
    wire clk_0 /* synthesis is_clock=1, SET_AS_NETWORK=clk_0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(65[8:13])
    wire [6:0]DISPLAY_6__N_509;
    
    wire n10498, n10496, n10497;
    
    FD1S3JX DISPLAY_i0 (.D(n10162), .CK(clk_0), .PD(n3625), .Q(de[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i0.GSR = "ENABLED";
    FD1S3JX DISPLAY_i2 (.D(n10263), .CK(clk_0), .PD(n10381), .Q(de[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i2.GSR = "ENABLED";
    FD1S3JX DISPLAY_i1 (.D(n3351), .CK(clk_0), .PD(n3334), .Q(de[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i1.GSR = "ENABLED";
    PFUMX i8546 (.BLUT(n10332), .ALUT(n10331), .C0(n10360), .Z(DISPLAY_6__N_509[4]));
    FD1S3JX DISPLAY_i3 (.D(n10498), .CK(clk_0), .PD(n10360), .Q(de[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i3.GSR = "ENABLED";
    FD1S3AY DISPLAY_i4 (.D(DISPLAY_6__N_509[4]), .CK(clk_0), .Q(de[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i4.GSR = "ENABLED";
    FD1S3JX DISPLAY_i5 (.D(n10330), .CK(clk_0), .PD(n10360), .Q(de[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i5.GSR = "ENABLED";
    FD1S3AX DISPLAY_i6 (.D(\DISPLAY_6__N_509[6] ), .CK(clk_0), .Q(de[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i6.GSR = "ENABLED";
    PFUMX i8565 (.BLUT(n10496), .ALUT(n10497), .C0(bcd_out_15__N_479), 
          .Z(n10498));
    LUT4 i8549_then_4_lut (.A(n10388), .B(n10390), .C(reset_c), .D(n10404), 
         .Z(n10497)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A ((C+!(D))+!B)) */ ;
    defparam i8549_then_4_lut.init = 16'hf9f7;
    LUT4 i8549_else_4_lut (.A(n10388), .B(n10390), .C(reset_c), .D(n10404), 
         .Z(n10496)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam i8549_else_4_lut.init = 16'hfef3;
    
endmodule
