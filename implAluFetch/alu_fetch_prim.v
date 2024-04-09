// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Mon Apr 08 23:22:20 2024
//
// Verilog Description of module alu_fetch
//

module alu_fetch (reset, stop_run, display, sel, CI, led);   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(11[8:17])
    input reset;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    input stop_run;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(13[2:10])
    output [6:0]display;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    output [3:0]sel;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    output [23:0]CI;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    output led;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(17[2:5])
    
    wire led_c /* synthesis is_clock=1, SET_AS_NETWORK=led_c */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(17[2:5])
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(74[8:11])
    wire clk_0 /* synthesis is_clock=1, SET_AS_NETWORK=clk_0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(75[8:13])
    wire Q_7__N_69 /* synthesis is_clock=1, SET_AS_NETWORK=Q_7__N_69 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(77[8:9])
    
    wire GND_net, reset_c, stop_run_c, display_c_6, display_c_5, display_c_4, 
        display_c_3, display_c_2, display_c_1, display_c_0, sel_c_3, 
        sel_c_2, sel_c_1, sel_c_0, CI_c_23, CI_c_22, CI_c_21, CI_c_20, 
        CI_c_19, CI_c_18, CI_c_17, CI_c_16, CI_c_15, CI_c_14, CI_c_13, 
        CI_c_12, CI_c_11, CI_c_10, CI_c_9, CI_c_8, CI_c_7, CI_c_6, 
        CI_c_5, CI_c_4, CI_c_3, CI_c_2, CI_c_1, CI_c_0, n109;
    wire [13:0]Q;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(77[8:9])
    
    wire n119, n4;
    wire [3:0]temp_control;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(79[8:20])
    wire [6:0]un;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(80[8:10])
    wire [6:0]de;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(80[11:13])
    wire [6:0]ce;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(80[14:16])
    wire [7:0]MAR;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(84[8:11])
    wire [23:0]MBR;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(85[8:11])
    wire [7:0]address_bus;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(91[8:19])
    
    wire n2906;
    wire [1:0]global_state;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(102[8:20])
    wire [2:0]instruction;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(105[8:19])
    wire [7:0]Q_7__N_40;
    wire [2:0]instruction_2__N_118;
    wire [8:0]Q_7__N_39;
    
    wire Q_7__N_37, Q_7__N_41, Q_7__N_45, Q_7__N_49, Q_7__N_53, Q_7__N_57, 
        Q_7__N_61, Q_7__N_65, n1, instruction_2__N_123, n3291, n3037, 
        n3036, n4143;
    wire [17:0]count;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(203[11:16])
    wire [24:0]count1;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(204[11:17])
    
    wire clk_0_enable_11, n86, n85, n84, n83, n82, n81, clk_0_N_227, 
        n125, n1_adj_587, n2974, n80, n79, n78, n3712, n3711, 
        led_N_225, n93, n92, n120, n91, n89, n90, n3709, n88, 
        n87, n3708, VCC_net, n2992, n4019, n18, n17, n3660, 
        n3656, n4042, n3642, n3654, n3713, n112, n111, n110, 
        n128, bcd_out_15__N_346, bcd_out_15__N_348, n115, n114, n113, 
        n4018, n117, n3564, n3707, n116, bcd_out_15__N_403, n3706, 
        n3907, bcd_out_15__N_429, bcd_out_15__N_421, bcd_out_15__N_425, 
        n3310, n106, n2, n2_adj_588, n3705, n3704, n107, n108, 
        n3703;
    wire [6:0]DISPLAY_6__N_459;
    
    wire n3702, n3701;
    wire [6:0]DISPLAY_6__N_459_adj_605;
    wire [6:0]DISPLAY_6__N_459_adj_609;
    
    wire n20;
    wire [23:0]data_out_23__N_466;
    
    wire n1_adj_591, n22, n5, n3700, n21, n7, n2983, n25, n24, 
        n2939, n121, n4009, n3296, n9, n3699, n4144, n3, n3698, 
        n23, n3697, n22_adj_592, n1_adj_593, n3696, n21_adj_594, 
        n20_adj_595, n19, n3695, n2_adj_596, n126, n18_adj_597, 
        n2966, n127, n95, n3010, n3694, n124, n129, n4036, n3693, 
        n3609, n3692, n15, n16, n3691, n4035, n3690, n4032, 
        n4031, n3689, n3164, n3166, n3615, n3168, n3170, n3716, 
        n3985, n3688, n3989, n130, n4010, n3163, n3162, n4029, 
        n3687, n4015, n3686, n1719, n94, n118, n1735, n123, 
        n122, n3984, n2_adj_598, n3911, n2981, n4014, n3685, n3284, 
        n3684, n3683, led_c_enable_2, n4068, n3897, n6, n3971, 
        n4013, n6_adj_599, n5_adj_600, n4067, n4066, n4062, n3974, 
        global_state_0_derived_64, n4059, n4025, clk_enable_43, n4024, 
        n4057, n4023, n4011, n4056, n3165, n3167, n3169, n3171, 
        n4055, n4054, n4053, n3183, n3682, n3199, n3681, n3205, 
        n3909, n6_adj_601;
    
    VHI i2 (.Z(VCC_net));
    OSCH OSCinst0 (.STDBY(GND_net), .OSC(clk)) /* synthesis NOM_FREQ="26.60", syn_instantiated=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(113[11:15])
    defparam OSCinst0.NOM_FREQ = "26.60";
    FD1S3AX temp_control_FSM_i5 (.D(temp_control[2]), .CK(clk_0), .Q(temp_control[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(180[4] 197[13])
    defparam temp_control_FSM_i5.GSR = "ENABLED";
    FD1S3AX temp_control_FSM_i4 (.D(temp_control[1]), .CK(clk_0), .Q(temp_control[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(180[4] 197[13])
    defparam temp_control_FSM_i4.GSR = "ENABLED";
    FD1S3AX temp_control_FSM_i3 (.D(temp_control[0]), .CK(clk_0), .Q(temp_control[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(180[4] 197[13])
    defparam temp_control_FSM_i3.GSR = "ENABLED";
    FD1S1I address_bus_7__I_0_i1 (.D(MAR[0]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(address_bus[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam address_bus_7__I_0_i1.GSR = "DISABLED";
    PFUMX mux_799_Mux_0_i3 (.BLUT(n1_adj_593), .ALUT(n2_adj_598), .C0(global_state[1]), 
          .Z(Q_7__N_61));
    FD1P3AX global_state_i0_i0 (.D(n4056), .SP(led_c_enable_2), .CK(led_c), 
            .Q(global_state[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 134[10])
    defparam global_state_i0_i0.GSR = "ENABLED";
    FD1S1A Q_7__I_0_709_i1 (.D(Q_7__N_65), .CK(Q_7__N_69), .Q(Q[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam Q_7__I_0_709_i1.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i1 (.D(data_out_23__N_466[0]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(MBR[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MBR_23__I_0_i1.GSR = "DISABLED";
    FD1S1I MAR_7__I_0_i1 (.D(Q[0]), .CK(global_state_0_derived_64), .CD(n2992), 
           .Q(MAR[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MAR_7__I_0_i1.GSR = "DISABLED";
    FD1S1I CI_23__I_0_710_i1 (.D(MBR[0]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(CI_c_0));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam CI_23__I_0_710_i1.GSR = "DISABLED";
    FD1P3AX display_i0_i1 (.D(n3037), .SP(clk_0_enable_11), .CK(clk_0), 
            .Q(display_c_0));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(177[3] 199[10])
    defparam display_i0_i1.GSR = "DISABLED";
    FD1S3AX clk_0_610 (.D(clk_0_N_227), .CK(clk), .Q(clk_0)) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(206[3] 223[10])
    defparam clk_0_610.GSR = "ENABLED";
    FD1S3AX clk_1_611 (.D(led_N_225), .CK(clk), .Q(led_c)) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(206[3] 223[10])
    defparam clk_1_611.GSR = "ENABLED";
    FD1P3AX display_i0_i7 (.D(n3171), .SP(clk_0_enable_11), .CK(clk_0), 
            .Q(display_c_6));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(177[3] 199[10])
    defparam display_i0_i7.GSR = "DISABLED";
    FD1S3AX temp_control_FSM_i2 (.D(n1735), .CK(clk_0), .Q(temp_control[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(180[4] 197[13])
    defparam temp_control_FSM_i2.GSR = "ENABLED";
    FD1P3AX display_i0_i6 (.D(n3169), .SP(clk_0_enable_11), .CK(clk_0), 
            .Q(display_c_5));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(177[3] 199[10])
    defparam display_i0_i6.GSR = "DISABLED";
    FD1S3AY temp_control_FSM_i1 (.D(n4143), .CK(clk_0), .Q(n1719));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(180[4] 197[13])
    defparam temp_control_FSM_i1.GSR = "ENABLED";
    LUT4 m0_lut (.Z(n4143)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    IB stop_run_pad (.I(stop_run), .O(stop_run_c));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(13[2:10])
    IB reset_pad (.I(reset), .O(reset_c));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    OB led_pad (.I(led_c), .O(led));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(17[2:5])
    OB CI_pad_0 (.I(CI_c_0), .O(CI[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_1 (.I(CI_c_1), .O(CI[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_2 (.I(CI_c_2), .O(CI[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_3 (.I(CI_c_3), .O(CI[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_4 (.I(CI_c_4), .O(CI[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_5 (.I(CI_c_5), .O(CI[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_6 (.I(CI_c_6), .O(CI[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_7 (.I(CI_c_7), .O(CI[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_8 (.I(CI_c_8), .O(CI[8]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_9 (.I(CI_c_9), .O(CI[9]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_10 (.I(CI_c_10), .O(CI[10]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_11 (.I(CI_c_11), .O(CI[11]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    LUT4 i1_2_lut_3_lut (.A(global_state[0]), .B(n4057), .C(Q_7__N_39[7]), 
         .Z(n2)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    OB CI_pad_12 (.I(CI_c_12), .O(CI[12]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_13 (.I(CI_c_13), .O(CI[13]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB display_pad_5 (.I(display_c_5), .O(display[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    OB CI_pad_14 (.I(CI_c_14), .O(CI[14]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    FD1P3AX display_i0_i5 (.D(n3167), .SP(clk_0_enable_11), .CK(clk_0), 
            .Q(display_c_4));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(177[3] 199[10])
    defparam display_i0_i5.GSR = "DISABLED";
    OB CI_pad_15 (.I(CI_c_15), .O(CI[15]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    FD1P3AX display_i0_i4 (.D(n3165), .SP(clk_0_enable_11), .CK(clk_0), 
            .Q(display_c_3));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(177[3] 199[10])
    defparam display_i0_i4.GSR = "DISABLED";
    FD1P3AX display_i0_i3 (.D(n3163), .SP(clk_0_enable_11), .CK(clk_0), 
            .Q(display_c_2));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(177[3] 199[10])
    defparam display_i0_i3.GSR = "DISABLED";
    FD1P3AX global_state_i0_i1 (.D(n4054), .SP(led_c_enable_2), .CK(led_c), 
            .Q(global_state[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 134[10])
    defparam global_state_i0_i1.GSR = "ENABLED";
    bcdDisplay unidades (.un({un}), .clk_0(clk_0), .n4015(n4015), .n3985(n3985), 
            .\DISPLAY_6__N_459[4] (DISPLAY_6__N_459[4]), .n3183(n3183), 
            .n3909(n3909), .n2974(n2974), .n3615(n3615), .n2981(n2981), 
            .\DISPLAY_6__N_459[6] (DISPLAY_6__N_459[6]), .n3010(n3010), 
            .n2983(n2983), .n4062(n4062), .n3713(n3713), .n3989(n3989), 
            .n4019(n4019), .reset_c(reset_c));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(118[11:21])
    OB CI_pad_16 (.I(CI_c_16), .O(CI[16]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_17 (.I(CI_c_17), .O(CI[17]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB display_pad_4 (.I(display_c_4), .O(display[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    OB CI_pad_18 (.I(CI_c_18), .O(CI[18]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_19 (.I(CI_c_19), .O(CI[19]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_20 (.I(CI_c_20), .O(CI[20]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_21 (.I(CI_c_21), .O(CI[21]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    FD1S1I instruction_2__I_1_i2 (.D(instruction_2__N_118[1]), .CK(instruction_2__N_123), 
           .CD(n3284), .Q(instruction[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam instruction_2__I_1_i2.GSR = "DISABLED";
    OB CI_pad_22 (.I(CI_c_22), .O(CI[22]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    FD1P3IX count1_1114__i21 (.D(n109), .SP(clk_enable_43), .CD(n3291), 
            .CK(clk), .Q(count1[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114__i21.GSR = "DISABLED";
    OB CI_pad_23 (.I(CI_c_23), .O(CI[23]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB sel_pad_0 (.I(sel_c_0), .O(sel[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    OB display_pad_6 (.I(display_c_6), .O(display[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    FD1S1I instruction_2__I_1_i3 (.D(instruction_2__N_118[2]), .CK(instruction_2__N_123), 
           .CD(n3284), .Q(instruction[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam instruction_2__I_1_i3.GSR = "DISABLED";
    FD1S1I address_bus_7__I_0_i2 (.D(MAR[1]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(address_bus[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam address_bus_7__I_0_i2.GSR = "DISABLED";
    FD1S1I address_bus_7__I_0_i3 (.D(MAR[2]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(address_bus[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam address_bus_7__I_0_i3.GSR = "DISABLED";
    FD1S1I address_bus_7__I_0_i4 (.D(MAR[3]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(address_bus[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam address_bus_7__I_0_i4.GSR = "DISABLED";
    FD1S1I address_bus_7__I_0_i5 (.D(MAR[4]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(address_bus[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam address_bus_7__I_0_i5.GSR = "DISABLED";
    FD1S1I address_bus_7__I_0_i6 (.D(MAR[5]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(address_bus[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam address_bus_7__I_0_i6.GSR = "DISABLED";
    FD1S1I address_bus_7__I_0_i7 (.D(MAR[6]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(address_bus[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam address_bus_7__I_0_i7.GSR = "DISABLED";
    FD1S1I address_bus_7__I_0_i8 (.D(MAR[7]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(address_bus[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam address_bus_7__I_0_i8.GSR = "DISABLED";
    FD1S1A Q_7__I_0_709_i2 (.D(Q_7__N_61), .CK(Q_7__N_69), .Q(Q[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam Q_7__I_0_709_i2.GSR = "DISABLED";
    FD1S1A Q_7__I_0_709_i3 (.D(Q_7__N_57), .CK(Q_7__N_69), .Q(Q[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam Q_7__I_0_709_i3.GSR = "DISABLED";
    FD1S1A Q_7__I_0_709_i4 (.D(Q_7__N_53), .CK(Q_7__N_69), .Q(Q[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam Q_7__I_0_709_i4.GSR = "DISABLED";
    FD1S1A Q_7__I_0_709_i5 (.D(Q_7__N_49), .CK(Q_7__N_69), .Q(Q[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam Q_7__I_0_709_i5.GSR = "DISABLED";
    FD1S1A Q_7__I_0_709_i6 (.D(Q_7__N_45), .CK(Q_7__N_69), .Q(Q[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam Q_7__I_0_709_i6.GSR = "DISABLED";
    FD1S1A Q_7__I_0_709_i7 (.D(Q_7__N_41), .CK(Q_7__N_69), .Q(bcd_out_15__N_348)) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam Q_7__I_0_709_i7.GSR = "DISABLED";
    FD1S1A Q_7__I_0_709_i8 (.D(Q_7__N_37), .CK(Q_7__N_69), .Q(bcd_out_15__N_346)) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam Q_7__I_0_709_i8.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i2 (.D(data_out_23__N_466[1]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(MBR[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MBR_23__I_0_i2.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i3 (.D(data_out_23__N_466[2]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(MBR[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MBR_23__I_0_i3.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i4 (.D(data_out_23__N_466[3]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(MBR[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MBR_23__I_0_i4.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i5 (.D(data_out_23__N_466[4]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(MBR[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MBR_23__I_0_i5.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i6 (.D(data_out_23__N_466[5]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(MBR[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MBR_23__I_0_i6.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i7 (.D(data_out_23__N_466[6]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(MBR[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MBR_23__I_0_i7.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i8 (.D(data_out_23__N_466[7]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(MBR[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MBR_23__I_0_i8.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i9 (.D(data_out_23__N_466[8]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(MBR[8]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MBR_23__I_0_i9.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i10 (.D(data_out_23__N_466[9]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(MBR[9]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MBR_23__I_0_i10.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i11 (.D(data_out_23__N_466[10]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(MBR[10]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MBR_23__I_0_i11.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i12 (.D(data_out_23__N_466[11]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(MBR[11]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MBR_23__I_0_i12.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i13 (.D(data_out_23__N_466[12]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(MBR[12]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MBR_23__I_0_i13.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i14 (.D(data_out_23__N_466[13]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(MBR[13]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MBR_23__I_0_i14.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i15 (.D(data_out_23__N_466[14]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(MBR[14]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MBR_23__I_0_i15.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i16 (.D(data_out_23__N_466[15]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(MBR[15]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MBR_23__I_0_i16.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i17 (.D(data_out_23__N_466[16]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(MBR[16]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MBR_23__I_0_i17.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i18 (.D(data_out_23__N_466[17]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(MBR[17]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MBR_23__I_0_i18.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i19 (.D(data_out_23__N_466[18]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(MBR[18]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MBR_23__I_0_i19.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i20 (.D(data_out_23__N_466[19]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(MBR[19]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MBR_23__I_0_i20.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i21 (.D(data_out_23__N_466[20]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(MBR[20]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MBR_23__I_0_i21.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i22 (.D(data_out_23__N_466[21]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(MBR[21]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MBR_23__I_0_i22.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i23 (.D(data_out_23__N_466[22]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(MBR[22]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MBR_23__I_0_i23.GSR = "DISABLED";
    FD1S1I MBR_23__I_0_i24 (.D(data_out_23__N_466[23]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(MBR[23]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MBR_23__I_0_i24.GSR = "DISABLED";
    FD1S1I MAR_7__I_0_i2 (.D(Q[1]), .CK(global_state_0_derived_64), .CD(n2992), 
           .Q(MAR[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MAR_7__I_0_i2.GSR = "DISABLED";
    FD1S1I MAR_7__I_0_i3 (.D(Q[2]), .CK(global_state_0_derived_64), .CD(n2992), 
           .Q(MAR[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MAR_7__I_0_i3.GSR = "DISABLED";
    FD1S1I MAR_7__I_0_i4 (.D(Q[3]), .CK(global_state_0_derived_64), .CD(n2992), 
           .Q(MAR[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MAR_7__I_0_i4.GSR = "DISABLED";
    FD1S1I MAR_7__I_0_i5 (.D(Q[4]), .CK(global_state_0_derived_64), .CD(n2992), 
           .Q(MAR[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MAR_7__I_0_i5.GSR = "DISABLED";
    FD1S1I MAR_7__I_0_i6 (.D(Q[5]), .CK(global_state_0_derived_64), .CD(n2992), 
           .Q(MAR[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MAR_7__I_0_i6.GSR = "DISABLED";
    FD1S1I MAR_7__I_0_i7 (.D(bcd_out_15__N_348), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(MAR[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MAR_7__I_0_i7.GSR = "DISABLED";
    FD1S1I MAR_7__I_0_i8 (.D(bcd_out_15__N_346), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(MAR[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam MAR_7__I_0_i8.GSR = "DISABLED";
    FD1S1I CI_23__I_0_710_i2 (.D(MBR[1]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(CI_c_1));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam CI_23__I_0_710_i2.GSR = "DISABLED";
    FD1S1I CI_23__I_0_710_i3 (.D(MBR[2]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(CI_c_2));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam CI_23__I_0_710_i3.GSR = "DISABLED";
    FD1S1I CI_23__I_0_710_i4 (.D(MBR[3]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(CI_c_3));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam CI_23__I_0_710_i4.GSR = "DISABLED";
    FD1S1I CI_23__I_0_710_i5 (.D(MBR[4]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(CI_c_4));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam CI_23__I_0_710_i5.GSR = "DISABLED";
    FD1S1I CI_23__I_0_710_i6 (.D(MBR[5]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(CI_c_5));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam CI_23__I_0_710_i6.GSR = "DISABLED";
    FD1S1I CI_23__I_0_710_i7 (.D(MBR[6]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(CI_c_6));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam CI_23__I_0_710_i7.GSR = "DISABLED";
    FD1S1I CI_23__I_0_710_i8 (.D(MBR[7]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(CI_c_7));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam CI_23__I_0_710_i8.GSR = "DISABLED";
    FD1S1I CI_23__I_0_710_i9 (.D(MBR[8]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(CI_c_8));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam CI_23__I_0_710_i9.GSR = "DISABLED";
    FD1S1I CI_23__I_0_710_i10 (.D(MBR[9]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(CI_c_9));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam CI_23__I_0_710_i10.GSR = "DISABLED";
    FD1S1I CI_23__I_0_710_i11 (.D(MBR[10]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(CI_c_10));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam CI_23__I_0_710_i11.GSR = "DISABLED";
    FD1S1I CI_23__I_0_710_i12 (.D(MBR[11]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(CI_c_11));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam CI_23__I_0_710_i12.GSR = "DISABLED";
    FD1S1I CI_23__I_0_710_i13 (.D(MBR[12]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(CI_c_12));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam CI_23__I_0_710_i13.GSR = "DISABLED";
    FD1S1I CI_23__I_0_710_i14 (.D(MBR[13]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(CI_c_13));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam CI_23__I_0_710_i14.GSR = "DISABLED";
    FD1S1I CI_23__I_0_710_i15 (.D(MBR[14]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(CI_c_14));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam CI_23__I_0_710_i15.GSR = "DISABLED";
    FD1S1I CI_23__I_0_710_i16 (.D(MBR[15]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(CI_c_15));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam CI_23__I_0_710_i16.GSR = "DISABLED";
    FD1S1I CI_23__I_0_710_i17 (.D(MBR[16]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(CI_c_16));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam CI_23__I_0_710_i17.GSR = "DISABLED";
    FD1S1I CI_23__I_0_710_i18 (.D(MBR[17]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(CI_c_17));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam CI_23__I_0_710_i18.GSR = "DISABLED";
    FD1S1I CI_23__I_0_710_i19 (.D(MBR[18]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(CI_c_18));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam CI_23__I_0_710_i19.GSR = "DISABLED";
    FD1S1I CI_23__I_0_710_i20 (.D(MBR[19]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(CI_c_19));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam CI_23__I_0_710_i20.GSR = "DISABLED";
    FD1S1I CI_23__I_0_710_i21 (.D(MBR[20]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(CI_c_20));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam CI_23__I_0_710_i21.GSR = "DISABLED";
    FD1S1I CI_23__I_0_710_i22 (.D(MBR[21]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(CI_c_21));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam CI_23__I_0_710_i22.GSR = "DISABLED";
    FD1S1I CI_23__I_0_710_i23 (.D(MBR[22]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(CI_c_22));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam CI_23__I_0_710_i23.GSR = "DISABLED";
    FD1S1I CI_23__I_0_710_i24 (.D(MBR[23]), .CK(global_state_0_derived_64), 
           .CD(n2992), .Q(CI_c_23));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam CI_23__I_0_710_i24.GSR = "DISABLED";
    OB sel_pad_1 (.I(sel_c_1), .O(sel[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    OB sel_pad_2 (.I(sel_c_2), .O(sel[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    OB sel_pad_3 (.I(sel_c_3), .O(sel[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    OB display_pad_0 (.I(display_c_0), .O(display[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    FD1P3IX count1_1114__i22 (.D(n108), .SP(clk_enable_43), .CD(n3291), 
            .CK(clk), .Q(count1[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114__i22.GSR = "DISABLED";
    OB display_pad_1 (.I(display_c_1), .O(display[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    OB display_pad_2 (.I(display_c_2), .O(display[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    OB display_pad_3 (.I(display_c_3), .O(display[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    FD1P3IX count1_1114__i23 (.D(n107), .SP(clk_enable_43), .CD(n3291), 
            .CK(clk), .Q(count1[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114__i23.GSR = "DISABLED";
    CCU2D count1_1114_add_4_25 (.A0(count1[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count1[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3709), .S0(n107), .S1(n106));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114_add_4_25.INIT0 = 16'hfaaa;
    defparam count1_1114_add_4_25.INIT1 = 16'hfaaa;
    defparam count1_1114_add_4_25.INJECT1_0 = "NO";
    defparam count1_1114_add_4_25.INJECT1_1 = "NO";
    FD1P3IX count1_1114__i24 (.D(n106), .SP(clk_enable_43), .CD(n3291), 
            .CK(clk), .Q(count1[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114__i24.GSR = "DISABLED";
    CCU2D count_1112_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3696), .COUT(n3697), .S0(n80), .S1(n79));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(211[14:19])
    defparam count_1112_add_4_17.INIT0 = 16'hfaaa;
    defparam count_1112_add_4_17.INIT1 = 16'hfaaa;
    defparam count_1112_add_4_17.INJECT1_0 = "NO";
    defparam count_1112_add_4_17.INJECT1_1 = "NO";
    CCU2D count1_1114_add_4_23 (.A0(count1[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count1[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3708), .COUT(n3709), .S0(n109), .S1(n108));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114_add_4_23.INIT0 = 16'hfaaa;
    defparam count1_1114_add_4_23.INIT1 = 16'hfaaa;
    defparam count1_1114_add_4_23.INJECT1_0 = "NO";
    defparam count1_1114_add_4_23.INJECT1_1 = "NO";
    FD1P3IX count_1112__i1 (.D(n94), .SP(clk_enable_43), .CD(n3310), .CK(clk), 
            .Q(n17)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(211[14:19])
    defparam count_1112__i1.GSR = "DISABLED";
    FD1P3IX count_1112__i2 (.D(n93), .SP(clk_enable_43), .CD(n3310), .CK(clk), 
            .Q(n16)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(211[14:19])
    defparam count_1112__i2.GSR = "DISABLED";
    CCU2D count1_1114_add_4_21 (.A0(count1[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count1[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3707), .COUT(n3708), .S0(n111), .S1(n110));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114_add_4_21.INIT0 = 16'hfaaa;
    defparam count1_1114_add_4_21.INIT1 = 16'hfaaa;
    defparam count1_1114_add_4_21.INJECT1_0 = "NO";
    defparam count1_1114_add_4_21.INJECT1_1 = "NO";
    FD1P3IX count_1112__i3 (.D(n92), .SP(clk_enable_43), .CD(n3310), .CK(clk), 
            .Q(n15)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(211[14:19])
    defparam count_1112__i3.GSR = "DISABLED";
    FD1P3IX count_1112__i4 (.D(n91), .SP(clk_enable_43), .CD(n3310), .CK(clk), 
            .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(211[14:19])
    defparam count_1112__i4.GSR = "DISABLED";
    CCU2D count1_1114_add_4_19 (.A0(count1[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count1[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3706), .COUT(n3707), .S0(n113), .S1(n112));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114_add_4_19.INIT0 = 16'hfaaa;
    defparam count1_1114_add_4_19.INIT1 = 16'hfaaa;
    defparam count1_1114_add_4_19.INJECT1_0 = "NO";
    defparam count1_1114_add_4_19.INJECT1_1 = "NO";
    PFUMX mux_792_Mux_0_i3 (.BLUT(n1_adj_587), .ALUT(n2), .C0(global_state[1]), 
          .Z(Q_7__N_37));
    FD1P3IX count_1112__i5 (.D(n90), .SP(clk_enable_43), .CD(n3310), .CK(clk), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(211[14:19])
    defparam count_1112__i5.GSR = "DISABLED";
    FD1P3IX count_1112__i6 (.D(n89), .SP(clk_enable_43), .CD(n3310), .CK(clk), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(211[14:19])
    defparam count_1112__i6.GSR = "DISABLED";
    PFUMX i2013 (.BLUT(n5), .ALUT(n20), .C0(global_state[0]), .Z(Q_7__N_45));
    FD1P3IX count_1112__i7 (.D(n88), .SP(clk_enable_43), .CD(n3310), .CK(clk), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(211[14:19])
    defparam count_1112__i7.GSR = "DISABLED";
    CCU2D count1_1114_add_4_17 (.A0(count1[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count1[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3705), .COUT(n3706), .S0(n115), .S1(n114));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114_add_4_17.INIT0 = 16'hfaaa;
    defparam count1_1114_add_4_17.INIT1 = 16'hfaaa;
    defparam count1_1114_add_4_17.INJECT1_0 = "NO";
    defparam count1_1114_add_4_17.INJECT1_1 = "NO";
    FD1P3IX count_1112__i8 (.D(n87), .SP(clk_enable_43), .CD(n3310), .CK(clk), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(211[14:19])
    defparam count_1112__i8.GSR = "DISABLED";
    FD1P3IX count_1112__i9 (.D(n86), .SP(clk_enable_43), .CD(n3310), .CK(clk), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(211[14:19])
    defparam count_1112__i9.GSR = "DISABLED";
    CCU2D count1_1114_add_4_15 (.A0(count1[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count1[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3704), .COUT(n3705), .S0(n117), .S1(n116));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114_add_4_15.INIT0 = 16'hfaaa;
    defparam count1_1114_add_4_15.INIT1 = 16'hfaaa;
    defparam count1_1114_add_4_15.INJECT1_0 = "NO";
    defparam count1_1114_add_4_15.INJECT1_1 = "NO";
    PFUMX mux_794_Mux_0_i3 (.BLUT(n1_adj_591), .ALUT(n2_adj_588), .C0(global_state[1]), 
          .Z(Q_7__N_41));
    LUT4 n3899_bdd_4_lut_2557 (.A(CI_c_19), .B(CI_c_21), .C(CI_c_20), 
         .D(CI_c_18), .Z(n3971)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B (C+!(D)))) */ ;
    defparam n3899_bdd_4_lut_2557.init = 16'hdafb;
    FD1P3IX count_1112__i10 (.D(n85), .SP(clk_enable_43), .CD(n3310), 
            .CK(clk), .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(211[14:19])
    defparam count_1112__i10.GSR = "DISABLED";
    LUT4 n3899_bdd_4_lut_2563 (.A(CI_c_18), .B(CI_c_19), .C(CI_c_21), 
         .D(CI_c_20), .Z(n3974)) /* synthesis lut_function=(!((B (C+!(D))+!B ((D)+!C))+!A)) */ ;
    defparam n3899_bdd_4_lut_2563.init = 16'h0820;
    LUT4 i2544_4_lut_4_lut_then_3_lut (.A(reset_c), .B(bcd_out_15__N_429), 
         .C(bcd_out_15__N_425), .Z(n4067)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i2544_4_lut_4_lut_then_3_lut.init = 16'hefef;
    CCU2D count1_1114_add_4_13 (.A0(count1[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count1[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3703), .COUT(n3704), .S0(n119), .S1(n118));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114_add_4_13.INIT0 = 16'hfaaa;
    defparam count1_1114_add_4_13.INIT1 = 16'hfaaa;
    defparam count1_1114_add_4_13.INJECT1_0 = "NO";
    defparam count1_1114_add_4_13.INJECT1_1 = "NO";
    LUT4 i2544_4_lut_4_lut_else_3_lut (.A(reset_c), .B(bcd_out_15__N_429), 
         .C(bcd_out_15__N_425), .D(bcd_out_15__N_421), .Z(n4066)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i2544_4_lut_4_lut_else_3_lut.init = 16'hfffb;
    CCU2D count1_1114_add_4_11 (.A0(count1[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count1[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3702), .COUT(n3703), .S0(n121), .S1(n120));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114_add_4_11.INIT0 = 16'hfaaa;
    defparam count1_1114_add_4_11.INIT1 = 16'hfaaa;
    defparam count1_1114_add_4_11.INJECT1_0 = "NO";
    defparam count1_1114_add_4_11.INJECT1_1 = "NO";
    CCU2D count1_1114_add_4_9 (.A0(n18_adj_597), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count1[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3701), .COUT(n3702), .S0(n123), .S1(n122));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114_add_4_9.INIT0 = 16'hfaaa;
    defparam count1_1114_add_4_9.INIT1 = 16'hfaaa;
    defparam count1_1114_add_4_9.INJECT1_0 = "NO";
    defparam count1_1114_add_4_9.INJECT1_1 = "NO";
    LUT4 i2542_2_lut (.A(reset_c), .B(n3660), .Z(n3310)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i2542_2_lut.init = 16'h4444;
    FD1P3IX count_1112__i11 (.D(n84), .SP(clk_enable_43), .CD(n3310), 
            .CK(clk), .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(211[14:19])
    defparam count_1112__i11.GSR = "DISABLED";
    FD1P3IX count_1112__i12 (.D(n83), .SP(clk_enable_43), .CD(n3310), 
            .CK(clk), .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(211[14:19])
    defparam count_1112__i12.GSR = "DISABLED";
    FD1P3IX count_1112__i13 (.D(n82), .SP(clk_enable_43), .CD(n3310), 
            .CK(clk), .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(211[14:19])
    defparam count_1112__i13.GSR = "DISABLED";
    CCU2D count1_1114_add_4_7 (.A0(n20_adj_595), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n19), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3700), .COUT(n3701), .S0(n125), .S1(n124));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114_add_4_7.INIT0 = 16'hfaaa;
    defparam count1_1114_add_4_7.INIT1 = 16'hfaaa;
    defparam count1_1114_add_4_7.INJECT1_0 = "NO";
    defparam count1_1114_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(clk_0), .B(n3660), .Z(clk_0_N_227)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i2280_4_lut (.A(count[16]), .B(count[17]), .C(n3656), .D(count[15]), 
         .Z(n3660)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i2280_4_lut.init = 16'hccc8;
    FD1P3IX count_1112__i14 (.D(n81), .SP(clk_enable_43), .CD(n3310), 
            .CK(clk), .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(211[14:19])
    defparam count_1112__i14.GSR = "DISABLED";
    LUT4 i2276_4_lut (.A(count[13]), .B(count[14]), .C(n3642), .D(count[12]), 
         .Z(n3656)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i2276_4_lut.init = 16'hccc8;
    LUT4 i2262_4_lut (.A(count[10]), .B(count[11]), .C(n3711), .D(count[9]), 
         .Z(n3642)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i2262_4_lut.init = 16'hccc8;
    LUT4 i4_4_lut (.A(count[6]), .B(count[8]), .C(count[7]), .D(n6_adj_599), 
         .Z(n3711)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    FD1P3IX count1_1114__i1 (.D(n129), .SP(clk_enable_43), .CD(n3291), 
            .CK(clk), .Q(n24)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114__i1.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_56 (.A(count[4]), .B(count[5]), .Z(n6_adj_599)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_56.init = 16'h8888;
    FD1P3IX count1_1114__i2 (.D(n128), .SP(clk_enable_43), .CD(n3291), 
            .CK(clk), .Q(n23)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114__i2.GSR = "DISABLED";
    FD1P3AX sel_i0_i1 (.D(temp_control[0]), .SP(clk_enable_43), .CK(clk_0), 
            .Q(sel_c_0));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(177[3] 199[10])
    defparam sel_i0_i1.GSR = "DISABLED";
    FD1P3IX count1_1114__i3 (.D(n127), .SP(clk_enable_43), .CD(n3291), 
            .CK(clk), .Q(n22_adj_592)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114__i3.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_57 (.A(led_c), .B(n3654), .Z(led_N_225)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_57.init = 16'h6666;
    LUT4 i14_4_lut (.A(de[1]), .B(un[1]), .C(temp_control[3]), .D(temp_control[2]), 
         .Z(n6)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(180[4] 197[13])
    defparam i14_4_lut.init = 16'hcacf;
    FD1P3IX count1_1114__i4 (.D(n126), .SP(clk_enable_43), .CD(n3291), 
            .CK(clk), .Q(n21_adj_594)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114__i4.GSR = "DISABLED";
    LUT4 i2274_4_lut (.A(count1[23]), .B(count1[24]), .C(n3712), .D(count1[22]), 
         .Z(n3654)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i2274_4_lut.init = 16'hccc8;
    FD1P3IX count1_1114__i5 (.D(n125), .SP(clk_enable_43), .CD(n3291), 
            .CK(clk), .Q(n20_adj_595)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114__i5.GSR = "DISABLED";
    FD1P3AX sel_i0_i2 (.D(temp_control[1]), .SP(clk_enable_43), .CK(clk_0), 
            .Q(sel_c_1));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(177[3] 199[10])
    defparam sel_i0_i2.GSR = "DISABLED";
    FD1P3IX count_1112__i15 (.D(n80), .SP(clk_enable_43), .CD(n3310), 
            .CK(clk), .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(211[14:19])
    defparam count_1112__i15.GSR = "DISABLED";
    LUT4 i2_4_lut (.A(count1[21]), .B(n5_adj_600), .C(count1[20]), .D(n6_adj_601), 
         .Z(n3712)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut.init = 16'ha080;
    FD1P3IX count1_1114__i6 (.D(n124), .SP(clk_enable_43), .CD(n3291), 
            .CK(clk), .Q(n19)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114__i6.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(count1[15]), .B(count1[19]), .C(count1[16]), .D(n4), 
         .Z(n5_adj_600)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut.init = 16'hfcec;
    LUT4 i2_2_lut (.A(count1[17]), .B(count1[18]), .Z(n6_adj_601)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i2534_4_lut (.A(n3897), .B(n4059), .C(n3907), .D(CI_c_21), 
         .Z(instruction_2__N_118[0])) /* synthesis lut_function=(A ((C (D))+!B)+!A ((C+!(D))+!B)) */ ;
    defparam i2534_4_lut.init = 16'hf377;
    LUT4 i1_4_lut_adj_58 (.A(n3716), .B(count1[14]), .C(count1[13]), .D(count1[12]), 
         .Z(n4)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_58.init = 16'hfcec;
    CCU2D count1_1114_add_4_5 (.A0(n22_adj_592), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n21_adj_594), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3699), .COUT(n3700), .S0(n127), .S1(n126));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114_add_4_5.INIT0 = 16'hfaaa;
    defparam count1_1114_add_4_5.INIT1 = 16'hfaaa;
    defparam count1_1114_add_4_5.INJECT1_0 = "NO";
    defparam count1_1114_add_4_5.INJECT1_1 = "NO";
    CCU2D count1_1114_add_4_3 (.A0(n24), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n23), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3698), 
          .COUT(n3699), .S0(n129), .S1(n128));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114_add_4_3.INIT0 = 16'hfaaa;
    defparam count1_1114_add_4_3.INIT1 = 16'hfaaa;
    defparam count1_1114_add_4_3.INJECT1_0 = "NO";
    defparam count1_1114_add_4_3.INJECT1_1 = "NO";
    CCU2D count1_1114_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n25), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3698), .S1(n130));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114_add_4_1.INIT0 = 16'hF000;
    defparam count1_1114_add_4_1.INIT1 = 16'h0555;
    defparam count1_1114_add_4_1.INJECT1_0 = "NO";
    defparam count1_1114_add_4_1.INJECT1_1 = "NO";
    CCU2D count_1112_add_4_19 (.A0(count[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3697), .S0(n78));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(211[14:19])
    defparam count_1112_add_4_19.INIT0 = 16'hfaaa;
    defparam count_1112_add_4_19.INIT1 = 16'h0000;
    defparam count_1112_add_4_19.INJECT1_0 = "NO";
    defparam count_1112_add_4_19.INJECT1_1 = "NO";
    CCU2D count_1112_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3695), .COUT(n3696), .S0(n82), .S1(n81));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(211[14:19])
    defparam count_1112_add_4_15.INIT0 = 16'hfaaa;
    defparam count_1112_add_4_15.INIT1 = 16'hfaaa;
    defparam count_1112_add_4_15.INJECT1_0 = "NO";
    defparam count_1112_add_4_15.INJECT1_1 = "NO";
    LUT4 i2497_3_lut (.A(CI_c_18), .B(CI_c_19), .C(CI_c_20), .Z(n3907)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2497_3_lut.init = 16'hfefe;
    LUT4 i2_4_lut_adj_59 (.A(count1[11]), .B(count1[8]), .C(count1[10]), 
         .D(count1[9]), .Z(n3716)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_59.init = 16'ha080;
    CCU2D count_1112_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3694), .COUT(n3695), .S0(n84), .S1(n83));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(211[14:19])
    defparam count_1112_add_4_13.INIT0 = 16'hfaaa;
    defparam count_1112_add_4_13.INIT1 = 16'hfaaa;
    defparam count_1112_add_4_13.INJECT1_0 = "NO";
    defparam count_1112_add_4_13.INJECT1_1 = "NO";
    LUT4 i1804_3_lut (.A(n3170), .B(un[6]), .C(temp_control[3]), .Z(n3171)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(180[4] 197[13])
    defparam i1804_3_lut.init = 16'hcaca;
    LUT4 i1803_4_lut (.A(ce[6]), .B(de[6]), .C(temp_control[2]), .D(temp_control[1]), 
         .Z(n3170)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(180[4] 197[13])
    defparam i1803_4_lut.init = 16'hcac0;
    CCU2D count_1112_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3693), .COUT(n3694), .S0(n86), .S1(n85));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(211[14:19])
    defparam count_1112_add_4_11.INIT0 = 16'hfaaa;
    defparam count_1112_add_4_11.INIT1 = 16'hfaaa;
    defparam count_1112_add_4_11.INJECT1_0 = "NO";
    defparam count_1112_add_4_11.INJECT1_1 = "NO";
    LUT4 reduce_or_862_i1_2_lut (.A(temp_control[3]), .B(n1719), .Z(n1735)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(180[4] 197[13])
    defparam reduce_or_862_i1_2_lut.init = 16'heeee;
    FD1P3IX count_1112__i16 (.D(n79), .SP(clk_enable_43), .CD(n3310), 
            .CK(clk), .Q(count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(211[14:19])
    defparam count_1112__i16.GSR = "DISABLED";
    LUT4 i1802_3_lut (.A(n3168), .B(un[5]), .C(temp_control[3]), .Z(n3169)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(180[4] 197[13])
    defparam i1802_3_lut.init = 16'hcaca;
    LUT4 i1506_1_lut_rep_99 (.A(global_state[1]), .Z(n4056)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(139[3] 170[12])
    defparam i1506_1_lut_rep_99.init = 16'h5555;
    LUT4 i1801_4_lut (.A(ce[5]), .B(de[5]), .C(temp_control[2]), .D(temp_control[1]), 
         .Z(n3168)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(180[4] 197[13])
    defparam i1801_4_lut.init = 16'hcacf;
    FD1P3AX sel_i0_i3 (.D(temp_control[2]), .SP(clk_enable_43), .CK(clk_0), 
            .Q(sel_c_2));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(177[3] 199[10])
    defparam sel_i0_i3.GSR = "DISABLED";
    FD1P3AX sel_i0_i4 (.D(temp_control[3]), .SP(clk_enable_43), .CK(clk_0), 
            .Q(sel_c_3));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(177[3] 199[10])
    defparam sel_i0_i4.GSR = "DISABLED";
    VLO i1 (.Z(GND_net));
    LUT4 i1586_2_lut_rep_97_2_lut (.A(global_state[1]), .B(global_state[0]), 
         .Z(n4054)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(139[3] 170[12])
    defparam i1586_2_lut_rep_97_2_lut.init = 16'h4444;
    FD1P3IX count1_1114__i7 (.D(n123), .SP(clk_enable_43), .CD(n3291), 
            .CK(clk), .Q(n18_adj_597)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114__i7.GSR = "DISABLED";
    LUT4 i1_2_lut_2_lut (.A(global_state[1]), .B(Q_7__N_40[3]), .Z(n3)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(139[3] 170[12])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i1910_1_lut_2_lut_2_lut (.A(global_state[1]), .B(global_state[0]), 
         .Z(n3284)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(139[3] 170[12])
    defparam i1910_1_lut_2_lut_2_lut.init = 16'hbbbb;
    LUT4 i1_2_lut_2_lut_adj_60 (.A(global_state[1]), .B(Q_7__N_40[4]), .Z(n7)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(139[3] 170[12])
    defparam i1_2_lut_2_lut_adj_60.init = 16'h4444;
    LUT4 i1_2_lut_2_lut_adj_61 (.A(global_state[1]), .B(Q_7__N_40[0]), .Z(n9)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(139[3] 170[12])
    defparam i1_2_lut_2_lut_adj_61.init = 16'h4444;
    LUT4 i1_2_lut_2_lut_adj_62 (.A(global_state[1]), .B(Q_7__N_40[5]), .Z(n5)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(139[3] 170[12])
    defparam i1_2_lut_2_lut_adj_62.init = 16'h4444;
    LUT4 i1_3_lut_rep_100 (.A(instruction[2]), .B(instruction[0]), .C(instruction[1]), 
         .Z(n4057)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam i1_3_lut_rep_100.init = 16'h0202;
    LUT4 i1_2_lut_rep_96_4_lut (.A(instruction[2]), .B(instruction[0]), 
         .C(instruction[1]), .D(global_state[1]), .Z(n4053)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam i1_2_lut_rep_96_4_lut.init = 16'h0200;
    FD1P3IX count_1112__i17 (.D(n78), .SP(clk_enable_43), .CD(n3310), 
            .CK(clk), .Q(count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(211[14:19])
    defparam count_1112__i17.GSR = "DISABLED";
    LUT4 i1510_1_lut_rep_101 (.A(reset_c), .Z(clk_enable_43)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1510_1_lut_rep_101.init = 16'h5555;
    FD1P3IX count1_1114__i8 (.D(n122), .SP(clk_enable_43), .CD(n3291), 
            .CK(clk), .Q(count1[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114__i8.GSR = "DISABLED";
    LUT4 i2201_2_lut_rep_79_3_lut_4_lut_4_lut (.A(reset_c), .B(n4055), .C(bcd_out_15__N_403), 
         .D(n4042), .Z(n4036)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i2201_2_lut_rep_79_3_lut_4_lut_4_lut.init = 16'h4440;
    FD1P3IX count1_1114__i9 (.D(n121), .SP(clk_enable_43), .CD(n3291), 
            .CK(clk), .Q(count1[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114__i9.GSR = "DISABLED";
    FD1P3IX count1_1114__i10 (.D(n120), .SP(clk_enable_43), .CD(n3291), 
            .CK(clk), .Q(count1[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114__i10.GSR = "DISABLED";
    LUT4 bcd_out_15__N_457_bdd_4_lut_4_lut (.A(reset_c), .B(Q[0]), .C(n4019), 
         .D(n4024), .Z(n3989)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A !(B (C (D)+!C !(D))+!B (C+(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam bcd_out_15__N_457_bdd_4_lut_4_lut.init = 16'h733c;
    FD1P3IX count1_1114__i11 (.D(n119), .SP(clk_enable_43), .CD(n3291), 
            .CK(clk), .Q(count1[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114__i11.GSR = "DISABLED";
    PFUMX i2022 (.BLUT(n7), .ALUT(n22), .C0(global_state[0]), .Z(Q_7__N_49));
    LUT4 i1613_2_lut_3_lut_4_lut_3_lut (.A(reset_c), .B(n4025), .C(n4024), 
         .Z(n2974)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1613_2_lut_3_lut_4_lut_3_lut.init = 16'hfbfb;
    FD1P3IX count1_1114__i12 (.D(n118), .SP(clk_enable_43), .CD(n3291), 
            .CK(clk), .Q(count1[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114__i12.GSR = "DISABLED";
    LUT4 i1057_1_lut_2_lut_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_425), 
         .C(bcd_out_15__N_421), .D(n4031), .Z(DISPLAY_6__N_459_adj_609[4])) /* synthesis lut_function=(A+(B (C (D)+!C !(D))+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1057_1_lut_2_lut_4_lut_4_lut_4_lut.init = 16'hebaf;
    FD1P3IX count1_1114__i13 (.D(n117), .SP(clk_enable_43), .CD(n3291), 
            .CK(clk), .Q(count1[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114__i13.GSR = "DISABLED";
    LUT4 i2200_2_lut_rep_53_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_425), 
         .C(bcd_out_15__N_421), .D(n4031), .Z(n4010)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i2200_2_lut_rep_53_4_lut_4_lut_4_lut.init = 16'h1450;
    FD1P3AX display_i0_i2 (.D(n6), .SP(clk_0_enable_11), .CK(clk_0), .Q(display_c_1));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(177[3] 199[10])
    defparam display_i0_i2.GSR = "DISABLED";
    LUT4 i2193_2_lut_rep_66_3_lut_3_lut (.A(reset_c), .B(n4029), .C(Q[1]), 
         .Z(n4023)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i2193_2_lut_rep_66_3_lut_3_lut.init = 16'h1414;
    LUT4 i1922_1_lut_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n4055), .C(bcd_out_15__N_403), 
         .D(n4042), .Z(n3296)) /* synthesis lut_function=(A+!(B (C+(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1922_1_lut_2_lut_3_lut_4_lut_4_lut.init = 16'hbbbf;
    FD1P3IX count1_1114__i14 (.D(n116), .SP(clk_enable_43), .CD(n3291), 
            .CK(clk), .Q(count1[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114__i14.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_102 (.A(CI_c_22), .B(CI_c_23), .Z(n4059)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(148[5] 161[14])
    defparam i1_2_lut_rep_102.init = 16'h2222;
    FD1P3IX count1_1114__i0 (.D(n130), .SP(clk_enable_43), .CD(n3291), 
            .CK(clk), .Q(n25)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114__i0.GSR = "DISABLED";
    ROM ROM_imp (.data_out_23__N_466({data_out_23__N_466}), .led_c(led_c), 
        .n4144(n4144), .address_bus({address_bus}), .reset_c(reset_c), 
        .GND_net(GND_net), .VCC_net(VCC_net));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(124[10:13])
    LUT4 n311_bdd_2_lut_2564_3_lut (.A(CI_c_22), .B(CI_c_23), .C(n3974), 
         .Z(instruction_2__N_118[1])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(148[5] 161[14])
    defparam n311_bdd_2_lut_2564_3_lut.init = 16'h2020;
    FD1P3IX count1_1114__i15 (.D(n115), .SP(clk_enable_43), .CD(n3291), 
            .CK(clk), .Q(count1[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114__i15.GSR = "DISABLED";
    FD1P3IX count1_1114__i16 (.D(n114), .SP(clk_enable_43), .CD(n3291), 
            .CK(clk), .Q(count1[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114__i16.GSR = "DISABLED";
    LUT4 n306_bdd_2_lut_2558_3_lut (.A(CI_c_22), .B(CI_c_23), .C(n3971), 
         .Z(instruction_2__N_118[2])) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(148[5] 161[14])
    defparam n306_bdd_2_lut_2558_3_lut.init = 16'hfdfd;
    FD1P3IX count1_1114__i17 (.D(n113), .SP(clk_enable_43), .CD(n3291), 
            .CK(clk), .Q(count1[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114__i17.GSR = "DISABLED";
    LUT4 i1508_1_lut_rep_103 (.A(global_state[0]), .Z(global_state_0_derived_64)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(139[3] 170[12])
    defparam i1508_1_lut_rep_103.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_3_lut (.A(global_state[0]), .B(n4057), .C(global_state[1]), 
         .Z(Q_7__N_69)) /* synthesis lut_function=((B (C))+!A) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(139[3] 170[12])
    defparam i1_2_lut_3_lut_3_lut.init = 16'hd5d5;
    LUT4 i2064_2_lut_2_lut (.A(global_state[0]), .B(Q_7__N_40[2]), .Z(n1)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(139[3] 170[12])
    defparam i2064_2_lut_2_lut.init = 16'h4444;
    FD1P3IX count1_1114__i18 (.D(n112), .SP(clk_enable_43), .CD(n3291), 
            .CK(clk), .Q(count1[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114__i18.GSR = "DISABLED";
    LUT4 i2062_2_lut_2_lut (.A(global_state[0]), .B(Q_7__N_40[7]), .Z(n1_adj_587)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(139[3] 170[12])
    defparam i2062_2_lut_2_lut.init = 16'h4444;
    FD1P3IX count1_1114__i19 (.D(n111), .SP(clk_enable_43), .CD(n3291), 
            .CK(clk), .Q(count1[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114__i19.GSR = "DISABLED";
    FD1P3IX count1_1114__i20 (.D(n110), .SP(clk_enable_43), .CD(n3291), 
            .CK(clk), .Q(count1[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(218[15:21])
    defparam count1_1114__i20.GSR = "DISABLED";
    LUT4 i2063_2_lut_2_lut (.A(global_state[0]), .B(Q_7__N_40[6]), .Z(n1_adj_591)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(139[3] 170[12])
    defparam i2063_2_lut_2_lut.init = 16'h4444;
    LUT4 i2065_2_lut_2_lut (.A(global_state[0]), .B(Q_7__N_40[1]), .Z(n1_adj_593)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(139[3] 170[12])
    defparam i2065_2_lut_2_lut.init = 16'h4444;
    FD1P3IX count_1112__i0 (.D(n95), .SP(clk_enable_43), .CD(n3310), .CK(clk), 
            .Q(n18)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(211[14:19])
    defparam count_1112__i0.GSR = "DISABLED";
    FD1S1I instruction_2__I_1_i1 (.D(instruction_2__N_118[0]), .CK(instruction_2__N_123), 
           .CD(n3284), .Q(instruction[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam instruction_2__I_1_i1.GSR = "DISABLED";
    PFUMX i2004 (.BLUT(n3), .ALUT(n21), .C0(global_state[0]), .Z(Q_7__N_53));
    CCU2D count_1112_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3692), .COUT(n3693), .S0(n88), .S1(n87));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(211[14:19])
    defparam count_1112_add_4_9.INIT0 = 16'hfaaa;
    defparam count_1112_add_4_9.INIT1 = 16'hfaaa;
    defparam count_1112_add_4_9.INJECT1_0 = "NO";
    defparam count_1112_add_4_9.INJECT1_1 = "NO";
    CCU2D count_1112_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3691), .COUT(n3692), .S0(n90), .S1(n89));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(211[14:19])
    defparam count_1112_add_4_7.INIT0 = 16'hfaaa;
    defparam count_1112_add_4_7.INIT1 = 16'hfaaa;
    defparam count_1112_add_4_7.INJECT1_0 = "NO";
    defparam count_1112_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_63 (.A(CI_c_18), .B(CI_c_19), .Z(n3897)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(148[5] 161[14])
    defparam i1_2_lut_adj_63.init = 16'h8888;
    CCU2D count_1112_add_4_5 (.A0(n15), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3690), 
          .COUT(n3691), .S0(n92), .S1(n91));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(211[14:19])
    defparam count_1112_add_4_5.INIT0 = 16'hfaaa;
    defparam count_1112_add_4_5.INIT1 = 16'hfaaa;
    defparam count_1112_add_4_5.INJECT1_0 = "NO";
    defparam count_1112_add_4_5.INJECT1_1 = "NO";
    LUT4 i1673_3_lut_4_lut (.A(ce[3]), .B(temp_control[1]), .C(temp_control[2]), 
         .D(de[0]), .Z(n3036)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(180[4] 197[13])
    defparam i1673_3_lut_4_lut.init = 16'hfb0b;
    LUT4 i1797_3_lut_4_lut (.A(ce[3]), .B(temp_control[1]), .C(temp_control[2]), 
         .D(de[3]), .Z(n3164)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(180[4] 197[13])
    defparam i1797_3_lut_4_lut.init = 16'hfb0b;
    LUT4 i1800_3_lut (.A(n3166), .B(un[4]), .C(temp_control[3]), .Z(n3167)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(180[4] 197[13])
    defparam i1800_3_lut.init = 16'hcaca;
    GSR GSR_INST (.GSR(clk_enable_43));
    CCU2D count_1112_add_4_3 (.A0(n17), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n16), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3689), 
          .COUT(n3690), .S0(n94), .S1(n93));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(211[14:19])
    defparam count_1112_add_4_3.INIT0 = 16'hfaaa;
    defparam count_1112_add_4_3.INIT1 = 16'hfaaa;
    defparam count_1112_add_4_3.INJECT1_0 = "NO";
    defparam count_1112_add_4_3.INJECT1_1 = "NO";
    LUT4 i1799_4_lut (.A(ce[4]), .B(de[4]), .C(temp_control[2]), .D(temp_control[1]), 
         .Z(n3166)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(180[4] 197[13])
    defparam i1799_4_lut.init = 16'hcacf;
    CCU2D count_1112_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n18), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3689), .S1(n95));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(211[14:19])
    defparam count_1112_add_4_1.INIT0 = 16'hF000;
    defparam count_1112_add_4_1.INIT1 = 16'h0555;
    defparam count_1112_add_4_1.INJECT1_0 = "NO";
    defparam count_1112_add_4_1.INJECT1_1 = "NO";
    CCU2D add_721_9 (.A0(bcd_out_15__N_346), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3688), .S0(Q_7__N_39[7]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_721_9.INIT0 = 16'h5555;
    defparam add_721_9.INIT1 = 16'h0000;
    defparam add_721_9.INJECT1_0 = "NO";
    defparam add_721_9.INJECT1_1 = "NO";
    LUT4 i1798_3_lut (.A(n3164), .B(un[3]), .C(temp_control[3]), .Z(n3165)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(180[4] 197[13])
    defparam i1798_3_lut.init = 16'hcaca;
    LUT4 i1796_3_lut (.A(n3162), .B(un[2]), .C(temp_control[3]), .Z(n3163)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(180[4] 197[13])
    defparam i1796_3_lut.init = 16'hcaca;
    LUT4 i1795_4_lut (.A(ce[2]), .B(de[2]), .C(temp_control[2]), .D(temp_control[1]), 
         .Z(n3162)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(180[4] 197[13])
    defparam i1795_4_lut.init = 16'hcacf;
    LUT4 i1507_2_lut (.A(global_state[0]), .B(global_state[1]), .Z(instruction_2__N_123)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(139[3] 170[12])
    defparam i1507_2_lut.init = 16'h6666;
    CCU2D add_721_7 (.A0(Q[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bcd_out_15__N_348), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3687), .COUT(n3688), .S0(Q_7__N_39[5]), .S1(Q_7__N_39[6]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_721_7.INIT0 = 16'h5555;
    defparam add_721_7.INIT1 = 16'h5555;
    defparam add_721_7.INJECT1_0 = "NO";
    defparam add_721_7.INJECT1_1 = "NO";
    LUT4 n19_bdd_4_lut (.A(n4053), .B(Q_7__N_39[0]), .C(n9), .D(global_state[0]), 
         .Z(Q_7__N_65)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n19_bdd_4_lut.init = 16'h88f0;
    CCU2D add_721_5 (.A0(Q[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Q[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3686), 
          .COUT(n3687), .S0(Q_7__N_39[3]), .S1(Q_7__N_39[4]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_721_5.INIT0 = 16'h5555;
    defparam add_721_5.INIT1 = 16'h5555;
    defparam add_721_5.INJECT1_0 = "NO";
    defparam add_721_5.INJECT1_1 = "NO";
    Bin2BCD imp_binBCD (.bcd_out_15__N_346(bcd_out_15__N_346), .bcd_out_15__N_403(bcd_out_15__N_403), 
            .n4042(n4042), .bcd_out_15__N_425(bcd_out_15__N_425), .\Q[4] (Q[4]), 
            .reset_c(reset_c), .n4011(n4011), .n4025(n4025), .\Q[0] (Q[0]), 
            .n4024(n4024), .n3985(n3985), .n3010(n3010), .bcd_out_15__N_429(bcd_out_15__N_429), 
            .n4035(n4035), .bcd_out_15__N_421(bcd_out_15__N_421), .n4032(n4032), 
            .n3609(n3609), .n4029(n4029), .n4018(n4018), .n4023(n4023), 
            .n3713(n3713), .n4014(n4014), .\Q[1] (Q[1]), .n2906(n2906), 
            .\Q[2] (Q[2]), .n3199(n3199), .n2966(n2966), .n4013(n4013), 
            .n3615(n3615), .n3564(n3564), .n4055(n4055), .\DISPLAY_6__N_459[5] (DISPLAY_6__N_459_adj_609[5]), 
            .n2939(n2939), .n4031(n4031), .n3911(n3911), .n2983(n2983), 
            .n4019(n4019), .\Q[5] (Q[5]), .bcd_out_15__N_348(bcd_out_15__N_348), 
            .n4062(n4062), .n4009(n4009), .n3909(n3909), .n2981(n2981), 
            .\DISPLAY_6__N_459[4] (DISPLAY_6__N_459[4]), .n3205(n3205), 
            .\DISPLAY_6__N_459[4]_adj_1 (DISPLAY_6__N_459_adj_605[4]), .n4015(n4015), 
            .\DISPLAY_6__N_459[6] (DISPLAY_6__N_459[6]), .\Q[3] (Q[3]), 
            .n3984(n3984), .n3183(n3183));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(116[13:20])
    CCU2D add_721_3 (.A0(Q[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Q[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3685), 
          .COUT(n3686), .S0(Q_7__N_39[1]), .S1(Q_7__N_39[2]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_721_3.INIT0 = 16'h5555;
    defparam add_721_3.INIT1 = 16'h5555;
    defparam add_721_3.INJECT1_0 = "NO";
    defparam add_721_3.INJECT1_1 = "NO";
    CCU2D add_721_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Q[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n3685), 
          .S1(Q_7__N_39[0]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_721_1.INIT0 = 16'hF000;
    defparam add_721_1.INIT1 = 16'h5555;
    defparam add_721_1.INJECT1_0 = "NO";
    defparam add_721_1.INJECT1_1 = "NO";
    LUT4 i1631_2_lut (.A(global_state[0]), .B(global_state[1]), .Z(n2992)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(139[3] 170[12])
    defparam i1631_2_lut.init = 16'heeee;
    CCU2D Q_7__I_0_715_9 (.A0(bcd_out_15__N_346), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3684), .S0(Q_7__N_40[7]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam Q_7__I_0_715_9.INIT0 = 16'h5aaa;
    defparam Q_7__I_0_715_9.INIT1 = 16'h0000;
    defparam Q_7__I_0_715_9.INJECT1_0 = "NO";
    defparam Q_7__I_0_715_9.INJECT1_1 = "NO";
    CCU2D Q_7__I_0_715_7 (.A0(Q[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bcd_out_15__N_348), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3683), .COUT(n3684), .S0(Q_7__N_40[5]), .S1(Q_7__N_40[6]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam Q_7__I_0_715_7.INIT0 = 16'h5aaa;
    defparam Q_7__I_0_715_7.INIT1 = 16'h5aaa;
    defparam Q_7__I_0_715_7.INJECT1_0 = "NO";
    defparam Q_7__I_0_715_7.INJECT1_1 = "NO";
    CCU2D Q_7__I_0_715_5 (.A0(Q[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Q[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3682), 
          .COUT(n3683), .S0(Q_7__N_40[3]), .S1(Q_7__N_40[4]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam Q_7__I_0_715_5.INIT0 = 16'h5aaa;
    defparam Q_7__I_0_715_5.INIT1 = 16'h5aaa;
    defparam Q_7__I_0_715_5.INJECT1_0 = "NO";
    defparam Q_7__I_0_715_5.INJECT1_1 = "NO";
    LUT4 i2524_2_lut (.A(reset_c), .B(n3654), .Z(n3291)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i2524_2_lut.init = 16'h4444;
    PFUMX mux_798_Mux_0_i3 (.BLUT(n1), .ALUT(n2_adj_596), .C0(global_state[1]), 
          .Z(Q_7__N_57));
    CCU2D Q_7__I_0_715_3 (.A0(Q[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Q[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3681), 
          .COUT(n3682), .S0(Q_7__N_40[1]), .S1(Q_7__N_40[2]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam Q_7__I_0_715_3.INIT0 = 16'h5aaa;
    defparam Q_7__I_0_715_3.INIT1 = 16'h5aaa;
    defparam Q_7__I_0_715_3.INJECT1_0 = "NO";
    defparam Q_7__I_0_715_3.INJECT1_1 = "NO";
    CCU2D Q_7__I_0_715_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Q[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n3681), 
          .S1(Q_7__N_40[0]));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam Q_7__I_0_715_1.INIT0 = 16'hF000;
    defparam Q_7__I_0_715_1.INIT1 = 16'h5555;
    defparam Q_7__I_0_715_1.INJECT1_0 = "NO";
    defparam Q_7__I_0_715_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_64 (.A(global_state[1]), .B(n4057), .C(Q_7__N_39[3]), 
         .Z(n21)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam i1_2_lut_3_lut_adj_64.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_adj_65 (.A(global_state[1]), .B(n4057), .C(Q_7__N_39[4]), 
         .Z(n22)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam i1_2_lut_3_lut_adj_65.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_adj_66 (.A(global_state[1]), .B(n4057), .C(Q_7__N_39[5]), 
         .Z(n20)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam i1_2_lut_3_lut_adj_66.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_adj_67 (.A(global_state[0]), .B(n4057), .C(Q_7__N_39[1]), 
         .Z(n2_adj_598)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam i1_2_lut_3_lut_adj_67.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_adj_68 (.A(global_state[0]), .B(n4057), .C(Q_7__N_39[2]), 
         .Z(n2_adj_596)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam i1_2_lut_3_lut_adj_68.init = 16'h8080;
    LUT4 i2549_2_lut (.A(n1719), .B(reset_c), .Z(clk_0_enable_11)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(177[3] 199[10])
    defparam i2549_2_lut.init = 16'h1111;
    LUT4 i1674_3_lut (.A(n3036), .B(un[0]), .C(temp_control[3]), .Z(n3037)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(180[4] 197[13])
    defparam i1674_3_lut.init = 16'hcaca;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i1908_1_lut (.A(stop_run_c), .Z(led_c_enable_2)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(13[2:10])
    defparam i1908_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_adj_69 (.A(global_state[0]), .B(n4057), .C(Q_7__N_39[6]), 
         .Z(n2_adj_588)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(137[2] 171[14])
    defparam i1_2_lut_3_lut_adj_69.init = 16'h8080;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 m1_lut (.Z(n4144)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    bcdDisplay_U1 centenas (.\ce[6] (ce[6]), .clk_0(clk_0), .n4036(n4036), 
            .\ce[5] (ce[5]), .\DISPLAY_6__N_459[5] (DISPLAY_6__N_459_adj_609[5]), 
            .\ce[4] (ce[4]), .\DISPLAY_6__N_459[4] (DISPLAY_6__N_459_adj_609[4]), 
            .\ce[3] (ce[3]), .\ce[2] (ce[2]), .n3296(n3296), .n4010(n4010));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[11:21])
    PFUMX i2570 (.BLUT(n4066), .ALUT(n4067), .C0(n4035), .Z(n4068));
    bcdDisplay_U0 decenas (.de({de}), .clk_0(clk_0), .\DISPLAY_6__N_459[4] (DISPLAY_6__N_459_adj_605[4]), 
            .n4009(n4009), .n3984(n3984), .n3199(n3199), .n3911(n3911), 
            .n2906(n2906), .n3609(n3609), .n3205(n3205), .n2939(n2939), 
            .n2966(n2966), .n4011(n4011), .n4068(n4068), .reset_c(reset_c), 
            .n4032(n4032), .bcd_out_15__N_429(bcd_out_15__N_429), .n4035(n4035), 
            .n4013(n4013), .n3564(n3564), .n4014(n4014), .n4018(n4018));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(119[10:20])
    
endmodule
//
// Verilog Description of module \OSCH("26.60")(1,5) 
// module not written out since it is a black-box. 
//

//
// Verilog Description of module bcdDisplay
//

module bcdDisplay (un, clk_0, n4015, n3985, \DISPLAY_6__N_459[4] , 
            n3183, n3909, n2974, n3615, n2981, \DISPLAY_6__N_459[6] , 
            n3010, n2983, n4062, n3713, n3989, n4019, reset_c);
    output [6:0]un;
    input clk_0;
    input n4015;
    input n3985;
    input \DISPLAY_6__N_459[4] ;
    input n3183;
    input n3909;
    input n2974;
    input n3615;
    output n2981;
    input \DISPLAY_6__N_459[6] ;
    input n3010;
    input n2983;
    input n4062;
    input n3713;
    input n3989;
    input n4019;
    input reset_c;
    
    wire clk_0 /* synthesis is_clock=1, SET_AS_NETWORK=clk_0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(75[8:13])
    
    wire n3990;
    
    FD1S3JX DISPLAY_i5 (.D(n3985), .CK(clk_0), .PD(n4015), .Q(un[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i5.GSR = "ENABLED";
    FD1S3AY DISPLAY_i4 (.D(\DISPLAY_6__N_459[4] ), .CK(clk_0), .Q(un[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i4.GSR = "ENABLED";
    FD1S3JX DISPLAY_i0 (.D(n3909), .CK(clk_0), .PD(n3183), .Q(un[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i0.GSR = "ENABLED";
    PFUMX i1620 (.BLUT(n2974), .ALUT(n3615), .C0(n4015), .Z(n2981));
    FD1S3AX DISPLAY_i6 (.D(\DISPLAY_6__N_459[6] ), .CK(clk_0), .Q(un[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i6.GSR = "ENABLED";
    FD1S3JX DISPLAY_i1 (.D(n2983), .CK(clk_0), .PD(n3010), .Q(un[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i1.GSR = "ENABLED";
    FD1S3JX DISPLAY_i2 (.D(n3713), .CK(clk_0), .PD(n4062), .Q(un[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i2.GSR = "ENABLED";
    PFUMX i2561 (.BLUT(n3989), .ALUT(n4019), .C0(reset_c), .Z(n3990));
    FD1S3JX DISPLAY_i3 (.D(n3990), .CK(clk_0), .PD(n4015), .Q(un[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i3.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module ROM
//

module ROM (data_out_23__N_466, led_c, n4144, address_bus, reset_c, 
            GND_net, VCC_net);
    output [23:0]data_out_23__N_466;
    input led_c;
    input n4144;
    input [7:0]address_bus;
    input reset_c;
    input GND_net;
    input VCC_net;
    
    wire led_c /* synthesis is_clock=1, SET_AS_NETWORK=led_c */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(17[2:5])
    wire [23:0]data_out_23__N_515;
    
    wire data_out_23__N_467;
    
    LUT4 i899_2_lut (.A(data_out_23__N_515[21]), .B(data_out_23__N_467), 
         .Z(data_out_23__N_466[21])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i899_2_lut.init = 16'h8888;
    FD1S3AX data_out (.D(n4144), .CK(led_c), .Q(data_out_23__N_467));   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam data_out.GSR = "ENABLED";
    PDPW8KC mux_873 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
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
            .ADR12(GND_net), .CER(VCC_net), .OCER(VCC_net), .CLKR(led_c), 
            .CSR0(GND_net), .CSR1(GND_net), .CSR2(GND_net), .RST(reset_c), 
            .DO9(data_out_23__N_515[18]), .DO10(data_out_23__N_515[19]), 
            .DO11(data_out_23__N_515[20]), .DO12(data_out_23__N_515[21]), 
            .DO13(data_out_23__N_515[22]), .DO14(data_out_23__N_515[23]));
    defparam mux_873.DATA_WIDTH_W = 18;
    defparam mux_873.DATA_WIDTH_R = 18;
    defparam mux_873.REGMODE = "NOREG";
    defparam mux_873.CSDECODE_W = "0b000";
    defparam mux_873.CSDECODE_R = "0b000";
    defparam mux_873.GSR = "DISABLED";
    defparam mux_873.RESETMODE = "ASYNC";
    defparam mux_873.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_873.INIT_DATA = "STATIC";
    defparam mux_873.INITVAL_00 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0001300018000090001100019";
    defparam mux_873.INITVAL_01 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_873.INITVAL_02 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_873.INITVAL_03 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_873.INITVAL_04 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_873.INITVAL_05 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_873.INITVAL_06 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_873.INITVAL_07 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_873.INITVAL_08 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_873.INITVAL_09 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_873.INITVAL_0A = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_873.INITVAL_0B = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_873.INITVAL_0C = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_873.INITVAL_0D = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_873.INITVAL_0E = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_873.INITVAL_0F = "0x0000000000000000000000000000000000000000000000003F0003F0003F0003F0003F0003F0003F";
    defparam mux_873.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_873.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_873.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_873.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_873.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_873.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_873.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_873.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_873.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_873.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_873.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_873.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_873.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_873.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_873.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_873.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    PDPW8KC mux_872 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
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
            .ADR12(GND_net), .CER(VCC_net), .OCER(VCC_net), .CLKR(led_c), 
            .CSR0(GND_net), .CSR1(GND_net), .CSR2(GND_net), .RST(reset_c), 
            .DO0(data_out_23__N_515[9]), .DO1(data_out_23__N_515[10]), .DO2(data_out_23__N_515[11]), 
            .DO3(data_out_23__N_515[12]), .DO4(data_out_23__N_515[13]), 
            .DO5(data_out_23__N_515[14]), .DO6(data_out_23__N_515[15]), 
            .DO7(data_out_23__N_515[16]), .DO8(data_out_23__N_515[17]), 
            .DO9(data_out_23__N_515[0]), .DO10(data_out_23__N_515[1]), .DO11(data_out_23__N_515[2]), 
            .DO12(data_out_23__N_515[3]), .DO13(data_out_23__N_515[4]), 
            .DO14(data_out_23__N_515[5]), .DO15(data_out_23__N_515[6]), 
            .DO16(data_out_23__N_515[7]), .DO17(data_out_23__N_515[8]));
    defparam mux_872.DATA_WIDTH_W = 18;
    defparam mux_872.DATA_WIDTH_R = 18;
    defparam mux_872.REGMODE = "NOREG";
    defparam mux_872.CSDECODE_W = "0b000";
    defparam mux_872.CSDECODE_R = "0b000";
    defparam mux_872.GSR = "DISABLED";
    defparam mux_872.RESETMODE = "ASYNC";
    defparam mux_872.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_872.INIT_DATA = "STATIC";
    defparam mux_872.INITVAL_00 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF000000000000005000F70000D";
    defparam mux_872.INITVAL_01 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_872.INITVAL_02 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_872.INITVAL_03 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_872.INITVAL_04 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_872.INITVAL_05 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_872.INITVAL_06 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_872.INITVAL_07 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_872.INITVAL_08 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_872.INITVAL_09 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_872.INITVAL_0A = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_872.INITVAL_0B = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_872.INITVAL_0C = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_872.INITVAL_0D = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_872.INITVAL_0E = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_872.INITVAL_0F = "0x0004D00037000170000700012000320004600065003EB3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_872.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_872.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_872.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_872.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_872.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_872.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_872.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_872.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_872.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_872.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_872.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_872.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_872.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_872.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_872.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_872.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    LUT4 i893_2_lut (.A(data_out_23__N_515[15]), .B(data_out_23__N_467), 
         .Z(data_out_23__N_466[15])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i893_2_lut.init = 16'h8888;
    LUT4 i900_2_lut (.A(data_out_23__N_515[22]), .B(data_out_23__N_467), 
         .Z(data_out_23__N_466[22])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i900_2_lut.init = 16'h8888;
    LUT4 i901_2_lut (.A(data_out_23__N_515[23]), .B(data_out_23__N_467), 
         .Z(data_out_23__N_466[23])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i901_2_lut.init = 16'h8888;
    LUT4 i896_2_lut (.A(data_out_23__N_515[18]), .B(data_out_23__N_467), 
         .Z(data_out_23__N_466[18])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i896_2_lut.init = 16'h8888;
    LUT4 i879_2_lut (.A(data_out_23__N_515[1]), .B(data_out_23__N_467), 
         .Z(data_out_23__N_466[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i879_2_lut.init = 16'h8888;
    LUT4 i880_2_lut (.A(data_out_23__N_515[2]), .B(data_out_23__N_467), 
         .Z(data_out_23__N_466[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i880_2_lut.init = 16'h8888;
    LUT4 i881_2_lut (.A(data_out_23__N_515[3]), .B(data_out_23__N_467), 
         .Z(data_out_23__N_466[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i881_2_lut.init = 16'h8888;
    LUT4 i882_2_lut (.A(data_out_23__N_515[4]), .B(data_out_23__N_467), 
         .Z(data_out_23__N_466[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i882_2_lut.init = 16'h8888;
    LUT4 i883_2_lut (.A(data_out_23__N_515[5]), .B(data_out_23__N_467), 
         .Z(data_out_23__N_466[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i883_2_lut.init = 16'h8888;
    LUT4 i884_2_lut (.A(data_out_23__N_515[6]), .B(data_out_23__N_467), 
         .Z(data_out_23__N_466[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i884_2_lut.init = 16'h8888;
    LUT4 i885_2_lut (.A(data_out_23__N_515[7]), .B(data_out_23__N_467), 
         .Z(data_out_23__N_466[7])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i885_2_lut.init = 16'h8888;
    LUT4 i878_2_lut (.A(data_out_23__N_515[0]), .B(data_out_23__N_467), 
         .Z(data_out_23__N_466[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i878_2_lut.init = 16'h8888;
    LUT4 i886_2_lut (.A(data_out_23__N_515[8]), .B(data_out_23__N_467), 
         .Z(data_out_23__N_466[8])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i886_2_lut.init = 16'h8888;
    LUT4 i887_2_lut (.A(data_out_23__N_515[9]), .B(data_out_23__N_467), 
         .Z(data_out_23__N_466[9])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i887_2_lut.init = 16'h8888;
    LUT4 i888_2_lut (.A(data_out_23__N_515[10]), .B(data_out_23__N_467), 
         .Z(data_out_23__N_466[10])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i888_2_lut.init = 16'h8888;
    LUT4 i889_2_lut (.A(data_out_23__N_515[11]), .B(data_out_23__N_467), 
         .Z(data_out_23__N_466[11])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i889_2_lut.init = 16'h8888;
    LUT4 i890_2_lut (.A(data_out_23__N_515[12]), .B(data_out_23__N_467), 
         .Z(data_out_23__N_466[12])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i890_2_lut.init = 16'h8888;
    LUT4 i891_2_lut (.A(data_out_23__N_515[13]), .B(data_out_23__N_467), 
         .Z(data_out_23__N_466[13])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i891_2_lut.init = 16'h8888;
    LUT4 i892_2_lut (.A(data_out_23__N_515[14]), .B(data_out_23__N_467), 
         .Z(data_out_23__N_466[14])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i892_2_lut.init = 16'h8888;
    LUT4 i895_2_lut (.A(data_out_23__N_515[17]), .B(data_out_23__N_467), 
         .Z(data_out_23__N_466[17])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i895_2_lut.init = 16'h8888;
    LUT4 i894_2_lut (.A(data_out_23__N_515[16]), .B(data_out_23__N_467), 
         .Z(data_out_23__N_466[16])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i894_2_lut.init = 16'h8888;
    LUT4 i897_2_lut (.A(data_out_23__N_515[19]), .B(data_out_23__N_467), 
         .Z(data_out_23__N_466[19])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i897_2_lut.init = 16'h8888;
    LUT4 i898_2_lut (.A(data_out_23__N_515[20]), .B(data_out_23__N_467), 
         .Z(data_out_23__N_466[20])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i898_2_lut.init = 16'h8888;
    
endmodule
//
// Verilog Description of module Bin2BCD
//

module Bin2BCD (bcd_out_15__N_346, bcd_out_15__N_403, n4042, bcd_out_15__N_425, 
            \Q[4] , reset_c, n4011, n4025, \Q[0] , n4024, n3985, 
            n3010, bcd_out_15__N_429, n4035, bcd_out_15__N_421, n4032, 
            n3609, n4029, n4018, n4023, n3713, n4014, \Q[1] , 
            n2906, \Q[2] , n3199, n2966, n4013, n3615, n3564, 
            n4055, \DISPLAY_6__N_459[5] , n2939, n4031, n3911, n2983, 
            n4019, \Q[5] , bcd_out_15__N_348, n4062, n4009, n3909, 
            n2981, \DISPLAY_6__N_459[4] , n3205, \DISPLAY_6__N_459[4]_adj_1 , 
            n4015, \DISPLAY_6__N_459[6] , \Q[3] , n3984, n3183);
    input bcd_out_15__N_346;
    output bcd_out_15__N_403;
    output n4042;
    output bcd_out_15__N_425;
    input \Q[4] ;
    input reset_c;
    output n4011;
    output n4025;
    input \Q[0] ;
    output n4024;
    output n3985;
    output n3010;
    output bcd_out_15__N_429;
    output n4035;
    output bcd_out_15__N_421;
    output n4032;
    output n3609;
    output n4029;
    output n4018;
    input n4023;
    output n3713;
    output n4014;
    input \Q[1] ;
    output n2906;
    input \Q[2] ;
    output n3199;
    output n2966;
    output n4013;
    output n3615;
    output n3564;
    output n4055;
    output \DISPLAY_6__N_459[5] ;
    output n2939;
    output n4031;
    output n3911;
    output n2983;
    output n4019;
    input \Q[5] ;
    input bcd_out_15__N_348;
    output n4062;
    output n4009;
    output n3909;
    input n2981;
    output \DISPLAY_6__N_459[4] ;
    input n3205;
    output \DISPLAY_6__N_459[4]_adj_1 ;
    output n4015;
    output \DISPLAY_6__N_459[6] ;
    input \Q[3] ;
    output n3984;
    output n3183;
    
    
    wire n4061, n4052;
    wire [3:0]n1196;
    
    wire n4064, n4063, n4141, n4034, n4033;
    wire [3:0]n1205;
    
    wire n4140, n4030, n4016, n4022, n4027, n4020;
    wire [3:0]n1202;
    
    wire n4037, n4017, n4038, n4041, n4142, n4044, n3595, n4048;
    wire [3:0]n1199;
    
    wire n4047, n4045, n4051;
    
    LUT4 i1270_3_lut_4_lut_3_lut_4_lut (.A(n4061), .B(bcd_out_15__N_346), 
         .C(bcd_out_15__N_403), .D(n4042), .Z(bcd_out_15__N_425)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;
    defparam i1270_3_lut_4_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i1346_2_lut_rep_87_4_lut_4_lut_then_4_lut (.A(n4052), .B(\Q[4] ), 
         .C(n1196[1]), .D(n1196[2]), .Z(n4064)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i1346_2_lut_rep_87_4_lut_4_lut_then_4_lut.init = 16'h6065;
    LUT4 i1346_2_lut_rep_87_4_lut_4_lut_else_4_lut (.A(n4052), .B(\Q[4] ), 
         .C(n1196[1]), .D(n1196[2]), .Z(n4063)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i1346_2_lut_rep_87_4_lut_4_lut_else_4_lut.init = 16'h1f18;
    LUT4 i1216_2_lut_rep_82_4_lut_4_lut_then_4_lut (.A(n4052), .B(\Q[4] ), 
         .C(n1196[1]), .D(n1196[2]), .Z(n4141)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(B (C (D)+!C !(D))+!B !(C+(D)))) */ ;
    defparam i1216_2_lut_rep_82_4_lut_4_lut_then_4_lut.init = 16'h9ffa;
    LUT4 i2196_2_lut_rep_54_4_lut_4_lut (.A(n4034), .B(n4033), .C(n1205[1]), 
         .D(reset_c), .Z(n4011)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A ((D)+!B))) */ ;
    defparam i2196_2_lut_rep_54_4_lut_4_lut.init = 16'h006c;
    LUT4 i1216_2_lut_rep_82_4_lut_4_lut_else_4_lut (.A(n4052), .B(\Q[4] ), 
         .C(n1196[1]), .D(n1196[2]), .Z(n4140)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i1216_2_lut_rep_82_4_lut_4_lut_else_4_lut.init = 16'h1ff0;
    LUT4 reset_c_bdd_4_lut_4_lut (.A(n4025), .B(reset_c), .C(\Q[0] ), 
         .D(n4024), .Z(n3985)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam reset_c_bdd_4_lut_4_lut.init = 16'hceef;
    LUT4 i2517_2_lut_3_lut_4_lut_4_lut (.A(n4025), .B(reset_c), .C(n4030), 
         .D(n1205[1]), .Z(n3010)) /* synthesis lut_function=((B+!(C (D)+!C !(D)))+!A) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i2517_2_lut_3_lut_4_lut_4_lut.init = 16'hdffd;
    LUT4 i1452_3_lut_rep_59_4_lut_3_lut_4_lut (.A(bcd_out_15__N_429), .B(n4035), 
         .C(bcd_out_15__N_425), .D(bcd_out_15__N_421), .Z(n4016)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i1452_3_lut_rep_59_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i1430_2_lut_rep_65_4_lut_4_lut (.A(bcd_out_15__N_429), .B(n4035), 
         .C(bcd_out_15__N_425), .D(bcd_out_15__N_421), .Z(n4022)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i1430_2_lut_rep_65_4_lut_4_lut.init = 16'h554a;
    LUT4 i1855_2_lut_rep_70_4_lut (.A(bcd_out_15__N_429), .B(n4035), .C(bcd_out_15__N_425), 
         .D(bcd_out_15__N_421), .Z(n4027)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i1855_2_lut_rep_70_4_lut.init = 16'heee0;
    LUT4 i1203_3_lut_rep_75 (.A(bcd_out_15__N_429), .B(n4035), .C(bcd_out_15__N_425), 
         .D(bcd_out_15__N_421), .Z(n4032)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i1203_3_lut_rep_75.init = 16'hffe0;
    LUT4 i1438_3_lut_rep_63_4_lut (.A(bcd_out_15__N_429), .B(n4035), .C(bcd_out_15__N_425), 
         .D(bcd_out_15__N_421), .Z(n4020)) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i1438_3_lut_rep_63_4_lut.init = 16'h998c;
    LUT4 i2236_2_lut_4_lut_3_lut_4_lut (.A(bcd_out_15__N_429), .B(n4035), 
         .C(bcd_out_15__N_425), .D(bcd_out_15__N_421), .Z(n3609)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+(D)))) */ ;
    defparam i2236_2_lut_4_lut_3_lut_4_lut.init = 16'h2231;
    LUT4 i1187_3_lut_rep_72_4_lut (.A(n1202[1]), .B(n4037), .C(n1205[1]), 
         .D(n4034), .Z(n4029)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1187_3_lut_rep_72_4_lut.init = 16'hf666;
    LUT4 i1305_2_lut_rep_60_3_lut_3_lut_4_lut (.A(n1202[1]), .B(n4037), 
         .C(n1205[1]), .D(n4034), .Z(n4017)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1305_2_lut_rep_60_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1312_3_lut_rep_61_4_lut_3_lut_4_lut (.A(n1202[1]), .B(n4037), 
         .C(n1205[1]), .D(n4034), .Z(n4018)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1312_3_lut_rep_61_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i2515_2_lut_3_lut_4_lut_4_lut (.A(n4025), .B(reset_c), .C(n4017), 
         .D(n4023), .Z(n3713)) /* synthesis lut_function=(!(A (B (D))+!A (B (D)+!B !(C+!(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i2515_2_lut_3_lut_4_lut_4_lut.init = 16'h32ff;
    LUT4 i2198_2_lut_rep_57_4_lut (.A(n4035), .B(n4032), .C(bcd_out_15__N_429), 
         .D(reset_c), .Z(n4014)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A ((C+(D))+!B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2198_2_lut_rep_57_4_lut.init = 16'h00a6;
    LUT4 i1854_2_lut_rep_73_4_lut (.A(n1202[1]), .B(n4037), .C(n1205[1]), 
         .D(n4034), .Z(n4030)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1854_2_lut_rep_73_4_lut.init = 16'hf600;
    LUT4 i1290_2_lut_rep_67_4_lut_4_lut (.A(\Q[1] ), .B(n4038), .C(n1205[1]), 
         .D(n4033), .Z(n4024)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i1290_2_lut_rep_67_4_lut_4_lut.init = 16'h554a;
    LUT4 i1546_2_lut_3_lut_3_lut_4_lut (.A(bcd_out_15__N_429), .B(n4032), 
         .C(reset_c), .D(n4020), .Z(n2906)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A (B+(C+!(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1546_2_lut_3_lut_3_lut_4_lut.init = 16'hf6ff;
    LUT4 i1298_3_lut_rep_68_4_lut (.A(\Q[2] ), .B(n4041), .C(\Q[1] ), 
         .D(n4029), .Z(n4025)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1298_3_lut_rep_68_4_lut.init = 16'h6966;
    LUT4 i2235_3_lut_4_lut (.A(bcd_out_15__N_425), .B(n4027), .C(reset_c), 
         .D(n4022), .Z(n3199)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (B (C)+!B (C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2235_3_lut_4_lut.init = 16'h0f06;
    LUT4 i2540_3_lut_4_lut (.A(bcd_out_15__N_429), .B(n4032), .C(reset_c), 
         .D(n4018), .Z(n2966)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2540_3_lut_4_lut.init = 16'hf6f9;
    LUT4 i2197_2_lut_rep_56_3_lut (.A(bcd_out_15__N_429), .B(n4032), .C(reset_c), 
         .Z(n4013)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2197_2_lut_rep_56_3_lut.init = 16'h0606;
    LUT4 i2242_2_lut_3_lut_3_lut_4_lut (.A(\Q[2] ), .B(n4041), .C(\Q[1] ), 
         .D(n4029), .Z(n3615)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2242_2_lut_3_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i2191_2_lut_3_lut_4_lut (.A(bcd_out_15__N_429), .B(n4032), .C(reset_c), 
         .D(n4018), .Z(n3564)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+!(D))+!B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2191_2_lut_3_lut_4_lut.init = 16'h0600;
    LUT4 i1907_2_lut_3_lut_4_lut (.A(n4061), .B(bcd_out_15__N_346), .C(bcd_out_15__N_403), 
         .D(n4042), .Z(bcd_out_15__N_421)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1907_2_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 i1262_2_lut_rep_78_3_lut_3_lut_4_lut (.A(n4061), .B(bcd_out_15__N_346), 
         .C(bcd_out_15__N_403), .D(n4042), .Z(n4035)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A !(D))) */ ;
    defparam i1262_2_lut_rep_78_3_lut_3_lut_4_lut.init = 16'h7780;
    LUT4 i1138_2_lut_rep_77_3_lut (.A(\Q[2] ), .B(n4041), .C(\Q[1] ), 
         .Z(n4034)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1138_2_lut_rep_77_3_lut.init = 16'hf6f6;
    LUT4 i2551_3_lut_4_lut (.A(n4142), .B(n4055), .C(n4016), .D(reset_c), 
         .Z(\DISPLAY_6__N_459[5] )) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A ((D)+!C)) */ ;
    defparam i2551_3_lut_4_lut.init = 16'hff07;
    LUT4 i2546_2_lut_3_lut_3_lut_4_lut_4_lut (.A(n4020), .B(reset_c), .C(n4027), 
         .D(bcd_out_15__N_425), .Z(n2939)) /* synthesis lut_function=((B+!(C (D)+!C !(D)))+!A) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i2546_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'hdffd;
    LUT4 i1211_2_lut_rep_74_3_lut_4_lut_4_lut (.A(n4042), .B(bcd_out_15__N_403), 
         .C(bcd_out_15__N_429), .D(n4055), .Z(n4031)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1211_2_lut_rep_74_3_lut_4_lut_4_lut.init = 16'hf4fa;
    LUT4 i2512_2_lut_2_lut_3_lut_3_lut (.A(n4020), .B(reset_c), .C(n4018), 
         .Z(n3911)) /* synthesis lut_function=(A (B+(C))+!A (B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i2512_2_lut_2_lut_3_lut_3_lut.init = 16'heded;
    LUT4 i2537_3_lut_4_lut (.A(\Q[1] ), .B(n4029), .C(reset_c), .D(\Q[0] ), 
         .Z(n2983)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2537_3_lut_4_lut.init = 16'hf6f9;
    LUT4 i2531_2_lut_rep_62_4_lut (.A(n4038), .B(n4029), .C(\Q[1] ), .D(reset_c), 
         .Z(n4019)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A ((C+(D))+!B)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2531_2_lut_rep_62_4_lut.init = 16'hff59;
    LUT4 i1318_2_lut_rep_81_4_lut_4_lut (.A(\Q[2] ), .B(n4044), .C(n1202[1]), 
         .D(n1202[2]), .Z(n4038)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i1318_2_lut_rep_81_4_lut_4_lut.init = 16'h554a;
    LUT4 i1333_2_lut_rep_76_3_lut_3_lut_4_lut (.A(\Q[2] ), .B(n4044), .C(n1202[1]), 
         .D(n1202[2]), .Z(n4033)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i1333_2_lut_rep_76_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i1340_3_lut_4_lut_3_lut_4_lut (.A(\Q[2] ), .B(n4044), .C(n1202[1]), 
         .D(n1202[2]), .Z(bcd_out_15__N_429)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i1340_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i1225_2_lut_rep_104 (.A(\Q[5] ), .B(bcd_out_15__N_348), .Z(n4061)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1225_2_lut_rep_104.init = 16'heeee;
    LUT4 i1244_2_lut_rep_98_3_lut (.A(\Q[5] ), .B(bcd_out_15__N_348), .C(bcd_out_15__N_346), 
         .Z(n4055)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1244_2_lut_rep_98_3_lut.init = 16'he0e0;
    LUT4 i1905_2_lut_3_lut (.A(\Q[5] ), .B(bcd_out_15__N_348), .C(bcd_out_15__N_346), 
         .Z(n1196[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1905_2_lut_3_lut.init = 16'h1010;
    LUT4 i1852_2_lut_rep_80_3_lut_4_lut (.A(\Q[2] ), .B(n4044), .C(n1202[1]), 
         .D(n1202[2]), .Z(n4037)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i1852_2_lut_rep_80_3_lut_4_lut.init = 16'heee0;
    LUT4 i1186_3_lut_rep_84 (.A(\Q[2] ), .B(n4044), .C(n1202[1]), .D(n1202[2]), 
         .Z(n4041)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i1186_3_lut_rep_84.init = 16'hffe0;
    LUT4 i1410_3_lut_4_lut_3_lut (.A(\Q[5] ), .B(bcd_out_15__N_348), .C(bcd_out_15__N_346), 
         .Z(n1196[1])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i1410_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i1402_2_lut_rep_95_3_lut_3_lut (.A(\Q[5] ), .B(bcd_out_15__N_348), 
         .C(bcd_out_15__N_346), .Z(n4052)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i1402_2_lut_rep_95_3_lut_3_lut.init = 16'h4a4a;
    LUT4 i1326_3_lut_4_lut (.A(\Q[2] ), .B(n4044), .C(n1202[1]), .D(n1202[2]), 
         .Z(n1205[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i1326_3_lut_4_lut.init = 16'h998c;
    LUT4 i2143_2_lut_rep_105 (.A(\Q[0] ), .B(reset_c), .Z(n4062)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i2143_2_lut_rep_105.init = 16'h2222;
    LUT4 i2222_2_lut_3_lut_4_lut (.A(\Q[0] ), .B(reset_c), .C(n4029), 
         .D(\Q[1] ), .Z(n3595)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i2222_2_lut_3_lut_4_lut.init = 16'h0220;
    LUT4 i2199_2_lut_rep_52_3_lut_4_lut_4_lut (.A(n4031), .B(bcd_out_15__N_421), 
         .C(bcd_out_15__N_425), .D(reset_c), .Z(n4009)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((D)+!C))) */ ;
    defparam i2199_2_lut_rep_52_3_lut_4_lut_4_lut.init = 16'h0058;
    LUT4 i2510_2_lut_2_lut_3_lut_3_lut (.A(\Q[0] ), .B(reset_c), .C(n4025), 
         .Z(n3909)) /* synthesis lut_function=(A (B+(C))+!A (B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i2510_2_lut_2_lut_3_lut_3_lut.init = 16'heded;
    LUT4 i2106_2_lut_3_lut (.A(\Q[0] ), .B(reset_c), .C(n2981), .Z(\DISPLAY_6__N_459[4] )) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i2106_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i1185_3_lut_rep_88_4_lut (.A(n1196[1]), .B(n4048), .C(n1199[1]), 
         .D(n4047), .Z(n4045)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1185_3_lut_rep_88_4_lut.init = 16'hf666;
    LUT4 i1368_3_lut_rep_85_4_lut_3_lut_4_lut (.A(n1196[1]), .B(n4048), 
         .C(n1199[1]), .D(n4047), .Z(n4042)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1368_3_lut_rep_85_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1361_2_lut_3_lut_3_lut_4_lut (.A(n1196[1]), .B(n4048), .C(n1199[1]), 
         .D(n4047), .Z(n1202[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1361_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i2069_2_lut_3_lut (.A(n4018), .B(reset_c), .C(n3205), .Z(\DISPLAY_6__N_459[4]_adj_1 )) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i2069_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i2093_4_lut_4_lut (.A(n4019), .B(n3595), .C(n4015), .D(n4023), 
         .Z(\DISPLAY_6__N_459[6] )) /* synthesis lut_function=(A (C+(D))+!A ((C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i2093_4_lut_4_lut.init = 16'hfbf1;
    LUT4 i1219_2_lut_rep_90_3_lut (.A(\Q[4] ), .B(n4051), .C(\Q[3] ), 
         .Z(n4047)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1219_2_lut_rep_90_3_lut.init = 16'hf6f6;
    LUT4 i1354_3_lut_4_lut (.A(\Q[4] ), .B(n4051), .C(\Q[3] ), .D(n4045), 
         .Z(n1202[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1354_3_lut_4_lut.init = 16'h6966;
    LUT4 i1849_2_lut_rep_91_3_lut_4_lut (.A(\Q[4] ), .B(n4052), .C(n1196[1]), 
         .D(n1196[2]), .Z(n4048)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i1849_2_lut_rep_91_3_lut_4_lut.init = 16'heee0;
    LUT4 i1396_3_lut_4_lut_3_lut_4_lut (.A(\Q[4] ), .B(n4052), .C(n1196[1]), 
         .D(n1196[2]), .Z(bcd_out_15__N_403)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i1396_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i1183_3_lut_rep_94 (.A(\Q[4] ), .B(n4052), .C(n1196[1]), .D(n1196[2]), 
         .Z(n4051)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i1183_3_lut_rep_94.init = 16'hffe0;
    LUT4 bcd_out_15__N_442_bdd_4_lut_4_lut (.A(n4020), .B(reset_c), .C(n4018), 
         .D(n4022), .Z(n3984)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A (B+((D)+!C))) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam bcd_out_15__N_442_bdd_4_lut_4_lut.init = 16'hdfed;
    LUT4 i1382_3_lut_4_lut (.A(\Q[4] ), .B(n4052), .C(n1196[1]), .D(n1196[2]), 
         .Z(n1199[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i1382_3_lut_4_lut.init = 16'h998c;
    LUT4 i2195_2_lut_rep_58_3_lut_4_lut_4_lut (.A(n4034), .B(n4033), .C(n1205[1]), 
         .D(reset_c), .Z(n4015)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((D)+!C))) */ ;
    defparam i2195_2_lut_rep_58_3_lut_4_lut_4_lut.init = 16'h0058;
    LUT4 i2232_3_lut_4_lut (.A(n1205[1]), .B(n4030), .C(reset_c), .D(n4024), 
         .Z(n3183)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (B (C)+!B (C+!(D))))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2232_3_lut_4_lut.init = 16'h0f06;
    PFUMX i2591 (.BLUT(n4140), .ALUT(n4141), .C0(n4047), .Z(n4142));
    PFUMX i2568 (.BLUT(n4063), .ALUT(n4064), .C0(\Q[3] ), .Z(n4044));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module bcdDisplay_U1
//

module bcdDisplay_U1 (\ce[6] , clk_0, n4036, \ce[5] , \DISPLAY_6__N_459[5] , 
            \ce[4] , \DISPLAY_6__N_459[4] , \ce[3] , \ce[2] , n3296, 
            n4010);
    output \ce[6] ;
    input clk_0;
    input n4036;
    output \ce[5] ;
    input \DISPLAY_6__N_459[5] ;
    output \ce[4] ;
    input \DISPLAY_6__N_459[4] ;
    output \ce[3] ;
    output \ce[2] ;
    input n3296;
    input n4010;
    
    wire clk_0 /* synthesis is_clock=1, SET_AS_NETWORK=clk_0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(75[8:13])
    
    FD1S3AX DISPLAY_i5 (.D(n4036), .CK(clk_0), .Q(\ce[6] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=120, LSE_RLINE=120 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i5.GSR = "ENABLED";
    FD1S3AY DISPLAY_i4 (.D(\DISPLAY_6__N_459[5] ), .CK(clk_0), .Q(\ce[5] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=120, LSE_RLINE=120 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i4.GSR = "ENABLED";
    FD1S3AY DISPLAY_i3 (.D(\DISPLAY_6__N_459[4] ), .CK(clk_0), .Q(\ce[4] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=120, LSE_RLINE=120 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i3.GSR = "ENABLED";
    FD1S3JX DISPLAY_i2 (.D(\DISPLAY_6__N_459[4] ), .CK(clk_0), .PD(n4036), 
            .Q(\ce[3] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=120, LSE_RLINE=120 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i2.GSR = "ENABLED";
    FD1S3JX DISPLAY_i1 (.D(n4010), .CK(clk_0), .PD(n3296), .Q(\ce[2] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=120, LSE_RLINE=120 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module bcdDisplay_U0
//

module bcdDisplay_U0 (de, clk_0, \DISPLAY_6__N_459[4] , n4009, n3984, 
            n3199, n3911, n2906, n3609, n3205, n2939, n2966, n4011, 
            n4068, reset_c, n4032, bcd_out_15__N_429, n4035, n4013, 
            n3564, n4014, n4018);
    output [6:0]de;
    input clk_0;
    input \DISPLAY_6__N_459[4] ;
    input n4009;
    input n3984;
    input n3199;
    input n3911;
    input n2906;
    input n3609;
    output n3205;
    input n2939;
    input n2966;
    input n4011;
    input n4068;
    input reset_c;
    input n4032;
    input bcd_out_15__N_429;
    input n4035;
    input n4013;
    input n3564;
    input n4014;
    input n4018;
    
    wire clk_0 /* synthesis is_clock=1, SET_AS_NETWORK=clk_0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(75[8:13])
    
    wire n4070, n4069;
    wire [6:0]DISPLAY_6__N_459;
    
    wire n4071;
    
    FD1S3AY DISPLAY_i4 (.D(\DISPLAY_6__N_459[4] ), .CK(clk_0), .Q(de[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i4.GSR = "ENABLED";
    FD1S3JX DISPLAY_i3 (.D(n3984), .CK(clk_0), .PD(n4009), .Q(de[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i3.GSR = "ENABLED";
    FD1S3JX DISPLAY_i0 (.D(n3911), .CK(clk_0), .PD(n3199), .Q(de[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i0.GSR = "ENABLED";
    PFUMX i1838 (.BLUT(n2906), .ALUT(n3609), .C0(n4009), .Z(n3205));
    FD1S3JX DISPLAY_i1 (.D(n2966), .CK(clk_0), .PD(n2939), .Q(de[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i1.GSR = "ENABLED";
    FD1S3JX DISPLAY_i2 (.D(n4068), .CK(clk_0), .PD(n4011), .Q(de[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i2.GSR = "ENABLED";
    LUT4 i2566_then_4_lut (.A(reset_c), .B(n4032), .C(bcd_out_15__N_429), 
         .D(n4035), .Z(n4070)) /* synthesis lut_function=(A+(B (C (D))+!B !(C+!(D)))) */ ;
    defparam i2566_then_4_lut.init = 16'hebaa;
    LUT4 i2566_else_4_lut (.A(reset_c), .B(n4032), .C(bcd_out_15__N_429), 
         .D(n4035), .Z(n4069)) /* synthesis lut_function=(A+(B (C+!(D))+!B ((D)+!C))) */ ;
    defparam i2566_else_4_lut.init = 16'hfbef;
    LUT4 i2163_4_lut (.A(n4013), .B(n4009), .C(n3564), .D(n4014), .Z(DISPLAY_6__N_459[6])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(30[3] 41[12])
    defparam i2163_4_lut.init = 16'hcfee;
    FD1S3AX DISPLAY_i6 (.D(DISPLAY_6__N_459[6]), .CK(clk_0), .Q(de[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i6.GSR = "ENABLED";
    FD1S3JX DISPLAY_i5 (.D(n4071), .CK(clk_0), .PD(n4009), .Q(de[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i5.GSR = "ENABLED";
    PFUMX i2572 (.BLUT(n4069), .ALUT(n4070), .C0(n4018), .Z(n4071));
    
endmodule
