// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Mon Apr 08 01:56:02 2024
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
    wire address_bus_7__N_143 /* synthesis is_clock=1, SET_AS_NETWORK=address_bus_7__N_143 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(91[8:19])
    wire PC_7__N_72 /* synthesis is_clock=1, SET_AS_NETWORK=PC_7__N_72 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(81[8:10])
    wire rpg_in_23__N_131 /* synthesis is_clock=1, SET_AS_NETWORK=rpg_in_23__N_131 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(88[8:14])
    
    wire GND_net, VCC_net, reset_c, display_c_6, display_c_5, display_c_4, 
        display_c_3, display_c_2, display_c_1, display_c_0, sel_c_3, 
        sel_c_2, sel_c_1, sel_c_0, CI_c_23, CI_c_22, CI_c_21, CI_c_20, 
        CI_c_19, CI_c_18, CI_c_17, CI_c_16, CI_c_15, CI_c_14, CI_c_13, 
        CI_c_12, CI_c_11, CI_c_10, CI_c_9, CI_c_8, CI_c_7, CI_c_6, 
        CI_c_5, CI_c_4, CI_c_3, CI_c_2, CI_c_1, CI_c_0;
    wire [13:0]Rdisplay;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(75[8:16])
    wire [3:0]temp_control;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(77[8:20])
    wire [6:0]un;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(78[8:10])
    wire [6:0]de;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(78[11:13])
    wire [6:0]ce;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(78[14:16])
    wire [6:0]mi;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(78[17:19])
    wire [7:0]PC;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(81[8:10])
    wire [7:0]MAR;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(82[8:11])
    wire [23:0]MBR;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(83[8:11])
    
    wire n2813, n3199, n4685, n3198, n3197;
    wire [23:0]ACC;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(85[8:11])
    wire [23:0]rpg_in;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(88[8:14])
    wire [1:0]rpg_sel;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(90[8:15])
    wire [7:0]address_bus;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(91[8:19])
    wire [11:0]A;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(93[8:9])
    wire [11:0]B;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(93[10:11])
    wire [3:0]control;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(94[8:15])
    
    wire n110, n111;
    wire [21:0]count;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(119[12:17])
    
    wire n3123, n3201, n9170, n4691, n96, n3195, n3191, n6464, 
        n3118, clk_0_N_249, n9243, n9449, n3113, n9169;
    wire [7:0]PC_7__N_57;
    
    wire MAR_7__N_81, n6462, address_bus_7__N_135, address_bus_7__N_136, 
        address_bus_7__N_137, address_bus_7__N_138, address_bus_7__N_139, 
        address_bus_7__N_140, address_bus_7__N_141, address_bus_7__N_142, 
        MBR_23__N_106, PC_7__N_56, PC_7__N_58, PC_7__N_60, PC_7__N_62, 
        PC_7__N_64, PC_7__N_66, PC_7__N_68, PC_7__N_70, CI_23__N_36, 
        control_3__N_173, A_11__N_156, n4686, rpg_in_23__N_119, rpg_in_23__N_120, 
        rpg_in_23__N_121, rpg_in_23__N_122, rpg_in_23__N_123, rpg_in_23__N_124, 
        rpg_in_23__N_125, rpg_in_23__N_126, rpg_in_23__N_127, rpg_in_23__N_128, 
        rpg_in_23__N_129, rpg_in_23__N_130, Rdisplay_13__N_51, n9168, 
        n9448, n9242, bcd_out_15__N_270, bcd_out_15__N_274, bcd_out_15__N_269, 
        n4812, bcd_out_15__N_285, n4550, n9241, bcd_out_15__N_280, 
        bcd_out_15__N_299, bcd_out_15__N_303, n9271, n9270, bcd_out_15__N_298, 
        n9359, n8806, bcd_out_15__N_252, bcd_out_15__N_345, bcd_out_15__N_349, 
        n6460, n9269, n9268, bcd_out_15__N_344, n9267, n8861, bcd_out_15__N_466, 
        bcd_out_15__N_470, n4820, bcd_out_15__N_417, bcd_out_15__N_446, 
        n9266, bcd_out_15__N_413, n9750, n8035, n8000, n9264;
    wire [6:0]DISPLAY_6__N_480;
    
    wire n6451;
    wire [6:0]DISPLAY_6__N_480_adj_966;
    
    wire n9263;
    wire [6:0]DISPLAY_6__N_480_adj_969;
    wire [6:0]DISPLAY_6__N_480_adj_972;
    wire [23:0]data_out_23__N_487;
    
    wire n99, clk_enable_9, n4687, n3196, n2812, n7999, n101, 
        n3108, n102, n103, n7998, n2916, n5113, n4689, n3194, 
        n4683, n4684;
    wire [11:0]sum_result;   // c:/users/cassandra/desktop/arqui2/alu.vhd(33[9:19])
    wire [11:0]logic_result;   // c:/users/cassandra/desktop/arqui2/alu.vhd(34[9:21])
    
    wire n9043;
    wire [11:0]A_temp;   // c:/users/cassandra/desktop/arqui2/alu.vhd(38[9:15])
    wire [11:0]B_temp;   // c:/users/cassandra/desktop/arqui2/alu.vhd(38[16:22])
    
    wire n9262, n9261, n9260, n9259, n9257, n9256, n9255, n9254, 
        n9253, n9251, n9335, n4965, clk_enable_46, n9250, n4299, 
        n3190, n5036, n4838, n1783, n7997, control_3__N_173_derived_2, 
        n9330, n9442, n9125, n9249, n9245, n8788, n9437, n7996, 
        clk_enable_10, n9447, n6498, n107, n7995, n8007, n6493, 
        n8006, n9745, n3187, n4693, n9248, n1776, n6506, n113, 
        n8863, clk_enable_8, n1775, n1774, n1773, n1772, n6488, 
        clk_enable_56, n2814, n2868, n4773, n2901, n4757, n22, 
        n3193, n21, n2811, n20, n3192, n100, n9455, clk_enable_11, 
        n3203, n19, n18, n17, n1696, n2810, n2809, n97, n16, 
        n4276, n104, n9454, n1729, n1779, n3202, n9451, n2808, 
        n3200, n4647, n4694, n8845, n8846, n4830, clk_enable_43, 
        n8787, n4914, n9744, n9409, n4241, n9445, n2928, n4913, 
        n4915, n9407, n98, n95, n94, n4690, n9405, n115, n114, 
        n112, clk_enable_17, n109, n108, n4705, n106, n105, n2912, 
        n4533, n9240, n8032, n9239, n9444, n8005, n9238, n8867, 
        n6485, n7994, n4480, n8865, n4467, n4455, n4454, n6479, 
        n8004, n9298, n9296, n9247, n9226, n9225, n4732, n9399, 
        n9292, n9291, n5082, n9290, n5081, n9289, n5080, n4382, 
        n9286, n8844, n9393, n5079, n4719, n9452, n9284, n9237, 
        n4692, n9283, n5078, n4688, n9246, n5077, n9244, n5076, 
        n9282, n9236, n5075, n4267, n9751, n5074, n8003, n8824, 
        n8041, n7993, n9743, n8002, n9378, n6473, n9453, n9450, 
        n6468, n9280, n8001, n9377, n9278, n23, n8873, n9742, 
        n9189, n9188, n9187, n9468, n9276, n9275, n9467, n9274, 
        n8, n9466, n8_adj_963, n9369, n9368, n67, n27, n75, 
        n41, n10;
    
    VHI i2 (.Z(VCC_net));
    OSCH OSCinst0 (.STDBY(GND_net), .OSC(clk)) /* synthesis NOM_FREQ="26.60", syn_instantiated=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(104[11:15])
    defparam OSCinst0.NOM_FREQ = "26.60";
    FD1P3AY temp_control_FSM__i1 (.D(n4914), .SP(clk_enable_56), .CK(clk), 
            .Q(n1696));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(132[6] 149[15])
    defparam temp_control_FSM__i1.GSR = "ENABLED";
    FD1P3AX display_i0_i7 (.D(n4694), .SP(clk_enable_8), .CK(clk), .Q(display_c_6));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(121[4] 152[11])
    defparam display_i0_i7.GSR = "DISABLED";
    FD1P3AX display_i0_i6 (.D(n4692), .SP(clk_enable_8), .CK(clk), .Q(display_c_5));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(121[4] 152[11])
    defparam display_i0_i6.GSR = "DISABLED";
    FD1P3AX display_i0_i5 (.D(n4690), .SP(clk_enable_8), .CK(clk), .Q(display_c_4));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(121[4] 152[11])
    defparam display_i0_i5.GSR = "DISABLED";
    PFUMX i3330 (.BLUT(n2814), .ALUT(n4454), .C0(n8844), .Z(n4455));
    FD1P3AX display_i0_i4 (.D(n4688), .SP(clk_enable_8), .CK(clk), .Q(display_c_3));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(121[4] 152[11])
    defparam display_i0_i4.GSR = "DISABLED";
    FD1P3AX display_i0_i3 (.D(n4686), .SP(clk_enable_8), .CK(clk), .Q(display_c_2));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(121[4] 152[11])
    defparam display_i0_i3.GSR = "DISABLED";
    FD1S1A rpg_in_23__I_0_i1 (.D(rpg_in_23__N_130), .CK(rpg_in_23__N_131), 
           .Q(rpg_in[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam rpg_in_23__I_0_i1.GSR = "DISABLED";
    FD1S1A address_bus_7__I_0_i1 (.D(address_bus_7__N_142), .CK(address_bus_7__N_143), 
           .Q(address_bus[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam address_bus_7__I_0_i1.GSR = "DISABLED";
    FD1S1A PC_7__I_0_1193_i1 (.D(PC_7__N_70), .CK(PC_7__N_72), .Q(PC[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam PC_7__I_0_1193_i1.GSR = "DISABLED";
    FD1P3AX display_i0_i1 (.D(n4455), .SP(clk_enable_8), .CK(clk), .Q(display_c_0));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(121[4] 152[11])
    defparam display_i0_i1.GSR = "DISABLED";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1P3AX display_i0_i2 (.D(n4684), .SP(clk_enable_8), .CK(clk), .Q(display_c_1));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(121[4] 152[11])
    defparam display_i0_i2.GSR = "DISABLED";
    FD1P3AX creset_2112 (.D(n9751), .SP(clk_enable_9), .CK(clk), .Q(n3123));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam creset_2112.GSR = "ENABLED";
    VLO i1 (.Z(GND_net));
    CCU2D count_1937_add_4_5 (.A0(n19), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n18), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n7998), 
          .COUT(n7999), .S0(n112), .S1(n111));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937_add_4_5.INIT0 = 16'hfaaa;
    defparam count_1937_add_4_5.INIT1 = 16'hfaaa;
    defparam count_1937_add_4_5.INJECT1_0 = "NO";
    defparam count_1937_add_4_5.INJECT1_1 = "NO";
    CCU2D count_1937_add_4_23 (.A0(count[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8007), .S0(n94));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937_add_4_23.INIT0 = 16'hfaaa;
    defparam count_1937_add_4_23.INIT1 = 16'h0000;
    defparam count_1937_add_4_23.INJECT1_0 = "NO";
    defparam count_1937_add_4_23.INJECT1_1 = "NO";
    CCU2D count_1937_add_4_3 (.A0(n21), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n20), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n7997), 
          .COUT(n7998), .S0(n114), .S1(n113));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937_add_4_3.INIT0 = 16'hfaaa;
    defparam count_1937_add_4_3.INIT1 = 16'hfaaa;
    defparam count_1937_add_4_3.INJECT1_0 = "NO";
    defparam count_1937_add_4_3.INJECT1_1 = "NO";
    CCU2D count_1937_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n22), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n7997), .S1(n115));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937_add_4_1.INIT0 = 16'hF000;
    defparam count_1937_add_4_1.INIT1 = 16'h0555;
    defparam count_1937_add_4_1.INJECT1_0 = "NO";
    defparam count_1937_add_4_1.INJECT1_1 = "NO";
    FD1P3AX creset_2108 (.D(n9751), .SP(clk_enable_10), .CK(clk), .Q(n3118));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam creset_2108.GSR = "ENABLED";
    PFUMX i3558 (.BLUT(n2812), .ALUT(n4685), .C0(n8844), .Z(n4686));
    CCU2D count_1937_add_4_21 (.A0(count[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8006), .COUT(n8007), .S0(n96), .S1(n95));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937_add_4_21.INIT0 = 16'hfaaa;
    defparam count_1937_add_4_21.INIT1 = 16'hfaaa;
    defparam count_1937_add_4_21.INJECT1_0 = "NO";
    defparam count_1937_add_4_21.INJECT1_1 = "NO";
    FD1S1I B_11__I_0_i2 (.D(CI_c_1), .CK(A_11__N_156), .CD(n5074), .Q(B[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam B_11__I_0_i2.GSR = "DISABLED";
    FD1S1I B_11__I_0_i3 (.D(CI_c_2), .CK(A_11__N_156), .CD(n5074), .Q(B[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam B_11__I_0_i3.GSR = "DISABLED";
    FD1S1I B_11__I_0_i4 (.D(CI_c_3), .CK(A_11__N_156), .CD(n5074), .Q(B[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam B_11__I_0_i4.GSR = "DISABLED";
    FD1S1I B_11__I_0_i5 (.D(CI_c_4), .CK(A_11__N_156), .CD(n5074), .Q(B[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam B_11__I_0_i5.GSR = "DISABLED";
    FD1S1I B_11__I_0_i6 (.D(CI_c_5), .CK(A_11__N_156), .CD(n5074), .Q(B[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam B_11__I_0_i6.GSR = "DISABLED";
    FD1S1I B_11__I_0_i7 (.D(CI_c_6), .CK(A_11__N_156), .CD(n5074), .Q(B[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam B_11__I_0_i7.GSR = "DISABLED";
    FD1S1I B_11__I_0_i8 (.D(CI_c_7), .CK(A_11__N_156), .CD(n5074), .Q(B[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam B_11__I_0_i8.GSR = "DISABLED";
    FD1S1I B_11__I_0_i9 (.D(CI_c_8), .CK(A_11__N_156), .CD(n5074), .Q(B[8]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam B_11__I_0_i9.GSR = "DISABLED";
    FD1S1I B_11__I_0_i10 (.D(CI_c_9), .CK(A_11__N_156), .CD(n5074), .Q(B[9]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam B_11__I_0_i10.GSR = "DISABLED";
    FD1S1I B_11__I_0_i11 (.D(CI_c_10), .CK(A_11__N_156), .CD(n5074), .Q(B[10]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam B_11__I_0_i11.GSR = "DISABLED";
    FD1S1I B_11__I_0_i12 (.D(CI_c_11), .CK(A_11__N_156), .CD(n5074), .Q(B[11]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam B_11__I_0_i12.GSR = "DISABLED";
    FD1S1I control_3__I_0_i2 (.D(CI_c_19), .CK(control_3__N_173), .CD(n5075), 
           .Q(control[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam control_3__I_0_i2.GSR = "DISABLED";
    FD1S1I control_3__I_0_i3 (.D(CI_c_20), .CK(control_3__N_173), .CD(n5075), 
           .Q(control[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam control_3__I_0_i3.GSR = "DISABLED";
    FD1S1I control_3__I_0_i4 (.D(CI_c_21), .CK(control_3__N_173), .CD(n5075), 
           .Q(control[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam control_3__I_0_i4.GSR = "DISABLED";
    FD1S1I A_11__I_0_i2 (.D(n3191), .CK(A_11__N_156), .CD(n5076), .Q(A[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam A_11__I_0_i2.GSR = "DISABLED";
    FD1S1I A_11__I_0_i3 (.D(n3192), .CK(A_11__N_156), .CD(n5076), .Q(A[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam A_11__I_0_i3.GSR = "DISABLED";
    FD1S1I A_11__I_0_i4 (.D(n3193), .CK(A_11__N_156), .CD(n5076), .Q(A[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam A_11__I_0_i4.GSR = "DISABLED";
    FD1S1I A_11__I_0_i5 (.D(n3194), .CK(A_11__N_156), .CD(n5076), .Q(A[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam A_11__I_0_i5.GSR = "DISABLED";
    FD1S1I A_11__I_0_i6 (.D(n3195), .CK(A_11__N_156), .CD(n5076), .Q(A[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam A_11__I_0_i6.GSR = "DISABLED";
    FD1S1I A_11__I_0_i7 (.D(n3196), .CK(A_11__N_156), .CD(n5076), .Q(A[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam A_11__I_0_i7.GSR = "DISABLED";
    FD1S1I A_11__I_0_i8 (.D(n3197), .CK(A_11__N_156), .CD(n5076), .Q(A[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam A_11__I_0_i8.GSR = "DISABLED";
    FD1S1I A_11__I_0_i9 (.D(n3198), .CK(A_11__N_156), .CD(n5076), .Q(A[8]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam A_11__I_0_i9.GSR = "DISABLED";
    FD1S1I A_11__I_0_i10 (.D(n3199), .CK(A_11__N_156), .CD(n5076), .Q(A[9]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam A_11__I_0_i10.GSR = "DISABLED";
    FD1S1I A_11__I_0_i11 (.D(n3200), .CK(A_11__N_156), .CD(n5076), .Q(A[10]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam A_11__I_0_i11.GSR = "DISABLED";
    FD1S1I A_11__I_0_i12 (.D(n3201), .CK(A_11__N_156), .CD(n5076), .Q(A[11]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam A_11__I_0_i12.GSR = "DISABLED";
    FD1S1A rpg_in_23__I_0_i2 (.D(rpg_in_23__N_129), .CK(rpg_in_23__N_131), 
           .Q(rpg_in[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam rpg_in_23__I_0_i2.GSR = "DISABLED";
    FD1S1A rpg_in_23__I_0_i3 (.D(rpg_in_23__N_128), .CK(rpg_in_23__N_131), 
           .Q(rpg_in[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam rpg_in_23__I_0_i3.GSR = "DISABLED";
    FD1S1A rpg_in_23__I_0_i4 (.D(rpg_in_23__N_127), .CK(rpg_in_23__N_131), 
           .Q(rpg_in[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam rpg_in_23__I_0_i4.GSR = "DISABLED";
    FD1S1A rpg_in_23__I_0_i5 (.D(rpg_in_23__N_126), .CK(rpg_in_23__N_131), 
           .Q(rpg_in[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam rpg_in_23__I_0_i5.GSR = "DISABLED";
    FD1S1A rpg_in_23__I_0_i6 (.D(rpg_in_23__N_125), .CK(rpg_in_23__N_131), 
           .Q(rpg_in[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam rpg_in_23__I_0_i6.GSR = "DISABLED";
    FD1S1A rpg_in_23__I_0_i7 (.D(rpg_in_23__N_124), .CK(rpg_in_23__N_131), 
           .Q(rpg_in[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam rpg_in_23__I_0_i7.GSR = "DISABLED";
    FD1S1A rpg_in_23__I_0_i8 (.D(rpg_in_23__N_123), .CK(rpg_in_23__N_131), 
           .Q(rpg_in[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam rpg_in_23__I_0_i8.GSR = "DISABLED";
    FD1S1A rpg_in_23__I_0_i9 (.D(rpg_in_23__N_122), .CK(rpg_in_23__N_131), 
           .Q(rpg_in[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam rpg_in_23__I_0_i9.GSR = "DISABLED";
    FD1S1A rpg_in_23__I_0_i10 (.D(rpg_in_23__N_121), .CK(rpg_in_23__N_131), 
           .Q(rpg_in[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam rpg_in_23__I_0_i10.GSR = "DISABLED";
    FD1S1A rpg_in_23__I_0_i11 (.D(rpg_in_23__N_120), .CK(rpg_in_23__N_131), 
           .Q(rpg_in[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam rpg_in_23__I_0_i11.GSR = "DISABLED";
    FD1S1A rpg_in_23__I_0_i12 (.D(rpg_in_23__N_119), .CK(rpg_in_23__N_131), 
           .Q(rpg_in[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam rpg_in_23__I_0_i12.GSR = "DISABLED";
    FD1S1I rpg_in_23__I_0_i14 (.D(data_out_23__N_487[13]), .CK(rpg_in_23__N_131), 
           .CD(n5082), .Q(rpg_in[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam rpg_in_23__I_0_i14.GSR = "DISABLED";
    FD1S1I rpg_in_23__I_0_i15 (.D(data_out_23__N_487[14]), .CK(rpg_in_23__N_131), 
           .CD(n5082), .Q(rpg_in[14])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam rpg_in_23__I_0_i15.GSR = "DISABLED";
    FD1S1I rpg_in_23__I_0_i16 (.D(data_out_23__N_487[15]), .CK(rpg_in_23__N_131), 
           .CD(n5082), .Q(rpg_in[15])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam rpg_in_23__I_0_i16.GSR = "DISABLED";
    FD1S1A address_bus_7__I_0_i2 (.D(address_bus_7__N_141), .CK(address_bus_7__N_143), 
           .Q(address_bus[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam address_bus_7__I_0_i2.GSR = "DISABLED";
    FD1S1A address_bus_7__I_0_i3 (.D(address_bus_7__N_140), .CK(address_bus_7__N_143), 
           .Q(address_bus[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam address_bus_7__I_0_i3.GSR = "DISABLED";
    FD1S1A address_bus_7__I_0_i4 (.D(address_bus_7__N_139), .CK(address_bus_7__N_143), 
           .Q(address_bus[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam address_bus_7__I_0_i4.GSR = "DISABLED";
    FD1S1A address_bus_7__I_0_i5 (.D(address_bus_7__N_138), .CK(address_bus_7__N_143), 
           .Q(address_bus[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam address_bus_7__I_0_i5.GSR = "DISABLED";
    FD1S1A address_bus_7__I_0_i6 (.D(address_bus_7__N_137), .CK(address_bus_7__N_143), 
           .Q(address_bus[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam address_bus_7__I_0_i6.GSR = "DISABLED";
    FD1S1A address_bus_7__I_0_i7 (.D(address_bus_7__N_136), .CK(address_bus_7__N_143), 
           .Q(address_bus[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam address_bus_7__I_0_i7.GSR = "DISABLED";
    FD1S1A address_bus_7__I_0_i8 (.D(address_bus_7__N_135), .CK(address_bus_7__N_143), 
           .Q(address_bus[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam address_bus_7__I_0_i8.GSR = "DISABLED";
    FD1S1I rpg_sel_1__I_0_i2 (.D(CI_c_17), .CK(control_3__N_173_derived_2), 
           .CD(n5077), .Q(rpg_sel[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam rpg_sel_1__I_0_i2.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i2 (.D(data_out_23__N_487[1]), .CK(MBR_23__N_106), 
           .CD(n5078), .Q(MBR[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MBR_23__I_0_i2.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i3 (.D(data_out_23__N_487[2]), .CK(MBR_23__N_106), 
           .CD(n5078), .Q(MBR[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MBR_23__I_0_i3.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i4 (.D(data_out_23__N_487[3]), .CK(MBR_23__N_106), 
           .CD(n5078), .Q(MBR[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MBR_23__I_0_i4.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i5 (.D(data_out_23__N_487[4]), .CK(MBR_23__N_106), 
           .CD(n5078), .Q(MBR[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MBR_23__I_0_i5.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i6 (.D(data_out_23__N_487[5]), .CK(MBR_23__N_106), 
           .CD(n5078), .Q(MBR[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MBR_23__I_0_i6.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i7 (.D(data_out_23__N_487[6]), .CK(MBR_23__N_106), 
           .CD(n5078), .Q(MBR[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MBR_23__I_0_i7.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i8 (.D(data_out_23__N_487[7]), .CK(MBR_23__N_106), 
           .CD(n5078), .Q(MBR[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MBR_23__I_0_i8.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i9 (.D(data_out_23__N_487[8]), .CK(MBR_23__N_106), 
           .CD(n5078), .Q(MBR[8]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MBR_23__I_0_i9.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i10 (.D(data_out_23__N_487[9]), .CK(MBR_23__N_106), 
           .CD(n5078), .Q(MBR[9]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MBR_23__I_0_i10.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i11 (.D(data_out_23__N_487[10]), .CK(MBR_23__N_106), 
           .CD(n5078), .Q(MBR[10]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MBR_23__I_0_i11.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i12 (.D(data_out_23__N_487[11]), .CK(MBR_23__N_106), 
           .CD(n5078), .Q(MBR[11]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MBR_23__I_0_i12.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i13 (.D(data_out_23__N_487[12]), .CK(MBR_23__N_106), 
           .CD(n5078), .Q(MBR[12]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MBR_23__I_0_i13.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i14 (.D(data_out_23__N_487[13]), .CK(MBR_23__N_106), 
           .CD(n5078), .Q(MBR[13]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MBR_23__I_0_i14.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i15 (.D(data_out_23__N_487[14]), .CK(MBR_23__N_106), 
           .CD(n5078), .Q(MBR[14]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MBR_23__I_0_i15.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i16 (.D(data_out_23__N_487[15]), .CK(MBR_23__N_106), 
           .CD(n5078), .Q(MBR[15]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MBR_23__I_0_i16.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i17 (.D(data_out_23__N_487[16]), .CK(MBR_23__N_106), 
           .CD(n5078), .Q(MBR[16]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MBR_23__I_0_i17.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i18 (.D(data_out_23__N_487[17]), .CK(MBR_23__N_106), 
           .CD(n5078), .Q(MBR[17]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MBR_23__I_0_i18.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i19 (.D(data_out_23__N_487[18]), .CK(MBR_23__N_106), 
           .CD(n5078), .Q(MBR[18]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MBR_23__I_0_i19.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i20 (.D(data_out_23__N_487[19]), .CK(MBR_23__N_106), 
           .CD(n5078), .Q(MBR[19]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MBR_23__I_0_i20.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i21 (.D(data_out_23__N_487[20]), .CK(MBR_23__N_106), 
           .CD(n5078), .Q(MBR[20]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MBR_23__I_0_i21.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i22 (.D(data_out_23__N_487[21]), .CK(MBR_23__N_106), 
           .CD(n5078), .Q(MBR[21]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MBR_23__I_0_i22.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i23 (.D(data_out_23__N_487[22]), .CK(MBR_23__N_106), 
           .CD(n5078), .Q(MBR[22]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MBR_23__I_0_i23.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i24 (.D(data_out_23__N_487[23]), .CK(MBR_23__N_106), 
           .CD(n5078), .Q(MBR[23]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MBR_23__I_0_i24.GSR = "DISABLED";
    FD1S1I Rdisplay_13__I_0_i2 (.D(n3191), .CK(Rdisplay_13__N_51), .CD(n5079), 
           .Q(Rdisplay[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam Rdisplay_13__I_0_i2.GSR = "DISABLED";
    FD1S1I Rdisplay_13__I_0_i3 (.D(n3192), .CK(Rdisplay_13__N_51), .CD(n5079), 
           .Q(Rdisplay[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam Rdisplay_13__I_0_i3.GSR = "DISABLED";
    FD1S1I Rdisplay_13__I_0_i4 (.D(n3193), .CK(Rdisplay_13__N_51), .CD(n5079), 
           .Q(Rdisplay[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam Rdisplay_13__I_0_i4.GSR = "DISABLED";
    FD1S1I Rdisplay_13__I_0_i5 (.D(n3194), .CK(Rdisplay_13__N_51), .CD(n5079), 
           .Q(Rdisplay[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam Rdisplay_13__I_0_i5.GSR = "DISABLED";
    FD1S1I Rdisplay_13__I_0_i6 (.D(n3195), .CK(Rdisplay_13__N_51), .CD(n5079), 
           .Q(Rdisplay[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam Rdisplay_13__I_0_i6.GSR = "DISABLED";
    FD1S1I Rdisplay_13__I_0_i7 (.D(n3196), .CK(Rdisplay_13__N_51), .CD(n5079), 
           .Q(Rdisplay[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam Rdisplay_13__I_0_i7.GSR = "DISABLED";
    FD1S1I Rdisplay_13__I_0_i8 (.D(n3197), .CK(Rdisplay_13__N_51), .CD(n5079), 
           .Q(Rdisplay[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam Rdisplay_13__I_0_i8.GSR = "DISABLED";
    FD1S1I Rdisplay_13__I_0_i9 (.D(n3198), .CK(Rdisplay_13__N_51), .CD(n5079), 
           .Q(Rdisplay[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam Rdisplay_13__I_0_i9.GSR = "DISABLED";
    FD1S1I Rdisplay_13__I_0_i10 (.D(n3199), .CK(Rdisplay_13__N_51), .CD(n5079), 
           .Q(Rdisplay[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam Rdisplay_13__I_0_i10.GSR = "DISABLED";
    FD1S1I Rdisplay_13__I_0_i11 (.D(n3200), .CK(Rdisplay_13__N_51), .CD(n5079), 
           .Q(Rdisplay[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam Rdisplay_13__I_0_i11.GSR = "DISABLED";
    FD1S1I Rdisplay_13__I_0_i12 (.D(n3201), .CK(Rdisplay_13__N_51), .CD(n5079), 
           .Q(Rdisplay[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam Rdisplay_13__I_0_i12.GSR = "DISABLED";
    FD1S1I Rdisplay_13__I_0_i13 (.D(n3202), .CK(Rdisplay_13__N_51), .CD(n5079), 
           .Q(Rdisplay[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam Rdisplay_13__I_0_i13.GSR = "DISABLED";
    FD1S1I Rdisplay_13__I_0_i14 (.D(n3203), .CK(Rdisplay_13__N_51), .CD(n5079), 
           .Q(Rdisplay[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam Rdisplay_13__I_0_i14.GSR = "DISABLED";
    FD1S1I MAR_7__I_0_i2 (.D(PC[1]), .CK(MAR_7__N_81), .CD(n5080), .Q(MAR[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MAR_7__I_0_i2.GSR = "DISABLED";
    FD1S1I MAR_7__I_0_i3 (.D(PC[2]), .CK(MAR_7__N_81), .CD(n5080), .Q(MAR[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MAR_7__I_0_i3.GSR = "DISABLED";
    FD1S1I MAR_7__I_0_i4 (.D(PC[3]), .CK(MAR_7__N_81), .CD(n5080), .Q(MAR[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MAR_7__I_0_i4.GSR = "DISABLED";
    FD1S1I MAR_7__I_0_i5 (.D(PC[4]), .CK(MAR_7__N_81), .CD(n5080), .Q(MAR[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MAR_7__I_0_i5.GSR = "DISABLED";
    FD1S1I MAR_7__I_0_i6 (.D(PC[5]), .CK(MAR_7__N_81), .CD(n5080), .Q(MAR[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MAR_7__I_0_i6.GSR = "DISABLED";
    FD1S1I MAR_7__I_0_i7 (.D(PC[6]), .CK(MAR_7__N_81), .CD(n5080), .Q(MAR[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MAR_7__I_0_i7.GSR = "DISABLED";
    FD1S1I MAR_7__I_0_i8 (.D(PC[7]), .CK(MAR_7__N_81), .CD(n5080), .Q(MAR[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MAR_7__I_0_i8.GSR = "DISABLED";
    FD1S1A PC_7__I_0_1193_i2 (.D(PC_7__N_68), .CK(PC_7__N_72), .Q(PC[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam PC_7__I_0_1193_i2.GSR = "DISABLED";
    FD1S1A PC_7__I_0_1193_i3 (.D(PC_7__N_66), .CK(PC_7__N_72), .Q(PC[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam PC_7__I_0_1193_i3.GSR = "DISABLED";
    FD1S1A PC_7__I_0_1193_i4 (.D(PC_7__N_64), .CK(PC_7__N_72), .Q(PC[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam PC_7__I_0_1193_i4.GSR = "DISABLED";
    FD1S1A PC_7__I_0_1193_i5 (.D(PC_7__N_62), .CK(PC_7__N_72), .Q(PC[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam PC_7__I_0_1193_i5.GSR = "DISABLED";
    FD1S1A PC_7__I_0_1193_i6 (.D(PC_7__N_60), .CK(PC_7__N_72), .Q(PC[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam PC_7__I_0_1193_i6.GSR = "DISABLED";
    FD1S1A PC_7__I_0_1193_i7 (.D(PC_7__N_58), .CK(PC_7__N_72), .Q(PC[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam PC_7__I_0_1193_i7.GSR = "DISABLED";
    FD1S1A PC_7__I_0_1193_i8 (.D(PC_7__N_56), .CK(PC_7__N_72), .Q(PC[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam PC_7__I_0_1193_i8.GSR = "DISABLED";
    FD1S1I CI_23__I_0_1194_i2 (.D(MBR[1]), .CK(CI_23__N_36), .CD(n5081), 
           .Q(CI_c_1));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam CI_23__I_0_1194_i2.GSR = "DISABLED";
    FD1S1I CI_23__I_0_1194_i3 (.D(MBR[2]), .CK(CI_23__N_36), .CD(n5081), 
           .Q(CI_c_2));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam CI_23__I_0_1194_i3.GSR = "DISABLED";
    FD1S1I CI_23__I_0_1194_i4 (.D(MBR[3]), .CK(CI_23__N_36), .CD(n5081), 
           .Q(CI_c_3));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam CI_23__I_0_1194_i4.GSR = "DISABLED";
    FD1S1I CI_23__I_0_1194_i5 (.D(MBR[4]), .CK(CI_23__N_36), .CD(n5081), 
           .Q(CI_c_4));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam CI_23__I_0_1194_i5.GSR = "DISABLED";
    FD1S1I CI_23__I_0_1194_i6 (.D(MBR[5]), .CK(CI_23__N_36), .CD(n5081), 
           .Q(CI_c_5));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam CI_23__I_0_1194_i6.GSR = "DISABLED";
    FD1S1I CI_23__I_0_1194_i7 (.D(MBR[6]), .CK(CI_23__N_36), .CD(n5081), 
           .Q(CI_c_6));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam CI_23__I_0_1194_i7.GSR = "DISABLED";
    FD1S1I CI_23__I_0_1194_i8 (.D(MBR[7]), .CK(CI_23__N_36), .CD(n5081), 
           .Q(CI_c_7));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam CI_23__I_0_1194_i8.GSR = "DISABLED";
    FD1S1I CI_23__I_0_1194_i9 (.D(MBR[8]), .CK(CI_23__N_36), .CD(n5081), 
           .Q(CI_c_8));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam CI_23__I_0_1194_i9.GSR = "DISABLED";
    FD1S1I CI_23__I_0_1194_i10 (.D(MBR[9]), .CK(CI_23__N_36), .CD(n5081), 
           .Q(CI_c_9));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam CI_23__I_0_1194_i10.GSR = "DISABLED";
    FD1S1I CI_23__I_0_1194_i11 (.D(MBR[10]), .CK(CI_23__N_36), .CD(n5081), 
           .Q(CI_c_10));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam CI_23__I_0_1194_i11.GSR = "DISABLED";
    FD1S1I CI_23__I_0_1194_i12 (.D(MBR[11]), .CK(CI_23__N_36), .CD(n5081), 
           .Q(CI_c_11));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam CI_23__I_0_1194_i12.GSR = "DISABLED";
    FD1S1I CI_23__I_0_1194_i13 (.D(MBR[12]), .CK(CI_23__N_36), .CD(n5081), 
           .Q(CI_c_12));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam CI_23__I_0_1194_i13.GSR = "DISABLED";
    FD1S1I CI_23__I_0_1194_i14 (.D(MBR[13]), .CK(CI_23__N_36), .CD(n5081), 
           .Q(CI_c_13));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam CI_23__I_0_1194_i14.GSR = "DISABLED";
    FD1S1I CI_23__I_0_1194_i15 (.D(MBR[14]), .CK(CI_23__N_36), .CD(n5081), 
           .Q(CI_c_14));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam CI_23__I_0_1194_i15.GSR = "DISABLED";
    FD1S1I CI_23__I_0_1194_i16 (.D(MBR[15]), .CK(CI_23__N_36), .CD(n5081), 
           .Q(CI_c_15));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam CI_23__I_0_1194_i16.GSR = "DISABLED";
    FD1S1I CI_23__I_0_1194_i17 (.D(MBR[16]), .CK(CI_23__N_36), .CD(n5081), 
           .Q(CI_c_16));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam CI_23__I_0_1194_i17.GSR = "DISABLED";
    FD1S1I CI_23__I_0_1194_i18 (.D(MBR[17]), .CK(CI_23__N_36), .CD(n5081), 
           .Q(CI_c_17));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam CI_23__I_0_1194_i18.GSR = "DISABLED";
    FD1S1I CI_23__I_0_1194_i19 (.D(MBR[18]), .CK(CI_23__N_36), .CD(n5081), 
           .Q(CI_c_18));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam CI_23__I_0_1194_i19.GSR = "DISABLED";
    FD1S1I CI_23__I_0_1194_i20 (.D(MBR[19]), .CK(CI_23__N_36), .CD(n5081), 
           .Q(CI_c_19));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam CI_23__I_0_1194_i20.GSR = "DISABLED";
    FD1S1I CI_23__I_0_1194_i21 (.D(MBR[20]), .CK(CI_23__N_36), .CD(n5081), 
           .Q(CI_c_20));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam CI_23__I_0_1194_i21.GSR = "DISABLED";
    FD1S1I CI_23__I_0_1194_i22 (.D(MBR[21]), .CK(CI_23__N_36), .CD(n5081), 
           .Q(CI_c_21));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam CI_23__I_0_1194_i22.GSR = "DISABLED";
    FD1S1I CI_23__I_0_1194_i23 (.D(MBR[22]), .CK(CI_23__N_36), .CD(n5081), 
           .Q(CI_c_22));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam CI_23__I_0_1194_i23.GSR = "DISABLED";
    FD1S1I CI_23__I_0_1194_i24 (.D(MBR[23]), .CK(CI_23__N_36), .CD(n5081), 
           .Q(CI_c_23));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam CI_23__I_0_1194_i24.GSR = "DISABLED";
    PFUMX i7935 (.BLUT(n9189), .ALUT(data_out_23__N_487[5]), .C0(n1774), 
          .Z(rpg_in_23__N_125));
    PFUMX i7933 (.BLUT(n9125), .ALUT(n9187), .C0(n5036), .Z(n9188));
    FD1P3AX creset_2104 (.D(n9751), .SP(clk_enable_11), .CK(clk), .Q(n3113));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam creset_2104.GSR = "ENABLED";
    CCU2D PC_7__I_0_9 (.A0(PC[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n7996), 
          .S0(PC_7__N_57[7]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam PC_7__I_0_9.INIT0 = 16'h5aaa;
    defparam PC_7__I_0_9.INIT1 = 16'h0000;
    defparam PC_7__I_0_9.INJECT1_0 = "NO";
    defparam PC_7__I_0_9.INJECT1_1 = "NO";
    FD1P3AX sel_i0_i1 (.D(temp_control[0]), .SP(clk_enable_46), .CK(clk), 
            .Q(sel_c_0));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(121[4] 152[11])
    defparam sel_i0_i1.GSR = "DISABLED";
    FD1P3AX temp_control_FSM__i5 (.D(temp_control[2]), .SP(clk_enable_56), 
            .CK(clk), .Q(temp_control[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(132[6] 149[15])
    defparam temp_control_FSM__i5.GSR = "ENABLED";
    FD1P3AX temp_control_FSM__i4 (.D(temp_control[1]), .SP(clk_enable_56), 
            .CK(clk), .Q(temp_control[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(132[6] 149[15])
    defparam temp_control_FSM__i4.GSR = "ENABLED";
    CCU2D count_1937_add_4_19 (.A0(count[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8005), .COUT(n8006), .S0(n98), .S1(n97));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937_add_4_19.INIT0 = 16'hfaaa;
    defparam count_1937_add_4_19.INIT1 = 16'hfaaa;
    defparam count_1937_add_4_19.INJECT1_0 = "NO";
    defparam count_1937_add_4_19.INJECT1_1 = "NO";
    CCU2D PC_7__I_0_7 (.A0(PC[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n7995), 
          .COUT(n7996), .S0(PC_7__N_57[5]), .S1(PC_7__N_57[6]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam PC_7__I_0_7.INIT0 = 16'h5aaa;
    defparam PC_7__I_0_7.INIT1 = 16'h5aaa;
    defparam PC_7__I_0_7.INJECT1_0 = "NO";
    defparam PC_7__I_0_7.INJECT1_1 = "NO";
    TSALL TSALL_INST (.TSALL(GND_net));
    PFUMX i8106 (.BLUT(n9744), .ALUT(n9745), .C0(bcd_out_15__N_344), .Z(n9237));
    CCU2D PC_7__I_0_5 (.A0(PC[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n7994), 
          .COUT(n7995), .S0(PC_7__N_57[3]), .S1(PC_7__N_57[4]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam PC_7__I_0_5.INIT0 = 16'h5aaa;
    defparam PC_7__I_0_5.INIT1 = 16'h5aaa;
    defparam PC_7__I_0_5.INJECT1_0 = "NO";
    defparam PC_7__I_0_5.INJECT1_1 = "NO";
    FD1P3AX temp_control_FSM__i3 (.D(temp_control[0]), .SP(clk_enable_56), 
            .CK(clk), .Q(temp_control[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(132[6] 149[15])
    defparam temp_control_FSM__i3.GSR = "ENABLED";
    OB display_pad_5 (.I(display_c_5), .O(display[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    FD1P3AX temp_control_FSM__i2 (.D(n1729), .SP(clk_enable_56), .CK(clk), 
            .Q(temp_control[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(132[6] 149[15])
    defparam temp_control_FSM__i2.GSR = "ENABLED";
    FD1P3AX creset_2100 (.D(n9751), .SP(clk_enable_17), .CK(clk), .Q(n3108));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam creset_2100.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(control[3]), .B(logic_result[0]), .C(n8806), .D(control[2]), 
         .Z(n27)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i1_4_lut.init = 16'ha088;
    PFUMX i7852 (.BLUT(bcd_out_15__N_285), .ALUT(n9043), .C0(n2868), .Z(bcd_out_15__N_299));
    CCU2D count_1937_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8004), .COUT(n8005), .S0(n100), .S1(n99));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937_add_4_17.INIT0 = 16'hfaaa;
    defparam count_1937_add_4_17.INIT1 = 16'hfaaa;
    defparam count_1937_add_4_17.INJECT1_0 = "NO";
    defparam count_1937_add_4_17.INJECT1_1 = "NO";
    PFUMX i7920 (.BLUT(n9170), .ALUT(data_out_23__N_487[11]), .C0(n1774), 
          .Z(rpg_in_23__N_119));
    FD1P3AX clk_0_888 (.D(clk_0_N_249), .SP(clk_enable_43), .CK(clk), 
            .Q(clk_0)) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(121[4] 152[11])
    defparam clk_0_888.GSR = "DISABLED";
    OB display_pad_6 (.I(display_c_6), .O(display[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    FD1P3AY state_FSM__i1 (.D(n9750), .SP(clk_enable_56), .CK(clk), .Q(n1783));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam state_FSM__i1.GSR = "ENABLED";
    PFUMX i7666 (.BLUT(n8845), .ALUT(n8846), .C0(rpg_sel[1]), .Z(n3187));
    PFUMX i3556 (.BLUT(n2813), .ALUT(n4683), .C0(n8844), .Z(n4684));
    SPR16X4C selector_1__I_05 (.DI0(rpg_in[0]), .DI1(rpg_in[1]), .DI2(rpg_in[2]), 
            .DI3(rpg_in[3]), .AD0(rpg_sel[0]), .AD1(rpg_sel[1]), .AD2(GND_net), 
            .AD3(GND_net), .CK(clk), .WRE(VCC_net), .DO0(n3190), .DO1(n3191), 
            .DO2(n3192), .DO3(n3193));
    defparam selector_1__I_05.initval = "0x0000000000000000";
    SPR16X4C selector_1__I_04 (.DI0(rpg_in[4]), .DI1(rpg_in[5]), .DI2(rpg_in[6]), 
            .DI3(rpg_in[7]), .AD0(rpg_sel[0]), .AD1(rpg_sel[1]), .AD2(GND_net), 
            .AD3(GND_net), .CK(clk), .WRE(VCC_net), .DO0(n3194), .DO1(n3195), 
            .DO2(n3196), .DO3(n3197));
    defparam selector_1__I_04.initval = "0x0000000000000000";
    SPR16X4C selector_1__I_03 (.DI0(rpg_in[8]), .DI1(rpg_in[9]), .DI2(rpg_in[10]), 
            .DI3(rpg_in[11]), .AD0(rpg_sel[0]), .AD1(rpg_sel[1]), .AD2(GND_net), 
            .AD3(GND_net), .CK(clk), .WRE(VCC_net), .DO0(n3198), .DO1(n3199), 
            .DO2(n3200), .DO3(n3201));
    defparam selector_1__I_03.initval = "0x0000000000000000";
    SPR16X4C selector_1__I_02 (.DI0(rpg_in[12]), .DI1(rpg_in[13]), .DI2(rpg_in[14]), 
            .DI3(rpg_in[15]), .AD0(rpg_sel[0]), .AD1(rpg_sel[1]), .AD2(GND_net), 
            .AD3(GND_net), .CK(clk), .WRE(VCC_net), .DO0(n3202), .DO1(n3203));
    defparam selector_1__I_02.initval = "0x0000000000000000";
    PFUMX i7918 (.BLUT(sum_result[11]), .ALUT(n9168), .C0(n5036), .Z(n9169));
    PFUMX i3560 (.BLUT(n2811), .ALUT(n4687), .C0(n8844), .Z(n4688));
    FD1P3IX count_1937__i12 (.D(n103), .SP(clk_enable_43), .CD(clk_enable_46), 
            .CK(clk), .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937__i12.GSR = "DISABLED";
    FD1P3IX count_1937__i11 (.D(n104), .SP(clk_enable_43), .CD(clk_enable_46), 
            .CK(clk), .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937__i11.GSR = "DISABLED";
    OB display_pad_4 (.I(display_c_4), .O(display[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    OB display_pad_3 (.I(display_c_3), .O(display[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    OB display_pad_2 (.I(display_c_2), .O(display[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    OB display_pad_1 (.I(display_c_1), .O(display[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    OB display_pad_0 (.I(display_c_0), .O(display[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    OB sel_pad_3 (.I(sel_c_3), .O(sel[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    OB sel_pad_2 (.I(sel_c_2), .O(sel[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    OB sel_pad_1 (.I(sel_c_1), .O(sel[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    OB sel_pad_0 (.I(sel_c_0), .O(sel[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    OB CI_pad_23 (.I(CI_c_23), .O(CI[23]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_22 (.I(CI_c_22), .O(CI[22]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_21 (.I(CI_c_21), .O(CI[21]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_20 (.I(CI_c_20), .O(CI[20]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_19 (.I(CI_c_19), .O(CI[19]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_18 (.I(CI_c_18), .O(CI[18]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_17 (.I(CI_c_17), .O(CI[17]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_16 (.I(CI_c_16), .O(CI[16]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_15 (.I(CI_c_15), .O(CI[15]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_14 (.I(CI_c_14), .O(CI[14]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_13 (.I(CI_c_13), .O(CI[13]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_12 (.I(CI_c_12), .O(CI[12]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_11 (.I(CI_c_11), .O(CI[11]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_10 (.I(CI_c_10), .O(CI[10]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_9 (.I(CI_c_9), .O(CI[9]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_8 (.I(CI_c_8), .O(CI[8]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_7 (.I(CI_c_7), .O(CI[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_6 (.I(CI_c_6), .O(CI[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_5 (.I(CI_c_5), .O(CI[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_4 (.I(CI_c_4), .O(CI[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_3 (.I(CI_c_3), .O(CI[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_2 (.I(CI_c_2), .O(CI[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_1 (.I(CI_c_1), .O(CI[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_0 (.I(CI_c_0), .O(CI[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    IB reset_pad (.I(reset), .O(reset_c));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    FD1P3IX state_FSM__i12 (.D(n4915), .SP(clk_enable_56), .CD(n6451), 
            .CK(clk), .Q(n1772));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam state_FSM__i12.GSR = "ENABLED";
    FD1P3IX state_FSM__i6 (.D(n4915), .SP(clk_enable_56), .CD(n5113), 
            .CK(clk), .Q(control_3__N_173));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam state_FSM__i6.GSR = "ENABLED";
    FD1P3IX count_1937__i21 (.D(n94), .SP(clk_enable_43), .CD(clk_enable_46), 
            .CK(clk), .Q(count[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937__i21.GSR = "DISABLED";
    FD1P3IX count_1937__i20 (.D(n95), .SP(clk_enable_43), .CD(clk_enable_46), 
            .CK(clk), .Q(count[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937__i20.GSR = "DISABLED";
    FD1P3IX count_1937__i19 (.D(n96), .SP(clk_enable_43), .CD(clk_enable_46), 
            .CK(clk), .Q(count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937__i19.GSR = "DISABLED";
    FD1P3IX count_1937__i10 (.D(n105), .SP(clk_enable_43), .CD(clk_enable_46), 
            .CK(clk), .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937__i10.GSR = "DISABLED";
    FD1P3IX count_1937__i9 (.D(n106), .SP(clk_enable_43), .CD(clk_enable_46), 
            .CK(clk), .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937__i9.GSR = "DISABLED";
    FD1P3IX count_1937__i8 (.D(n107), .SP(clk_enable_43), .CD(clk_enable_46), 
            .CK(clk), .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937__i8.GSR = "DISABLED";
    FD1P3IX count_1937__i7 (.D(n108), .SP(clk_enable_43), .CD(clk_enable_46), 
            .CK(clk), .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937__i7.GSR = "DISABLED";
    FD1P3IX count_1937__i18 (.D(n97), .SP(clk_enable_43), .CD(clk_enable_46), 
            .CK(clk), .Q(count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937__i18.GSR = "DISABLED";
    FD1P3IX count_1937__i17 (.D(n98), .SP(clk_enable_43), .CD(clk_enable_46), 
            .CK(clk), .Q(count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937__i17.GSR = "DISABLED";
    FD1P3IX count_1937__i16 (.D(n99), .SP(clk_enable_43), .CD(clk_enable_46), 
            .CK(clk), .Q(count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937__i16.GSR = "DISABLED";
    FD1P3IX count_1937__i15 (.D(n100), .SP(clk_enable_43), .CD(clk_enable_46), 
            .CK(clk), .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937__i15.GSR = "DISABLED";
    FD1P3IX count_1937__i6 (.D(n109), .SP(clk_enable_43), .CD(clk_enable_46), 
            .CK(clk), .Q(n16)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937__i6.GSR = "DISABLED";
    FD1P3IX count_1937__i5 (.D(n110), .SP(clk_enable_43), .CD(clk_enable_46), 
            .CK(clk), .Q(n17)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937__i5.GSR = "DISABLED";
    FD1P3IX count_1937__i14 (.D(n101), .SP(clk_enable_43), .CD(clk_enable_46), 
            .CK(clk), .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937__i14.GSR = "DISABLED";
    FD1P3IX count_1937__i13 (.D(n102), .SP(clk_enable_43), .CD(clk_enable_46), 
            .CK(clk), .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937__i13.GSR = "DISABLED";
    FD1P3IX count_1937__i4 (.D(n111), .SP(clk_enable_43), .CD(clk_enable_46), 
            .CK(clk), .Q(n18)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937__i4.GSR = "DISABLED";
    FD1P3IX count_1937__i3 (.D(n112), .SP(clk_enable_43), .CD(clk_enable_46), 
            .CK(clk), .Q(n19)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937__i3.GSR = "DISABLED";
    FD1P3IX count_1937__i2 (.D(n113), .SP(clk_enable_43), .CD(clk_enable_46), 
            .CK(clk), .Q(n20)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937__i2.GSR = "DISABLED";
    FD1P3IX count_1937__i1 (.D(n114), .SP(clk_enable_43), .CD(clk_enable_46), 
            .CK(clk), .Q(n21)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937__i1.GSR = "DISABLED";
    LUT4 i5200_2_lut_rep_103_4_lut_4_lut_then_4_lut (.A(reset_c), .B(bcd_out_15__N_252), 
         .C(n9335), .D(n9269), .Z(n9745)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5200_2_lut_rep_103_4_lut_4_lut_then_4_lut.init = 16'h0040;
    LUT4 i5200_2_lut_rep_103_4_lut_4_lut_else_4_lut (.A(reset_c), .B(bcd_out_15__N_252), 
         .C(n9335), .D(n9269), .Z(n9744)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5200_2_lut_rep_103_4_lut_4_lut_else_4_lut.init = 16'h1004;
    LUT4 bcd_out_15__N_278_3__bdd_4_lut (.A(n9335), .B(bcd_out_15__N_280), 
         .C(bcd_out_15__N_298), .D(n9330), .Z(n9226)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A (B (C+(D))+!B !(C+(D))))) */ ;
    defparam bcd_out_15__N_278_3__bdd_4_lut.init = 16'h399c;
    LUT4 E_3__I_0_Mux_5_i7_4_lut_4_lut_else_4_lut (.A(reset_c), .B(bcd_out_15__N_417), 
         .C(n9280), .D(n9261), .Z(n9447)) /* synthesis lut_function=(A+!(B ((D)+!C)+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam E_3__I_0_Mux_5_i7_4_lut_4_lut_else_4_lut.init = 16'hbafb;
    LUT4 i5_4_lut (.A(n1776), .B(n10), .C(n9468), .D(n1779), .Z(n8032)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i5_4_lut.init = 16'hefee;
    FD1P3IX count_1937__i0 (.D(n115), .SP(clk_enable_43), .CD(clk_enable_46), 
            .CK(clk), .Q(n22)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937__i0.GSR = "DISABLED";
    FD1S1I rpg_in_23__I_0_i13 (.D(data_out_23__N_487[12]), .CK(rpg_in_23__N_131), 
           .CD(n5082), .Q(rpg_in[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam rpg_in_23__I_0_i13.GSR = "DISABLED";
    LUT4 i4_4_lut (.A(n1774), .B(n1783), .C(Rdisplay_13__N_51), .D(n1773), 
         .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut (.A(n9393), .B(CI_c_19), .C(CI_c_20), .Z(n8787)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_else_3_lut (.A(n9742), .B(CI_c_19), .C(CI_c_20), .D(CI_c_18), 
         .Z(n9466)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(172[6] 185[15])
    defparam i1_4_lut_else_3_lut.init = 16'h8a00;
    LUT4 i1_2_lut_rep_311 (.A(CI_c_22), .B(CI_c_23), .Z(n9742)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(172[6] 185[15])
    defparam i1_2_lut_rep_311.init = 16'h2222;
    LUT4 i1_4_lut_then_3_lut_4_lut (.A(CI_c_22), .B(CI_c_23), .C(CI_c_20), 
         .D(CI_c_19), .Z(n9467)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(172[6] 185[15])
    defparam i1_4_lut_then_3_lut_4_lut.init = 16'h0002;
    FD1P3AX sel_i0_i2 (.D(temp_control[1]), .SP(clk_enable_46), .CK(clk), 
            .Q(sel_c_1));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(121[4] 152[11])
    defparam sel_i0_i2.GSR = "DISABLED";
    CCU2D count_1937_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8003), .COUT(n8004), .S0(n102), .S1(n101));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937_add_4_15.INIT0 = 16'hfaaa;
    defparam count_1937_add_4_15.INIT1 = 16'hfaaa;
    defparam count_1937_add_4_15.INJECT1_0 = "NO";
    defparam count_1937_add_4_15.INJECT1_1 = "NO";
    LUT4 mux_3127_i3_then_4_lut (.A(n2868), .B(n2916), .C(bcd_out_15__N_269), 
         .D(n9368), .Z(n9445)) /* synthesis lut_function=(A (B (C (D))+!B !(C))+!A !(B+(C))) */ ;
    defparam mux_3127_i3_then_4_lut.init = 16'h8303;
    PFUMX i3566 (.BLUT(n2808), .ALUT(n4693), .C0(n8844), .Z(n4694));
    FD1P3AX sel_i0_i3 (.D(temp_control[2]), .SP(clk_enable_46), .CK(clk), 
            .Q(sel_c_2));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(121[4] 152[11])
    defparam sel_i0_i3.GSR = "DISABLED";
    FD1P3AX sel_i0_i4 (.D(temp_control[3]), .SP(clk_enable_46), .CK(clk), 
            .Q(sel_c_3));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(121[4] 152[11])
    defparam sel_i0_i4.GSR = "DISABLED";
    FD1P3AX state_FSM__i2 (.D(n8032), .SP(clk_enable_56), .CK(clk), .Q(MAR_7__N_81));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam state_FSM__i2.GSR = "ENABLED";
    LUT4 mux_3127_i3_else_4_lut (.A(n2912), .B(n2868), .C(bcd_out_15__N_269), 
         .D(n9368), .Z(n9444)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam mux_3127_i3_else_4_lut.init = 16'h8880;
    LUT4 i3227_1_lut_rep_308 (.A(control[2]), .Z(n9442)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam i3227_1_lut_rep_308.init = 16'h5555;
    LUT4 i2_4_lut (.A(Rdisplay[11]), .B(n9437), .C(n9743), .D(Rdisplay[10]), 
         .Z(bcd_out_15__N_274)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A !(B ((D)+!C)+!B !((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2_4_lut.init = 16'h6696;
    LUT4 i3456_2_lut_rep_271_2_lut (.A(control[2]), .B(control[1]), .Z(n9405)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam i3456_2_lut_rep_271_2_lut.init = 16'h4444;
    LUT4 i2_3_lut_rep_309 (.A(control_3__N_173), .B(n1775), .C(n1772), 
         .Z(control_3__N_173_derived_2)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_309.init = 16'hfefe;
    LUT4 i3921_1_lut_3_lut (.A(control_3__N_173), .B(n1775), .C(n1772), 
         .Z(n5077)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i3921_1_lut_3_lut.init = 16'h0101;
    LUT4 i3563_3_lut (.A(de[5]), .B(un[5]), .C(temp_control[3]), .Z(n4691)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(132[6] 149[15])
    defparam i3563_3_lut.init = 16'hcaca;
    LUT4 i3565_3_lut (.A(de[6]), .B(un[6]), .C(temp_control[3]), .Z(n4693)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(132[6] 149[15])
    defparam i3565_3_lut.init = 16'hcaca;
    LUT4 mux_1903_i6_3_lut (.A(mi[5]), .B(ce[5]), .C(temp_control[1]), 
         .Z(n2809)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(132[6] 149[15])
    defparam mux_1903_i6_3_lut.init = 16'hcaca;
    CCU2D PC_7__I_0_3 (.A0(PC[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n7993), 
          .COUT(n7994), .S0(PC_7__N_57[1]), .S1(PC_7__N_57[2]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam PC_7__I_0_3.INIT0 = 16'h5aaa;
    defparam PC_7__I_0_3.INIT1 = 16'h5aaa;
    defparam PC_7__I_0_3.INJECT1_0 = "NO";
    defparam PC_7__I_0_3.INJECT1_1 = "NO";
    LUT4 i3561_3_lut (.A(de[4]), .B(un[4]), .C(temp_control[3]), .Z(n4689)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(132[6] 149[15])
    defparam i3561_3_lut.init = 16'hcaca;
    LUT4 E_3__I_0_Mux_5_i7_4_lut_4_lut_then_4_lut (.A(reset_c), .B(Rdisplay[1]), 
         .C(n9298), .D(Rdisplay[0]), .Z(n9451)) /* synthesis lut_function=(A+(B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam E_3__I_0_Mux_5_i7_4_lut_4_lut_then_4_lut.init = 16'heaef;
    LUT4 E_3__I_0_Mux_5_i7_4_lut_4_lut_else_4_lut_adj_111 (.A(reset_c), .B(Rdisplay[1]), 
         .C(n9298), .D(Rdisplay[0]), .Z(n9450)) /* synthesis lut_function=(A+!(B ((D)+!C)+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam E_3__I_0_Mux_5_i7_4_lut_4_lut_else_4_lut_adj_111.init = 16'hbafb;
    LUT4 i7827_4_lut_4_lut_4_lut_then_3_lut (.A(reset_c), .B(n9298), .C(Rdisplay[1]), 
         .Z(n9454)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i7827_4_lut_4_lut_4_lut_then_3_lut.init = 16'hfbfb;
    LUT4 i2_4_lut_adj_112 (.A(bcd_out_15__N_298), .B(n9335), .C(n23), 
         .D(n9330), .Z(bcd_out_15__N_349)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2_4_lut_adj_112.init = 16'h6669;
    LUT4 i7827_4_lut_4_lut_4_lut_else_3_lut (.A(reset_c), .B(n9298), .C(Rdisplay[1]), 
         .D(bcd_out_15__N_466), .Z(n9453)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i7827_4_lut_4_lut_4_lut_else_3_lut.init = 16'hffef;
    LUT4 mux_1903_i5_3_lut (.A(mi[4]), .B(ce[4]), .C(temp_control[1]), 
         .Z(n2810)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(132[6] 149[15])
    defparam mux_1903_i5_3_lut.init = 16'hcaca;
    LUT4 i7807_2_lut (.A(rpg_sel[0]), .B(rpg_sel[1]), .Z(clk_enable_10)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam i7807_2_lut.init = 16'h4444;
    LUT4 i3918_1_lut (.A(A_11__N_156), .Z(n5074)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i3918_1_lut.init = 16'h5555;
    LUT4 i3919_1_lut (.A(control_3__N_173), .Z(n5075)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i3919_1_lut.init = 16'h5555;
    LUT4 i7755_2_lut (.A(n3187), .B(A_11__N_156), .Z(n5076)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i7755_2_lut.init = 16'h7777;
    LUT4 i1522_4_lut (.A(ACC[1]), .B(data_out_23__N_487[1]), .C(n1774), 
         .D(n1776), .Z(rpg_in_23__N_129)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i1522_4_lut.init = 16'hcac0;
    LUT4 mux_1903_i7_3_lut (.A(mi[6]), .B(ce[6]), .C(temp_control[1]), 
         .Z(n2808)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(132[6] 149[15])
    defparam mux_1903_i7_3_lut.init = 16'hcaca;
    LUT4 i1524_4_lut (.A(ACC[2]), .B(data_out_23__N_487[2]), .C(n1774), 
         .D(n1776), .Z(rpg_in_23__N_128)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i1524_4_lut.init = 16'hcac0;
    LUT4 i1526_4_lut (.A(ACC[3]), .B(data_out_23__N_487[3]), .C(n1774), 
         .D(n1776), .Z(rpg_in_23__N_127)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i1526_4_lut.init = 16'hcac0;
    LUT4 i1528_4_lut (.A(ACC[4]), .B(data_out_23__N_487[4]), .C(n1774), 
         .D(n1776), .Z(rpg_in_23__N_126)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i1528_4_lut.init = 16'hcac0;
    LUT4 i1532_4_lut (.A(ACC[6]), .B(data_out_23__N_487[6]), .C(n1774), 
         .D(n1776), .Z(rpg_in_23__N_124)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i1532_4_lut.init = 16'hcac0;
    LUT4 i1534_4_lut (.A(ACC[7]), .B(data_out_23__N_487[7]), .C(n1774), 
         .D(n1776), .Z(rpg_in_23__N_123)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i1534_4_lut.init = 16'hcac0;
    LUT4 i1536_4_lut (.A(ACC[8]), .B(data_out_23__N_487[8]), .C(n1774), 
         .D(n1776), .Z(rpg_in_23__N_122)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i1536_4_lut.init = 16'hcac0;
    LUT4 i1538_4_lut (.A(ACC[9]), .B(data_out_23__N_487[9]), .C(n1774), 
         .D(n1776), .Z(rpg_in_23__N_121)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i1538_4_lut.init = 16'hcac0;
    LUT4 i1540_4_lut (.A(ACC[10]), .B(data_out_23__N_487[10]), .C(n1774), 
         .D(n1776), .Z(rpg_in_23__N_120)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i1540_4_lut.init = 16'hcac0;
    bcdDisplay unidades (.un({un}), .clk_0(clk_0), .n4830(n4830), .n8863(n8863), 
            .n9257(n9257), .\DISPLAY_6__N_480[4] (DISPLAY_6__N_480[4]), 
            .n9452(n9452), .n9407(n9407), .n9455(n9455), .n4480(n4480), 
            .n9267(n9267), .n9266(n9266), .n9276(n9276), .n6460(n6460), 
            .n4533(n4533), .n6473(n6473), .n4773(n4773));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(109[11:21])
    LUT4 i3926_1_lut (.A(n1774), .Z(n5082)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i3926_1_lut.init = 16'h5555;
    CCU2D count_1937_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8002), .COUT(n8003), .S0(n104), .S1(n103));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937_add_4_13.INIT0 = 16'hfaaa;
    defparam count_1937_add_4_13.INIT1 = 16'hfaaa;
    defparam count_1937_add_4_13.INJECT1_0 = "NO";
    defparam count_1937_add_4_13.INJECT1_1 = "NO";
    LUT4 m1_lut (.Z(n9751)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    FD1P3AX state_FSM__i3 (.D(MAR_7__N_81), .SP(clk_enable_56), .CK(clk), 
            .Q(MBR_23__N_106));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam state_FSM__i3.GSR = "ENABLED";
    FD1P3AX state_FSM__i4 (.D(MBR_23__N_106), .SP(clk_enable_56), .CK(clk), 
            .Q(CI_23__N_36));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam state_FSM__i4.GSR = "ENABLED";
    FD1P3AX state_FSM__i5 (.D(CI_23__N_36), .SP(clk_enable_56), .CK(clk), 
            .Q(n1779));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam state_FSM__i5.GSR = "ENABLED";
    LUT4 i1668_4_lut (.A(MAR[1]), .B(CI_c_1), .C(n1775), .D(MAR_7__N_81), 
         .Z(address_bus_7__N_141)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i1668_4_lut.init = 16'hcac0;
    FD1P3AX state_FSM__i7 (.D(control_3__N_173), .SP(clk_enable_56), .CK(clk), 
            .Q(A_11__N_156));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam state_FSM__i7.GSR = "ENABLED";
    FD1P3AX state_FSM__i8 (.D(A_11__N_156), .SP(clk_enable_56), .CK(clk), 
            .Q(n1776));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam state_FSM__i8.GSR = "ENABLED";
    FD1P3AX state_FSM__i9 (.D(n8788), .SP(clk_enable_56), .CK(clk), .Q(n1775));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam state_FSM__i9.GSR = "ENABLED";
    FD1P3AX state_FSM__i10 (.D(n1775), .SP(clk_enable_56), .CK(clk), .Q(n1774));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam state_FSM__i10.GSR = "ENABLED";
    FD1P3AX state_FSM__i11 (.D(n8787), .SP(clk_enable_56), .CK(clk), .Q(n1773));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam state_FSM__i11.GSR = "ENABLED";
    LUT4 i1670_4_lut (.A(MAR[2]), .B(CI_c_2), .C(n1775), .D(MAR_7__N_81), 
         .Z(address_bus_7__N_140)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i1670_4_lut.init = 16'hcac0;
    FD1P3AX state_FSM__i13 (.D(n1772), .SP(clk_enable_56), .CK(clk), .Q(Rdisplay_13__N_51));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam state_FSM__i13.GSR = "ENABLED";
    LUT4 i1672_4_lut (.A(MAR[3]), .B(CI_c_3), .C(n1775), .D(MAR_7__N_81), 
         .Z(address_bus_7__N_139)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i1672_4_lut.init = 16'hcac0;
    LUT4 i1674_4_lut (.A(MAR[4]), .B(CI_c_4), .C(n1775), .D(MAR_7__N_81), 
         .Z(address_bus_7__N_138)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i1674_4_lut.init = 16'hcac0;
    LUT4 i1676_4_lut (.A(MAR[5]), .B(CI_c_5), .C(n1775), .D(MAR_7__N_81), 
         .Z(address_bus_7__N_137)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i1676_4_lut.init = 16'hcac0;
    LUT4 i1678_4_lut (.A(MAR[6]), .B(CI_c_6), .C(n1775), .D(MAR_7__N_81), 
         .Z(address_bus_7__N_136)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i1678_4_lut.init = 16'hcac0;
    LUT4 i1682_4_lut (.A(MAR[7]), .B(CI_c_7), .C(n1775), .D(MAR_7__N_81), 
         .Z(address_bus_7__N_135)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i1682_4_lut.init = 16'hcac0;
    LUT4 i3922_1_lut (.A(MBR_23__N_106), .Z(n5078)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i3922_1_lut.init = 16'h5555;
    FD1S1I CI_23__I_0_1194_i1 (.D(MBR[0]), .CK(CI_23__N_36), .CD(n5081), 
           .Q(CI_c_0));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam CI_23__I_0_1194_i1.GSR = "DISABLED";
    FD1S1I MAR_7__I_0_i1 (.D(PC[0]), .CK(MAR_7__N_81), .CD(n5080), .Q(MAR[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MAR_7__I_0_i1.GSR = "DISABLED";
    LUT4 i1_2_lut (.A(MAR_7__N_81), .B(n1775), .Z(address_bus_7__N_143)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    FD1S1I Rdisplay_13__I_0_i1 (.D(n3190), .CK(Rdisplay_13__N_51), .CD(n5079), 
           .Q(Rdisplay[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam Rdisplay_13__I_0_i1.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i1 (.D(data_out_23__N_487[0]), .CK(MBR_23__N_106), 
           .CD(n5078), .Q(MBR[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam MBR_23__I_0_i1.GSR = "DISABLED";
    LUT4 i7758_2_lut (.A(n3187), .B(Rdisplay_13__N_51), .Z(n5079)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i7758_2_lut.init = 16'h7777;
    LUT4 i3924_1_lut (.A(MAR_7__N_81), .Z(n5080)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i3924_1_lut.init = 16'h5555;
    LUT4 mux_1775_i2_4_lut (.A(PC_7__N_57[1]), .B(CI_c_1), .C(n1773), 
         .D(CI_23__N_36), .Z(PC_7__N_68)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam mux_1775_i2_4_lut.init = 16'hcac0;
    LUT4 mux_1775_i3_4_lut (.A(PC_7__N_57[2]), .B(CI_c_2), .C(n1773), 
         .D(CI_23__N_36), .Z(PC_7__N_66)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam mux_1775_i3_4_lut.init = 16'hcac0;
    LUT4 mux_1775_i4_4_lut (.A(PC_7__N_57[3]), .B(CI_c_3), .C(n1773), 
         .D(CI_23__N_36), .Z(PC_7__N_64)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam mux_1775_i4_4_lut.init = 16'hcac0;
    FD1S1I rpg_sel_1__I_0_i1 (.D(CI_c_16), .CK(control_3__N_173_derived_2), 
           .CD(n5077), .Q(rpg_sel[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam rpg_sel_1__I_0_i1.GSR = "DISABLED";
    FD1S1I A_11__I_0_i1 (.D(n3190), .CK(A_11__N_156), .CD(n5076), .Q(A[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam A_11__I_0_i1.GSR = "DISABLED";
    LUT4 mux_1775_i5_4_lut (.A(PC_7__N_57[4]), .B(CI_c_4), .C(n1773), 
         .D(CI_23__N_36), .Z(PC_7__N_62)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam mux_1775_i5_4_lut.init = 16'hcac0;
    LUT4 mux_1775_i6_4_lut (.A(PC_7__N_57[5]), .B(CI_c_5), .C(n1773), 
         .D(CI_23__N_36), .Z(PC_7__N_60)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam mux_1775_i6_4_lut.init = 16'hcac0;
    LUT4 mux_1775_i7_4_lut (.A(PC_7__N_57[6]), .B(CI_c_6), .C(n1773), 
         .D(CI_23__N_36), .Z(PC_7__N_58)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam mux_1775_i7_4_lut.init = 16'hcac0;
    LUT4 mux_1775_i8_4_lut (.A(PC_7__N_57[7]), .B(CI_c_7), .C(n1773), 
         .D(CI_23__N_36), .Z(PC_7__N_56)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam mux_1775_i8_4_lut.init = 16'hcac0;
    LUT4 i3925_1_lut (.A(CI_23__N_36), .Z(n5081)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i3925_1_lut.init = 16'h5555;
    LUT4 i3809_1_lut (.A(control[1]), .Z(n4965)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam i3809_1_lut.init = 16'h5555;
    FD1S1I control_3__I_0_i1 (.D(CI_c_18), .CK(control_3__N_173), .CD(n5075), 
           .Q(control[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam control_3__I_0_i1.GSR = "DISABLED";
    FD1S1I B_11__I_0_i1 (.D(CI_c_0), .CK(A_11__N_156), .CD(n5074), .Q(B[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(155[2] 218[14])
    defparam B_11__I_0_i1.GSR = "DISABLED";
    LUT4 i1666_4_lut (.A(MAR[0]), .B(CI_c_0), .C(n1775), .D(MAR_7__N_81), 
         .Z(address_bus_7__N_142)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i1666_4_lut.init = 16'hcac0;
    CCU2D count_1937_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8001), .COUT(n8002), .S0(n106), .S1(n105));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937_add_4_11.INIT0 = 16'hfaaa;
    defparam count_1937_add_4_11.INIT1 = 16'hfaaa;
    defparam count_1937_add_4_11.INJECT1_0 = "NO";
    defparam count_1937_add_4_11.INJECT1_1 = "NO";
    LUT4 i3559_3_lut (.A(de[3]), .B(un[3]), .C(temp_control[3]), .Z(n4687)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(132[6] 149[15])
    defparam i3559_3_lut.init = 16'hcaca;
    CCU2D PC_7__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(PC[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n7993), 
          .S1(PC_7__N_57[0]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam PC_7__I_0_1.INIT0 = 16'hF000;
    defparam PC_7__I_0_1.INIT1 = 16'h5555;
    defparam PC_7__I_0_1.INJECT1_0 = "NO";
    defparam PC_7__I_0_1.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(clk_enable_43));
    CCU2D count_1937_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8000), .COUT(n8001), .S0(n108), .S1(n107));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937_add_4_9.INIT0 = 16'hfaaa;
    defparam count_1937_add_4_9.INIT1 = 16'hfaaa;
    defparam count_1937_add_4_9.INJECT1_0 = "NO";
    defparam count_1937_add_4_9.INJECT1_1 = "NO";
    LUT4 i5348_4_lut (.A(count[18]), .B(count[21]), .C(n8), .D(count[19]), 
         .Z(clk_enable_56)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i5348_4_lut.init = 16'heccc;
    LUT4 i3_4_lut (.A(count[20]), .B(n6479), .C(count[17]), .D(count[16]), 
         .Z(n8)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'ha080;
    CCU2D count_1937_add_4_7 (.A0(n17), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n16), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n7999), 
          .COUT(n8000), .S0(n110), .S1(n109));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(127[15:20])
    defparam count_1937_add_4_7.INIT0 = 16'hfaaa;
    defparam count_1937_add_4_7.INIT1 = 16'hfaaa;
    defparam count_1937_add_4_7.INJECT1_0 = "NO";
    defparam count_1937_add_4_7.INJECT1_1 = "NO";
    LUT4 i5319_4_lut (.A(count[12]), .B(count[15]), .C(n8_adj_963), .D(count[13]), 
         .Z(n6479)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i5319_4_lut.init = 16'hccc8;
    LUT4 i3_4_lut_adj_113 (.A(count[14]), .B(n8035), .C(count[11]), .D(count[10]), 
         .Z(n8_adj_963)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i3_4_lut_adj_113.init = 16'hfefa;
    LUT4 i7842_2_lut (.A(temp_control[3]), .B(temp_control[2]), .Z(n8844)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(132[6] 149[15])
    defparam i7842_2_lut.init = 16'heeee;
    PFUMX i3562 (.BLUT(n2810), .ALUT(n4689), .C0(n8844), .Z(n4690));
    PFUMX i7964 (.BLUT(n9453), .ALUT(n9454), .C0(bcd_out_15__N_470), .Z(n9455));
    LUT4 i2_3_lut_adj_114 (.A(count[9]), .B(count[7]), .C(count[8]), .Z(n8035)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_114.init = 16'hfefe;
    LUT4 mux_1903_i2_3_lut (.A(mi[1]), .B(ce[1]), .C(temp_control[1]), 
         .Z(n2813)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(132[6] 149[15])
    defparam mux_1903_i2_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_265_3_lut (.A(CI_c_22), .B(CI_c_23), .C(n1779), 
         .Z(n9399)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(172[6] 185[15])
    defparam i1_2_lut_rep_265_3_lut.init = 16'h2020;
    LUT4 i7809_2_lut (.A(rpg_sel[0]), .B(rpg_sel[1]), .Z(clk_enable_11)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam i7809_2_lut.init = 16'h2222;
    LUT4 mux_1903_i4_3_lut (.A(mi[3]), .B(ce[3]), .C(temp_control[1]), 
         .Z(n2811)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(132[6] 149[15])
    defparam mux_1903_i4_3_lut.init = 16'hcaca;
    LUT4 i7841_2_lut (.A(reset_c), .B(clk_enable_56), .Z(clk_enable_46)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i7841_2_lut.init = 16'h4444;
    LUT4 reduce_or_1292_i1_2_lut (.A(temp_control[3]), .B(n1696), .Z(n1729)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(132[6] 149[15])
    defparam reduce_or_1292_i1_2_lut.init = 16'heeee;
    PFUMX i7958 (.BLUT(n9444), .ALUT(n9445), .C0(n9437), .Z(bcd_out_15__N_280));
    LUT4 i7814_2_lut (.A(rpg_sel[0]), .B(rpg_sel[1]), .Z(clk_enable_17)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam i7814_2_lut.init = 16'h1111;
    LUT4 i1_2_lut_adj_115 (.A(clk_0), .B(clk_enable_56), .Z(clk_0_N_249)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_115.init = 16'h6666;
    LUT4 i2_3_lut_4_lut (.A(bcd_out_15__N_269), .B(n9378), .C(n9368), 
         .D(n2868), .Z(bcd_out_15__N_303)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2_3_lut_4_lut.init = 16'h6966;
    LUT4 i7844_2_lut (.A(clk_enable_56), .B(CI_c_18), .Z(n6451)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i7844_2_lut.init = 16'h2222;
    LUT4 i7665_3_lut (.A(n3118), .B(n3123), .C(rpg_sel[0]), .Z(n8846)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7665_3_lut.init = 16'hcaca;
    LUT4 i7800_2_lut (.A(n1696), .B(n4913), .Z(n4914)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i7800_2_lut.init = 16'h1111;
    LUT4 i7643_2_lut (.A(CI_c_19), .B(CI_c_20), .Z(n8824)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7643_2_lut.init = 16'heeee;
    PFUMX i7962 (.BLUT(n9450), .ALUT(n9451), .C0(n9292), .Z(n9452));
    LUT4 n565_bdd_2_lut_7924 (.A(n9169), .B(n1776), .Z(n9170)) /* synthesis lut_function=(A (B)) */ ;
    defparam n565_bdd_2_lut_7924.init = 16'h8888;
    LUT4 i7664_3_lut (.A(n3108), .B(n3113), .C(rpg_sel[0]), .Z(n8845)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7664_3_lut.init = 16'hcaca;
    LUT4 i3957_2_lut (.A(clk_enable_56), .B(CI_c_18), .Z(n5113)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i3957_2_lut.init = 16'h8888;
    LUT4 i7825_3_lut (.A(reset_c), .B(clk_enable_56), .C(n4913), .Z(clk_enable_8)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i7825_3_lut.init = 16'h4040;
    LUT4 i2038_2_lut_rep_243_4_lut (.A(n2912), .B(n2916), .C(n9437), .D(bcd_out_15__N_269), 
         .Z(n9377)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2038_2_lut_rep_243_4_lut.init = 16'hffca;
    LUT4 i3329_3_lut (.A(de[0]), .B(un[0]), .C(temp_control[3]), .Z(n4454)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(132[6] 149[15])
    defparam i3329_3_lut.init = 16'hcaca;
    LUT4 i7749_2_lut_3_lut_4_lut (.A(n2912), .B(n2916), .C(n9437), .D(n9359), 
         .Z(n8873)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A (B ((D)+!C)+!B !(C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i7749_2_lut_3_lut_4_lut.init = 16'h3af0;
    LUT4 i2068_2_lut_rep_244_3_lut (.A(n2916), .B(n9437), .C(bcd_out_15__N_269), 
         .Z(n9378)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2068_2_lut_rep_244_3_lut.init = 16'hc8c8;
    LUT4 i1_2_lut_rep_235_3_lut_3_lut_3_lut (.A(n2916), .B(n9437), .C(bcd_out_15__N_269), 
         .Z(n9369)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_rep_235_3_lut_3_lut_3_lut.init = 16'h3838;
    LUT4 i3802_3_lut_4_lut (.A(n2912), .B(n2916), .C(n9437), .D(bcd_out_15__N_269), 
         .Z(bcd_out_15__N_285)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3802_3_lut_4_lut.init = 16'hca0a;
    PFUMX i7960 (.BLUT(n9447), .ALUT(n9448), .C0(n9259), .Z(n9449));
    LUT4 i3557_3_lut (.A(de[2]), .B(un[2]), .C(temp_control[3]), .Z(n4685)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(132[6] 149[15])
    defparam i3557_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut_adj_116 (.A(temp_control[1]), .B(temp_control[0]), .C(temp_control[2]), 
         .D(temp_control[3]), .Z(n4913)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_116.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut (.A(n9399), .B(CI_c_18), .C(CI_c_21), .D(n8824), 
         .Z(n8788)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0008;
    LUT4 i2_3_lut_rep_259_4_lut (.A(n1779), .B(n9742), .C(CI_c_21), .D(CI_c_18), 
         .Z(n9393)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i2_3_lut_rep_259_4_lut.init = 16'h0800;
    LUT4 i2_3_lut_4_lut_adj_117 (.A(n1779), .B(n9742), .C(CI_c_21), .D(n8824), 
         .Z(n4915)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_117.init = 16'h0080;
    LUT4 n565_bdd_2_lut_7939 (.A(n9188), .B(n1776), .Z(n9189)) /* synthesis lut_function=(A (B)) */ ;
    defparam n565_bdd_2_lut_7939.init = 16'h8888;
    PFUMX i3564 (.BLUT(n2809), .ALUT(n4691), .C0(n8844), .Z(n4692));
    LUT4 mux_1903_i3_3_lut (.A(mi[2]), .B(ce[2]), .C(temp_control[1]), 
         .Z(n2812)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(132[6] 149[15])
    defparam mux_1903_i3_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_118 (.A(n1776), .B(n1774), .Z(rpg_in_23__N_131)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_118.init = 16'heeee;
    PFUMX i7955 (.BLUT(n9226), .ALUT(n9225), .C0(n23), .Z(bcd_out_15__N_345));
    LUT4 i1_2_lut_adj_119 (.A(CI_23__N_36), .B(n1773), .Z(PC_7__N_72)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_119.init = 16'heeee;
    LUT4 mux_1775_i1_4_lut (.A(PC_7__N_57[0]), .B(CI_c_0), .C(n1773), 
         .D(CI_23__N_36), .Z(PC_7__N_70)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam mux_1775_i1_4_lut.init = 16'hcac0;
    LUT4 i5127_2_lut (.A(rpg_sel[0]), .B(rpg_sel[1]), .Z(clk_enable_9)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5127_2_lut.init = 16'h8888;
    LUT4 i1520_4_lut (.A(n1776), .B(data_out_23__N_487[0]), .C(n1774), 
         .D(n41), .Z(rpg_in_23__N_130)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i1520_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_120 (.A(B_temp[0]), .B(n75), .C(n67), .D(A_temp[0]), 
         .Z(n41)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B+(C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i1_4_lut_adj_120.init = 16'hdcec;
    LUT4 mux_1903_i1_3_lut (.A(mi[0]), .B(ce[0]), .C(temp_control[1]), 
         .Z(n2814)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(132[6] 149[15])
    defparam mux_1903_i1_3_lut.init = 16'hcaca;
    LUT4 m0_lut (.Z(n9750)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    LUT4 E_3__I_0_Mux_5_i7_4_lut_4_lut_then_4_lut_adj_121 (.A(reset_c), .B(bcd_out_15__N_417), 
         .C(n9280), .D(n9261), .Z(n9448)) /* synthesis lut_function=(A+(B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam E_3__I_0_Mux_5_i7_4_lut_4_lut_then_4_lut_adj_121.init = 16'heaef;
    LUT4 i76_4_lut (.A(n27), .B(B_temp[0]), .C(n9409), .D(A_temp[0]), 
         .Z(n75)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i76_4_lut.init = 16'h3aca;
    LUT4 i3156_1_lut_rep_282 (.A(reset_c), .Z(clk_enable_43)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i3156_1_lut_rep_282.init = 16'h5555;
    LUT4 i7837_2_lut_2_lut_3_lut_4_lut_3_lut (.A(reset_c), .B(n9246), .C(n9245), 
         .Z(n4382)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i7837_2_lut_2_lut_3_lut_4_lut_3_lut.init = 16'hefef;
    LUT4 i5188_2_lut_rep_123_3_lut_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_470), 
         .C(bcd_out_15__N_466), .D(n9291), .Z(n9257)) /* synthesis lut_function=(!(A+(B (D)+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5188_2_lut_rep_123_3_lut_4_lut_4_lut_4_lut.init = 16'h1044;
    LUT4 i7805_2_lut_3_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n9276), .C(n9286), 
         .D(bcd_out_15__N_470), .Z(n4480)) /* synthesis lut_function=(!(A (B)+!A (B (C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i7805_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'h3773;
    LUT4 i5192_2_lut_rep_116_3_lut_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_446), 
         .C(n9289), .D(n9290), .Z(n9250)) /* synthesis lut_function=(!(A+(B (D)+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5192_2_lut_rep_116_3_lut_4_lut_4_lut_4_lut.init = 16'h1044;
    LUT4 i5186_2_lut_rep_132_3_lut_3_lut (.A(reset_c), .B(n9292), .C(Rdisplay[1]), 
         .Z(n9266)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5186_2_lut_rep_132_3_lut_3_lut.init = 16'h1414;
    LUT4 i7831_4_lut_4_lut_4_lut (.A(reset_c), .B(n9275), .C(n9262), .D(n9274), 
         .Z(n4550)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i7831_4_lut_4_lut_4_lut.init = 16'hfeff;
    LUT4 i3163_2_lut_3_lut_4_lut_3_lut (.A(reset_c), .B(n9274), .C(n9275), 
         .Z(n4267)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i3163_2_lut_3_lut_4_lut_3_lut.init = 16'hefef;
    LUT4 i3405_2_lut_3_lut_4_lut_3_lut (.A(reset_c), .B(n9278), .C(n9284), 
         .Z(n4533)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i3405_2_lut_3_lut_4_lut_3_lut.init = 16'hefef;
    LUT4 i5196_2_lut_rep_102_3_lut_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_413), 
         .C(n9270), .D(n9271), .Z(n9236)) /* synthesis lut_function=(!(A+(B (D)+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5196_2_lut_rep_102_3_lut_4_lut_4_lut_4_lut.init = 16'h1044;
    LUT4 i3190_2_lut_3_lut_4_lut_3_lut (.A(reset_c), .B(n9253), .C(n9251), 
         .Z(n4299)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i3190_2_lut_3_lut_4_lut_3_lut.init = 16'hefef;
    LUT4 Rdisplay_12__bdd_4_lut_7971 (.A(Rdisplay[12]), .B(Rdisplay[10]), 
         .C(Rdisplay[11]), .D(Rdisplay[13]), .Z(bcd_out_15__N_270)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A ((C+!(D))+!B))) */ ;
    defparam Rdisplay_12__bdd_4_lut_7971.init = 16'h2402;
    LUT4 i3342_2_lut_3_lut_4_lut_3_lut (.A(reset_c), .B(n9247), .C(n9245), 
         .Z(n4467)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i3342_2_lut_3_lut_4_lut_3_lut.init = 16'hefef;
    LUT4 i7839_4_lut_4_lut_4_lut (.A(reset_c), .B(n9245), .C(n9246), .D(n9247), 
         .Z(n4647)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i7839_4_lut_4_lut_4_lut.init = 16'hfeff;
    LUT4 i5190_2_lut_rep_121_3_lut_3_lut (.A(reset_c), .B(n9282), .C(n9296), 
         .Z(n9255)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5190_2_lut_rep_121_3_lut_3_lut.init = 16'h1414;
    LUT4 i7829_2_lut_3_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n9263), .C(n9283), 
         .D(bcd_out_15__N_446), .Z(n4241)) /* synthesis lut_function=(!(A (B)+!A (B (C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i7829_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'h3773;
    LUT4 i7833_2_lut_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n9249), .C(n9260), 
         .D(bcd_out_15__N_413), .Z(n4276)) /* synthesis lut_function=(!(A (B)+!A (B (C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i7833_2_lut_2_lut_3_lut_4_lut_4_lut.init = 16'h3773;
    LUT4 i5194_2_lut_rep_108_3_lut_3_lut (.A(reset_c), .B(n9259), .C(bcd_out_15__N_417), 
         .Z(n9242)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5194_2_lut_rep_108_3_lut_3_lut.init = 16'h1414;
    LUT4 i5198_2_lut_rep_105_3_lut_3_lut (.A(reset_c), .B(n2901), .C(n9269), 
         .Z(n9239)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i5198_2_lut_rep_105_3_lut_3_lut.init = 16'h1414;
    LUT4 E_3__I_0_Mux_5_i7_4_lut_4_lut (.A(reset_c), .B(n6506), .C(n9263), 
         .D(n6462), .Z(n6464)) /* synthesis lut_function=(!(A (C (D))+!A (B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam E_3__I_0_Mux_5_i7_4_lut_4_lut.init = 16'h0bfb;
    LUT4 i7835_4_lut_4_lut_4_lut (.A(reset_c), .B(n9251), .C(n9248), .D(n9253), 
         .Z(n4705)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i7835_4_lut_4_lut_4_lut.init = 16'hfeff;
    LUT4 i3_4_lut_4_lut (.A(A_temp[0]), .B(B_temp[0]), .C(control[0]), 
         .D(control[1]), .Z(n8806)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(157[4] 217[14])
    defparam i3_4_lut_4_lut.init = 16'h0080;
    LUT4 i3555_3_lut (.A(de[1]), .B(un[1]), .C(temp_control[3]), .Z(n4683)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(132[6] 149[15])
    defparam i3555_3_lut.init = 16'hcaca;
    ROM ROM_imp (.clk(clk), .n9751(n9751), .address_bus({address_bus}), 
        .reset_c(reset_c), .GND_net(GND_net), .VCC_net(VCC_net), .data_out_23__N_487({data_out_23__N_487}));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(115[10:13])
    bcdDisplay_U18 decenas (.de({de}), .clk_0(clk_0), .n4820(n4820), .n8861(n8861), 
            .n9250(n9250), .\DISPLAY_6__N_480[4] (DISPLAY_6__N_480_adj_966[4]), 
            .n6464(n6464), .n9264(n9264), .n4550(n4550), .n4241(n4241), 
            .n9256(n9256), .n9255(n9255), .n9263(n9263), .n6462(n6462), 
            .n4267(n4267), .n6493(n6493), .n4719(n4719));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(110[10:20])
    alu ALU_imp (.control({control}), .A({A}), .n5036(n5036), .\ACC[10] (ACC[10]), 
        .A_temp({Open_0, Open_1, Open_2, Open_3, Open_4, Open_5, 
        Open_6, Open_7, Open_8, Open_9, Open_10, A_temp[0]}), .\ACC[9] (ACC[9]), 
        .B_temp({Open_11, Open_12, Open_13, Open_14, Open_15, Open_16, 
        Open_17, Open_18, Open_19, Open_20, Open_21, B_temp[0]}), 
        .logic_result({Open_22, Open_23, Open_24, Open_25, Open_26, 
        Open_27, Open_28, Open_29, Open_30, Open_31, Open_32, logic_result[0]}), 
        .n4965(n4965), .n9442(n9442), .\ACC[8] (ACC[8]), .\ACC[7] (ACC[7]), 
        .\ACC[6] (ACC[6]), .B({B}), .n9405(n9405), .\ACC[4] (ACC[4]), 
        .n9409(n9409), .\ACC[3] (ACC[3]), .\ACC[2] (ACC[2]), .\ACC[1] (ACC[1]), 
        .n9187(n9187), .n9168(n9168), .n67(n67), .n9125(n9125), .\sum_result[11] (sum_result[11]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(117[11:14])
    bcdDisplay_U19 centenas (.ce({ce}), .clk_0(clk_0), .n4812(n4812), 
            .n8867(n8867), .n9236(n9236), .\DISPLAY_6__N_480[4] (DISPLAY_6__N_480_adj_969[4]), 
            .n9449(n9449), .n9254(n9254), .n4705(n4705), .n4276(n4276), 
            .n9243(n9243), .n9242(n9242), .n9249(n9249), .n6468(n6468), 
            .n4299(n4299), .n6488(n6488), .n4732(n4732));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(111[11:21])
    PFUMX i7972 (.BLUT(n9466), .ALUT(n9467), .C0(CI_c_21), .Z(n9468));
    bcdDisplay_U17 millar (.mi({mi}), .clk_0(clk_0), .n4838(n4838), .n8865(n8865), 
            .n9241(n9241), .n4647(n4647), .n4382(n4382), .n9238(n9238), 
            .n9237(n9237), .\DISPLAY_6__N_480[4] (DISPLAY_6__N_480_adj_972[4]), 
            .reset_c(reset_c), .n2901(n2901), .n9269(n9269), .n9268(n9268), 
            .n9239(n9239), .n9240(n9240), .n6498(n6498), .n4467(n4467), 
            .n6485(n6485), .n4757(n4757), .n9244(n9244));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(112[9:19])
    Bin2BCD imp_binBCD (.n9743(n9743), .bcd_out_15__N_269(bcd_out_15__N_269), 
            .n9269(n9269), .n9246(n9246), .bcd_out_15__N_413(bcd_out_15__N_413), 
            .n9271(n9271), .n9260(n9260), .Rdisplay({Rdisplay}), .n9378(n9378), 
            .bcd_out_15__N_280(bcd_out_15__N_280), .bcd_out_15__N_298(bcd_out_15__N_298), 
            .n9225(n9225), .n9330(n9330), .n9268(n9268), .n2901(n2901), 
            .reset_c(reset_c), .n9240(n9240), .n8041(n8041), .n2912(n2912), 
            .bcd_out_15__N_274(bcd_out_15__N_274), .bcd_out_15__N_270(bcd_out_15__N_270), 
            .n2916(n2916), .bcd_out_15__N_252(bcd_out_15__N_252), .bcd_out_15__N_344(bcd_out_15__N_344), 
            .n9335(n9335), .n23(n23), .n9437(n9437), .n9296(n9296), 
            .n9282(n9282), .n6462(n6462), .n9256(n9256), .n9263(n9263), 
            .n8873(n8873), .n9261(n9261), .n9251(n9251), .n8867(n8867), 
            .n9259(n9259), .bcd_out_15__N_417(bcd_out_15__N_417), .n6468(n6468), 
            .n4732(n4732), .\DISPLAY_6__N_480[4] (DISPLAY_6__N_480_adj_969[4]), 
            .n9292(n9292), .n9267(n9267), .n4838(n4838), .n6488(n6488), 
            .n9244(n9244), .n6498(n6498), .n9290(n9290), .n9289(n9289), 
            .bcd_out_15__N_446(bcd_out_15__N_446), .n9254(n9254), .n9238(n9238), 
            .n9298(n9298), .n9276(n9276), .bcd_out_15__N_303(bcd_out_15__N_303), 
            .n9291(n9291), .bcd_out_15__N_466(bcd_out_15__N_466), .bcd_out_15__N_470(bcd_out_15__N_470), 
            .n9274(n9274), .n6506(n6506), .n9264(n9264), .n9270(n9270), 
            .n9241(n9241), .n9253(n9253), .n4812(n4812), .n9245(n9245), 
            .n8865(n8865), .n4757(n4757), .\DISPLAY_6__N_480[4]_adj_1 (DISPLAY_6__N_480_adj_972[4]), 
            .n9283(n9283), .n4820(n4820), .n9247(n9247), .bcd_out_15__N_299(bcd_out_15__N_299), 
            .n9262(n9262), .n9278(n9278), .n9286(n9286), .n9284(n9284), 
            .n9275(n9275), .n8861(n8861), .n9280(n9280), .n9249(n9249), 
            .n6473(n6473), .bcd_out_15__N_349(bcd_out_15__N_349), .n4719(n4719), 
            .\DISPLAY_6__N_480[4]_adj_2 (DISPLAY_6__N_480_adj_966[4]), .n4830(n4830), 
            .n2868(n2868), .n9368(n9368), .n9359(n9359), .n6493(n6493), 
            .bcd_out_15__N_345(bcd_out_15__N_345), .n9377(n9377), .n2928(n2928), 
            .n9043(n9043), .n9369(n9369), .n6485(n6485), .n9248(n9248), 
            .n9407(n9407), .n8863(n8863), .n6460(n6460), .n4773(n4773), 
            .\DISPLAY_6__N_480[4]_adj_3 (DISPLAY_6__N_480[4]), .n9243(n9243), 
            .bcd_out_15__N_285(bcd_out_15__N_285));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(107[13:20])
    PFUMX mux_3125_i3 (.BLUT(n2928), .ALUT(n8041), .C0(n9335), .Z(bcd_out_15__N_252));
    
endmodule
//
// Verilog Description of module \OSCH("26.60")(1,5) 
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module bcdDisplay
//

module bcdDisplay (un, clk_0, n4830, n8863, n9257, \DISPLAY_6__N_480[4] , 
            n9452, n9407, n9455, n4480, n9267, n9266, n9276, n6460, 
            n4533, n6473, n4773);
    output [6:0]un;
    input clk_0;
    input n4830;
    input n8863;
    input n9257;
    input \DISPLAY_6__N_480[4] ;
    input n9452;
    input n9407;
    input n9455;
    input n4480;
    input n9267;
    input n9266;
    input n9276;
    input n6460;
    input n4533;
    input n6473;
    output n4773;
    
    wire clk_0 /* synthesis is_clock=1, SET_AS_NETWORK=clk_0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(74[8:13])
    
    wire n7;
    wire [6:0]DISPLAY_6__N_480;
    
    FD1S3JX DISPLAY_i0 (.D(n8863), .CK(clk_0), .PD(n4830), .Q(un[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i0.GSR = "ENABLED";
    FD1S3JX DISPLAY_i3 (.D(n7), .CK(clk_0), .PD(n9257), .Q(un[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i3.GSR = "ENABLED";
    FD1S3AY DISPLAY_i4 (.D(\DISPLAY_6__N_480[4] ), .CK(clk_0), .Q(un[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i4.GSR = "ENABLED";
    FD1S3JX DISPLAY_i5 (.D(n9452), .CK(clk_0), .PD(n9257), .Q(un[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i5.GSR = "ENABLED";
    FD1S3AX DISPLAY_i6 (.D(DISPLAY_6__N_480[6]), .CK(clk_0), .Q(un[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i6.GSR = "ENABLED";
    FD1S3JX DISPLAY_i2 (.D(n9455), .CK(clk_0), .PD(n9407), .Q(un[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i2.GSR = "ENABLED";
    FD1S3JX DISPLAY_i1 (.D(n9267), .CK(clk_0), .PD(n4480), .Q(un[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i1.GSR = "ENABLED";
    LUT4 E_3__I_0_Mux_3_i7_4_lut_4_lut (.A(n9267), .B(n9266), .C(n9276), 
         .D(n9407), .Z(n7)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A !(B+(C+!(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(30[3] 41[12])
    defparam E_3__I_0_Mux_3_i7_4_lut_4_lut.init = 16'h5c5f;
    LUT4 i5043_4_lut (.A(n9266), .B(n9257), .C(n6460), .D(n9276), .Z(DISPLAY_6__N_480[6])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(30[3] 41[12])
    defparam i5043_4_lut.init = 16'hcfee;
    PFUMX i3639 (.BLUT(n4533), .ALUT(n6473), .C0(n9257), .Z(n4773));
    
endmodule
//
// Verilog Description of module ROM
//

module ROM (clk, n9751, address_bus, reset_c, GND_net, VCC_net, 
            data_out_23__N_487);
    input clk;
    input n9751;
    input [7:0]address_bus;
    input reset_c;
    input GND_net;
    input VCC_net;
    output [23:0]data_out_23__N_487;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(73[8:11])
    
    wire data_out_23__N_488;
    wire [23:0]data_out_23__N_536;
    
    FD1S3AX data_out (.D(n9751), .CK(clk), .Q(data_out_23__N_488));   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam data_out.GSR = "ENABLED";
    PDPW8KC mux_1694 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
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
            .DO9(data_out_23__N_536[18]), .DO10(data_out_23__N_536[19]), 
            .DO11(data_out_23__N_536[20]), .DO12(data_out_23__N_536[21]), 
            .DO13(data_out_23__N_536[22]), .DO14(data_out_23__N_536[23]));
    defparam mux_1694.DATA_WIDTH_W = 18;
    defparam mux_1694.DATA_WIDTH_R = 18;
    defparam mux_1694.REGMODE = "NOREG";
    defparam mux_1694.CSDECODE_W = "0b000";
    defparam mux_1694.CSDECODE_R = "0b000";
    defparam mux_1694.GSR = "DISABLED";
    defparam mux_1694.RESETMODE = "ASYNC";
    defparam mux_1694.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_1694.INIT_DATA = "STATIC";
    defparam mux_1694.INITVAL_00 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F00018000090001100019";
    defparam mux_1694.INITVAL_01 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1694.INITVAL_02 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1694.INITVAL_03 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1694.INITVAL_04 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1694.INITVAL_05 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1694.INITVAL_06 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1694.INITVAL_07 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1694.INITVAL_08 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1694.INITVAL_09 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1694.INITVAL_0A = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1694.INITVAL_0B = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1694.INITVAL_0C = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1694.INITVAL_0D = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1694.INITVAL_0E = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1694.INITVAL_0F = "0x0000000000000000000000000000000000000000000000003F0003F0003F0003F0003F0003F0003F";
    defparam mux_1694.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1694.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1694.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1694.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1694.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1694.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1694.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1694.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1694.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1694.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1694.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1694.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1694.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1694.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1694.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1694.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    PDPW8KC mux_1693 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
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
            .DO0(data_out_23__N_536[9]), .DO1(data_out_23__N_536[10]), .DO2(data_out_23__N_536[11]), 
            .DO3(data_out_23__N_536[12]), .DO4(data_out_23__N_536[13]), 
            .DO5(data_out_23__N_536[14]), .DO6(data_out_23__N_536[15]), 
            .DO7(data_out_23__N_536[16]), .DO8(data_out_23__N_536[17]), 
            .DO9(data_out_23__N_536[0]), .DO10(data_out_23__N_536[1]), .DO11(data_out_23__N_536[2]), 
            .DO12(data_out_23__N_536[3]), .DO13(data_out_23__N_536[4]), 
            .DO14(data_out_23__N_536[5]), .DO15(data_out_23__N_536[6]), 
            .DO16(data_out_23__N_536[7]), .DO17(data_out_23__N_536[8]));
    defparam mux_1693.DATA_WIDTH_W = 18;
    defparam mux_1693.DATA_WIDTH_R = 18;
    defparam mux_1693.REGMODE = "NOREG";
    defparam mux_1693.CSDECODE_W = "0b000";
    defparam mux_1693.CSDECODE_R = "0b000";
    defparam mux_1693.GSR = "DISABLED";
    defparam mux_1693.RESETMODE = "ASYNC";
    defparam mux_1693.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_1693.INIT_DATA = "STATIC";
    defparam mux_1693.INITVAL_00 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF0000000005000F70000D";
    defparam mux_1693.INITVAL_01 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1693.INITVAL_02 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1693.INITVAL_03 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1693.INITVAL_04 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1693.INITVAL_05 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1693.INITVAL_06 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1693.INITVAL_07 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1693.INITVAL_08 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1693.INITVAL_09 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1693.INITVAL_0A = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1693.INITVAL_0B = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1693.INITVAL_0C = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1693.INITVAL_0D = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1693.INITVAL_0E = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1693.INITVAL_0F = "0x0004D00037000170000700012000320004600065003EB3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1693.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1693.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1693.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1693.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1693.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1693.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1693.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1693.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1693.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1693.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1693.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1693.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1693.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1693.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1693.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1693.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    LUT4 i1700_2_lut (.A(data_out_23__N_536[1]), .B(data_out_23__N_488), 
         .Z(data_out_23__N_487[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1700_2_lut.init = 16'h8888;
    LUT4 i1701_2_lut (.A(data_out_23__N_536[2]), .B(data_out_23__N_488), 
         .Z(data_out_23__N_487[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1701_2_lut.init = 16'h8888;
    LUT4 i1702_2_lut (.A(data_out_23__N_536[3]), .B(data_out_23__N_488), 
         .Z(data_out_23__N_487[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1702_2_lut.init = 16'h8888;
    LUT4 i1703_2_lut (.A(data_out_23__N_536[4]), .B(data_out_23__N_488), 
         .Z(data_out_23__N_487[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1703_2_lut.init = 16'h8888;
    LUT4 i1704_2_lut (.A(data_out_23__N_536[5]), .B(data_out_23__N_488), 
         .Z(data_out_23__N_487[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1704_2_lut.init = 16'h8888;
    LUT4 i1705_2_lut (.A(data_out_23__N_536[6]), .B(data_out_23__N_488), 
         .Z(data_out_23__N_487[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1705_2_lut.init = 16'h8888;
    LUT4 i1706_2_lut (.A(data_out_23__N_536[7]), .B(data_out_23__N_488), 
         .Z(data_out_23__N_487[7])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1706_2_lut.init = 16'h8888;
    LUT4 i1707_2_lut (.A(data_out_23__N_536[8]), .B(data_out_23__N_488), 
         .Z(data_out_23__N_487[8])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1707_2_lut.init = 16'h8888;
    LUT4 i1708_2_lut (.A(data_out_23__N_536[9]), .B(data_out_23__N_488), 
         .Z(data_out_23__N_487[9])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1708_2_lut.init = 16'h8888;
    LUT4 i1709_2_lut (.A(data_out_23__N_536[10]), .B(data_out_23__N_488), 
         .Z(data_out_23__N_487[10])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1709_2_lut.init = 16'h8888;
    LUT4 i1710_2_lut (.A(data_out_23__N_536[11]), .B(data_out_23__N_488), 
         .Z(data_out_23__N_487[11])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1710_2_lut.init = 16'h8888;
    LUT4 i1712_2_lut (.A(data_out_23__N_536[13]), .B(data_out_23__N_488), 
         .Z(data_out_23__N_487[13])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1712_2_lut.init = 16'h8888;
    LUT4 i1713_2_lut (.A(data_out_23__N_536[14]), .B(data_out_23__N_488), 
         .Z(data_out_23__N_487[14])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1713_2_lut.init = 16'h8888;
    LUT4 i1714_2_lut (.A(data_out_23__N_536[15]), .B(data_out_23__N_488), 
         .Z(data_out_23__N_487[15])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1714_2_lut.init = 16'h8888;
    LUT4 i1711_2_lut (.A(data_out_23__N_536[12]), .B(data_out_23__N_488), 
         .Z(data_out_23__N_487[12])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1711_2_lut.init = 16'h8888;
    LUT4 i1715_2_lut (.A(data_out_23__N_536[16]), .B(data_out_23__N_488), 
         .Z(data_out_23__N_487[16])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1715_2_lut.init = 16'h8888;
    LUT4 i1716_2_lut (.A(data_out_23__N_536[17]), .B(data_out_23__N_488), 
         .Z(data_out_23__N_487[17])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1716_2_lut.init = 16'h8888;
    LUT4 i1717_2_lut (.A(data_out_23__N_536[18]), .B(data_out_23__N_488), 
         .Z(data_out_23__N_487[18])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1717_2_lut.init = 16'h8888;
    LUT4 i1718_2_lut (.A(data_out_23__N_536[19]), .B(data_out_23__N_488), 
         .Z(data_out_23__N_487[19])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1718_2_lut.init = 16'h8888;
    LUT4 i1719_2_lut (.A(data_out_23__N_536[20]), .B(data_out_23__N_488), 
         .Z(data_out_23__N_487[20])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1719_2_lut.init = 16'h8888;
    LUT4 i1720_2_lut (.A(data_out_23__N_536[21]), .B(data_out_23__N_488), 
         .Z(data_out_23__N_487[21])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1720_2_lut.init = 16'h8888;
    LUT4 i1721_2_lut (.A(data_out_23__N_536[22]), .B(data_out_23__N_488), 
         .Z(data_out_23__N_487[22])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1721_2_lut.init = 16'h8888;
    LUT4 i1722_2_lut (.A(data_out_23__N_536[23]), .B(data_out_23__N_488), 
         .Z(data_out_23__N_487[23])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1722_2_lut.init = 16'h8888;
    LUT4 i1699_2_lut (.A(data_out_23__N_536[0]), .B(data_out_23__N_488), 
         .Z(data_out_23__N_487[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(65[3] 75[10])
    defparam i1699_2_lut.init = 16'h8888;
    
endmodule
//
// Verilog Description of module bcdDisplay_U18
//

module bcdDisplay_U18 (de, clk_0, n4820, n8861, n9250, \DISPLAY_6__N_480[4] , 
            n6464, n9264, n4550, n4241, n9256, n9255, n9263, n6462, 
            n4267, n6493, n4719);
    output [6:0]de;
    input clk_0;
    input n4820;
    input n8861;
    input n9250;
    input \DISPLAY_6__N_480[4] ;
    input n6464;
    input n9264;
    input n4550;
    input n4241;
    input n9256;
    input n9255;
    input n9263;
    input n6462;
    input n4267;
    input n6493;
    output n4719;
    
    wire clk_0 /* synthesis is_clock=1, SET_AS_NETWORK=clk_0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(74[8:13])
    
    wire n7;
    wire [6:0]DISPLAY_6__N_480;
    
    FD1S3JX DISPLAY_i0 (.D(n8861), .CK(clk_0), .PD(n4820), .Q(de[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=110, LSE_RLINE=110 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i0.GSR = "ENABLED";
    FD1S3JX DISPLAY_i3 (.D(n7), .CK(clk_0), .PD(n9250), .Q(de[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=110, LSE_RLINE=110 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i3.GSR = "ENABLED";
    FD1S3AY DISPLAY_i4 (.D(\DISPLAY_6__N_480[4] ), .CK(clk_0), .Q(de[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=110, LSE_RLINE=110 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i4.GSR = "ENABLED";
    FD1S3JX DISPLAY_i5 (.D(n6464), .CK(clk_0), .PD(n9250), .Q(de[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=110, LSE_RLINE=110 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i5.GSR = "ENABLED";
    FD1S3AX DISPLAY_i6 (.D(DISPLAY_6__N_480[6]), .CK(clk_0), .Q(de[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=110, LSE_RLINE=110 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i6.GSR = "ENABLED";
    FD1S3JX DISPLAY_i2 (.D(n4550), .CK(clk_0), .PD(n9264), .Q(de[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=110, LSE_RLINE=110 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i2.GSR = "ENABLED";
    FD1S3JX DISPLAY_i1 (.D(n9256), .CK(clk_0), .PD(n4241), .Q(de[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=110, LSE_RLINE=110 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i1.GSR = "ENABLED";
    LUT4 E_3__I_0_Mux_3_i7_4_lut_4_lut (.A(n9256), .B(n9255), .C(n9263), 
         .D(n9264), .Z(n7)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A !(B+(C+!(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(30[3] 41[12])
    defparam E_3__I_0_Mux_3_i7_4_lut_4_lut.init = 16'h5c5f;
    LUT4 i5055_4_lut (.A(n9255), .B(n9250), .C(n6462), .D(n9263), .Z(DISPLAY_6__N_480[6])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(30[3] 41[12])
    defparam i5055_4_lut.init = 16'hcfee;
    PFUMX i3591 (.BLUT(n4267), .ALUT(n6493), .C0(n9250), .Z(n4719));
    
endmodule
//
// Verilog Description of module alu
//

module alu (control, A, n5036, \ACC[10] , A_temp, \ACC[9] , B_temp, 
            logic_result, n4965, n9442, \ACC[8] , \ACC[7] , \ACC[6] , 
            B, n9405, \ACC[4] , n9409, \ACC[3] , \ACC[2] , \ACC[1] , 
            n9187, n9168, n67, n9125, \sum_result[11] );
    input [3:0]control;
    input [11:0]A;
    output n5036;
    output \ACC[10] ;
    output [11:0]A_temp;
    output \ACC[9] ;
    output [11:0]B_temp;
    output [11:0]logic_result;
    input n4965;
    input n9442;
    output \ACC[8] ;
    output \ACC[7] ;
    output \ACC[6] ;
    input [11:0]B;
    input n9405;
    output \ACC[4] ;
    output n9409;
    output \ACC[3] ;
    output \ACC[2] ;
    output \ACC[1] ;
    output n9187;
    output n9168;
    output n67;
    output n9125;
    output \sum_result[11] ;
    
    wire control_3_derived_24 /* synthesis is_clock=1, SET_AS_NETWORK=control[3]_derived_24 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(94[8:15])
    wire [39:0]n2320 /* synthesis is_clock=1, SET_AS_NETWORK=\ALU_imp/substract_N_886 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(32[9:18])
    
    wire n4950;
    wire [11:0]sum_result;   // c:/users/cassandra/desktop/arqui2/alu.vhd(33[9:19])
    
    wire n14, n4356, n4948, n14_adj_932, n4535, n9199, substract;
    wire [11:0]A_temp_c;   // c:/users/cassandra/desktop/arqui2/alu.vhd(38[9:15])
    
    wire n4762;
    wire [11:0]B_temp_c;   // c:/users/cassandra/desktop/arqui2/alu.vhd(38[16:22])
    
    wire n4566, n4564, n4562, n4560;
    wire [11:0]logic_result_c;   // c:/users/cassandra/desktop/arqui2/alu.vhd(34[9:21])
    
    wire n9148, n9143, n9142, n9141, n9136, n9135, n9133, n9115, 
        n9113, n9112, n9111, n4946, n4411, n14_adj_933, n14_adj_934, 
        n14_adj_935, n14_adj_936, n14_adj_937, n14_adj_938, n14_adj_939, 
        n14_adj_940, n14_adj_941, n14_adj_942, n14_adj_943, n7, n7_adj_944, 
        n7_adj_945, n7_adj_946, n7_adj_947, n7_adj_948, n7_adj_949, 
        n7_adj_950, n4662, n4670, n4676, n14_adj_951, n14_adj_952, 
        n14_adj_953;
    wire [12:0]carry;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(21[8:13])
    
    wire n9403, S_N_900, n9406, n9056, n14_adj_954, n14_adj_955, 
        n8474, cout_N_904, n9397;
    wire [11:0]v12;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(21[12:15])
    
    wire n8807, n4968, n14_adj_956, n14_adj_957, S_7__N_891, n9383, 
        n9114, n9388, cout_N_904_adj_958, n9401, n9122, n9372, S_8__N_890, 
        n8798, S_6__N_892, n8869, n9132, n9389, S_9__N_889, n8799, 
        n9206, n9202, n8803, n8802, n9201, n8804, n8800, n9412, 
        n9413, S_N_900_adj_959, n9396, n9421, n9390, n9205;
    
    LUT4 i5267_3_lut_4_lut (.A(control[0]), .B(control[1]), .C(control[2]), 
         .D(A[9]), .Z(n4950)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;
    defparam i5267_3_lut_4_lut.init = 16'h8008;
    PFUMX control_3__I_0_275_Mux_10_i15 (.BLUT(sum_result[10]), .ALUT(n14), 
          .C0(n5036), .Z(\ACC[10] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;
    LUT4 i5062_3_lut_4_lut (.A(control[0]), .B(control[1]), .C(control[2]), 
         .D(A[6]), .Z(n4356)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;
    defparam i5062_3_lut_4_lut.init = 16'h8008;
    LUT4 i5268_3_lut_4_lut (.A(control[0]), .B(control[1]), .C(control[2]), 
         .D(A[10]), .Z(n4948)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;
    defparam i5268_3_lut_4_lut.init = 16'h8008;
    FD1S1A A_temp_11__I_0_i1 (.D(n2320[27]), .CK(control_3_derived_24), 
           .Q(A_temp[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam A_temp_11__I_0_i1.GSR = "DISABLED";
    PFUMX control_3__I_0_275_Mux_9_i15 (.BLUT(sum_result[9]), .ALUT(n14_adj_932), 
          .C0(n5036), .Z(\ACC[9] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;
    FD1S1A B_temp_11__I_0_i1 (.D(n2320[15]), .CK(control_3_derived_24), 
           .Q(B_temp[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam B_temp_11__I_0_i1.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i1 (.D(n9199), .CK(n2320[11]), .CD(n4535), 
           .Q(logic_result[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam logic_result_11__I_0_i1.GSR = "DISABLED";
    FD1S1A substract_I_0 (.D(n2320[14]), .CK(n2320[13]), .Q(substract)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam substract_I_0.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i2 (.D(n2320[28]), .CK(control_3_derived_24), 
           .Q(A_temp_c[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam A_temp_11__I_0_i2.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i3 (.D(n2320[29]), .CK(control_3_derived_24), 
           .Q(A_temp_c[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam A_temp_11__I_0_i3.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i4 (.D(n2320[30]), .CK(control_3_derived_24), 
           .Q(A_temp_c[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam A_temp_11__I_0_i4.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i5 (.D(n2320[31]), .CK(control_3_derived_24), 
           .Q(A_temp_c[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam A_temp_11__I_0_i5.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i6 (.D(n2320[32]), .CK(control_3_derived_24), 
           .Q(A_temp_c[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam A_temp_11__I_0_i6.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i7 (.D(n2320[33]), .CK(control_3_derived_24), 
           .Q(A_temp_c[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam A_temp_11__I_0_i7.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i8 (.D(n2320[34]), .CK(control_3_derived_24), 
           .Q(A_temp_c[7])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam A_temp_11__I_0_i8.GSR = "DISABLED";
    FD1S1I A_temp_11__I_0_i9 (.D(n4762), .CK(control_3_derived_24), .CD(n4965), 
           .Q(A_temp_c[8])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam A_temp_11__I_0_i9.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i10 (.D(n2320[36]), .CK(control_3_derived_24), 
           .Q(A_temp_c[9])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam A_temp_11__I_0_i10.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i11 (.D(n2320[38]), .CK(control_3_derived_24), 
           .Q(A_temp_c[10])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam A_temp_11__I_0_i11.GSR = "DISABLED";
    FD1S1A A_temp_11__I_0_i12 (.D(n2320[39]), .CK(control_3_derived_24), 
           .Q(A_temp_c[11])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam A_temp_11__I_0_i12.GSR = "DISABLED";
    FD1S1A B_temp_11__I_0_i2 (.D(n2320[16]), .CK(control_3_derived_24), 
           .Q(B_temp_c[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam B_temp_11__I_0_i2.GSR = "DISABLED";
    FD1S1A B_temp_11__I_0_i3 (.D(n2320[17]), .CK(control_3_derived_24), 
           .Q(B_temp_c[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam B_temp_11__I_0_i3.GSR = "DISABLED";
    FD1S1A B_temp_11__I_0_i4 (.D(n2320[18]), .CK(control_3_derived_24), 
           .Q(B_temp_c[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam B_temp_11__I_0_i4.GSR = "DISABLED";
    FD1S1A B_temp_11__I_0_i5 (.D(n2320[19]), .CK(control_3_derived_24), 
           .Q(B_temp_c[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam B_temp_11__I_0_i5.GSR = "DISABLED";
    FD1S1A B_temp_11__I_0_i6 (.D(n2320[20]), .CK(control_3_derived_24), 
           .Q(B_temp_c[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam B_temp_11__I_0_i6.GSR = "DISABLED";
    FD1S1A B_temp_11__I_0_i7 (.D(n2320[21]), .CK(control_3_derived_24), 
           .Q(B_temp_c[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam B_temp_11__I_0_i7.GSR = "DISABLED";
    FD1S1A B_temp_11__I_0_i8 (.D(n2320[22]), .CK(control_3_derived_24), 
           .Q(B_temp_c[7])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam B_temp_11__I_0_i8.GSR = "DISABLED";
    FD1S1I B_temp_11__I_0_i9 (.D(n4566), .CK(control_3_derived_24), .CD(n9442), 
           .Q(B_temp_c[8])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam B_temp_11__I_0_i9.GSR = "DISABLED";
    FD1S1I B_temp_11__I_0_i10 (.D(n4564), .CK(control_3_derived_24), .CD(n9442), 
           .Q(B_temp_c[9])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam B_temp_11__I_0_i10.GSR = "DISABLED";
    FD1S1I B_temp_11__I_0_i11 (.D(n4562), .CK(control_3_derived_24), .CD(n9442), 
           .Q(B_temp_c[10])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam B_temp_11__I_0_i11.GSR = "DISABLED";
    FD1S1I B_temp_11__I_0_i12 (.D(n4560), .CK(control_3_derived_24), .CD(n9442), 
           .Q(B_temp_c[11])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam B_temp_11__I_0_i12.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i2 (.D(n9148), .CK(n2320[11]), .CD(n4535), 
           .Q(logic_result_c[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam logic_result_11__I_0_i2.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i3 (.D(n9143), .CK(n2320[11]), .CD(n4535), 
           .Q(logic_result_c[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam logic_result_11__I_0_i3.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i4 (.D(n9142), .CK(n2320[11]), .CD(n4535), 
           .Q(logic_result_c[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam logic_result_11__I_0_i4.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i5 (.D(n9141), .CK(n2320[11]), .CD(n4535), 
           .Q(logic_result_c[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam logic_result_11__I_0_i5.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i6 (.D(n9136), .CK(n2320[11]), .CD(n4535), 
           .Q(logic_result_c[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam logic_result_11__I_0_i6.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i7 (.D(n9135), .CK(n2320[11]), .CD(n4535), 
           .Q(logic_result_c[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam logic_result_11__I_0_i7.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i8 (.D(n9133), .CK(n2320[11]), .CD(n4535), 
           .Q(logic_result_c[7])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam logic_result_11__I_0_i8.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i9 (.D(n9115), .CK(n2320[11]), .CD(n4535), 
           .Q(logic_result_c[8])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam logic_result_11__I_0_i9.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i10 (.D(n9113), .CK(n2320[11]), .CD(n4535), 
           .Q(logic_result_c[9])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam logic_result_11__I_0_i10.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i11 (.D(n9112), .CK(n2320[11]), .CD(n4535), 
           .Q(logic_result_c[10])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam logic_result_11__I_0_i11.GSR = "DISABLED";
    FD1S1I logic_result_11__I_0_i12 (.D(n9111), .CK(n2320[11]), .CD(n4535), 
           .Q(logic_result_c[11])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(44[2] 106[28])
    defparam logic_result_11__I_0_i12.GSR = "DISABLED";
    LUT4 i5126_3_lut_4_lut (.A(control[0]), .B(control[1]), .C(control[2]), 
         .D(A[11]), .Z(n4946)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;
    defparam i5126_3_lut_4_lut.init = 16'h8008;
    LUT4 i5063_3_lut_4_lut (.A(control[0]), .B(control[1]), .C(control[2]), 
         .D(A[7]), .Z(n4411)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;
    defparam i5063_3_lut_4_lut.init = 16'h8008;
    PFUMX control_3__I_0_275_Mux_8_i15 (.BLUT(sum_result[8]), .ALUT(n14_adj_933), 
          .C0(n5036), .Z(\ACC[8] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;
    PFUMX control_3__I_0_275_Mux_7_i15 (.BLUT(sum_result[7]), .ALUT(n14_adj_934), 
          .C0(n5036), .Z(\ACC[7] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;
    PFUMX control_3__I_0_275_Mux_6_i15 (.BLUT(sum_result[6]), .ALUT(n14_adj_935), 
          .C0(n5036), .Z(\ACC[6] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;
    LUT4 mux_1692_Mux_31_i14_4_lut_4_lut (.A(A[4]), .B(control[0]), .C(control[1]), 
         .D(control[2]), .Z(n14_adj_936)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(((D)+!C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam mux_1692_Mux_31_i14_4_lut_4_lut.init = 16'ha840;
    LUT4 mux_1692_Mux_30_i14_4_lut_4_lut (.A(A[3]), .B(control[0]), .C(control[1]), 
         .D(control[2]), .Z(n14_adj_937)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(((D)+!C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam mux_1692_Mux_30_i14_4_lut_4_lut.init = 16'ha840;
    LUT4 mux_1692_Mux_29_i14_4_lut_4_lut (.A(A[2]), .B(control[0]), .C(control[1]), 
         .D(control[2]), .Z(n14_adj_938)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(((D)+!C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam mux_1692_Mux_29_i14_4_lut_4_lut.init = 16'ha840;
    LUT4 mux_1692_Mux_32_i14_4_lut_4_lut (.A(A[5]), .B(control[0]), .C(control[1]), 
         .D(control[2]), .Z(n14_adj_939)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(((D)+!C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam mux_1692_Mux_32_i14_4_lut_4_lut.init = 16'ha840;
    LUT4 mux_1692_Mux_28_i14_4_lut_4_lut (.A(A[1]), .B(control[0]), .C(control[1]), 
         .D(control[2]), .Z(n14_adj_940)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(((D)+!C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam mux_1692_Mux_28_i14_4_lut_4_lut.init = 16'ha840;
    LUT4 mux_1692_Mux_27_i14_4_lut_4_lut (.A(A[0]), .B(control[0]), .C(control[1]), 
         .D(control[2]), .Z(n14_adj_941)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(((D)+!C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam mux_1692_Mux_27_i14_4_lut_4_lut.init = 16'ha840;
    LUT4 B_0__bdd_4_lut (.A(B[0]), .B(n9405), .C(n14_adj_942), .D(control[3]), 
         .Z(n2320[15])) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam B_0__bdd_4_lut.init = 16'hf0ee;
    LUT4 i7811_4_lut_4_lut (.A(control[3]), .B(control[0]), .C(control[1]), 
         .D(control[2]), .Z(n5036)) /* synthesis lut_function=(!((B (C)+!B !(C+!(D)))+!A)) */ ;
    defparam i7811_4_lut_4_lut.init = 16'h282a;
    PFUMX control_3__I_0_275_Mux_4_i15 (.BLUT(sum_result[4]), .ALUT(n14_adj_943), 
          .C0(n5036), .Z(\ACC[4] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;
    LUT4 mux_1692_Mux_14_i15_3_lut_4_lut (.A(control[1]), .B(control[2]), 
         .C(control[3]), .D(control[0]), .Z(n2320[14])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C (D)+!C !(D))+!B (C+!(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam mux_1692_Mux_14_i15_3_lut_4_lut.init = 16'h0f40;
    LUT4 i5203_2_lut_3_lut (.A(control[1]), .B(control[2]), .C(A[2]), 
         .Z(n7)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i5203_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i5272_2_lut_3_lut (.A(control[1]), .B(control[2]), .C(A[5]), 
         .Z(n7_adj_944)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i5272_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i5271_2_lut_3_lut (.A(control[1]), .B(control[2]), .C(A[1]), 
         .Z(n7_adj_945)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i5271_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i5165_2_lut_3_lut (.A(control[1]), .B(control[2]), .C(A[4]), 
         .Z(n7_adj_946)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i5165_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i5279_2_lut_3_lut (.A(control[1]), .B(control[2]), .C(A[0]), 
         .Z(n7_adj_947)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i5279_2_lut_3_lut.init = 16'hf4f4;
    LUT4 i5171_2_lut_3_lut (.A(control[1]), .B(control[2]), .C(A[3]), 
         .Z(n7_adj_948)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i5171_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i5208_2_lut_3_lut (.A(control[1]), .B(control[2]), .C(A[7]), 
         .Z(n7_adj_949)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i5208_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i5273_2_lut_3_lut (.A(control[1]), .B(control[2]), .C(A[6]), 
         .Z(n7_adj_950)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i5273_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i5130_2_lut (.A(A[11]), .B(control[1]), .Z(n4662)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i5130_2_lut.init = 16'h8888;
    LUT4 i5129_2_lut (.A(A[10]), .B(control[1]), .Z(n4670)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i5129_2_lut.init = 16'h8888;
    LUT4 i5125_2_lut (.A(A[9]), .B(control[1]), .Z(n4676)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i5125_2_lut.init = 16'h8888;
    LUT4 i5170_4_lut (.A(B[5]), .B(control[2]), .C(A[5]), .D(n9409), 
         .Z(n14_adj_951)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i5170_4_lut.init = 16'hc088;
    LUT4 i5177_4_lut (.A(B[4]), .B(control[2]), .C(A[4]), .D(n9409), 
         .Z(n14_adj_952)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i5177_4_lut.init = 16'hc088;
    LUT4 i5179_4_lut (.A(B[3]), .B(control[2]), .C(A[3]), .D(n9409), 
         .Z(n14_adj_953)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i5179_4_lut.init = 16'hc088;
    LUT4 i3332_2_lut (.A(control[2]), .B(control[3]), .Z(n4535)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i3332_2_lut.init = 16'hbbbb;
    LUT4 n6242_bdd_4_lut (.A(carry[10]), .B(n9403), .C(S_N_900), .D(n9406), 
         .Z(n9056)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (C (D)))) */ ;
    defparam n6242_bdd_4_lut.init = 16'he800;
    LUT4 i5181_4_lut (.A(B[2]), .B(control[2]), .C(A[2]), .D(n9409), 
         .Z(n14_adj_954)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i5181_4_lut.init = 16'hc088;
    LUT4 i5185_4_lut (.A(B[1]), .B(control[2]), .C(A[1]), .D(n9409), 
         .Z(n14_adj_955)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i5185_4_lut.init = 16'hc088;
    LUT4 i5205_4_lut (.A(B[0]), .B(control[2]), .C(A[0]), .D(n9409), 
         .Z(n14_adj_942)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i5205_4_lut.init = 16'hc088;
    PFUMX control_3__I_0_275_Mux_3_i15 (.BLUT(sum_result[3]), .ALUT(n8474), 
          .C0(n5036), .Z(\ACC[3] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;
    LUT4 i1_4_lut (.A(cout_N_904), .B(n9406), .C(n9397), .D(v12[3]), 
         .Z(n8807)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !((C (D)+!C !(D))+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(108[2] 124[29])
    defparam i1_4_lut.init = 16'h8448;
    LUT4 i3630_4_lut (.A(A[8]), .B(control[2]), .C(control[3]), .D(control[0]), 
         .Z(n4762)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(B+!(C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i3630_4_lut.init = 16'h9a0a;
    LUT4 i3438_4_lut (.A(B[8]), .B(A[8]), .C(n4968), .D(n9409), .Z(n4566)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i3438_4_lut.init = 16'hca0a;
    LUT4 i3436_4_lut (.A(B[9]), .B(A[9]), .C(n4968), .D(n9409), .Z(n4564)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i3436_4_lut.init = 16'hca0a;
    LUT4 i3434_4_lut (.A(B[10]), .B(A[10]), .C(n4968), .D(n9409), .Z(n4562)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i3434_4_lut.init = 16'hca0a;
    LUT4 i3432_4_lut (.A(B[11]), .B(A[11]), .C(n4968), .D(n9409), .Z(n4560)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i3432_4_lut.init = 16'hca0a;
    LUT4 control_1__bdd_4_lut_7885 (.A(control[1]), .B(control[0]), .C(A[10]), 
         .D(B[10]), .Z(n9112)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_7885.init = 16'h5660;
    PFUMX control_3__I_0_275_Mux_2_i15 (.BLUT(sum_result[2]), .ALUT(n14_adj_956), 
          .C0(n5036), .Z(\ACC[2] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;
    LUT4 control_1__bdd_4_lut_7886 (.A(control[1]), .B(control[0]), .C(A[9]), 
         .D(B[9]), .Z(n9113)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_7886.init = 16'h5660;
    PFUMX control_3__I_0_275_Mux_1_i15 (.BLUT(sum_result[1]), .ALUT(n14_adj_957), 
          .C0(n5036), .Z(\ACC[1] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;
    LUT4 control_1__bdd_4_lut_7884 (.A(control[1]), .B(control[0]), .C(A[11]), 
         .D(B[11]), .Z(n9111)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_7884.init = 16'h5660;
    LUT4 control_1__bdd_4_lut_8002 (.A(control[1]), .B(control[0]), .C(A[0]), 
         .D(B[0]), .Z(n9199)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_8002.init = 16'h5660;
    LUT4 S_7__N_891_bdd_4_lut (.A(S_7__N_891), .B(n9406), .C(n9383), .D(carry[7]), 
         .Z(n9114)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A !(B (C (D)+!C !(D))))) */ ;
    defparam S_7__N_891_bdd_4_lut.init = 16'h4884;
    LUT4 control_1__bdd_4_lut_7892 (.A(control[1]), .B(control[0]), .C(A[8]), 
         .D(B[8]), .Z(n9115)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_7892.init = 16'h5660;
    LUT4 v12_34_5__bdd_4_lut (.A(n9388), .B(cout_N_904_adj_958), .C(n9401), 
         .D(n9406), .Z(n9122)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A !(B (C (D))+!B !(C+!(D))))) */ ;
    defparam v12_34_5__bdd_4_lut.init = 16'h6900;
    LUT4 control_1__bdd_4_lut_7898 (.A(control[1]), .B(control[0]), .C(A[5]), 
         .D(B[5]), .Z(n9136)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_7898.init = 16'h5660;
    LUT4 control_1__bdd_4_lut_7894 (.A(control[1]), .B(control[0]), .C(A[6]), 
         .D(B[6]), .Z(n9135)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_7894.init = 16'h5660;
    LUT4 i1_4_lut_adj_106 (.A(n9372), .B(n9406), .C(carry[8]), .D(S_8__N_890), 
         .Z(n8798)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A !(B (C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(108[2] 124[29])
    defparam i1_4_lut_adj_106.init = 16'h4884;
    LUT4 control_1__bdd_4_lut_7893 (.A(control[1]), .B(control[0]), .C(A[7]), 
         .D(B[7]), .Z(n9133)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_7893.init = 16'h5660;
    LUT4 S_6__N_892_bdd_4_lut (.A(S_6__N_892), .B(n9406), .C(n8869), .D(carry[6]), 
         .Z(n9132)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !((C (D)+!C !(D))+!B)) */ ;
    defparam S_6__N_892_bdd_4_lut.init = 16'h8448;
    LUT4 control_1__bdd_4_lut_7903 (.A(control[1]), .B(control[0]), .C(A[2]), 
         .D(B[2]), .Z(n9143)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_7903.init = 16'h5660;
    LUT4 control_1__bdd_4_lut_7900 (.A(control[1]), .B(control[0]), .C(A[3]), 
         .D(B[3]), .Z(n9142)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_7900.init = 16'h5660;
    LUT4 control_1__bdd_4_lut_7899 (.A(control[1]), .B(control[0]), .C(A[4]), 
         .D(B[4]), .Z(n9141)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_7899.init = 16'h5660;
    LUT4 control_1__bdd_4_lut_7942 (.A(control[1]), .B(control[0]), .C(A[1]), 
         .D(B[1]), .Z(n9148)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A !(B (C+(D))+!B (C (D))))) */ ;
    defparam control_1__bdd_4_lut_7942.init = 16'h5660;
    PFUMX mux_1692_Mux_31_i15 (.BLUT(n7_adj_946), .ALUT(n14_adj_936), .C0(control[3]), 
          .Z(n2320[31])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;
    LUT4 i1_4_lut_adj_107 (.A(n9389), .B(n9406), .C(carry[9]), .D(S_9__N_889), 
         .Z(n8799)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A !(B (C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(108[2] 124[29])
    defparam i1_4_lut_adj_107.init = 16'h4884;
    PFUMX mux_1692_Mux_30_i15 (.BLUT(n7_adj_948), .ALUT(n14_adj_937), .C0(control[3]), 
          .Z(n2320[30])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;
    PFUMX mux_1692_Mux_29_i15 (.BLUT(n7), .ALUT(n14_adj_938), .C0(control[3]), 
          .Z(n2320[29])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;
    PFUMX mux_1692_Mux_32_i15 (.BLUT(n7_adj_944), .ALUT(n14_adj_939), .C0(control[3]), 
          .Z(n2320[32])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;
    PFUMX mux_1692_Mux_28_i15 (.BLUT(n7_adj_945), .ALUT(n14_adj_940), .C0(control[3]), 
          .Z(n2320[28])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;
    PFUMX mux_1692_Mux_27_i15 (.BLUT(n7_adj_947), .ALUT(n14_adj_941), .C0(control[3]), 
          .Z(n2320[27])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;
    LUT4 B_5__bdd_4_lut_4_lut (.A(n9405), .B(control[3]), .C(n14_adj_951), 
         .D(B[5]), .Z(n2320[20])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam B_5__bdd_4_lut_4_lut.init = 16'hd1c0;
    LUT4 B_4__bdd_4_lut_4_lut (.A(n9405), .B(control[3]), .C(n14_adj_952), 
         .D(B[4]), .Z(n2320[19])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam B_4__bdd_4_lut_4_lut.init = 16'hd1c0;
    LUT4 B_3__bdd_4_lut_4_lut (.A(n9405), .B(control[3]), .C(n14_adj_953), 
         .D(B[3]), .Z(n2320[18])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam B_3__bdd_4_lut_4_lut.init = 16'hd1c0;
    PFUMX mux_1692_Mux_36_i15 (.BLUT(n4676), .ALUT(n4950), .C0(control[3]), 
          .Z(n2320[36])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;
    LUT4 B_2__bdd_4_lut_4_lut (.A(n9405), .B(control[3]), .C(n14_adj_954), 
         .D(B[2]), .Z(n2320[17])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam B_2__bdd_4_lut_4_lut.init = 16'hd1c0;
    LUT4 B_1__bdd_4_lut_4_lut (.A(n9405), .B(control[3]), .C(n14_adj_955), 
         .D(B[1]), .Z(n2320[16])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam B_1__bdd_4_lut_4_lut.init = 16'hd1c0;
    LUT4 n6287_bdd_4_lut_7957_4_lut (.A(n9405), .B(control[3]), .C(n9206), 
         .D(B[7]), .Z(n2320[22])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam n6287_bdd_4_lut_7957_4_lut.init = 16'hd1c0;
    LUT4 n6287_bdd_4_lut_4_lut (.A(n9405), .B(control[3]), .C(n9202), 
         .D(B[6]), .Z(n2320[21])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam n6287_bdd_4_lut_4_lut.init = 16'hd1c0;
    PFUMX mux_1692_Mux_38_i15 (.BLUT(n4670), .ALUT(n4948), .C0(control[3]), 
          .Z(n2320[38])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;
    LUT4 i5044_4_lut_4_lut (.A(control[0]), .B(control[1]), .C(control[3]), 
         .D(control[2]), .Z(n2320[13])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (B (C)+!B !((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i5044_4_lut_4_lut.init = 16'h1f8f;
    PFUMX mux_1692_Mux_39_i15 (.BLUT(n4662), .ALUT(n4946), .C0(control[3]), 
          .Z(n2320[39])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;
    LUT4 i7699_3_lut_4_lut_4_lut (.A(n9409), .B(n8803), .C(control[2]), 
         .D(logic_result_c[2]), .Z(n14_adj_956)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i7699_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i7696_3_lut_4_lut_4_lut (.A(n9409), .B(n8802), .C(control[2]), 
         .D(logic_result_c[1]), .Z(n14_adj_957)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i7696_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i7703_3_lut_4_lut_4_lut (.A(n9409), .B(n8807), .C(control[2]), 
         .D(logic_result_c[3]), .Z(n8474)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i7703_3_lut_4_lut_4_lut.init = 16'hc5c0;
    PFUMX mux_1692_Mux_34_i15 (.BLUT(n7_adj_949), .ALUT(n4411), .C0(control[3]), 
          .Z(n2320[34])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;
    LUT4 B_6__bdd_4_lut (.A(B[6]), .B(control[0]), .C(A[6]), .D(control[1]), 
         .Z(n9201)) /* synthesis lut_function=(A (B (C (D))+!B !(D))+!A (B (C (D)))) */ ;
    defparam B_6__bdd_4_lut.init = 16'hc022;
    LUT4 i7706_3_lut_4_lut_4_lut (.A(n9409), .B(n8804), .C(control[2]), 
         .D(logic_result_c[4]), .Z(n14_adj_943)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i7706_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i7712_3_lut_4_lut_4_lut (.A(n9409), .B(n9132), .C(control[2]), 
         .D(logic_result_c[6]), .Z(n14_adj_935)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i7712_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 n9122_bdd_4_lut_4_lut (.A(n9409), .B(control[2]), .C(logic_result_c[5]), 
         .D(n9122), .Z(n9187)) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam n9122_bdd_4_lut_4_lut.init = 16'hdc10;
    LUT4 n9056_bdd_4_lut_4_lut (.A(n9409), .B(control[2]), .C(logic_result_c[11]), 
         .D(n9056), .Z(n9168)) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam n9056_bdd_4_lut_4_lut.init = 16'hdc10;
    PFUMX mux_1692_Mux_33_i15 (.BLUT(n7_adj_950), .ALUT(n4356), .C0(control[3]), 
          .Z(n2320[33])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=117, LSE_RLINE=117 */ ;
    LUT4 i7722_3_lut_4_lut_4_lut (.A(n9409), .B(n8799), .C(control[2]), 
         .D(logic_result_c[9]), .Z(n14_adj_932)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i7722_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i7719_3_lut_4_lut_4_lut (.A(n9409), .B(n8798), .C(control[2]), 
         .D(logic_result_c[8]), .Z(n14_adj_933)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i7719_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i7725_3_lut_4_lut_4_lut (.A(n9409), .B(n8800), .C(control[2]), 
         .D(logic_result_c[10]), .Z(n14)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i7725_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i7716_3_lut_4_lut_4_lut (.A(n9409), .B(n9114), .C(control[2]), 
         .D(logic_result_c[7]), .Z(n14_adj_934)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(46[3] 105[12])
    defparam i7716_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i1_2_lut_rep_272 (.A(control[0]), .B(control[1]), .Z(n9406)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(108[2] 124[29])
    defparam i1_2_lut_rep_272.init = 16'h2222;
    LUT4 i1_3_lut_4_lut (.A(control[0]), .B(control[1]), .C(n9412), .D(n9413), 
         .Z(n8802)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(108[2] 124[29])
    defparam i1_3_lut_4_lut.init = 16'h0220;
    LUT4 i1_3_lut_4_lut_adj_108 (.A(control[0]), .B(control[1]), .C(S_N_900_adj_959), 
         .D(n9396), .Z(n8803)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(108[2] 124[29])
    defparam i1_3_lut_4_lut_adj_108.init = 16'h0220;
    LUT4 i1_3_lut_4_lut_adj_109 (.A(control[0]), .B(control[1]), .C(n9421), 
         .D(n9390), .Z(n8804)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu.vhd(108[2] 124[29])
    defparam i1_3_lut_4_lut_adj_109.init = 16'h0220;
    LUT4 i1_3_lut_4_lut_adj_110 (.A(control[0]), .B(control[1]), .C(control[3]), 
         .D(control[2]), .Z(n67)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_adj_110.init = 16'h1f0f;
    LUT4 i5330_2_lut_3_lut (.A(control[0]), .B(control[1]), .C(control[3]), 
         .Z(n4968)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i5330_2_lut_3_lut.init = 16'he0e0;
    LUT4 i5328_2_lut_rep_275 (.A(control[0]), .B(control[1]), .Z(n9409)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5328_2_lut_rep_275.init = 16'h8888;
    LUT4 i5345_1_lut_3_lut_4_lut (.A(control[0]), .B(control[1]), .C(control[2]), 
         .D(control[3]), .Z(n2320[11])) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;
    defparam i5345_1_lut_3_lut_4_lut.init = 16'h0700;
    LUT4 i2_3_lut_rep_270_4_lut (.A(control[0]), .B(control[1]), .C(control[2]), 
         .D(control[3]), .Z(control_3_derived_24)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (C+!(D))) */ ;
    defparam i2_3_lut_rep_270_4_lut.init = 16'hf8ff;
    LUT4 n565_bdd_2_lut_7945 (.A(n9201), .B(control[2]), .Z(n9202)) /* synthesis lut_function=(A (B)) */ ;
    defparam n565_bdd_2_lut_7945.init = 16'h8888;
    LUT4 B_7__bdd_4_lut (.A(B[7]), .B(control[0]), .C(A[7]), .D(control[1]), 
         .Z(n9205)) /* synthesis lut_function=(A (B (C (D))+!B !(D))+!A (B (C (D)))) */ ;
    defparam B_7__bdd_4_lut.init = 16'hc022;
    LUT4 n565_bdd_2_lut_7951 (.A(n9205), .B(control[2]), .Z(n9206)) /* synthesis lut_function=(A (B)) */ ;
    defparam n565_bdd_2_lut_7951.init = 16'h8888;
    multi6 imp_multi (.\A_temp[1] (A_temp_c[1]), .\B_temp[2] (B_temp_c[2]), 
           .\A_temp[5] (A_temp_c[5]), .\B_temp[1] (B_temp_c[1]), .\B_temp[3] (B_temp_c[3]), 
           .\A_temp[0] (A_temp[0]), .n9397(n9397), .\A_temp[2] (A_temp_c[2]), 
           .\A_temp[3] (A_temp_c[3]), .\A_temp[4] (A_temp_c[4]), .n9372(n9372), 
           .n9389(n9389), .\B_temp[5] (B_temp_c[5]), .\B_temp[4] (B_temp_c[4]), 
           .n9401(n9401), .S_6__N_892(S_6__N_892), .S_7__N_891(S_7__N_891), 
           .S_8__N_890(S_8__N_890), .S_9__N_889(S_9__N_889), .n9403(n9403), 
           .S_N_900(S_N_900), .n9412(n9412), .\B_temp[0] (B_temp[0]), 
           .n9413(n9413), .S_N_900_adj_6(S_N_900_adj_959), .n9396(n9396), 
           .\v12[3] (v12[3]), .n9421(n9421), .\carry[8] (carry[8]), .\carry[9] (carry[9]), 
           .\carry[10] (carry[10]), .n9383(n9383), .\carry[7] (carry[7]), 
           .n8869(n8869), .\carry[6] (carry[6]), .cout_N_904(cout_N_904_adj_958), 
           .n9388(n9388), .n9390(n9390), .n9406(n9406), .n8800(n8800), 
           .cout_N_904_adj_7(cout_N_904));   // c:/users/cassandra/desktop/arqui2/alu.vhd(42[13:19])
    add_sub_12_U16 imp_add_sub_12 (.B_temp({B_temp_c[11:1], B_temp[0]}), 
            .substract(substract), .A_temp({A_temp_c[11:1], A_temp[0]}), 
            .\sum_result[1] (sum_result[1]), .\sum_result[2] (sum_result[2]), 
            .\sum_result[3] (sum_result[3]), .\sum_result[4] (sum_result[4]), 
            .n9125(n9125), .\sum_result[6] (sum_result[6]), .\sum_result[7] (sum_result[7]), 
            .\sum_result[8] (sum_result[8]), .\sum_result[9] (sum_result[9]), 
            .\sum_result[10] (sum_result[10]), .\sum_result[11] (\sum_result[11] ));   // c:/users/cassandra/desktop/arqui2/alu.vhd(41[21:31])
    
endmodule
//
// Verilog Description of module multi6
//

module multi6 (\A_temp[1] , \B_temp[2] , \A_temp[5] , \B_temp[1] , \B_temp[3] , 
            \A_temp[0] , n9397, \A_temp[2] , \A_temp[3] , \A_temp[4] , 
            n9372, n9389, \B_temp[5] , \B_temp[4] , n9401, S_6__N_892, 
            S_7__N_891, S_8__N_890, S_9__N_889, n9403, S_N_900, n9412, 
            \B_temp[0] , n9413, S_N_900_adj_6, n9396, \v12[3] , n9421, 
            \carry[8] , \carry[9] , \carry[10] , n9383, \carry[7] , 
            n8869, \carry[6] , cout_N_904, n9388, n9390, n9406, 
            n8800, cout_N_904_adj_7);
    input \A_temp[1] ;
    input \B_temp[2] ;
    input \A_temp[5] ;
    input \B_temp[1] ;
    input \B_temp[3] ;
    input \A_temp[0] ;
    output n9397;
    input \A_temp[2] ;
    input \A_temp[3] ;
    input \A_temp[4] ;
    output n9372;
    output n9389;
    input \B_temp[5] ;
    input \B_temp[4] ;
    output n9401;
    output S_6__N_892;
    output S_7__N_891;
    output S_8__N_890;
    output S_9__N_889;
    output n9403;
    output S_N_900;
    output n9412;
    input \B_temp[0] ;
    output n9413;
    output S_N_900_adj_6;
    output n9396;
    output \v12[3] ;
    output n9421;
    output \carry[8] ;
    output \carry[9] ;
    output \carry[10] ;
    output n9383;
    output \carry[7] ;
    output n8869;
    output \carry[6] ;
    output cout_N_904;
    output n9388;
    output n9390;
    input n9406;
    output n8800;
    output cout_N_904_adj_7;
    
    
    wire n9423, n9410, cout_N_904_c, n9425;
    wire [12:0]carry;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(21[8:13])
    
    wire n9398, n9427, n9400, n9428, S_6__N_892_c, n9430, S_7__N_891_c, 
        n9402;
    wire [12:0]carry_adj_929;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(21[8:13])
    
    wire n9433, n9434, cout_N_904_adj_913, n9435;
    wire [12:0]carry_adj_930;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(21[8:13])
    
    wire n9438, n9439, n9441, cout_N_904_adj_919, n9414, n9415;
    wire [12:0]carry_adj_931;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(21[8:13])
    
    wire n9417, n9418;
    wire [11:0]v12;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(21[12:15])
    
    wire n9420, n9394, n9422;
    
    LUT4 A_5__I_0_48_i2_2_lut_rep_289 (.A(\A_temp[1] ), .B(\B_temp[2] ), 
         .Z(n9423)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(25[21:34])
    defparam A_5__I_0_48_i2_2_lut_rep_289.init = 16'h8888;
    LUT4 A_5__I_0_47_i6_2_lut_rep_276 (.A(\A_temp[5] ), .B(\B_temp[1] ), 
         .Z(n9410)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(24[22:35])
    defparam A_5__I_0_47_i6_2_lut_rep_276.init = 16'h8888;
    LUT4 A_I_0_12_2_lut_rep_263_3_lut_4_lut (.A(\A_temp[1] ), .B(\B_temp[2] ), 
         .C(\B_temp[3] ), .D(\A_temp[0] ), .Z(n9397)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(25[21:34])
    defparam A_I_0_12_2_lut_rep_263_3_lut_4_lut.init = 16'h7888;
    LUT4 A_I_0_2_lut_3_lut_4_lut (.A(\A_temp[1] ), .B(\B_temp[2] ), .C(\B_temp[3] ), 
         .D(\A_temp[0] ), .Z(cout_N_904_c)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(25[21:34])
    defparam A_I_0_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 cout_I_0_4_lut_3_lut_4_lut (.A(\A_temp[1] ), .B(\B_temp[3] ), .C(cout_N_904_c), 
         .D(n9425), .Z(carry[5])) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(26[20:33])
    defparam cout_I_0_4_lut_3_lut_4_lut.init = 16'hf880;
    LUT4 S_I_0_4_lut_3_lut_rep_264_4_lut (.A(\A_temp[1] ), .B(\B_temp[3] ), 
         .C(cout_N_904_c), .D(n9425), .Z(n9398)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(26[20:33])
    defparam S_I_0_4_lut_3_lut_rep_264_4_lut.init = 16'h8778;
    LUT4 A_5__I_0_48_i3_2_lut_rep_291 (.A(\A_temp[2] ), .B(\B_temp[2] ), 
         .Z(n9425)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(25[21:34])
    defparam A_5__I_0_48_i3_2_lut_rep_291.init = 16'h8888;
    LUT4 cout_I_0_4_lut_3_lut_4_lut_adj_88 (.A(\A_temp[2] ), .B(\B_temp[3] ), 
         .C(carry[5]), .D(n9427), .Z(carry[6])) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(26[20:33])
    defparam cout_I_0_4_lut_3_lut_4_lut_adj_88.init = 16'hf880;
    LUT4 S_I_0_4_lut_3_lut_rep_266_4_lut (.A(\A_temp[2] ), .B(\B_temp[3] ), 
         .C(carry[5]), .D(n9427), .Z(n9400)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(26[20:33])
    defparam S_I_0_4_lut_3_lut_rep_266_4_lut.init = 16'h8778;
    LUT4 A_5__I_0_48_i4_2_lut_rep_293 (.A(\A_temp[3] ), .B(\B_temp[2] ), 
         .Z(n9427)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(25[21:34])
    defparam A_5__I_0_48_i4_2_lut_rep_293.init = 16'h8888;
    LUT4 cout_I_0_4_lut_3_lut_4_lut_adj_89 (.A(\A_temp[3] ), .B(\B_temp[3] ), 
         .C(carry[6]), .D(n9428), .Z(carry[7])) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(26[20:33])
    defparam cout_I_0_4_lut_3_lut_4_lut_adj_89.init = 16'hf880;
    LUT4 S_I_0_4_lut_3_lut_4_lut (.A(\A_temp[3] ), .B(\B_temp[3] ), .C(carry[6]), 
         .D(n9428), .Z(S_6__N_892_c)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(26[20:33])
    defparam S_I_0_4_lut_3_lut_4_lut.init = 16'h8778;
    LUT4 A_5__I_0_48_i5_2_lut_rep_294 (.A(\A_temp[4] ), .B(\B_temp[2] ), 
         .Z(n9428)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(25[21:34])
    defparam A_5__I_0_48_i5_2_lut_rep_294.init = 16'h8888;
    LUT4 S_I_0_4_lut_3_lut_4_lut_adj_90 (.A(\A_temp[4] ), .B(\B_temp[3] ), 
         .C(carry[7]), .D(n9430), .Z(S_7__N_891_c)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(26[20:33])
    defparam S_I_0_4_lut_3_lut_4_lut_adj_90.init = 16'h8778;
    LUT4 cout_I_0_4_lut_3_lut_rep_268_4_lut (.A(\A_temp[4] ), .B(\B_temp[3] ), 
         .C(carry[7]), .D(n9430), .Z(n9402)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(26[20:33])
    defparam cout_I_0_4_lut_3_lut_rep_268_4_lut.init = 16'hf880;
    LUT4 A_5__I_0_48_i6_2_lut_rep_296 (.A(\A_temp[5] ), .B(\B_temp[2] ), 
         .Z(n9430)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(25[21:34])
    defparam A_5__I_0_48_i6_2_lut_rep_296.init = 16'h8888;
    LUT4 i1_3_lut_rep_238_4_lut (.A(\A_temp[5] ), .B(\B_temp[3] ), .C(n9402), 
         .D(carry_adj_929[8]), .Z(n9372)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(26[20:33])
    defparam i1_3_lut_rep_238_4_lut.init = 16'h8778;
    LUT4 i1_4_lut_3_lut_rep_255_4_lut (.A(\A_temp[5] ), .B(\B_temp[3] ), 
         .C(carry_adj_929[8]), .D(n9402), .Z(n9389)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(26[20:33])
    defparam i1_4_lut_3_lut_rep_255_4_lut.init = 16'hf880;
    LUT4 A_5__I_0_i1_2_lut_rep_299 (.A(\A_temp[0] ), .B(\B_temp[5] ), .Z(n9433)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(28[18:31])
    defparam A_5__I_0_i1_2_lut_rep_299.init = 16'h8888;
    LUT4 A_5__I_0_50_i2_2_lut_rep_300 (.A(\A_temp[1] ), .B(\B_temp[4] ), 
         .Z(n9434)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(27[19:32])
    defparam A_5__I_0_50_i2_2_lut_rep_300.init = 16'h8888;
    LUT4 A_I_0_2_lut_3_lut_4_lut_adj_91 (.A(\A_temp[1] ), .B(\B_temp[4] ), 
         .C(\B_temp[5] ), .D(\A_temp[0] ), .Z(cout_N_904_adj_913)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(27[19:32])
    defparam A_I_0_2_lut_3_lut_4_lut_adj_91.init = 16'h8000;
    LUT4 A_I_0_12_2_lut_rep_267_3_lut_4_lut (.A(\A_temp[1] ), .B(\B_temp[4] ), 
         .C(\B_temp[5] ), .D(\A_temp[0] ), .Z(n9401)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(27[19:32])
    defparam A_I_0_12_2_lut_rep_267_3_lut_4_lut.init = 16'h7888;
    LUT4 S_I_0_4_lut_3_lut_4_lut_adj_92 (.A(\A_temp[1] ), .B(\B_temp[5] ), 
         .C(cout_N_904_adj_913), .D(n9435), .Z(S_6__N_892)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(28[18:31])
    defparam S_I_0_4_lut_3_lut_4_lut_adj_92.init = 16'h8778;
    LUT4 cout_I_0_4_lut_3_lut_4_lut_adj_93 (.A(\A_temp[1] ), .B(\B_temp[5] ), 
         .C(cout_N_904_adj_913), .D(n9435), .Z(carry_adj_930[7])) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(28[18:31])
    defparam cout_I_0_4_lut_3_lut_4_lut_adj_93.init = 16'hf880;
    LUT4 A_5__I_0_50_i3_2_lut_rep_301 (.A(\A_temp[2] ), .B(\B_temp[4] ), 
         .Z(n9435)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(27[19:32])
    defparam A_5__I_0_50_i3_2_lut_rep_301.init = 16'h8888;
    LUT4 S_I_0_4_lut_3_lut_4_lut_adj_94 (.A(\A_temp[2] ), .B(\B_temp[5] ), 
         .C(carry_adj_930[7]), .D(n9438), .Z(S_7__N_891)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(28[18:31])
    defparam S_I_0_4_lut_3_lut_4_lut_adj_94.init = 16'h8778;
    LUT4 cout_I_0_4_lut_3_lut_4_lut_adj_95 (.A(\A_temp[2] ), .B(\B_temp[5] ), 
         .C(carry_adj_930[7]), .D(n9438), .Z(carry_adj_930[8])) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(28[18:31])
    defparam cout_I_0_4_lut_3_lut_4_lut_adj_95.init = 16'hf880;
    LUT4 A_5__I_0_50_i4_2_lut_rep_304 (.A(\A_temp[3] ), .B(\B_temp[4] ), 
         .Z(n9438)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(27[19:32])
    defparam A_5__I_0_50_i4_2_lut_rep_304.init = 16'h8888;
    LUT4 S_I_0_4_lut_3_lut_4_lut_adj_96 (.A(\A_temp[3] ), .B(\B_temp[5] ), 
         .C(carry_adj_930[8]), .D(n9439), .Z(S_8__N_890)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(28[18:31])
    defparam S_I_0_4_lut_3_lut_4_lut_adj_96.init = 16'h8778;
    LUT4 cout_I_0_4_lut_3_lut_4_lut_adj_97 (.A(\A_temp[3] ), .B(\B_temp[5] ), 
         .C(carry_adj_930[8]), .D(n9439), .Z(carry_adj_930[9])) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(28[18:31])
    defparam cout_I_0_4_lut_3_lut_4_lut_adj_97.init = 16'hf880;
    LUT4 A_5__I_0_50_i5_2_lut_rep_305 (.A(\A_temp[4] ), .B(\B_temp[4] ), 
         .Z(n9439)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(27[19:32])
    defparam A_5__I_0_50_i5_2_lut_rep_305.init = 16'h8888;
    LUT4 S_I_0_4_lut_3_lut_4_lut_adj_98 (.A(\A_temp[4] ), .B(\B_temp[5] ), 
         .C(carry_adj_930[9]), .D(n9441), .Z(S_9__N_889)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(28[18:31])
    defparam S_I_0_4_lut_3_lut_4_lut_adj_98.init = 16'h8778;
    LUT4 cout_I_0_4_lut_3_lut_rep_269_4_lut (.A(\A_temp[4] ), .B(\B_temp[5] ), 
         .C(carry_adj_930[9]), .D(n9441), .Z(n9403)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(28[18:31])
    defparam cout_I_0_4_lut_3_lut_rep_269_4_lut.init = 16'hf880;
    LUT4 A_5__I_0_50_i6_2_lut_rep_307 (.A(\A_temp[5] ), .B(\B_temp[4] ), 
         .Z(n9441)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(27[19:32])
    defparam A_5__I_0_50_i6_2_lut_rep_307.init = 16'h8888;
    LUT4 A_5__I_0_i6_2_lut (.A(\A_temp[5] ), .B(\B_temp[5] ), .Z(S_N_900)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(28[18:31])
    defparam A_5__I_0_i6_2_lut.init = 16'h8888;
    LUT4 A_5__I_0_47_i1_2_lut_rep_278 (.A(\A_temp[0] ), .B(\B_temp[1] ), 
         .Z(n9412)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(24[22:35])
    defparam A_5__I_0_47_i1_2_lut_rep_278.init = 16'h8888;
    LUT4 A_5__I_0_46_i2_2_lut_rep_279 (.A(\A_temp[1] ), .B(\B_temp[0] ), 
         .Z(n9413)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(23[23:36])
    defparam A_5__I_0_46_i2_2_lut_rep_279.init = 16'h8888;
    LUT4 A_5__I_0_48_i1_2_lut (.A(\A_temp[0] ), .B(\B_temp[2] ), .Z(S_N_900_adj_6)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(25[21:34])
    defparam A_5__I_0_48_i1_2_lut.init = 16'h8888;
    LUT4 A_I_0_2_lut_3_lut_4_lut_adj_99 (.A(\A_temp[1] ), .B(\B_temp[0] ), 
         .C(\B_temp[1] ), .D(\A_temp[0] ), .Z(cout_N_904_adj_919)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(23[23:36])
    defparam A_I_0_2_lut_3_lut_4_lut_adj_99.init = 16'h8000;
    LUT4 A_5__I_0_47_i2_2_lut_rep_280 (.A(\A_temp[1] ), .B(\B_temp[1] ), 
         .Z(n9414)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(24[22:35])
    defparam A_5__I_0_47_i2_2_lut_rep_280.init = 16'h8888;
    LUT4 cout_I_0_4_lut_3_lut_4_lut_adj_100 (.A(\A_temp[1] ), .B(\B_temp[1] ), 
         .C(cout_N_904_adj_919), .D(n9415), .Z(carry_adj_931[3])) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(24[22:35])
    defparam cout_I_0_4_lut_3_lut_4_lut_adj_100.init = 16'hf880;
    LUT4 S_I_0_4_lut_3_lut_rep_262_4_lut (.A(\A_temp[1] ), .B(\B_temp[1] ), 
         .C(cout_N_904_adj_919), .D(n9415), .Z(n9396)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(24[22:35])
    defparam S_I_0_4_lut_3_lut_rep_262_4_lut.init = 16'h8778;
    LUT4 A_5__I_0_46_i3_2_lut_rep_281 (.A(\A_temp[2] ), .B(\B_temp[0] ), 
         .Z(n9415)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(23[23:36])
    defparam A_5__I_0_46_i3_2_lut_rep_281.init = 16'h8888;
    LUT4 S_I_0_4_lut_3_lut_4_lut_adj_101 (.A(\A_temp[2] ), .B(\B_temp[1] ), 
         .C(carry_adj_931[3]), .D(n9417), .Z(\v12[3] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(24[22:35])
    defparam S_I_0_4_lut_3_lut_4_lut_adj_101.init = 16'h8778;
    LUT4 cout_I_0_4_lut_3_lut_4_lut_adj_102 (.A(\A_temp[2] ), .B(\B_temp[1] ), 
         .C(carry_adj_931[3]), .D(n9417), .Z(carry_adj_931[4])) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(24[22:35])
    defparam cout_I_0_4_lut_3_lut_4_lut_adj_102.init = 16'hf880;
    LUT4 A_5__I_0_46_i4_2_lut_rep_283 (.A(\A_temp[3] ), .B(\B_temp[0] ), 
         .Z(n9417)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(23[23:36])
    defparam A_5__I_0_46_i4_2_lut_rep_283.init = 16'h8888;
    LUT4 cout_I_0_4_lut_3_lut_4_lut_adj_103 (.A(\A_temp[3] ), .B(\B_temp[1] ), 
         .C(carry_adj_931[4]), .D(n9418), .Z(carry_adj_931[5])) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(24[22:35])
    defparam cout_I_0_4_lut_3_lut_4_lut_adj_103.init = 16'hf880;
    LUT4 S_I_0_4_lut_3_lut_4_lut_adj_104 (.A(\A_temp[3] ), .B(\B_temp[1] ), 
         .C(carry_adj_931[4]), .D(n9418), .Z(v12[4])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(24[22:35])
    defparam S_I_0_4_lut_3_lut_4_lut_adj_104.init = 16'h8778;
    LUT4 A_5__I_0_46_i5_2_lut_rep_284 (.A(\A_temp[4] ), .B(\B_temp[0] ), 
         .Z(n9418)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(23[23:36])
    defparam A_5__I_0_46_i5_2_lut_rep_284.init = 16'h8888;
    LUT4 S_I_0_4_lut_3_lut_4_lut_adj_105 (.A(\A_temp[4] ), .B(\B_temp[1] ), 
         .C(carry_adj_931[5]), .D(n9420), .Z(v12[5])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(24[22:35])
    defparam S_I_0_4_lut_3_lut_4_lut_adj_105.init = 16'h8778;
    LUT4 cout_I_0_4_lut_3_lut_rep_260_4_lut (.A(\A_temp[4] ), .B(\B_temp[1] ), 
         .C(carry_adj_931[5]), .D(n9420), .Z(n9394)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(24[22:35])
    defparam cout_I_0_4_lut_3_lut_rep_260_4_lut.init = 16'hf880;
    LUT4 A_5__I_0_46_i6_2_lut_rep_286 (.A(\A_temp[5] ), .B(\B_temp[0] ), 
         .Z(n9420)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(23[23:36])
    defparam A_5__I_0_46_i6_2_lut_rep_286.init = 16'h8888;
    LUT4 A_5__I_0_50_i1_2_lut_rep_287 (.A(\A_temp[0] ), .B(\B_temp[4] ), 
         .Z(n9421)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(27[19:32])
    defparam A_5__I_0_50_i1_2_lut_rep_287.init = 16'h8888;
    LUT4 A_5__I_0_49_i1_2_lut_rep_288 (.A(\A_temp[0] ), .B(\B_temp[3] ), 
         .Z(n9422)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/multi6.vhd(26[20:33])
    defparam A_5__I_0_49_i1_2_lut_rep_288.init = 16'h8888;
    add_sub_12 adder5 (.n9372(n9372), .S_8__N_890(S_8__N_890), .\carry[8] (\carry[8] ), 
            .\carry[9] (\carry[9] ), .n9389(n9389), .S_9__N_889(S_9__N_889), 
            .\carry[10] (\carry[10] ), .n9383(n9383), .S_7__N_891(S_7__N_891), 
            .\carry[7] (\carry[7] ), .n8869(n8869), .\carry[6] (\carry[6] ), 
            .S_6__N_892(S_6__N_892), .n9421(n9421), .\carry[4] (carry_adj_929[4]), 
            .n9398(n9398), .\v12[4] (v12[4]), .cout_N_904(cout_N_904));   // c:/users/cassandra/desktop/arqui2/multi6.vhd(34[13:23])
    add_sub_12_U10 adder4 (.\v12[5] (v12[5]), .n9400(n9400), .\carry[6] (carry_adj_929[6]), 
            .n9388(n9388), .\v12[4] (v12[4]), .n9398(n9398), .\carry[4] (carry_adj_929[4]), 
            .n9390(n9390));   // c:/users/cassandra/desktop/arqui2/multi6.vhd(33[13:23])
    add_sub_12_U11 adder3 (.n9434(n9434), .n9433(n9433), .cout_N_904(cout_N_904), 
            .n9388(n9388), .\carry[6] (\carry[6] ), .S_N_900(S_N_900), 
            .n9403(n9403), .\carry[10] (\carry[10] ), .n9406(n9406), .n8800(n8800));   // c:/users/cassandra/desktop/arqui2/multi6.vhd(32[13:23])
    add_sub_12_U12 adder2 (.n9423(n9423), .n9422(n9422), .cout_N_904(cout_N_904_adj_7), 
            .\v12[3] (\v12[3] ), .\carry[4] (carry_adj_929[4]));   // c:/users/cassandra/desktop/arqui2/multi6.vhd(31[13:23])
    add_sub_12_U13 adder1 (.n9410(n9410), .n9394(n9394), .S_7__N_891(S_7__N_891_c), 
            .n9383(n9383), .\carry[8] (carry_adj_929[8]), .\carry[6] (carry_adj_929[6]), 
            .S_6__N_892(S_6__N_892_c), .n8869(n8869), .n9415(n9415), .n9414(n9414), 
            .cout_N_904(cout_N_904_adj_919), .S_N_900(S_N_900_adj_6), .cout_N_904_adj_5(cout_N_904_adj_7));   // c:/users/cassandra/desktop/arqui2/multi6.vhd(30[13:23])
    
endmodule
//
// Verilog Description of module add_sub_12
//

module add_sub_12 (n9372, S_8__N_890, \carry[8] , \carry[9] , n9389, 
            S_9__N_889, \carry[10] , n9383, S_7__N_891, \carry[7] , 
            n8869, \carry[6] , S_6__N_892, n9421, \carry[4] , n9398, 
            \v12[4] , cout_N_904);
    input n9372;
    input S_8__N_890;
    output \carry[8] ;
    output \carry[9] ;
    input n9389;
    input S_9__N_889;
    output \carry[10] ;
    input n9383;
    input S_7__N_891;
    output \carry[7] ;
    input n8869;
    input \carry[6] ;
    input S_6__N_892;
    input n9421;
    input \carry[4] ;
    input n9398;
    input \v12[4] ;
    output cout_N_904;
    
    
    FA \gen_addsub_9..bit_FA  (.n9372(n9372), .S_8__N_890(S_8__N_890), .\carry[8] (\carry[8] ), 
       .\carry[9] (\carry[9] ), .n9389(n9389), .S_9__N_889(S_9__N_889), 
       .\carry[10] (\carry[10] ));   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(26[11:13])
    FA_U0 \gen_addsub_8..bit_FA  (.n9383(n9383), .S_7__N_891(S_7__N_891), 
          .\carry[7] (\carry[7] ), .\carry[8] (\carry[8] ));   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(26[11:13])
    FA_U1 \gen_addsub_6..bit_FA  (.n8869(n8869), .\carry[6] (\carry[6] ), 
          .S_6__N_892(S_6__N_892), .\carry[7] (\carry[7] ));   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(26[11:13])
    FA_U2 \gen_addsub_5..bit_FA  (.n9421(n9421), .\carry[4] (\carry[4] ), 
          .n9398(n9398), .\v12[4] (\v12[4] ), .cout_N_904(cout_N_904));   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(26[11:13])
    
endmodule
//
// Verilog Description of module FA
//

module FA (n9372, S_8__N_890, \carry[8] , \carry[9] , n9389, S_9__N_889, 
           \carry[10] );
    input n9372;
    input S_8__N_890;
    input \carry[8] ;
    output \carry[9] ;
    input n9389;
    input S_9__N_889;
    output \carry[10] ;
    
    
    LUT4 cout_I_0_4_lut_3_lut (.A(n9372), .B(S_8__N_890), .C(\carry[8] ), 
         .Z(\carry[9] )) /* synthesis lut_function=(!(A (B+!(C))+!A !((C)+!B))) */ ;   // c:/users/cassandra/desktop/arqui2/fa.vhd(15[6:15])
    defparam cout_I_0_4_lut_3_lut.init = 16'h7171;
    LUT4 cout_I_0_4_lut_3_lut_adj_87 (.A(n9389), .B(S_9__N_889), .C(\carry[9] ), 
         .Z(\carry[10] )) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/fa.vhd(17[11:18])
    defparam cout_I_0_4_lut_3_lut_adj_87.init = 16'h8e8e;
    
endmodule
//
// Verilog Description of module FA_U0
//

module FA_U0 (n9383, S_7__N_891, \carry[7] , \carry[8] );
    input n9383;
    input S_7__N_891;
    input \carry[7] ;
    output \carry[8] ;
    
    
    LUT4 cout_I_0_4_lut_3_lut (.A(n9383), .B(S_7__N_891), .C(\carry[7] ), 
         .Z(\carry[8] )) /* synthesis lut_function=(!(A (B+!(C))+!A !((C)+!B))) */ ;   // c:/users/cassandra/desktop/arqui2/fa.vhd(15[6:15])
    defparam cout_I_0_4_lut_3_lut.init = 16'h7171;
    
endmodule
//
// Verilog Description of module FA_U1
//

module FA_U1 (n8869, \carry[6] , S_6__N_892, \carry[7] );
    input n8869;
    input \carry[6] ;
    input S_6__N_892;
    output \carry[7] ;
    
    
    LUT4 cout_I_0_3_lut (.A(n8869), .B(\carry[6] ), .C(S_6__N_892), .Z(\carry[7] )) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/fa.vhd(15[3] 21[10])
    defparam cout_I_0_3_lut.init = 16'h8e8e;
    
endmodule
//
// Verilog Description of module FA_U2
//

module FA_U2 (n9421, \carry[4] , n9398, \v12[4] , cout_N_904);
    input n9421;
    input \carry[4] ;
    input n9398;
    input \v12[4] ;
    output cout_N_904;
    
    
    LUT4 i7789_2_lut_4_lut_4_lut (.A(n9421), .B(\carry[4] ), .C(n9398), 
         .D(\v12[4] ), .Z(cout_N_904)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/fa.vhd(15[6:15])
    defparam i7789_2_lut_4_lut_4_lut.init = 16'h7dd7;
    
endmodule
//
// Verilog Description of module add_sub_12_U10
//

module add_sub_12_U10 (\v12[5] , n9400, \carry[6] , n9388, \v12[4] , 
            n9398, \carry[4] , n9390);
    input \v12[5] ;
    input n9400;
    output \carry[6] ;
    output n9388;
    input \v12[4] ;
    input n9398;
    input \carry[4] ;
    output n9390;
    
    wire [12:0]carry;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(21[8:13])
    
    FA_U3 \gen_addsub_5..bit_FA  (.\v12[5] (\v12[5] ), .n9400(n9400), .\carry[5] (carry[5]), 
          .\carry[6] (\carry[6] ), .n9388(n9388));   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(26[11:13])
    FA_U4 \gen_addsub_4..bit_FA  (.\v12[4] (\v12[4] ), .n9398(n9398), .\carry[4] (\carry[4] ), 
          .n9390(n9390), .\carry[5] (carry[5]));   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(26[11:13])
    
endmodule
//
// Verilog Description of module FA_U3
//

module FA_U3 (\v12[5] , n9400, \carry[5] , \carry[6] , n9388);
    input \v12[5] ;
    input n9400;
    input \carry[5] ;
    output \carry[6] ;
    output n9388;
    
    
    LUT4 cout_I_0_4_lut_3_lut (.A(\v12[5] ), .B(n9400), .C(\carry[5] ), 
         .Z(\carry[6] )) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/fa.vhd(17[11:18])
    defparam cout_I_0_4_lut_3_lut.init = 16'he8e8;
    LUT4 S_I_0_4_lut_3_lut_rep_254 (.A(\v12[5] ), .B(n9400), .C(\carry[5] ), 
         .Z(n9388)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/fa.vhd(16[7:14])
    defparam S_I_0_4_lut_3_lut_rep_254.init = 16'h9696;
    
endmodule
//
// Verilog Description of module FA_U4
//

module FA_U4 (\v12[4] , n9398, \carry[4] , n9390, \carry[5] );
    input \v12[4] ;
    input n9398;
    input \carry[4] ;
    output n9390;
    output \carry[5] ;
    
    
    LUT4 S_I_0_4_lut_3_lut_rep_256 (.A(\v12[4] ), .B(n9398), .C(\carry[4] ), 
         .Z(n9390)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/fa.vhd(16[7:14])
    defparam S_I_0_4_lut_3_lut_rep_256.init = 16'h9696;
    LUT4 cout_I_0_4_lut_3_lut (.A(\v12[4] ), .B(n9398), .C(\carry[4] ), 
         .Z(\carry[5] )) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/fa.vhd(17[11:18])
    defparam cout_I_0_4_lut_3_lut.init = 16'he8e8;
    
endmodule
//
// Verilog Description of module add_sub_12_U11
//

module add_sub_12_U11 (n9434, n9433, cout_N_904, n9388, \carry[6] , 
            S_N_900, n9403, \carry[10] , n9406, n8800);
    input n9434;
    input n9433;
    input cout_N_904;
    input n9388;
    output \carry[6] ;
    input S_N_900;
    input n9403;
    input \carry[10] ;
    input n9406;
    output n8800;
    
    
    FA_U5 \gen_addsub_5..bit_FA  (.n9434(n9434), .n9433(n9433), .cout_N_904(cout_N_904), 
          .n9388(n9388), .\carry[6] (\carry[6] ));   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(26[11:13])
    FA_U6 \gen_addsub_10..bit_FA  (.S_N_900(S_N_900), .n9403(n9403), .\carry[10] (\carry[10] ), 
          .n9406(n9406), .n8800(n8800));   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(26[11:13])
    
endmodule
//
// Verilog Description of module FA_U5
//

module FA_U5 (n9434, n9433, cout_N_904, n9388, \carry[6] );
    input n9434;
    input n9433;
    input cout_N_904;
    input n9388;
    output \carry[6] ;
    
    
    LUT4 cout_I_0_4_lut_3_lut_4_lut (.A(n9434), .B(n9433), .C(cout_N_904), 
         .D(n9388), .Z(\carry[6] )) /* synthesis lut_function=(A (B (C+!(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/fa.vhd(16[7:14])
    defparam cout_I_0_4_lut_3_lut_4_lut.init = 16'h90f9;
    
endmodule
//
// Verilog Description of module FA_U6
//

module FA_U6 (S_N_900, n9403, \carry[10] , n9406, n8800);
    input S_N_900;
    input n9403;
    input \carry[10] ;
    input n9406;
    output n8800;
    
    
    LUT4 i1_3_lut_4_lut (.A(S_N_900), .B(n9403), .C(\carry[10] ), .D(n9406), 
         .Z(n8800)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C (D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h9600;
    
endmodule
//
// Verilog Description of module add_sub_12_U12
//

module add_sub_12_U12 (n9423, n9422, cout_N_904, \v12[3] , \carry[4] );
    input n9423;
    input n9422;
    input cout_N_904;
    input \v12[3] ;
    output \carry[4] ;
    
    
    FA_U7 \gen_addsub_3..bit_FA  (.n9423(n9423), .n9422(n9422), .cout_N_904(cout_N_904), 
          .\v12[3] (\v12[3] ), .\carry[4] (\carry[4] ));   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(26[11:13])
    
endmodule
//
// Verilog Description of module FA_U7
//

module FA_U7 (n9423, n9422, cout_N_904, \v12[3] , \carry[4] );
    input n9423;
    input n9422;
    input cout_N_904;
    input \v12[3] ;
    output \carry[4] ;
    
    
    LUT4 cout_I_0_4_lut_3_lut_4_lut (.A(n9423), .B(n9422), .C(cout_N_904), 
         .D(\v12[3] ), .Z(\carry[4] )) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/fa.vhd(16[7:14])
    defparam cout_I_0_4_lut_3_lut_4_lut.init = 16'hf660;
    
endmodule
//
// Verilog Description of module add_sub_12_U13
//

module add_sub_12_U13 (n9410, n9394, S_7__N_891, n9383, \carry[8] , 
            \carry[6] , S_6__N_892, n8869, n9415, n9414, cout_N_904, 
            S_N_900, cout_N_904_adj_5);
    input n9410;
    input n9394;
    input S_7__N_891;
    output n9383;
    output \carry[8] ;
    input \carry[6] ;
    input S_6__N_892;
    output n8869;
    input n9415;
    input n9414;
    input cout_N_904;
    input S_N_900;
    output cout_N_904_adj_5;
    
    
    FA_U8 \gen_addsub_6..bit_FA  (.n9410(n9410), .n9394(n9394), .S_7__N_891(S_7__N_891), 
          .n9383(n9383), .\carry[8] (\carry[8] ), .\carry[6] (\carry[6] ), 
          .S_6__N_892(S_6__N_892), .n8869(n8869));   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(26[11:13])
    FA_U9 \gen_addsub_2..bit_FA  (.n9415(n9415), .n9414(n9414), .cout_N_904(cout_N_904), 
          .S_N_900(S_N_900), .cout_N_904_adj_4(cout_N_904_adj_5));   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(26[11:13])
    
endmodule
//
// Verilog Description of module FA_U8
//

module FA_U8 (n9410, n9394, S_7__N_891, n9383, \carry[8] , \carry[6] , 
            S_6__N_892, n8869);
    input n9410;
    input n9394;
    input S_7__N_891;
    output n9383;
    output \carry[8] ;
    input \carry[6] ;
    input S_6__N_892;
    output n8869;
    
    wire [12:0]carry;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(21[8:13])
    
    LUT4 S_I_0_4_lut_3_lut_rep_249_4_lut (.A(n9410), .B(n9394), .C(carry[7]), 
         .D(S_7__N_891), .Z(n9383)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/cassandra/desktop/arqui2/fa.vhd(15[3] 21[10])
    defparam S_I_0_4_lut_3_lut_rep_249_4_lut.init = 16'h8778;
    LUT4 cout_I_0_4_lut_3_lut_4_lut (.A(n9410), .B(n9394), .C(carry[7]), 
         .D(S_7__N_891), .Z(\carry[8] )) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (C (D))) */ ;   // c:/users/cassandra/desktop/arqui2/fa.vhd(15[3] 21[10])
    defparam cout_I_0_4_lut_3_lut_4_lut.init = 16'hf880;
    LUT4 cout_I_0_4_lut_3_lut_4_lut_adj_86 (.A(n9410), .B(n9394), .C(\carry[6] ), 
         .D(S_6__N_892), .Z(carry[7])) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C+(D))+!B (C (D)))) */ ;
    defparam cout_I_0_4_lut_3_lut_4_lut_adj_86.init = 16'hf660;
    LUT4 i7745_3_lut_4_lut (.A(n9410), .B(n9394), .C(S_6__N_892), .D(\carry[6] ), 
         .Z(n8869)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam i7745_3_lut_4_lut.init = 16'h9669;
    
endmodule
//
// Verilog Description of module FA_U9
//

module FA_U9 (n9415, n9414, cout_N_904, S_N_900, cout_N_904_adj_4);
    input n9415;
    input n9414;
    input cout_N_904;
    input S_N_900;
    output cout_N_904_adj_4;
    
    
    LUT4 A_I_0_2_lut_4_lut (.A(n9415), .B(n9414), .C(cout_N_904), .D(S_N_900), 
         .Z(cout_N_904_adj_4)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/fa.vhd(16[7:14])
    defparam A_I_0_2_lut_4_lut.init = 16'h9600;
    
endmodule
//
// Verilog Description of module add_sub_12_U16
//

module add_sub_12_U16 (B_temp, substract, A_temp, \sum_result[1] , \sum_result[2] , 
            \sum_result[3] , \sum_result[4] , n9125, \sum_result[6] , 
            \sum_result[7] , \sum_result[8] , \sum_result[9] , \sum_result[10] , 
            \sum_result[11] );
    input [11:0]B_temp;
    input substract;
    input [11:0]A_temp;
    output \sum_result[1] ;
    output \sum_result[2] ;
    output \sum_result[3] ;
    output \sum_result[4] ;
    output n9125;
    output \sum_result[6] ;
    output \sum_result[7] ;
    output \sum_result[8] ;
    output \sum_result[9] ;
    output \sum_result[10] ;
    output \sum_result[11] ;
    
    wire [12:0]carry;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(21[8:13])
    
    LUT4 cout_I_0_4_lut_3_lut_4_lut (.A(B_temp[1]), .B(substract), .C(carry[1]), 
         .D(A_temp[1]), .Z(carry[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(28[7:19])
    defparam cout_I_0_4_lut_3_lut_4_lut.init = 16'h90f9;
    LUT4 S_I_0_3_lut_4_lut (.A(B_temp[1]), .B(substract), .C(carry[1]), 
         .D(A_temp[1]), .Z(\sum_result[1] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(28[7:19])
    defparam S_I_0_3_lut_4_lut.init = 16'h9669;
    LUT4 cout_I_0_4_lut_3_lut_4_lut_adj_69 (.A(B_temp[2]), .B(substract), 
         .C(carry[2]), .D(A_temp[2]), .Z(carry[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(28[7:19])
    defparam cout_I_0_4_lut_3_lut_4_lut_adj_69.init = 16'h90f9;
    LUT4 S_I_0_3_lut_4_lut_adj_70 (.A(B_temp[2]), .B(substract), .C(carry[2]), 
         .D(A_temp[2]), .Z(\sum_result[2] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(28[7:19])
    defparam S_I_0_3_lut_4_lut_adj_70.init = 16'h9669;
    LUT4 cout_I_0_4_lut_3_lut_4_lut_adj_71 (.A(B_temp[3]), .B(substract), 
         .C(carry[3]), .D(A_temp[3]), .Z(carry[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(28[7:19])
    defparam cout_I_0_4_lut_3_lut_4_lut_adj_71.init = 16'h90f9;
    LUT4 S_I_0_3_lut_4_lut_adj_72 (.A(B_temp[3]), .B(substract), .C(carry[3]), 
         .D(A_temp[3]), .Z(\sum_result[3] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(28[7:19])
    defparam S_I_0_3_lut_4_lut_adj_72.init = 16'h9669;
    LUT4 cout_I_0_4_lut_3_lut_4_lut_adj_73 (.A(B_temp[4]), .B(substract), 
         .C(carry[4]), .D(A_temp[4]), .Z(carry[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(28[7:19])
    defparam cout_I_0_4_lut_3_lut_4_lut_adj_73.init = 16'h90f9;
    LUT4 S_I_0_3_lut_4_lut_adj_74 (.A(B_temp[4]), .B(substract), .C(carry[4]), 
         .D(A_temp[4]), .Z(\sum_result[4] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(28[7:19])
    defparam S_I_0_3_lut_4_lut_adj_74.init = 16'h9669;
    LUT4 v12_34_5__bdd_3_lut_4_lut (.A(B_temp[5]), .B(substract), .C(A_temp[5]), 
         .D(carry[5]), .Z(n9125)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(28[7:19])
    defparam v12_34_5__bdd_3_lut_4_lut.init = 16'h9669;
    LUT4 cout_I_0_4_lut_3_lut_4_lut_adj_75 (.A(B_temp[5]), .B(substract), 
         .C(carry[5]), .D(A_temp[5]), .Z(carry[6])) /* synthesis lut_function=(A (B (C+!(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(28[7:19])
    defparam cout_I_0_4_lut_3_lut_4_lut_adj_75.init = 16'h90f9;
    LUT4 cout_I_0_4_lut_3_lut_4_lut_adj_76 (.A(B_temp[6]), .B(substract), 
         .C(carry[6]), .D(A_temp[6]), .Z(carry[7])) /* synthesis lut_function=(A (B (C+!(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(28[7:19])
    defparam cout_I_0_4_lut_3_lut_4_lut_adj_76.init = 16'h90f9;
    LUT4 S_I_0_3_lut_4_lut_adj_77 (.A(B_temp[6]), .B(substract), .C(carry[6]), 
         .D(A_temp[6]), .Z(\sum_result[6] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(28[7:19])
    defparam S_I_0_3_lut_4_lut_adj_77.init = 16'h9669;
    LUT4 cout_I_0_4_lut_3_lut_4_lut_adj_78 (.A(B_temp[7]), .B(substract), 
         .C(carry[7]), .D(A_temp[7]), .Z(carry[8])) /* synthesis lut_function=(A (B (C+!(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(28[7:19])
    defparam cout_I_0_4_lut_3_lut_4_lut_adj_78.init = 16'h90f9;
    LUT4 S_I_0_3_lut_4_lut_adj_79 (.A(B_temp[7]), .B(substract), .C(carry[7]), 
         .D(A_temp[7]), .Z(\sum_result[7] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(28[7:19])
    defparam S_I_0_3_lut_4_lut_adj_79.init = 16'h9669;
    LUT4 cout_I_0_4_lut_3_lut_4_lut_adj_80 (.A(B_temp[8]), .B(substract), 
         .C(carry[8]), .D(A_temp[8]), .Z(carry[9])) /* synthesis lut_function=(A (B (C+!(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(28[7:19])
    defparam cout_I_0_4_lut_3_lut_4_lut_adj_80.init = 16'h90f9;
    LUT4 S_I_0_3_lut_4_lut_adj_81 (.A(B_temp[8]), .B(substract), .C(carry[8]), 
         .D(A_temp[8]), .Z(\sum_result[8] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(28[7:19])
    defparam S_I_0_3_lut_4_lut_adj_81.init = 16'h9669;
    LUT4 cout_I_0_4_lut_3_lut_4_lut_adj_82 (.A(B_temp[9]), .B(substract), 
         .C(carry[9]), .D(A_temp[9]), .Z(carry[10])) /* synthesis lut_function=(A (B (C+!(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(28[7:19])
    defparam cout_I_0_4_lut_3_lut_4_lut_adj_82.init = 16'h90f9;
    LUT4 S_I_0_3_lut_4_lut_adj_83 (.A(B_temp[9]), .B(substract), .C(carry[9]), 
         .D(A_temp[9]), .Z(\sum_result[9] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(28[7:19])
    defparam S_I_0_3_lut_4_lut_adj_83.init = 16'h9669;
    LUT4 cout_I_0_4_lut_3_lut_4_lut_adj_84 (.A(B_temp[10]), .B(substract), 
         .C(carry[10]), .D(A_temp[10]), .Z(carry[11])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(28[7:19])
    defparam cout_I_0_4_lut_3_lut_4_lut_adj_84.init = 16'h6f06;
    LUT4 S_I_0_3_lut_4_lut_adj_85 (.A(B_temp[10]), .B(substract), .C(carry[10]), 
         .D(A_temp[10]), .Z(\sum_result[10] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(28[7:19])
    defparam S_I_0_3_lut_4_lut_adj_85.init = 16'h9669;
    FA_U14 \gen_addsub_11..bit_FA  (.substract(substract), .\A_temp[11] (A_temp[11]), 
           .\carry[11] (carry[11]), .\B_temp[11] (B_temp[11]), .\sum_result[11] (\sum_result[11] ));   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(26[11:13])
    FA_U15 \gen_addsub_0..bit_FA  (.\A_temp[0] (A_temp[0]), .\B_temp[0] (B_temp[0]), 
           .substract(substract), .\carry[1] (carry[1]));   // c:/users/cassandra/desktop/arqui2/addersub12.vhd(26[11:13])
    
endmodule
//
// Verilog Description of module FA_U14
//

module FA_U14 (substract, \A_temp[11] , \carry[11] , \B_temp[11] , \sum_result[11] );
    input substract;
    input \A_temp[11] ;
    input \carry[11] ;
    input \B_temp[11] ;
    output \sum_result[11] ;
    
    
    LUT4 i3_4_lut (.A(substract), .B(\A_temp[11] ), .C(\carry[11] ), .D(\B_temp[11] ), 
         .Z(\sum_result[11] )) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/fa.vhd(15[3] 21[10])
    defparam i3_4_lut.init = 16'h6996;
    
endmodule
//
// Verilog Description of module FA_U15
//

module FA_U15 (\A_temp[0] , \B_temp[0] , substract, \carry[1] );
    input \A_temp[0] ;
    input \B_temp[0] ;
    input substract;
    output \carry[1] ;
    
    
    LUT4 A_temp_0__bdd_3_lut (.A(\A_temp[0] ), .B(\B_temp[0] ), .C(substract), 
         .Z(\carry[1] )) /* synthesis lut_function=(!(A (B+(C))+!A !(B+!(C)))) */ ;
    defparam A_temp_0__bdd_3_lut.init = 16'h4747;
    
endmodule
//
// Verilog Description of module bcdDisplay_U19
//

module bcdDisplay_U19 (ce, clk_0, n4812, n8867, n9236, \DISPLAY_6__N_480[4] , 
            n9449, n9254, n4705, n4276, n9243, n9242, n9249, n6468, 
            n4299, n6488, n4732);
    output [6:0]ce;
    input clk_0;
    input n4812;
    input n8867;
    input n9236;
    input \DISPLAY_6__N_480[4] ;
    input n9449;
    input n9254;
    input n4705;
    input n4276;
    input n9243;
    input n9242;
    input n9249;
    input n6468;
    input n4299;
    input n6488;
    output n4732;
    
    wire clk_0 /* synthesis is_clock=1, SET_AS_NETWORK=clk_0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(74[8:13])
    
    wire n7;
    wire [6:0]DISPLAY_6__N_480;
    
    FD1S3JX DISPLAY_i0 (.D(n8867), .CK(clk_0), .PD(n4812), .Q(ce[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=111, LSE_RLINE=111 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i0.GSR = "ENABLED";
    FD1S3JX DISPLAY_i3 (.D(n7), .CK(clk_0), .PD(n9236), .Q(ce[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=111, LSE_RLINE=111 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i3.GSR = "ENABLED";
    FD1S3AY DISPLAY_i4 (.D(\DISPLAY_6__N_480[4] ), .CK(clk_0), .Q(ce[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=111, LSE_RLINE=111 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i4.GSR = "ENABLED";
    FD1S3JX DISPLAY_i5 (.D(n9449), .CK(clk_0), .PD(n9236), .Q(ce[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=111, LSE_RLINE=111 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i5.GSR = "ENABLED";
    FD1S3AX DISPLAY_i6 (.D(DISPLAY_6__N_480[6]), .CK(clk_0), .Q(ce[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=111, LSE_RLINE=111 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i6.GSR = "ENABLED";
    FD1S3JX DISPLAY_i2 (.D(n4705), .CK(clk_0), .PD(n9254), .Q(ce[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=111, LSE_RLINE=111 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i2.GSR = "ENABLED";
    FD1S3JX DISPLAY_i1 (.D(n9243), .CK(clk_0), .PD(n4276), .Q(ce[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=111, LSE_RLINE=111 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i1.GSR = "ENABLED";
    LUT4 E_3__I_0_Mux_3_i7_4_lut_4_lut (.A(n9243), .B(n9242), .C(n9249), 
         .D(n9254), .Z(n7)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A !(B+(C+!(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(30[3] 41[12])
    defparam E_3__I_0_Mux_3_i7_4_lut_4_lut.init = 16'h5c5f;
    LUT4 i5075_4_lut (.A(n9242), .B(n9236), .C(n6468), .D(n9249), .Z(DISPLAY_6__N_480[6])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(30[3] 41[12])
    defparam i5075_4_lut.init = 16'hcfee;
    PFUMX i3603 (.BLUT(n4299), .ALUT(n6488), .C0(n9236), .Z(n4732));
    
endmodule
//
// Verilog Description of module bcdDisplay_U17
//

module bcdDisplay_U17 (mi, clk_0, n4838, n8865, n9241, n4647, n4382, 
            n9238, n9237, \DISPLAY_6__N_480[4] , reset_c, n2901, n9269, 
            n9268, n9239, n9240, n6498, n4467, n6485, n4757, n9244);
    output [6:0]mi;
    input clk_0;
    input n4838;
    input n8865;
    input n9241;
    input n4647;
    input n4382;
    input n9238;
    input n9237;
    input \DISPLAY_6__N_480[4] ;
    input reset_c;
    input n2901;
    input n9269;
    input n9268;
    input n9239;
    input n9240;
    input n6498;
    input n4467;
    input n6485;
    output n4757;
    input n9244;
    
    wire clk_0 /* synthesis is_clock=1, SET_AS_NETWORK=clk_0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(74[8:13])
    
    wire n7, n9464;
    wire [6:0]DISPLAY_6__N_480;
    
    wire n9463, n9462;
    
    FD1S3JX DISPLAY_i0 (.D(n8865), .CK(clk_0), .PD(n4838), .Q(mi[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i0.GSR = "ENABLED";
    FD1S3JX DISPLAY_i2 (.D(n4647), .CK(clk_0), .PD(n9241), .Q(mi[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i2.GSR = "ENABLED";
    FD1S3JX DISPLAY_i1 (.D(n9238), .CK(clk_0), .PD(n4382), .Q(mi[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i1.GSR = "ENABLED";
    FD1S3JX DISPLAY_i3 (.D(n7), .CK(clk_0), .PD(n9237), .Q(mi[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i3.GSR = "ENABLED";
    FD1S3AY DISPLAY_i4 (.D(\DISPLAY_6__N_480[4] ), .CK(clk_0), .Q(mi[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i4.GSR = "ENABLED";
    FD1S3JX DISPLAY_i5 (.D(n9464), .CK(clk_0), .PD(n9237), .Q(mi[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i5.GSR = "ENABLED";
    FD1S3AX DISPLAY_i6 (.D(DISPLAY_6__N_480[6]), .CK(clk_0), .Q(mi[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=9, LSE_RCOL=19, LSE_LLINE=112, LSE_RLINE=112 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i6.GSR = "ENABLED";
    LUT4 i7855_then_4_lut (.A(reset_c), .B(n2901), .C(n9269), .D(n9268), 
         .Z(n9463)) /* synthesis lut_function=(A+(B (C (D))+!B !(C+!(D)))) */ ;
    defparam i7855_then_4_lut.init = 16'hebaa;
    LUT4 i7855_else_4_lut (.A(reset_c), .B(n2901), .C(n9269), .D(n9268), 
         .Z(n9462)) /* synthesis lut_function=(A+(B (C+!(D))+!B ((D)+!C))) */ ;
    defparam i7855_else_4_lut.init = 16'hfbef;
    LUT4 E_3__I_0_Mux_3_i7_4_lut_4_lut (.A(n9238), .B(n9239), .C(n9240), 
         .D(n9241), .Z(n7)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A !(B+(C+!(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(30[3] 41[12])
    defparam E_3__I_0_Mux_3_i7_4_lut_4_lut.init = 16'h5c5f;
    LUT4 i5116_4_lut (.A(n9239), .B(n9237), .C(n6498), .D(n9240), .Z(DISPLAY_6__N_480[6])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(30[3] 41[12])
    defparam i5116_4_lut.init = 16'hcfee;
    PFUMX i3625 (.BLUT(n4467), .ALUT(n6485), .C0(n9237), .Z(n4757));
    PFUMX i7969 (.BLUT(n9462), .ALUT(n9463), .C0(n9244), .Z(n9464));
    
endmodule
//
// Verilog Description of module Bin2BCD
//

module Bin2BCD (n9743, bcd_out_15__N_269, n9269, n9246, bcd_out_15__N_413, 
            n9271, n9260, Rdisplay, n9378, bcd_out_15__N_280, bcd_out_15__N_298, 
            n9225, n9330, n9268, n2901, reset_c, n9240, n8041, 
            n2912, bcd_out_15__N_274, bcd_out_15__N_270, n2916, bcd_out_15__N_252, 
            bcd_out_15__N_344, n9335, n23, n9437, n9296, n9282, 
            n6462, n9256, n9263, n8873, n9261, n9251, n8867, n9259, 
            bcd_out_15__N_417, n6468, n4732, \DISPLAY_6__N_480[4] , 
            n9292, n9267, n4838, n6488, n9244, n6498, n9290, n9289, 
            bcd_out_15__N_446, n9254, n9238, n9298, n9276, bcd_out_15__N_303, 
            n9291, bcd_out_15__N_466, bcd_out_15__N_470, n9274, n6506, 
            n9264, n9270, n9241, n9253, n4812, n9245, n8865, n4757, 
            \DISPLAY_6__N_480[4]_adj_1 , n9283, n4820, n9247, bcd_out_15__N_299, 
            n9262, n9278, n9286, n9284, n9275, n8861, n9280, n9249, 
            n6473, bcd_out_15__N_349, n4719, \DISPLAY_6__N_480[4]_adj_2 , 
            n4830, n2868, n9368, n9359, n6493, bcd_out_15__N_345, 
            n9377, n2928, n9043, n9369, n6485, n9248, n9407, n8863, 
            n6460, n4773, \DISPLAY_6__N_480[4]_adj_3 , n9243, bcd_out_15__N_285);
    output n9743;
    output bcd_out_15__N_269;
    output n9269;
    output n9246;
    output bcd_out_15__N_413;
    output n9271;
    output n9260;
    input [13:0]Rdisplay;
    input n9378;
    input bcd_out_15__N_280;
    output bcd_out_15__N_298;
    output n9225;
    output n9330;
    output n9268;
    output n2901;
    input reset_c;
    output n9240;
    output n8041;
    output n2912;
    input bcd_out_15__N_274;
    input bcd_out_15__N_270;
    output n2916;
    input bcd_out_15__N_252;
    output bcd_out_15__N_344;
    output n9335;
    output n23;
    output n9437;
    output n9296;
    output n9282;
    output n6462;
    output n9256;
    output n9263;
    input n8873;
    output n9261;
    output n9251;
    output n8867;
    output n9259;
    output bcd_out_15__N_417;
    output n6468;
    input n4732;
    output \DISPLAY_6__N_480[4] ;
    output n9292;
    output n9267;
    output n4838;
    output n6488;
    output n9244;
    output n6498;
    output n9290;
    output n9289;
    output bcd_out_15__N_446;
    output n9254;
    output n9238;
    output n9298;
    output n9276;
    input bcd_out_15__N_303;
    output n9291;
    output bcd_out_15__N_466;
    output bcd_out_15__N_470;
    output n9274;
    output n6506;
    output n9264;
    output n9270;
    output n9241;
    output n9253;
    output n4812;
    output n9245;
    output n8865;
    input n4757;
    output \DISPLAY_6__N_480[4]_adj_1 ;
    output n9283;
    output n4820;
    output n9247;
    input bcd_out_15__N_299;
    output n9262;
    output n9278;
    output n9286;
    output n9284;
    output n9275;
    output n8861;
    output n9280;
    output n9249;
    output n6473;
    input bcd_out_15__N_349;
    input n4719;
    output \DISPLAY_6__N_480[4]_adj_2 ;
    output n4830;
    output n2868;
    output n9368;
    output n9359;
    output n6493;
    input bcd_out_15__N_345;
    input n9377;
    output n2928;
    output n9043;
    input n9369;
    output n6485;
    output n9248;
    output n9407;
    output n8863;
    output n6460;
    input n4773;
    output \DISPLAY_6__N_480[4]_adj_3 ;
    output n9243;
    input bcd_out_15__N_285;
    
    wire [3:0]n1647;
    
    wire n9334;
    wire [3:0]n1650;
    
    wire n9325, n9310, n9306, n9457, n9458, n9747, n9748;
    wire [3:0]n1655;
    
    wire n9288, n9320, n9329, n9324, n9314, n29, n4, n9392, 
        n9741, n9385, n9381, n4_adj_905, n32, n9340, n9339, n9323, 
        n9318, n9272, n9297, n4_adj_906, n4807, n9350, n9341, 
        n9337, n9326;
    wire [3:0]n1651;
    wire [3:0]n1645;
    
    wire n9348, n9333, n9322, n9386;
    wire [3:0]n1654;
    
    wire n9287, n9343, n9346, n9345;
    wire [3:0]n1646;
    
    wire n9312, n9347, n9349, n9331, n9342, n9351, n9338, n9294, 
        n9293, n9353, n9352, n9332, n2875, n9356, n9360;
    wire [3:0]n1648;
    
    wire n9295;
    wire [3:0]n1643;
    
    wire n9358, n9355, n9357, n9361, n9299, n9300, n9363, n9362, 
        n9301;
    wire [3:0]n1641;
    
    wire n9367, n9303, n9365, n9366, n2897, n9308, n9316, n9371, 
        n9370;
    wire [3:0]n1640;
    
    wire n9380, n9374, n9279, n9379, n9307;
    wire [3:0]n1653;
    
    wire n9309, n9305, n9382, n4_adj_909, n9384, n9311, n9304, 
        n9313, n9319, n9327, n9317;
    
    LUT4 i2784_3_lut_rep_176_4_lut_3_lut_4_lut (.A(n1647[1]), .B(n9334), 
         .C(n1650[1]), .D(n9325), .Z(n9310)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2784_3_lut_rep_176_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i2777_2_lut_rep_172_3_lut_3_lut_4_lut (.A(n1647[1]), .B(n9334), 
         .C(n1650[1]), .D(n9325), .Z(n9306)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2777_2_lut_rep_172_3_lut_3_lut_4_lut.init = 16'h06f0;
    PFUMX i7966 (.BLUT(n9457), .ALUT(n9458), .C0(n9743), .Z(bcd_out_15__N_269));
    PFUMX i8108 (.BLUT(n9747), .ALUT(n9748), .C0(n9269), .Z(n9246));
    LUT4 i3673_2_lut_rep_126_4_lut (.A(n1655[1]), .B(n9288), .C(bcd_out_15__N_413), 
         .D(n9271), .Z(n9260)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3673_2_lut_rep_126_4_lut.init = 16'hf600;
    LUT4 i3655_2_lut_rep_186_4_lut (.A(n1647[1]), .B(n9334), .C(n1650[1]), 
         .D(n9325), .Z(n9320)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3655_2_lut_rep_186_4_lut.init = 16'hf600;
    LUT4 i2762_2_lut_rep_180_4_lut_4_lut (.A(n9329), .B(Rdisplay[3]), .C(n1650[1]), 
         .D(n9324), .Z(n9314)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2762_2_lut_rep_180_4_lut_4_lut.init = 16'h332c;
    LUT4 bcd_out_15__N_278_3__bdd_3_lut_4_lut_3_lut (.A(n9378), .B(bcd_out_15__N_280), 
         .C(bcd_out_15__N_298), .Z(n9225)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam bcd_out_15__N_278_3__bdd_3_lut_4_lut_3_lut.init = 16'hc4c4;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(n9378), .B(bcd_out_15__N_280), .C(bcd_out_15__N_298), 
         .D(n9330), .Z(n29)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A (C+(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h00a7;
    LUT4 i5199_2_lut_rep_106_4_lut (.A(n9268), .B(n2901), .C(n9269), .D(reset_c), 
         .Z(n9240)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A ((C+(D))+!B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i5199_2_lut_rep_106_4_lut.init = 16'h00a6;
    LUT4 i2_4_lut_4_lut (.A(bcd_out_15__N_280), .B(bcd_out_15__N_298), .C(n9378), 
         .D(n4), .Z(n8041)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C))+!A !(B (C)+!B (C (D)+!C !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2_4_lut_4_lut.init = 16'h871e;
    LUT4 Rdisplay_13__bdd_4_lut (.A(Rdisplay[13]), .B(Rdisplay[12]), .C(Rdisplay[10]), 
         .D(Rdisplay[11]), .Z(n2912)) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B (C+(D))))) */ ;
    defparam Rdisplay_13__bdd_4_lut.init = 16'h6eea;
    LUT4 i2033_3_lut_4_lut_rep_310 (.A(n9392), .B(Rdisplay[9]), .C(bcd_out_15__N_274), 
         .D(bcd_out_15__N_270), .Z(n9741)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2033_3_lut_4_lut_rep_310.init = 16'hffe0;
    LUT4 i2566_2_lut_rep_251_4_lut (.A(n9392), .B(Rdisplay[9]), .C(bcd_out_15__N_274), 
         .D(bcd_out_15__N_270), .Z(n9385)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2566_2_lut_rep_251_4_lut.init = 16'h332c;
    LUT4 i2581_2_lut_rep_247_3_lut_4_lut_4_lut (.A(n9392), .B(Rdisplay[9]), 
         .C(bcd_out_15__N_274), .D(bcd_out_15__N_270), .Z(n9381)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2581_2_lut_rep_247_3_lut_4_lut_4_lut.init = 16'h1e10;
    LUT4 Rdisplay_12__bdd_4_lut (.A(Rdisplay[12]), .B(Rdisplay[11]), .C(Rdisplay[13]), 
         .D(Rdisplay[10]), .Z(n2916)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C))+!A !((C)+!B)) */ ;
    defparam Rdisplay_12__bdd_4_lut.init = 16'h860e;
    LUT4 n4_bdd_4_lut_4_lut (.A(bcd_out_15__N_252), .B(bcd_out_15__N_344), 
         .C(n9335), .D(n9269), .Z(n2901)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+!(D)))+!A !(B+!(C))) */ ;
    defparam n4_bdd_4_lut_4_lut.init = 16'h9a18;
    LUT4 i2035_4_lut_4_lut_rep_312 (.A(Rdisplay[12]), .B(Rdisplay[11]), 
         .C(Rdisplay[10]), .D(Rdisplay[13]), .Z(n9743)) /* synthesis lut_function=(A (B (C+!(D))+!B !((D)+!C))+!A !(B+!(D))) */ ;
    defparam i2035_4_lut_4_lut_rep_312.init = 16'h91a8;
    LUT4 i2254_2_lut_rep_258_4_lut (.A(Rdisplay[12]), .B(Rdisplay[11]), 
         .C(Rdisplay[10]), .D(Rdisplay[13]), .Z(n9392)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A !(B (C)+!B !(C (D)+!C !(D))))) */ ;
    defparam i2254_2_lut_rep_258_4_lut.init = 16'h6158;
    LUT4 i3674_3_lut (.A(n23), .B(bcd_out_15__N_298), .C(n9330), .Z(n4_adj_905)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3674_3_lut.init = 16'h5454;
    LUT4 i3669_3_lut (.A(n23), .B(bcd_out_15__N_298), .C(n9330), .Z(n4)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3669_3_lut.init = 16'h5151;
    LUT4 i1_4_lut_4_lut_4_lut (.A(bcd_out_15__N_280), .B(bcd_out_15__N_298), 
         .C(n9378), .D(n9330), .Z(n32)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+!(D)))+!A !(B (C)))) */ ;
    defparam i1_4_lut_4_lut_4_lut.init = 16'h60e2;
    LUT4 i2945_3_lut_rep_112_4_lut_then_3_lut (.A(n9335), .B(bcd_out_15__N_344), 
         .C(bcd_out_15__N_252), .Z(n9748)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i2945_3_lut_rep_112_4_lut_then_3_lut.init = 16'h0202;
    LUT4 i2478_2_lut_rep_303 (.A(Rdisplay[12]), .B(Rdisplay[11]), .C(Rdisplay[13]), 
         .Z(n9437)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2478_2_lut_rep_303.init = 16'he0e0;
    LUT4 i2803_2_lut_rep_184_4_lut_4_lut (.A(n9340), .B(n9339), .C(n1647[1]), 
         .D(n9323), .Z(n9318)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i2803_2_lut_rep_184_4_lut_4_lut.init = 16'hff6c;
    LUT4 i5306_2_lut_3_lut_4_lut (.A(n9296), .B(n9282), .C(reset_c), .D(n9272), 
         .Z(n6462)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+!(D))+!B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i5306_2_lut_3_lut_4_lut.init = 16'h0600;
    LUT4 i7766_3_lut_rep_122_4_lut (.A(n9296), .B(n9282), .C(reset_c), 
         .D(n9272), .Z(n9256)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i7766_3_lut_rep_122_4_lut.init = 16'hf6f9;
    LUT4 i5191_2_lut_rep_129_4_lut (.A(n9297), .B(n9282), .C(n9296), .D(reset_c), 
         .Z(n9263)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A ((C+(D))+!B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i5191_2_lut_rep_129_4_lut.init = 16'h00a6;
    LUT4 i1_4_lut (.A(n32), .B(n9378), .C(n29), .D(n8873), .Z(n23)) /* synthesis lut_function=(A+!(B+!(C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'hbabb;
    LUT4 i7743_2_lut_3_lut_3_lut_3_lut (.A(n9261), .B(reset_c), .C(n9251), 
         .Z(n8867)) /* synthesis lut_function=(A (B+(C))+!A (B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i7743_2_lut_3_lut_3_lut_3_lut.init = 16'heded;
    LUT4 i2324_2_lut (.A(bcd_out_15__N_280), .B(bcd_out_15__N_298), .Z(n4_adj_906)) /* synthesis lut_function=(A+(B)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2324_2_lut.init = 16'heeee;
    LUT4 i5311_2_lut_3_lut_4_lut (.A(n9261), .B(reset_c), .C(n9259), .D(bcd_out_15__N_417), 
         .Z(n6468)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i5311_2_lut_3_lut_4_lut.init = 16'h0220;
    LUT4 i2367_2_lut (.A(bcd_out_15__N_252), .B(bcd_out_15__N_344), .Z(n4807)) /* synthesis lut_function=(A+(B)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2367_2_lut.init = 16'heeee;
    LUT4 i5058_2_lut_3_lut (.A(n9261), .B(reset_c), .C(n4732), .Z(\DISPLAY_6__N_480[4] )) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i5058_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i2333_2_lut_rep_134_3_lut_4_lut (.A(n9378), .B(n4_adj_906), .C(bcd_out_15__N_344), 
         .D(n4807), .Z(n9268)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2333_2_lut_rep_134_3_lut_4_lut.init = 16'h78f0;
    LUT4 i7821_3_lut_rep_133_4_lut (.A(Rdisplay[1]), .B(n9292), .C(reset_c), 
         .D(Rdisplay[0]), .Z(n9267)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i7821_3_lut_rep_133_4_lut.init = 16'hf6f9;
    LUT4 i5299_3_lut_4_lut (.A(n9269), .B(n2901), .C(n9246), .D(reset_c), 
         .Z(n4838)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A (B (D)+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i5299_3_lut_4_lut.init = 16'h00f6;
    LUT4 i2742_3_lut_4_lut (.A(n9350), .B(n9341), .C(n9337), .D(n9326), 
         .Z(n1651[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2742_3_lut_4_lut.init = 16'h6966;
    LUT4 i2050_3_lut_rep_199_4_lut (.A(n1645[1]), .B(n9348), .C(n1647[1]), 
         .D(n9340), .Z(n9333)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2050_3_lut_rep_199_4_lut.init = 16'hf666;
    LUT4 i2728_3_lut_rep_188_4_lut_3_lut_4_lut (.A(n1645[1]), .B(n9348), 
         .C(n1647[1]), .D(n9340), .Z(n9322)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2728_3_lut_rep_188_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i2721_2_lut_rep_190_3_lut_3_lut_4_lut (.A(n1645[1]), .B(n9348), 
         .C(n1647[1]), .D(n9340), .Z(n9324)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2721_2_lut_rep_190_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 Rdisplay_13__bdd_4_lut_7968 (.A(Rdisplay[13]), .B(Rdisplay[11]), 
         .C(Rdisplay[12]), .D(Rdisplay[10]), .Z(n9386)) /* synthesis lut_function=(A (B (C (D))+!B !(C))+!A (B (C)+!B (C (D)))) */ ;
    defparam Rdisplay_13__bdd_4_lut_7968.init = 16'hd242;
    LUT4 i2588_3_lut_4_lut_then_4_lut (.A(Rdisplay[10]), .B(bcd_out_15__N_274), 
         .C(bcd_out_15__N_270), .D(Rdisplay[9]), .Z(n9458)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A (B (C)+!B !(C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2588_3_lut_4_lut_then_4_lut.init = 16'h3cb4;
    LUT4 i2041_2_lut_rep_137_3_lut (.A(n1654[3]), .B(n9287), .C(bcd_out_15__N_417), 
         .Z(n9271)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2041_2_lut_rep_137_3_lut.init = 16'hf6f6;
    LUT4 i3659_2_lut_rep_200_4_lut (.A(n1645[1]), .B(n9348), .C(n1647[1]), 
         .D(n9340), .Z(n9334)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3659_2_lut_rep_200_4_lut.init = 16'hf600;
    LUT4 i2546_3_lut_rep_117_4_lut (.A(n1654[3]), .B(n9287), .C(bcd_out_15__N_417), 
         .D(n9259), .Z(n9251)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2546_3_lut_rep_117_4_lut.init = 16'h6966;
    LUT4 i5327_2_lut_4_lut_3_lut_4_lut (.A(n1654[3]), .B(n9287), .C(n9259), 
         .D(bcd_out_15__N_417), .Z(n6488)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i5327_2_lut_4_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i2706_2_lut_rep_195_4_lut_4_lut (.A(n9343), .B(Rdisplay[4]), .C(n1647[1]), 
         .D(n9339), .Z(n9329)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2706_2_lut_rep_195_4_lut_4_lut.init = 16'h332c;
    LUT4 i5336_2_lut_3_lut_4_lut (.A(n9269), .B(n2901), .C(reset_c), .D(n9244), 
         .Z(n6498)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+!(D))+!B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i5336_2_lut_3_lut_4_lut.init = 16'h0600;
    LUT4 i2203_2_lut_rep_178_4_lut_4_lut (.A(n9346), .B(n9345), .C(n1646[1]), 
         .D(n23), .Z(n9312)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D)))) */ ;
    defparam i2203_2_lut_rep_178_4_lut_4_lut.init = 16'h6c93;
    LUT4 i2714_3_lut_4_lut (.A(Rdisplay[5]), .B(n9347), .C(Rdisplay[4]), 
         .D(n9333), .Z(n1650[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2714_3_lut_4_lut.init = 16'h6966;
    LUT4 i5193_2_lut_rep_120_4_lut_4_lut (.A(n9290), .B(n9289), .C(bcd_out_15__N_446), 
         .D(reset_c), .Z(n9254)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A ((D)+!B))) */ ;
    defparam i5193_2_lut_rep_120_4_lut_4_lut.init = 16'h006c;
    LUT4 i7818_3_lut_rep_104_4_lut (.A(n9269), .B(n2901), .C(reset_c), 
         .D(n9244), .Z(n9238)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i7818_3_lut_rep_104_4_lut.init = 16'hf6f9;
    LUT4 i5187_2_lut_rep_142_4_lut (.A(n9298), .B(n9292), .C(Rdisplay[1]), 
         .D(reset_c), .Z(n9276)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A ((C+(D))+!B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i5187_2_lut_rep_142_4_lut.init = 16'h00a6;
    LUT4 i2719_2_lut_rep_206_3_lut (.A(Rdisplay[5]), .B(n9347), .C(Rdisplay[4]), 
         .Z(n9340)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2719_2_lut_rep_206_3_lut.init = 16'hf6f6;
    LUT4 i2588_3_lut_4_lut_else_4_lut (.A(Rdisplay[10]), .B(bcd_out_15__N_274), 
         .C(bcd_out_15__N_270), .D(Rdisplay[9]), .Z(n9457)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2588_3_lut_4_lut_else_4_lut.init = 16'h3c78;
    LUT4 i1965_3_lut_rep_207_4_lut (.A(bcd_out_15__N_303), .B(n9349), .C(n1646[1]), 
         .D(n9346), .Z(n9341)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1965_3_lut_rep_207_4_lut.init = 16'hf666;
    LUT4 i5300_2_lut_4_lut_4_lut (.A(n9291), .B(bcd_out_15__N_466), .C(bcd_out_15__N_470), 
         .D(n9274), .Z(n6506)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i5300_2_lut_4_lut_4_lut.init = 16'hff6c;
    LUT4 i2693_2_lut_rep_197_3_lut_3_lut_4_lut (.A(bcd_out_15__N_303), .B(n9349), 
         .C(n1646[1]), .D(n9346), .Z(n9331)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2693_2_lut_rep_197_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i5189_2_lut_rep_130_4_lut_4_lut (.A(n9291), .B(bcd_out_15__N_466), 
         .C(bcd_out_15__N_470), .D(reset_c), .Z(n9264)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A ((D)+!B))) */ ;
    defparam i5189_2_lut_rep_130_4_lut_4_lut.init = 16'h006c;
    LUT4 i2700_3_lut_rep_196_4_lut_3_lut_4_lut (.A(bcd_out_15__N_303), .B(n9349), 
         .C(n1646[1]), .D(n9346), .Z(n9330)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2700_3_lut_rep_196_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i5197_2_lut_rep_107_4_lut_4_lut (.A(n9271), .B(n9270), .C(bcd_out_15__N_413), 
         .D(reset_c), .Z(n9241)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A ((D)+!B))) */ ;
    defparam i5197_2_lut_rep_107_4_lut_4_lut.init = 16'h006c;
    LUT4 i5047_3_lut_4_lut (.A(bcd_out_15__N_413), .B(n9260), .C(reset_c), 
         .D(n9253), .Z(n4812)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (B (C)+!B (C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i5047_3_lut_4_lut.init = 16'h0f06;
    LUT4 i3650_2_lut_rep_208_4_lut (.A(bcd_out_15__N_303), .B(n9349), .C(n1646[1]), 
         .D(n9346), .Z(n9342)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3650_2_lut_rep_208_4_lut.init = 16'hf600;
    LUT4 i2678_2_lut_rep_204_4_lut_4_lut (.A(n9351), .B(n9350), .C(n1646[1]), 
         .D(n9345), .Z(n9338)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2678_2_lut_rep_204_4_lut_4_lut.init = 16'h332c;
    LUT4 i7741_2_lut_2_lut_3_lut_3_lut (.A(n9244), .B(reset_c), .C(n9245), 
         .Z(n8865)) /* synthesis lut_function=(A (B+(C))+!A (B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i7741_2_lut_2_lut_3_lut_3_lut.init = 16'heded;
    LUT4 i5108_2_lut_3_lut (.A(n9244), .B(reset_c), .C(n4757), .Z(\DISPLAY_6__N_480[4]_adj_1 )) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i5108_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i5297_3_lut_4_lut (.A(bcd_out_15__N_446), .B(n9283), .C(reset_c), 
         .D(n9274), .Z(n4820)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (B (C)+!B (C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i5297_3_lut_4_lut.init = 16'h0f06;
    LUT4 i2930_2_lut_rep_113_4_lut_4_lut (.A(n9294), .B(n9293), .C(n1655[1]), 
         .D(n2901), .Z(n9247)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i2930_2_lut_rep_113_4_lut_4_lut.init = 16'h936c;
    LUT4 i2747_2_lut_rep_198_4_lut_4_lut (.A(n9353), .B(n9352), .C(n1645[1]), 
         .D(n9338), .Z(n9332)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i2747_2_lut_rep_198_4_lut_4_lut.init = 16'hff6c;
    LUT4 i2504_3_lut_4_lut (.A(n2875), .B(n9356), .C(bcd_out_15__N_303), 
         .D(bcd_out_15__N_299), .Z(bcd_out_15__N_298)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2504_3_lut_4_lut.init = 16'h7f80;
    LUT4 i2686_3_lut_4_lut (.A(n9360), .B(n2875), .C(n9350), .D(n9341), 
         .Z(n1648[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2686_3_lut_4_lut.init = 16'h6966;
    LUT4 i1987_3_lut_rep_148_4_lut (.A(n1654[1]), .B(n9295), .C(bcd_out_15__N_446), 
         .D(n9290), .Z(n9282)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1987_3_lut_rep_148_4_lut.init = 16'hf666;
    LUT4 i1986_3_lut_rep_213_4_lut (.A(n1643[1]), .B(n9358), .C(n1645[1]), 
         .D(n9353), .Z(n9347)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1986_3_lut_rep_213_4_lut.init = 16'hf666;
    LUT4 i2532_3_lut_rep_127_4_lut_3_lut_4_lut (.A(n1654[1]), .B(n9295), 
         .C(bcd_out_15__N_446), .D(n9290), .Z(n9261)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2532_3_lut_rep_127_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i2665_2_lut_rep_205_3_lut_3_lut_4_lut (.A(n1643[1]), .B(n9358), 
         .C(n1645[1]), .D(n9353), .Z(n9339)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2665_2_lut_rep_205_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i2525_2_lut_rep_128_3_lut_3_lut_4_lut (.A(n1654[1]), .B(n9295), 
         .C(bcd_out_15__N_446), .D(n9290), .Z(n9262)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2525_2_lut_rep_128_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3679_2_lut_rep_149_4_lut (.A(n1654[1]), .B(n9295), .C(bcd_out_15__N_446), 
         .D(n9290), .Z(n9283)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3679_2_lut_rep_149_4_lut.init = 16'hf600;
    LUT4 i2672_3_lut_rep_203_4_lut_3_lut_4_lut (.A(n1643[1]), .B(n9358), 
         .C(n1645[1]), .D(n9353), .Z(n9337)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2672_3_lut_rep_203_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i3672_2_lut_rep_214_4_lut (.A(n1643[1]), .B(n9358), .C(n1645[1]), 
         .D(n9353), .Z(n9348)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3672_2_lut_rep_214_4_lut.init = 16'hf600;
    LUT4 i2510_2_lut_rep_140_4_lut_4_lut (.A(n9296), .B(n9297), .C(bcd_out_15__N_446), 
         .D(n9289), .Z(n9274)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i2510_2_lut_rep_140_4_lut_4_lut.init = 16'h554a;
    LUT4 i2650_2_lut_rep_209_4_lut_4_lut (.A(Rdisplay[5]), .B(n9355), .C(n1645[1]), 
         .D(n9352), .Z(n9343)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i2650_2_lut_rep_209_4_lut_4_lut.init = 16'h554a;
    LUT4 i2973_3_lut_rep_138_4_lut_3_lut_4_lut (.A(Rdisplay[1]), .B(n9298), 
         .C(bcd_out_15__N_470), .D(bcd_out_15__N_466), .Z(n9272)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i2973_3_lut_rep_138_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i2951_2_lut_rep_144_4_lut_4_lut (.A(Rdisplay[1]), .B(n9298), .C(bcd_out_15__N_470), 
         .D(bcd_out_15__N_466), .Z(n9278)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i2951_2_lut_rep_144_4_lut_4_lut.init = 16'h554a;
    LUT4 i3619_2_lut_rep_152_4_lut (.A(Rdisplay[1]), .B(n9298), .C(bcd_out_15__N_470), 
         .D(bcd_out_15__N_466), .Z(n9286)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i3619_2_lut_rep_152_4_lut.init = 16'heee0;
    LUT4 i2018_2_lut_rep_219_3_lut (.A(Rdisplay[6]), .B(n9357), .C(Rdisplay[5]), 
         .Z(n9353)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2018_2_lut_rep_219_3_lut.init = 16'hf6f6;
    LUT4 i2658_3_lut_4_lut (.A(Rdisplay[6]), .B(n9357), .C(Rdisplay[5]), 
         .D(n9347), .Z(n1647[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2658_3_lut_4_lut.init = 16'h6966;
    LUT4 i2497_2_lut_rep_211_3_lut_4_lut (.A(n9360), .B(n9361), .C(bcd_out_15__N_303), 
         .D(n2875), .Z(n9345)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;
    defparam i2497_2_lut_rep_211_3_lut_4_lut.init = 16'h1ef0;
    LUT4 i2029_3_lut_rep_158 (.A(Rdisplay[1]), .B(n9298), .C(bcd_out_15__N_470), 
         .D(bcd_out_15__N_466), .Z(n9292)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i2029_3_lut_rep_158.init = 16'hffe0;
    LUT4 i2959_3_lut_rep_150_4_lut (.A(Rdisplay[1]), .B(n9298), .C(bcd_out_15__N_470), 
         .D(bcd_out_15__N_466), .Z(n9284)) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i2959_3_lut_rep_150_4_lut.init = 16'h998c;
    LUT4 i7737_2_lut_2_lut_3_lut_3_lut (.A(n9272), .B(reset_c), .C(n9275), 
         .Z(n8861)) /* synthesis lut_function=(A (B+(C))+!A (B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i7737_2_lut_2_lut_3_lut_3_lut.init = 16'heded;
    LUT4 i5195_2_lut_rep_115_4_lut (.A(n9280), .B(n9259), .C(bcd_out_15__N_417), 
         .D(reset_c), .Z(n9249)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A ((C+(D))+!B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i5195_2_lut_rep_115_4_lut.init = 16'h00a6;
    LUT4 i5314_2_lut_3_lut_3_lut_4_lut (.A(Rdisplay[1]), .B(n9298), .C(bcd_out_15__N_470), 
         .D(bcd_out_15__N_466), .Z(n6473)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+(D)))) */ ;
    defparam i5314_2_lut_3_lut_3_lut_4_lut.init = 16'h2231;
    LUT4 i2917_2_lut_rep_136_3_lut_3_lut_4_lut (.A(bcd_out_15__N_349), .B(n9299), 
         .C(n1655[1]), .D(n9294), .Z(n9270)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2917_2_lut_rep_136_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i2023_3_lut_rep_153_4_lut (.A(bcd_out_15__N_349), .B(n9299), .C(n1655[1]), 
         .D(n9294), .Z(n9287)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2023_3_lut_rep_153_4_lut.init = 16'hf666;
    LUT4 i5051_2_lut_3_lut (.A(n9272), .B(reset_c), .C(n4719), .Z(\DISPLAY_6__N_480[4]_adj_2 )) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i5051_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i2924_3_lut_rep_135_4_lut_3_lut_4_lut (.A(bcd_out_15__N_349), .B(n9299), 
         .C(n1655[1]), .D(n9294), .Z(n9269)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2924_3_lut_rep_135_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i5298_3_lut_4_lut (.A(bcd_out_15__N_470), .B(n9286), .C(reset_c), 
         .D(n9278), .Z(n4830)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (B (C)+!B (C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i5298_3_lut_4_lut.init = 16'h0f06;
    LUT4 i3668_2_lut_rep_154_4_lut (.A(bcd_out_15__N_349), .B(n9299), .C(n1655[1]), 
         .D(n9294), .Z(n9288)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3668_2_lut_rep_154_4_lut.init = 16'hf600;
    LUT4 i2902_2_lut_rep_146_4_lut_4_lut (.A(n9300), .B(n1654[3]), .C(n1655[1]), 
         .D(n9293), .Z(n9280)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2902_2_lut_rep_146_4_lut_4_lut.init = 16'h332c;
    LUT4 i1989_3_lut_4_lut (.A(n9360), .B(n9361), .C(bcd_out_15__N_303), 
         .D(bcd_out_15__N_299), .Z(n2875)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i1989_3_lut_4_lut.init = 16'hffe0;
    LUT4 i2691_2_lut_rep_212_4_lut_4_lut (.A(n9363), .B(n9362), .C(n1643[1]), 
         .D(n9351), .Z(n9346)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i2691_2_lut_rep_212_4_lut_4_lut.init = 16'hff6c;
    LUT4 i3658_3_lut_rep_225 (.A(n2868), .B(bcd_out_15__N_269), .C(n9368), 
         .Z(n9359)) /* synthesis lut_function=(A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3658_3_lut_rep_225.init = 16'ha8a8;
    LUT4 i2518_3_lut_rep_141_4_lut (.A(n9310), .B(n9301), .C(n9296), .D(n9282), 
         .Z(n9275)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2518_3_lut_rep_141_4_lut.init = 16'h6966;
    LUT4 i5332_2_lut_3_lut_3_lut_4_lut (.A(n9310), .B(n9301), .C(n9296), 
         .D(n9282), .Z(n6493)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i5332_2_lut_3_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i3633_2_lut_rep_215_3_lut_4_lut (.A(n9368), .B(n2868), .C(n2875), 
         .D(n9360), .Z(n9349)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3633_2_lut_rep_215_3_lut_4_lut.init = 16'hf060;
    LUT4 i2490_3_lut_4_lut (.A(n9368), .B(n2868), .C(n9360), .D(n2875), 
         .Z(n1646[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2490_3_lut_4_lut.init = 16'h6966;
    LUT4 i1962_3_lut_rep_223_4_lut (.A(n1641[1]), .B(n9367), .C(n1643[1]), 
         .D(n9363), .Z(n9357)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1962_3_lut_rep_223_4_lut.init = 16'hf666;
    LUT4 i2197_3_lut_rep_216_4_lut_3_lut_4_lut (.A(n1641[1]), .B(n9367), 
         .C(n1643[1]), .D(n9363), .Z(n9350)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2197_3_lut_rep_216_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i2190_2_lut_rep_218_3_lut_3_lut_4_lut (.A(n1641[1]), .B(n9367), 
         .C(n1643[1]), .D(n9363), .Z(n9352)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2190_2_lut_rep_218_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3680_2_lut_rep_224_4_lut (.A(n1641[1]), .B(n9367), .C(n1643[1]), 
         .D(n9363), .Z(n9358)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3680_2_lut_rep_224_4_lut.init = 16'hf600;
    LUT4 i2044_2_lut_rep_157_3_lut (.A(Rdisplay[2]), .B(n9303), .C(Rdisplay[1]), 
         .Z(n9291)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2044_2_lut_rep_157_3_lut.init = 16'hf6f6;
    LUT4 i2175_2_lut_rep_221_4_lut_4_lut (.A(Rdisplay[6]), .B(n9365), .C(n1643[1]), 
         .D(n9362), .Z(n9355)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i2175_2_lut_rep_221_4_lut_4_lut.init = 16'h554a;
    LUT4 i2026_2_lut_rep_229_3_lut (.A(Rdisplay[7]), .B(n9366), .C(Rdisplay[6]), 
         .Z(n9363)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2026_2_lut_rep_229_3_lut.init = 16'hf6f6;
    LUT4 i2183_3_lut_4_lut (.A(Rdisplay[7]), .B(n9366), .C(Rdisplay[6]), 
         .D(n9357), .Z(n1645[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2183_3_lut_4_lut.init = 16'h6966;
    LUT4 i2840_3_lut_4_lut (.A(n2897), .B(n9308), .C(bcd_out_15__N_349), 
         .D(bcd_out_15__N_345), .Z(bcd_out_15__N_344)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2840_3_lut_4_lut.init = 16'h7f80;
    LUT4 i2910_3_lut_4_lut (.A(n9316), .B(n2897), .C(n1654[3]), .D(n9287), 
         .Z(bcd_out_15__N_413)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2910_3_lut_4_lut.init = 16'h6966;
    LUT4 i2915_2_lut_rep_160_3_lut (.A(n9316), .B(n2897), .C(n1654[3]), 
         .Z(n9294)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2915_2_lut_rep_160_3_lut.init = 16'hf6f6;
    LUT4 i2020_2_lut_rep_222_4_lut_4_lut (.A(n9371), .B(n9370), .C(n1641[1]), 
         .D(n9361), .Z(n9356)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i2020_2_lut_rep_222_4_lut_4_lut.init = 16'hff6c;
    LUT4 i2482_2_lut_rep_217_4_lut_4_lut (.A(n9371), .B(n9370), .C(n1641[1]), 
         .D(n2875), .Z(n9351)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i2482_2_lut_rep_217_4_lut_4_lut.init = 16'h936c;
    LUT4 i1988_3_lut_rep_232_4_lut (.A(n1640[1]), .B(n9380), .C(n1641[1]), 
         .D(n9371), .Z(n9366)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1988_3_lut_rep_232_4_lut.init = 16'hf666;
    LUT4 i2644_3_lut_rep_226_4_lut_3_lut_4_lut (.A(n1640[1]), .B(n9380), 
         .C(n1641[1]), .D(n9371), .Z(n9360)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2644_3_lut_rep_226_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i2637_2_lut_rep_228_3_lut_3_lut_4_lut (.A(n1640[1]), .B(n9380), 
         .C(n1641[1]), .D(n9371), .Z(n9362)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2637_2_lut_rep_228_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3632_2_lut_rep_233_4_lut (.A(n1640[1]), .B(n9380), .C(n1641[1]), 
         .D(n9371), .Z(n9367)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3632_2_lut_rep_233_4_lut.init = 16'hf600;
    LUT4 i2622_2_lut_rep_231_4_lut_4_lut (.A(Rdisplay[7]), .B(n9374), .C(n1641[1]), 
         .D(n9370), .Z(n9365)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i2622_2_lut_rep_231_4_lut_4_lut.init = 16'h554a;
    LUT4 i2066_2_lut_rep_145_3_lut_4_lut (.A(n9377), .B(n9437), .C(n4807), 
         .D(n4_adj_906), .Z(n9279)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2066_2_lut_rep_145_3_lut_4_lut.init = 16'h8000;
    LUT4 i2304_3_lut_4_lut (.A(n9377), .B(n9437), .C(n4_adj_905), .D(bcd_out_15__N_280), 
         .Z(n2928)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A !(C (D)))) */ ;
    defparam i2304_3_lut_4_lut.init = 16'h7888;
    LUT4 i2036_2_lut_rep_237_3_lut (.A(Rdisplay[8]), .B(n9379), .C(Rdisplay[7]), 
         .Z(n9371)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2036_2_lut_rep_237_3_lut.init = 16'hf6f6;
    LUT4 i2630_3_lut_4_lut (.A(Rdisplay[8]), .B(n9379), .C(Rdisplay[7]), 
         .D(n9366), .Z(n1643[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2630_3_lut_4_lut.init = 16'h6966;
    LUT4 i2043_2_lut_rep_156_4_lut_4_lut (.A(n9307), .B(n9306), .C(n1653[1]), 
         .D(n9297), .Z(n9290)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i2043_2_lut_rep_156_4_lut_4_lut.init = 16'hff6c;
    LUT4 i2329_2_lut_rep_201_3_lut_4_lut (.A(bcd_out_15__N_269), .B(n9386), 
         .C(n4_adj_906), .D(n9437), .Z(n9335)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i2329_2_lut_rep_201_3_lut_4_lut.init = 16'he000;
    LUT4 bcd_out_15__N_256_bdd_4_lut_4_lut (.A(bcd_out_15__N_269), .B(n9386), 
         .C(n9437), .D(n9368), .Z(n9043)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A !(B (C+!(D))+!B (D)))) */ ;
    defparam bcd_out_15__N_256_bdd_4_lut_4_lut.init = 16'h73c6;
    LUT4 i2024_3_lut_rep_167_4_lut (.A(n1651[1]), .B(n9309), .C(n1654[1]), 
         .D(n9305), .Z(n9301)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2024_3_lut_rep_167_4_lut.init = 16'hf666;
    LUT4 i2403_2_lut_rep_227_4_lut_4_lut (.A(n9382), .B(n9381), .C(n1640[1]), 
         .D(n2868), .Z(n9361)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i2403_2_lut_rep_227_4_lut_4_lut.init = 16'h936c;
    LUT4 i3675_2_lut_rep_161_3_lut_4_lut (.A(n1651[1]), .B(n9309), .C(n1654[1]), 
         .D(n9305), .Z(n9295)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3675_2_lut_rep_161_3_lut_4_lut.init = 16'hf600;
    LUT4 i2028_2_lut_4_lut_4_lut (.A(n9382), .B(n9381), .C(n1640[1]), 
         .D(n9369), .Z(n4_adj_909)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i2028_2_lut_4_lut_4_lut.init = 16'hff6c;
    LUT4 i1991_3_lut_rep_245_4_lut (.A(bcd_out_15__N_274), .B(n9384), .C(n1640[1]), 
         .D(n9382), .Z(n9379)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1991_3_lut_rep_245_4_lut.init = 16'hf666;
    LUT4 i2616_3_lut_rep_234_4_lut_3_lut_4_lut (.A(bcd_out_15__N_274), .B(n9384), 
         .C(n1640[1]), .D(n9382), .Z(n9368)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2616_3_lut_rep_234_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i2609_2_lut_rep_236_3_lut_3_lut_4_lut (.A(bcd_out_15__N_274), .B(n9384), 
         .C(n1640[1]), .D(n9382), .Z(n9370)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2609_2_lut_rep_236_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3653_2_lut_rep_246_4_lut (.A(bcd_out_15__N_274), .B(n9384), .C(n1640[1]), 
         .D(n9382), .Z(n9380)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3653_2_lut_rep_246_4_lut.init = 16'hf600;
    LUT4 i2889_2_lut_rep_155_3_lut_3_lut_4_lut (.A(n1651[1]), .B(n9309), 
         .C(n1654[1]), .D(n9305), .Z(n9289)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2889_2_lut_rep_155_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i2594_2_lut_rep_240_4_lut_4_lut (.A(n9385), .B(Rdisplay[8]), .C(n1640[1]), 
         .D(n9381), .Z(n9374)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2594_2_lut_rep_240_4_lut_4_lut.init = 16'h332c;
    LUT4 i2896_3_lut_4_lut_3_lut_4_lut (.A(n1651[1]), .B(n9309), .C(n1654[1]), 
         .D(n9305), .Z(bcd_out_15__N_417)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2896_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i2874_2_lut_rep_163_4_lut_4_lut (.A(n9311), .B(n9310), .C(n1654[1]), 
         .D(n9304), .Z(n9297)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2874_2_lut_rep_163_4_lut_4_lut.init = 16'h332c;
    LUT4 i2945_3_lut_rep_112_4_lut_else_3_lut (.A(n9268), .B(n9335), .C(bcd_out_15__N_344), 
         .D(bcd_out_15__N_252), .Z(n9747)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C+!(D)))+!A (B (C (D))+!B (D))) */ ;
    defparam i2945_3_lut_rep_112_4_lut_else_3_lut.init = 16'hd308;
    LUT4 i2032_3_lut_rep_169_4_lut (.A(n1650[1]), .B(n9320), .C(n1653[1]), 
         .D(n9307), .Z(n9303)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2032_3_lut_rep_169_4_lut.init = 16'hf666;
    LUT4 i2602_3_lut_4_lut (.A(Rdisplay[9]), .B(n9741), .C(Rdisplay[8]), 
         .D(n9379), .Z(n1641[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2602_3_lut_4_lut.init = 16'h6966;
    LUT4 i2607_2_lut_rep_248_3_lut (.A(Rdisplay[9]), .B(n9741), .C(Rdisplay[8]), 
         .Z(n9382)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2607_2_lut_rep_248_3_lut.init = 16'hf6f6;
    LUT4 i2861_2_lut_3_lut_3_lut_4_lut (.A(n1650[1]), .B(n9320), .C(n1653[1]), 
         .D(n9307), .Z(bcd_out_15__N_466)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2861_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i2868_3_lut_rep_162_4_lut_3_lut_4_lut (.A(n1650[1]), .B(n9320), 
         .C(n1653[1]), .D(n9307), .Z(n9296)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2868_3_lut_rep_162_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i2846_2_lut_rep_164_4_lut_4_lut (.A(Rdisplay[2]), .B(n9314), .C(n1653[1]), 
         .D(n9306), .Z(n9298)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i2846_2_lut_rep_164_4_lut_4_lut.init = 16'h554a;
    LUT4 i2938_3_lut_rep_111_4_lut (.A(bcd_out_15__N_344), .B(n9279), .C(n9269), 
         .D(n2901), .Z(n9245)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2938_3_lut_rep_111_4_lut.init = 16'h6966;
    LUT4 i2574_3_lut_4_lut (.A(Rdisplay[10]), .B(n9743), .C(Rdisplay[9]), 
         .D(n9741), .Z(n1640[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2574_3_lut_4_lut.init = 16'h6966;
    LUT4 i3664_2_lut_rep_250_3_lut_4_lut (.A(Rdisplay[10]), .B(n9743), .C(n9741), 
         .D(Rdisplay[9]), .Z(n9384)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3664_2_lut_rep_250_3_lut_4_lut.init = 16'hf060;
    LUT4 i5324_2_lut_4_lut_3_lut_4_lut (.A(bcd_out_15__N_344), .B(n9279), 
         .C(n2901), .D(n9269), .Z(n6485)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i5324_2_lut_4_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i2833_2_lut_rep_159_3_lut_4_lut (.A(n9312), .B(n9316), .C(bcd_out_15__N_349), 
         .D(n2897), .Z(n9293)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2833_2_lut_rep_159_3_lut_4_lut.init = 16'h1ef0;
    LUT4 i2031_3_lut_4_lut (.A(n9312), .B(n9316), .C(bcd_out_15__N_349), 
         .D(bcd_out_15__N_345), .Z(n2897)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2031_3_lut_4_lut.init = 16'hffe0;
    LUT4 i2882_3_lut_4_lut (.A(n9322), .B(n9313), .C(n9310), .D(n9301), 
         .Z(bcd_out_15__N_446)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2882_3_lut_4_lut.init = 16'h6966;
    LUT4 i3651_2_lut_rep_165_3_lut_4_lut (.A(n9330), .B(n23), .C(n2897), 
         .D(n9316), .Z(n9299)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C (D))+!B (C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3651_2_lut_rep_165_3_lut_4_lut.init = 16'hf090;
    LUT4 i2826_3_lut_4_lut (.A(n9330), .B(n23), .C(n9316), .D(n2897), 
         .Z(n1655[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2826_3_lut_4_lut.init = 16'h9699;
    LUT4 i2831_2_lut_rep_174_3_lut (.A(n9330), .B(n23), .C(n9316), .Z(n9308)) /* synthesis lut_function=(A (B+(C))+!A ((C)+!B)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2831_2_lut_rep_174_3_lut.init = 16'hf9f9;
    LUT4 i2052_2_lut_rep_173_3_lut (.A(Rdisplay[3]), .B(n9319), .C(Rdisplay[2]), 
         .Z(n9307)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2052_2_lut_rep_173_3_lut.init = 16'hf6f6;
    LUT4 i2037_3_lut_rep_125_4_lut (.A(n1655[1]), .B(n9288), .C(bcd_out_15__N_413), 
         .D(n9271), .Z(n9259)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2037_3_lut_rep_125_4_lut.init = 16'hf666;
    LUT4 i2854_3_lut_4_lut (.A(Rdisplay[3]), .B(n9319), .C(Rdisplay[2]), 
         .D(n9303), .Z(bcd_out_15__N_470)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2854_3_lut_4_lut.init = 16'h6966;
    LUT4 i2560_3_lut_rep_110_4_lut_3_lut_4_lut (.A(n1655[1]), .B(n9288), 
         .C(bcd_out_15__N_413), .D(n9271), .Z(n9244)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2560_3_lut_rep_110_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i3652_2_lut_rep_175_3_lut_4_lut (.A(n1648[1]), .B(n9327), .C(n1651[1]), 
         .D(n9318), .Z(n9309)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3652_2_lut_rep_175_3_lut_4_lut.init = 16'hf600;
    LUT4 i2030_3_lut_rep_179_4_lut (.A(n1648[1]), .B(n9327), .C(n1651[1]), 
         .D(n9318), .Z(n9313)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2030_3_lut_rep_179_4_lut.init = 16'hf666;
    LUT4 i2805_2_lut_rep_170_3_lut_3_lut_4_lut (.A(n1648[1]), .B(n9327), 
         .C(n1651[1]), .D(n9318), .Z(n9304)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2805_2_lut_rep_170_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i2812_3_lut_4_lut_3_lut_4_lut (.A(n1648[1]), .B(n9327), .C(n1651[1]), 
         .D(n9318), .Z(n1654[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2812_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i2790_2_lut_rep_177_4_lut_4_lut (.A(n9323), .B(n9322), .C(n1651[1]), 
         .D(n9317), .Z(n9311)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2790_2_lut_rep_177_4_lut_4_lut.init = 16'h332c;
    LUT4 i2887_2_lut_rep_171_4_lut_4_lut (.A(n9325), .B(n9324), .C(n1650[1]), 
         .D(n9311), .Z(n9305)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i2887_2_lut_rep_171_4_lut_4_lut.init = 16'hff6c;
    LUT4 i2553_2_lut_rep_114_3_lut_3_lut_4_lut (.A(n1655[1]), .B(n9288), 
         .C(bcd_out_15__N_413), .D(n9271), .Z(n9248)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2553_2_lut_rep_114_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i5065_2_lut_rep_273 (.A(Rdisplay[0]), .B(reset_c), .Z(n9407)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i5065_2_lut_rep_273.init = 16'h2222;
    LUT4 i7739_2_lut_3_lut_3_lut_3_lut (.A(Rdisplay[0]), .B(reset_c), .C(n9284), 
         .Z(n8863)) /* synthesis lut_function=(A (B+(C))+!A (B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i7739_2_lut_3_lut_3_lut_3_lut.init = 16'heded;
    LUT4 i5304_2_lut_3_lut_4_lut (.A(Rdisplay[0]), .B(reset_c), .C(n9292), 
         .D(Rdisplay[1]), .Z(n6460)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i5304_2_lut_3_lut_4_lut.init = 16'h0220;
    LUT4 i5123_2_lut_3_lut (.A(Rdisplay[0]), .B(reset_c), .C(n4773), .Z(\DISPLAY_6__N_480[4]_adj_3 )) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i5123_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i2022_3_lut_rep_185_4_lut (.A(n1647[1]), .B(n9334), .C(n1650[1]), 
         .D(n9325), .Z(n9319)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2022_3_lut_rep_185_4_lut.init = 16'hf666;
    LUT4 i2798_3_lut_4_lut (.A(n9337), .B(n9326), .C(n9322), .D(n9313), 
         .Z(n1654[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2798_3_lut_4_lut.init = 16'h6966;
    LUT4 i2818_2_lut_rep_166_4_lut_4_lut (.A(n9332), .B(n9331), .C(n1648[1]), 
         .D(n2897), .Z(n9300)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i2818_2_lut_rep_166_4_lut_4_lut.init = 16'h936c;
    LUT4 i2538_2_lut_rep_119_4_lut_4_lut (.A(bcd_out_15__N_417), .B(n9280), 
         .C(bcd_out_15__N_413), .D(n9270), .Z(n9253)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i2538_2_lut_rep_119_4_lut_4_lut.init = 16'h554a;
    LUT4 i2770_3_lut_4_lut (.A(Rdisplay[4]), .B(n9333), .C(Rdisplay[3]), 
         .D(n9319), .Z(n1653[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2770_3_lut_4_lut.init = 16'h6966;
    LUT4 i7763_3_lut_rep_109_4_lut (.A(bcd_out_15__N_417), .B(n9259), .C(reset_c), 
         .D(n9261), .Z(n9243)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i7763_3_lut_rep_109_4_lut.init = 16'hf6f9;
    LUT4 i2775_2_lut_rep_191_3_lut (.A(Rdisplay[4]), .B(n9333), .C(Rdisplay[3]), 
         .Z(n9325)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2775_2_lut_rep_191_3_lut.init = 16'hf6f6;
    LUT4 i1994_4_lut (.A(n4_adj_909), .B(n9377), .C(bcd_out_15__N_285), 
         .D(n9437), .Z(n2868)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i1994_4_lut.init = 16'hb3a0;
    LUT4 i2048_3_lut_rep_192_4_lut (.A(n1646[1]), .B(n9342), .C(n1648[1]), 
         .D(n9332), .Z(n9326)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2048_3_lut_rep_192_4_lut.init = 16'hf666;
    LUT4 i2749_2_lut_rep_183_3_lut_3_lut_4_lut (.A(n1646[1]), .B(n9342), 
         .C(n1648[1]), .D(n9332), .Z(n9317)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2749_2_lut_rep_183_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i2756_3_lut_rep_182_4_lut_3_lut_4_lut (.A(n1646[1]), .B(n9342), 
         .C(n1648[1]), .D(n9332), .Z(n9316)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2756_3_lut_rep_182_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i3657_2_lut_rep_193_4_lut (.A(n1646[1]), .B(n9342), .C(n1648[1]), 
         .D(n9332), .Z(n9327)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i3657_2_lut_rep_193_4_lut.init = 16'hf600;
    LUT4 i2734_2_lut_rep_189_4_lut_4_lut (.A(n9338), .B(n9337), .C(n1648[1]), 
         .D(n9331), .Z(n9323)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2734_2_lut_rep_189_4_lut_4_lut.init = 16'h332c;
    
endmodule
