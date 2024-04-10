// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Tue Apr 09 22:26:09 2024
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
    
    wire GND_net, VCC_net, reset_c, stop_run_c, display_c_6, display_c_5, 
        display_c_4, display_c_3, display_c_2, display_c_1, display_c_0, 
        sel_c_3, sel_c_2, sel_c_1, sel_c_0, CI_c_23, CI_c_22, CI_c_21, 
        CI_c_20, CI_c_19, CI_c_18, CI_c_17, CI_c_16, CI_c_15, CI_c_14, 
        CI_c_13, CI_c_12, CI_c_11, CI_c_10, CI_c_9, CI_c_8, CI_c_7, 
        CI_c_6, CI_c_5, CI_c_4, CI_c_3, CI_c_2, CI_c_1, CI_c_0;
    wire [13:0]Q;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(77[8:9])
    wire [3:0]temp_control;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(79[8:20])
    wire [6:0]un;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(80[8:10])
    wire [6:0]de;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(80[11:13])
    wire [6:0]ce;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(80[14:16])
    wire [7:0]MAR;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(84[8:11])
    wire [23:0]MBR;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(85[8:11])
    wire [7:0]address_bus;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(91[8:19])
    
    wire n2639, n3311, n3310, n2611, n2612;
    wire [1:0]global_state;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(102[8:20])
    
    wire stop_run_N_93, n182, n183, n184, n185, n186, n187, n188, 
        n189, n2646, n2953, n3272;
    wire [1:0]global_state_1__N_90;
    wire [7:0]address_bus_7__N_80;
    
    wire n2662, n2635, n2913, n3561, n2568;
    wire [17:0]count;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(199[11:16])
    wire [24:0]count1;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(200[11:17])
    
    wire clk_0_enable_11, n3588, n18, n130, n3270, n3320, n95, 
        clk_0_N_261, n82, n81, n108, n17, n129, n22, led_N_259, 
        n3260, n113, n3609, n3560, n94, n15, n16, n21, n114, 
        n115, n116, n128, n3248, n3557, n3245, n123, bcd_out_15__N_380, 
        bcd_out_15__N_382, n3585, n112, n106, n107, n2720, n25, 
        n2718, n2716, n2714, n3680, bcd_out_15__N_437, n2712, n2711, 
        bcd_out_15__N_463, bcd_out_15__N_479, bcd_out_15__N_483, n3677, 
        bcd_out_15__N_455, bcd_out_15__N_459;
    wire [6:0]DISPLAY_6__N_493;
    
    wire n3535, n3584;
    wire [6:0]DISPLAY_6__N_493_adj_627;
    wire [6:0]DISPLAY_6__N_493_adj_631;
    
    wire n93;
    wire [23:0]data_out_23__N_500;
    
    wire n3318, n110, n109, n90, n3583, n78, n3579, n79, n88, 
        n3236, n80, n3317, n3582, n85, n86, n83, n3581, n3578, 
        n3580, n87, n3316, n84, n3555, n111, n89, n20, n91, 
        n92, n3612, n23, n117, n118, n119, n120, n121, n122, 
        n127, n124, n3321, n125, n126, n3315, n3314, n3313, 
        n3312, n3319, n3308, n3307, n3306, n3305, n3173, n3576, 
        n3171, n19, n18_adj_621, n2934, n2791, n2787, n2996, n3573, 
        n2719, n3572, n3304, n3303, n3302, n3301, n3300, n3299, 
        n3571, n3465, n3679, n3298, n3297, n3569, n6, n1347, 
        n2717, n2715, n2713, n3556, n3558, n1363, n3568, n3567, 
        n3566, n4, n3614, n6_adj_622, n2908, n3564, n5, n3613, 
        n3296, n3295, n3294, n24, n3293, clk_enable_43, n3604, 
        led_c_enable_62, led_c_enable_64, n3538, n3600, n3463, n3536, 
        n3599, n3611, n3610, n3678, n3562, n6_adj_623;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i1301_2_lut_3_lut_4_lut (.A(global_state[0]), .B(stop_run_c), .C(global_state[1]), 
         .D(reset_c), .Z(n2953)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam i1301_2_lut_3_lut_4_lut.init = 16'h0010;
    OSCH OSCinst0 (.STDBY(GND_net), .OSC(clk)) /* synthesis NOM_FREQ="26.60", syn_instantiated=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(113[11:15])
    defparam OSCinst0.NOM_FREQ = "26.60";
    IB reset_pad (.I(reset), .O(reset_c));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    FD1S3AX address_bus_i0 (.D(address_bus_7__N_80[0]), .CK(led_c), .Q(address_bus[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam address_bus_i0.GSR = "DISABLED";
    FD1P3AX display_i0_i1 (.D(n2612), .SP(clk_0_enable_11), .CK(clk_0), 
            .Q(display_c_0));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(173[3] 195[10])
    defparam display_i0_i1.GSR = "DISABLED";
    FD1P3AX sel_i0_i1 (.D(temp_control[0]), .SP(clk_enable_43), .CK(clk_0), 
            .Q(sel_c_0));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(173[3] 195[10])
    defparam sel_i0_i1.GSR = "DISABLED";
    FD1P3AX global_state_i0_i0 (.D(n3604), .SP(stop_run_N_93), .CK(led_c), 
            .Q(global_state[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam global_state_i0_i0.GSR = "ENABLED";
    FD1S3AX clk_0_81 (.D(clk_0_N_261), .CK(clk), .Q(clk_0)) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(202[3] 219[10])
    defparam clk_0_81.GSR = "ENABLED";
    OB led_pad (.I(led_c), .O(led));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(17[2:5])
    OB CI_pad_0 (.I(CI_c_0), .O(CI[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    FD1S3AX clk_1_82 (.D(led_N_259), .CK(clk), .Q(led_c)) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(202[3] 219[10])
    defparam clk_1_82.GSR = "ENABLED";
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
    OB CI_pad_12 (.I(CI_c_12), .O(CI[12]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_13 (.I(CI_c_13), .O(CI[13]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_14 (.I(CI_c_14), .O(CI[14]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_15 (.I(CI_c_15), .O(CI[15]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_16 (.I(CI_c_16), .O(CI[16]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB display_pad_4 (.I(display_c_4), .O(display[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    OB CI_pad_17 (.I(CI_c_17), .O(CI[17]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_18 (.I(CI_c_18), .O(CI[18]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_19 (.I(CI_c_19), .O(CI[19]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_20 (.I(CI_c_20), .O(CI[20]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_21 (.I(CI_c_21), .O(CI[21]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_22 (.I(CI_c_22), .O(CI[22]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB CI_pad_23 (.I(CI_c_23), .O(CI[23]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(16[2:4])
    OB sel_pad_0 (.I(sel_c_0), .O(sel[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    OB sel_pad_1 (.I(sel_c_1), .O(sel[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    OB sel_pad_2 (.I(sel_c_2), .O(sel[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    OB sel_pad_3 (.I(sel_c_3), .O(sel[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(15[2:5])
    OB display_pad_0 (.I(display_c_0), .O(display[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    FD1S3AY temp_control_FSM_i1 (.D(n3677), .CK(clk_0), .Q(n1347));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(176[4] 193[13])
    defparam temp_control_FSM_i1.GSR = "ENABLED";
    OB display_pad_1 (.I(display_c_1), .O(display[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    OB display_pad_2 (.I(display_c_2), .O(display[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    OB display_pad_3 (.I(display_c_3), .O(display[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    IB stop_run_pad (.I(stop_run), .O(stop_run_c));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(13[2:10])
    FD1P3IX IR_i0_i3 (.D(MBR[2]), .SP(led_c_enable_64), .CD(n3680), .CK(led_c), 
            .Q(CI_c_2));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam IR_i0_i3.GSR = "DISABLED";
    FD1P3IX MBR_i0_i20 (.D(data_out_23__N_500[20]), .SP(led_c_enable_64), 
            .CD(n3680), .CK(led_c), .Q(MBR[20]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MBR_i0_i20.GSR = "DISABLED";
    OB display_pad_5 (.I(display_c_5), .O(display[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    FD1P3IX count_438__i0 (.D(n95), .SP(clk_enable_43), .CD(n2996), .CK(clk), 
            .Q(n18)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(207[14:19])
    defparam count_438__i0.GSR = "DISABLED";
    CCU2D count_438_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n18), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3310), .S1(n95));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(207[14:19])
    defparam count_438_add_4_1.INIT0 = 16'hF000;
    defparam count_438_add_4_1.INIT1 = 16'h0555;
    defparam count_438_add_4_1.INJECT1_0 = "NO";
    defparam count_438_add_4_1.INJECT1_1 = "NO";
    OB display_pad_6 (.I(display_c_6), .O(display[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(14[2:9])
    FD1S3AX temp_control_FSM_i5 (.D(temp_control[2]), .CK(clk_0), .Q(temp_control[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(176[4] 193[13])
    defparam temp_control_FSM_i5.GSR = "ENABLED";
    FD1S3AX temp_control_FSM_i4 (.D(temp_control[1]), .CK(clk_0), .Q(temp_control[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(176[4] 193[13])
    defparam temp_control_FSM_i4.GSR = "ENABLED";
    FD1S3AX temp_control_FSM_i3 (.D(temp_control[0]), .CK(clk_0), .Q(temp_control[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(176[4] 193[13])
    defparam temp_control_FSM_i3.GSR = "ENABLED";
    FD1S3AX temp_control_FSM_i2 (.D(n1363), .CK(clk_0), .Q(temp_control[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(176[4] 193[13])
    defparam temp_control_FSM_i2.GSR = "ENABLED";
    FD1P3IX IR_i0_i4 (.D(MBR[3]), .SP(led_c_enable_64), .CD(n3680), .CK(led_c), 
            .Q(CI_c_3));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam IR_i0_i4.GSR = "DISABLED";
    FD1P3IX IR_i0_i5 (.D(MBR[4]), .SP(led_c_enable_64), .CD(n3680), .CK(led_c), 
            .Q(CI_c_4));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam IR_i0_i5.GSR = "DISABLED";
    FD1P3AX global_state_i0_i1 (.D(global_state_1__N_90[1]), .SP(stop_run_N_93), 
            .CK(led_c), .Q(global_state[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam global_state_i0_i1.GSR = "ENABLED";
    FD1P3AX sel_i0_i4 (.D(temp_control[3]), .SP(clk_enable_43), .CK(clk_0), 
            .Q(sel_c_3));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(173[3] 195[10])
    defparam sel_i0_i4.GSR = "DISABLED";
    FD1P3AX sel_i0_i3 (.D(temp_control[2]), .SP(clk_enable_43), .CK(clk_0), 
            .Q(sel_c_2));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(173[3] 195[10])
    defparam sel_i0_i3.GSR = "DISABLED";
    FD1P3AX sel_i0_i2 (.D(temp_control[1]), .SP(clk_enable_43), .CK(clk_0), 
            .Q(sel_c_1));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(173[3] 195[10])
    defparam sel_i0_i2.GSR = "DISABLED";
    FD1P3AX display_i0_i7 (.D(n2720), .SP(clk_0_enable_11), .CK(clk_0), 
            .Q(display_c_6));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(173[3] 195[10])
    defparam display_i0_i7.GSR = "DISABLED";
    FD1P3AX display_i0_i6 (.D(n2718), .SP(clk_0_enable_11), .CK(clk_0), 
            .Q(display_c_5));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(173[3] 195[10])
    defparam display_i0_i6.GSR = "DISABLED";
    FD1P3AX display_i0_i5 (.D(n2716), .SP(clk_0_enable_11), .CK(clk_0), 
            .Q(display_c_4));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(173[3] 195[10])
    defparam display_i0_i5.GSR = "DISABLED";
    FD1P3AX display_i0_i4 (.D(n2714), .SP(clk_0_enable_11), .CK(clk_0), 
            .Q(display_c_3));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(173[3] 195[10])
    defparam display_i0_i4.GSR = "DISABLED";
    FD1P3AX display_i0_i3 (.D(n2712), .SP(clk_0_enable_11), .CK(clk_0), 
            .Q(display_c_2));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(173[3] 195[10])
    defparam display_i0_i3.GSR = "DISABLED";
    FD1S3AX address_bus_i7 (.D(address_bus_7__N_80[7]), .CK(led_c), .Q(address_bus[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam address_bus_i7.GSR = "DISABLED";
    FD1S3AX address_bus_i6 (.D(address_bus_7__N_80[6]), .CK(led_c), .Q(address_bus[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam address_bus_i6.GSR = "DISABLED";
    FD1S3AX address_bus_i5 (.D(address_bus_7__N_80[5]), .CK(led_c), .Q(address_bus[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam address_bus_i5.GSR = "DISABLED";
    FD1S3AX address_bus_i4 (.D(address_bus_7__N_80[4]), .CK(led_c), .Q(address_bus[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam address_bus_i4.GSR = "DISABLED";
    FD1S3AX address_bus_i3 (.D(address_bus_7__N_80[3]), .CK(led_c), .Q(address_bus[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam address_bus_i3.GSR = "DISABLED";
    FD1S3AX address_bus_i2 (.D(address_bus_7__N_80[2]), .CK(led_c), .Q(address_bus[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam address_bus_i2.GSR = "DISABLED";
    FD1P3IX IR_i0_i6 (.D(MBR[5]), .SP(led_c_enable_64), .CD(n2953), .CK(led_c), 
            .Q(CI_c_5));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam IR_i0_i6.GSR = "DISABLED";
    FD1S3AX address_bus_i1 (.D(address_bus_7__N_80[1]), .CK(led_c), .Q(address_bus[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam address_bus_i1.GSR = "DISABLED";
    FD1P3IX IR_i0_i7 (.D(MBR[6]), .SP(led_c_enable_64), .CD(n3680), .CK(led_c), 
            .Q(CI_c_6));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam IR_i0_i7.GSR = "DISABLED";
    FD1P3IX IR_i0_i8 (.D(MBR[7]), .SP(led_c_enable_64), .CD(n3680), .CK(led_c), 
            .Q(CI_c_7));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam IR_i0_i8.GSR = "DISABLED";
    FD1P3IX IR_i0_i9 (.D(MBR[8]), .SP(led_c_enable_64), .CD(n3680), .CK(led_c), 
            .Q(CI_c_8));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam IR_i0_i9.GSR = "DISABLED";
    FD1P3IX IR_i0_i10 (.D(MBR[9]), .SP(led_c_enable_64), .CD(n3680), .CK(led_c), 
            .Q(CI_c_9));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam IR_i0_i10.GSR = "DISABLED";
    CCU2D count_438_add_4_19 (.A0(count[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3318), .S0(n78));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(207[14:19])
    defparam count_438_add_4_19.INIT0 = 16'hfaaa;
    defparam count_438_add_4_19.INIT1 = 16'h0000;
    defparam count_438_add_4_19.INJECT1_0 = "NO";
    defparam count_438_add_4_19.INJECT1_1 = "NO";
    CCU2D count_438_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3317), .COUT(n3318), .S0(n80), .S1(n79));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(207[14:19])
    defparam count_438_add_4_17.INIT0 = 16'hfaaa;
    defparam count_438_add_4_17.INIT1 = 16'hfaaa;
    defparam count_438_add_4_17.INJECT1_0 = "NO";
    defparam count_438_add_4_17.INJECT1_1 = "NO";
    CCU2D count_438_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3316), .COUT(n3317), .S0(n82), .S1(n81));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(207[14:19])
    defparam count_438_add_4_15.INIT0 = 16'hfaaa;
    defparam count_438_add_4_15.INIT1 = 16'hfaaa;
    defparam count_438_add_4_15.INJECT1_0 = "NO";
    defparam count_438_add_4_15.INJECT1_1 = "NO";
    FD1P3IX IR_i0_i11 (.D(MBR[10]), .SP(led_c_enable_64), .CD(n3680), 
            .CK(led_c), .Q(CI_c_10));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam IR_i0_i11.GSR = "DISABLED";
    CCU2D count_438_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3315), .COUT(n3316), .S0(n84), .S1(n83));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(207[14:19])
    defparam count_438_add_4_13.INIT0 = 16'hfaaa;
    defparam count_438_add_4_13.INIT1 = 16'hfaaa;
    defparam count_438_add_4_13.INJECT1_0 = "NO";
    defparam count_438_add_4_13.INJECT1_1 = "NO";
    CCU2D count_438_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3314), .COUT(n3315), .S0(n86), .S1(n85));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(207[14:19])
    defparam count_438_add_4_11.INIT0 = 16'hfaaa;
    defparam count_438_add_4_11.INIT1 = 16'hfaaa;
    defparam count_438_add_4_11.INJECT1_0 = "NO";
    defparam count_438_add_4_11.INJECT1_1 = "NO";
    CCU2D count_438_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3313), .COUT(n3314), .S0(n88), .S1(n87));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(207[14:19])
    defparam count_438_add_4_9.INIT0 = 16'hfaaa;
    defparam count_438_add_4_9.INIT1 = 16'hfaaa;
    defparam count_438_add_4_9.INJECT1_0 = "NO";
    defparam count_438_add_4_9.INJECT1_1 = "NO";
    CCU2D count_438_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3312), .COUT(n3313), .S0(n90), .S1(n89));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(207[14:19])
    defparam count_438_add_4_7.INIT0 = 16'hfaaa;
    defparam count_438_add_4_7.INIT1 = 16'hfaaa;
    defparam count_438_add_4_7.INJECT1_0 = "NO";
    defparam count_438_add_4_7.INJECT1_1 = "NO";
    FD1P3IX IR_i0_i12 (.D(MBR[11]), .SP(led_c_enable_64), .CD(n3680), 
            .CK(led_c), .Q(CI_c_11));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam IR_i0_i12.GSR = "DISABLED";
    FD1P3IX IR_i0_i13 (.D(MBR[12]), .SP(led_c_enable_64), .CD(n3680), 
            .CK(led_c), .Q(CI_c_12));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam IR_i0_i13.GSR = "DISABLED";
    CCU2D count_438_add_4_5 (.A0(n15), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3311), 
          .COUT(n3312), .S0(n92), .S1(n91));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(207[14:19])
    defparam count_438_add_4_5.INIT0 = 16'hfaaa;
    defparam count_438_add_4_5.INIT1 = 16'hfaaa;
    defparam count_438_add_4_5.INJECT1_0 = "NO";
    defparam count_438_add_4_5.INJECT1_1 = "NO";
    FD1P3IX MBR_i0_i22 (.D(data_out_23__N_500[22]), .SP(led_c_enable_64), 
            .CD(n3680), .CK(led_c), .Q(MBR[22]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MBR_i0_i22.GSR = "DISABLED";
    FD1P3IX MBR_i0_i23 (.D(data_out_23__N_500[23]), .SP(led_c_enable_64), 
            .CD(n3680), .CK(led_c), .Q(MBR[23]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MBR_i0_i23.GSR = "DISABLED";
    FD1P3IX IR_i0_i2 (.D(MBR[1]), .SP(led_c_enable_64), .CD(n3680), .CK(led_c), 
            .Q(CI_c_1));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam IR_i0_i2.GSR = "DISABLED";
    FD1P3IX IR_i0_i14 (.D(MBR[13]), .SP(led_c_enable_64), .CD(n3680), 
            .CK(led_c), .Q(CI_c_13));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam IR_i0_i14.GSR = "DISABLED";
    FD1P3IX IR_i0_i15 (.D(MBR[14]), .SP(led_c_enable_64), .CD(n3680), 
            .CK(led_c), .Q(CI_c_14));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam IR_i0_i15.GSR = "DISABLED";
    CCU2D count_438_add_4_3 (.A0(n17), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n16), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3310), 
          .COUT(n3311), .S0(n94), .S1(n93));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(207[14:19])
    defparam count_438_add_4_3.INIT0 = 16'hfaaa;
    defparam count_438_add_4_3.INIT1 = 16'hfaaa;
    defparam count_438_add_4_3.INJECT1_0 = "NO";
    defparam count_438_add_4_3.INJECT1_1 = "NO";
    FD1P3IX IR_i0_i16 (.D(MBR[15]), .SP(led_c_enable_64), .CD(n3680), 
            .CK(led_c), .Q(CI_c_15));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam IR_i0_i16.GSR = "DISABLED";
    LUT4 i1301_2_lut_3_lut_4_lut_rep_107 (.A(global_state[0]), .B(stop_run_c), 
         .C(global_state[1]), .D(reset_c), .Z(n3680)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam i1301_2_lut_3_lut_4_lut_rep_107.init = 16'h0010;
    LUT4 i1784_2_lut (.A(n1347), .B(reset_c), .Z(clk_0_enable_11)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(173[3] 195[10])
    defparam i1784_2_lut.init = 16'h1111;
    LUT4 i1752_2_lut_3_lut_4_lut_4_lut_4_lut_then_3_lut (.A(reset_c), .B(bcd_out_15__N_463), 
         .C(bcd_out_15__N_459), .Z(n3610)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1752_2_lut_3_lut_4_lut_4_lut_4_lut_then_3_lut.init = 16'hefef;
    LUT4 i1752_2_lut_3_lut_4_lut_4_lut_4_lut_else_3_lut (.A(reset_c), .B(bcd_out_15__N_463), 
         .C(bcd_out_15__N_459), .D(bcd_out_15__N_455), .Z(n3609)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1752_2_lut_3_lut_4_lut_4_lut_4_lut_else_3_lut.init = 16'hfffb;
    LUT4 i1301_2_lut_3_lut_4_lut_rep_106 (.A(global_state[0]), .B(stop_run_c), 
         .C(global_state[1]), .D(reset_c), .Z(n3679)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam i1301_2_lut_3_lut_4_lut_rep_106.init = 16'h0010;
    LUT4 i935_3_lut (.A(n2611), .B(un[0]), .C(temp_control[3]), .Z(n2612)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(176[4] 193[13])
    defparam i935_3_lut.init = 16'hcaca;
    LUT4 i1756_4_lut_4_lut_4_lut_then_3_lut (.A(reset_c), .B(n3585), .C(Q[1]), 
         .Z(n3613)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1756_4_lut_4_lut_4_lut_then_3_lut.init = 16'hfbfb;
    LUT4 i1756_4_lut_4_lut_4_lut_else_3_lut (.A(reset_c), .B(n3585), .C(Q[1]), 
         .D(bcd_out_15__N_479), .Z(n3612)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1756_4_lut_4_lut_4_lut_else_3_lut.init = 16'hffef;
    LUT4 i1770_2_lut (.A(reset_c), .B(n3270), .Z(n2996)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1770_2_lut.init = 16'h4444;
    LUT4 reduce_or_159_i1_2_lut (.A(temp_control[3]), .B(n1347), .Z(n1363)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(176[4] 193[13])
    defparam reduce_or_159_i1_2_lut.init = 16'heeee;
    LUT4 i1040_3_lut (.A(n2719), .B(un[6]), .C(temp_control[3]), .Z(n2720)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(176[4] 193[13])
    defparam i1040_3_lut.init = 16'hcaca;
    LUT4 i1039_4_lut (.A(ce[6]), .B(de[6]), .C(temp_control[2]), .D(temp_control[1]), 
         .Z(n2719)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(176[4] 193[13])
    defparam i1039_4_lut.init = 16'hcac0;
    LUT4 stop_run_I_0_1_lut (.A(stop_run_c), .Z(stop_run_N_93)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(133[33:45])
    defparam stop_run_I_0_1_lut.init = 16'h5555;
    LUT4 i1442_4_lut (.A(address_bus[0]), .B(n3679), .C(MAR[0]), .D(n3248), 
         .Z(address_bus_7__N_80[0])) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam i1442_4_lut.init = 16'h2230;
    LUT4 i1038_3_lut (.A(n2717), .B(un[5]), .C(temp_control[3]), .Z(n2718)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(176[4] 193[13])
    defparam i1038_3_lut.init = 16'hcaca;
    LUT4 i1037_4_lut (.A(ce[5]), .B(de[5]), .C(temp_control[2]), .D(temp_control[1]), 
         .Z(n2717)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(176[4] 193[13])
    defparam i1037_4_lut.init = 16'hcacf;
    LUT4 i1_2_lut (.A(clk_0), .B(n3270), .Z(clk_0_N_261)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i1036_3_lut (.A(n2715), .B(un[4]), .C(temp_control[3]), .Z(n2716)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(176[4] 193[13])
    defparam i1036_3_lut.init = 16'hcaca;
    LUT4 i1035_4_lut (.A(ce[4]), .B(de[4]), .C(temp_control[2]), .D(temp_control[1]), 
         .Z(n2715)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(176[4] 193[13])
    defparam i1035_4_lut.init = 16'hcacf;
    LUT4 i1576_4_lut (.A(count[16]), .B(count[17]), .C(n3260), .D(count[15]), 
         .Z(n3270)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1576_4_lut.init = 16'hccc8;
    LUT4 i1034_3_lut (.A(n2713), .B(un[3]), .C(temp_control[3]), .Z(n2714)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(176[4] 193[13])
    defparam i1034_3_lut.init = 16'hcaca;
    LUT4 i1566_4_lut (.A(count[13]), .B(count[14]), .C(n3245), .D(count[12]), 
         .Z(n3260)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1566_4_lut.init = 16'hccc8;
    LUT4 i1032_3_lut (.A(n2711), .B(un[2]), .C(temp_control[3]), .Z(n2712)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(176[4] 193[13])
    defparam i1032_3_lut.init = 16'hcaca;
    LUT4 i1031_4_lut (.A(ce[2]), .B(de[2]), .C(temp_control[2]), .D(temp_control[1]), 
         .Z(n2711)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(176[4] 193[13])
    defparam i1031_4_lut.init = 16'hcacf;
    CCU2D count1_440_add_4_25 (.A0(count1[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count1[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3308), .S0(n107), .S1(n106));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440_add_4_25.INIT0 = 16'hfaaa;
    defparam count1_440_add_4_25.INIT1 = 16'hfaaa;
    defparam count1_440_add_4_25.INJECT1_0 = "NO";
    defparam count1_440_add_4_25.INJECT1_1 = "NO";
    CCU2D count1_440_add_4_23 (.A0(count1[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count1[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3307), .COUT(n3308), .S0(n109), .S1(n108));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440_add_4_23.INIT0 = 16'hfaaa;
    defparam count1_440_add_4_23.INIT1 = 16'hfaaa;
    defparam count1_440_add_4_23.INJECT1_0 = "NO";
    defparam count1_440_add_4_23.INJECT1_1 = "NO";
    CCU2D count1_440_add_4_21 (.A0(count1[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count1[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3306), .COUT(n3307), .S0(n111), .S1(n110));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440_add_4_21.INIT0 = 16'hfaaa;
    defparam count1_440_add_4_21.INIT1 = 16'hfaaa;
    defparam count1_440_add_4_21.INJECT1_0 = "NO";
    defparam count1_440_add_4_21.INJECT1_1 = "NO";
    CCU2D count1_440_add_4_19 (.A0(count1[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count1[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3305), .COUT(n3306), .S0(n113), .S1(n112));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440_add_4_19.INIT0 = 16'hfaaa;
    defparam count1_440_add_4_19.INIT1 = 16'hfaaa;
    defparam count1_440_add_4_19.INJECT1_0 = "NO";
    defparam count1_440_add_4_19.INJECT1_1 = "NO";
    CCU2D count1_440_add_4_17 (.A0(count1[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count1[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3304), .COUT(n3305), .S0(n115), .S1(n114));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440_add_4_17.INIT0 = 16'hfaaa;
    defparam count1_440_add_4_17.INIT1 = 16'hfaaa;
    defparam count1_440_add_4_17.INJECT1_0 = "NO";
    defparam count1_440_add_4_17.INJECT1_1 = "NO";
    LUT4 i14_4_lut (.A(de[1]), .B(un[1]), .C(temp_control[3]), .D(temp_control[2]), 
         .Z(n6_adj_623)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(176[4] 193[13])
    defparam i14_4_lut.init = 16'hcacf;
    LUT4 i1750_2_lut (.A(reset_c), .B(n3272), .Z(n2908)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1750_2_lut.init = 16'h4444;
    CCU2D count1_440_add_4_15 (.A0(count1[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count1[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3303), .COUT(n3304), .S0(n117), .S1(n116));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440_add_4_15.INIT0 = 16'hfaaa;
    defparam count1_440_add_4_15.INIT1 = 16'hfaaa;
    defparam count1_440_add_4_15.INJECT1_0 = "NO";
    defparam count1_440_add_4_15.INJECT1_1 = "NO";
    LUT4 i1553_4_lut (.A(count[10]), .B(count[11]), .C(n3320), .D(count[9]), 
         .Z(n3245)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1553_4_lut.init = 16'hccc8;
    FD1P3IX IR_i0_i17 (.D(MBR[16]), .SP(led_c_enable_64), .CD(n3680), 
            .CK(led_c), .Q(CI_c_16));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam IR_i0_i17.GSR = "DISABLED";
    LUT4 i4_4_lut (.A(count[6]), .B(count[8]), .C(count[7]), .D(n6), 
         .Z(n3320)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_adj_54 (.A(count[4]), .B(count[5]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_54.init = 16'h8888;
    LUT4 i1_2_lut_adj_55 (.A(led_c), .B(n3272), .Z(led_N_259)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_55.init = 16'h6666;
    LUT4 i1578_4_lut (.A(count1[23]), .B(count1[24]), .C(n3319), .D(count1[22]), 
         .Z(n3272)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1578_4_lut.init = 16'hccc8;
    CCU2D count1_440_add_4_13 (.A0(count1[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count1[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3302), .COUT(n3303), .S0(n119), .S1(n118));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440_add_4_13.INIT0 = 16'hfaaa;
    defparam count1_440_add_4_13.INIT1 = 16'hfaaa;
    defparam count1_440_add_4_13.INJECT1_0 = "NO";
    defparam count1_440_add_4_13.INJECT1_1 = "NO";
    FD1P3IX MBR_i0_i19 (.D(data_out_23__N_500[19]), .SP(led_c_enable_64), 
            .CD(n3680), .CK(led_c), .Q(MBR[19]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MBR_i0_i19.GSR = "DISABLED";
    LUT4 i2_4_lut (.A(count1[21]), .B(n5), .C(count1[20]), .D(n6_adj_622), 
         .Z(n3319)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut.init = 16'ha080;
    LUT4 i1_4_lut (.A(count1[15]), .B(count1[19]), .C(count1[16]), .D(n4), 
         .Z(n5)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut.init = 16'hfcec;
    LUT4 i1556_2_lut_3_lut_4_lut (.A(global_state[0]), .B(stop_run_c), .C(global_state[1]), 
         .D(reset_c), .Z(n3248)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam i1556_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1252_2_lut_3_lut (.A(global_state[0]), .B(stop_run_c), .C(global_state[1]), 
         .Z(n2934)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam i1252_2_lut_3_lut.init = 16'h1010;
    LUT4 i1781_2_lut_rep_101_3_lut (.A(global_state[0]), .B(stop_run_c), 
         .C(reset_c), .Z(led_c_enable_64)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam i1781_2_lut_rep_101_3_lut.init = 16'h0101;
    LUT4 i934_3_lut_4_lut (.A(ce[3]), .B(temp_control[1]), .C(temp_control[2]), 
         .D(de[0]), .Z(n2611)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(176[4] 193[13])
    defparam i934_3_lut_4_lut.init = 16'hfb0b;
    LUT4 i1033_3_lut_4_lut (.A(ce[3]), .B(temp_control[1]), .C(temp_control[2]), 
         .D(de[3]), .Z(n2713)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(176[4] 193[13])
    defparam i1033_3_lut_4_lut.init = 16'hfb0b;
    LUT4 i807_1_lut_rep_104 (.A(global_state[1]), .Z(n3604)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(134[4] 165[13])
    defparam i807_1_lut_rep_104.init = 16'h5555;
    LUT4 i1402_2_lut_2_lut (.A(global_state[1]), .B(global_state[0]), .Z(global_state_1__N_90[1])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(134[4] 165[13])
    defparam i1402_2_lut_2_lut.init = 16'h4444;
    LUT4 i203_1_lut_rep_105 (.A(reset_c), .Z(clk_enable_43)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i203_1_lut_rep_105.init = 16'h5555;
    LUT4 i1486_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n3568), .C(n3580), 
         .D(bcd_out_15__N_463), .Z(n3173)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1486_2_lut_3_lut_4_lut_4_lut.init = 16'h0440;
    FD1P3IX IR_i0_i18 (.D(MBR[17]), .SP(led_c_enable_64), .CD(n3680), 
            .CK(led_c), .Q(CI_c_17));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam IR_i0_i18.GSR = "DISABLED";
    LUT4 i1509_2_lut_rep_81_3_lut_4_lut_4_lut (.A(reset_c), .B(n3599), .C(n3588), 
         .D(bcd_out_15__N_437), .Z(n3581)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1509_2_lut_rep_81_3_lut_4_lut_4_lut.init = 16'h4440;
    LUT4 i1501_2_lut_rep_64_3_lut_3_lut (.A(reset_c), .B(n3583), .C(Q[1]), 
         .Z(n3564)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1501_2_lut_rep_64_3_lut_3_lut.init = 16'h1414;
    CCU2D count1_440_add_4_11 (.A0(count1[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count1[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3301), .COUT(n3302), .S0(n121), .S1(n120));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440_add_4_11.INIT0 = 16'hfaaa;
    defparam count1_440_add_4_11.INIT1 = 16'hfaaa;
    defparam count1_440_add_4_11.INJECT1_0 = "NO";
    defparam count1_440_add_4_11.INJECT1_1 = "NO";
    LUT4 i1502_2_lut_rep_66_4_lut_4_lut (.A(reset_c), .B(Q[1]), .C(n3583), 
         .D(n3585), .Z(n3566)) /* synthesis lut_function=(!(A+!(B (D)+!B !(C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1502_2_lut_rep_66_4_lut_4_lut.init = 16'h4510;
    CCU2D count1_440_add_4_9 (.A0(n18_adj_621), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count1[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3300), .COUT(n3301), .S0(n123), .S1(n122));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440_add_4_9.INIT0 = 16'hfaaa;
    defparam count1_440_add_4_9.INIT1 = 16'hfaaa;
    defparam count1_440_add_4_9.INJECT1_0 = "NO";
    defparam count1_440_add_4_9.INJECT1_1 = "NO";
    CCU2D count1_440_add_4_7 (.A0(n20), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n19), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3299), 
          .COUT(n3300), .S0(n125), .S1(n124));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440_add_4_7.INIT0 = 16'hfaaa;
    defparam count1_440_add_4_7.INIT1 = 16'hfaaa;
    defparam count1_440_add_4_7.INJECT1_0 = "NO";
    defparam count1_440_add_4_7.INJECT1_1 = "NO";
    FD1P3IX IR_i0_i19 (.D(MBR[18]), .SP(led_c_enable_64), .CD(n3680), 
            .CK(led_c), .Q(CI_c_18));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam IR_i0_i19.GSR = "DISABLED";
    FD1P3IX IR_i0_i20 (.D(MBR[19]), .SP(led_c_enable_64), .CD(n3680), 
            .CK(led_c), .Q(CI_c_19));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam IR_i0_i20.GSR = "DISABLED";
    FD1P3IX IR_i0_i21 (.D(MBR[20]), .SP(led_c_enable_64), .CD(n3680), 
            .CK(led_c), .Q(CI_c_20));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam IR_i0_i21.GSR = "DISABLED";
    LUT4 n1536_bdd_4_lut_4_lut_4_lut (.A(reset_c), .B(n3572), .C(Q[0]), 
         .D(n3573), .Z(n3555)) /* synthesis lut_function=(A+!(B (C+!(D))+!B !((D)+!C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam n1536_bdd_4_lut_4_lut_4_lut.init = 16'hbfab;
    FD1P3IX IR_i0_i22 (.D(MBR[21]), .SP(led_c_enable_64), .CD(n3680), 
            .CK(led_c), .Q(CI_c_21));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam IR_i0_i22.GSR = "DISABLED";
    LUT4 i1528_3_lut_4_lut_4_lut (.A(reset_c), .B(n3569), .C(n3576), .D(bcd_out_15__N_459), 
         .Z(n2791)) /* synthesis lut_function=(!(A+!(B+!(C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1528_3_lut_4_lut_4_lut.init = 16'h4554;
    FD1P3IX IR_i0_i23 (.D(MBR[22]), .SP(led_c_enable_64), .CD(n3680), 
            .CK(led_c), .Q(CI_c_22));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam IR_i0_i23.GSR = "DISABLED";
    CCU2D count1_440_add_4_5 (.A0(n22), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n21), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3298), 
          .COUT(n3299), .S0(n127), .S1(n126));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440_add_4_5.INIT0 = 16'hfaaa;
    defparam count1_440_add_4_5.INIT1 = 16'hfaaa;
    defparam count1_440_add_4_5.INJECT1_0 = "NO";
    defparam count1_440_add_4_5.INJECT1_1 = "NO";
    LUT4 i1504_2_lut_rep_60_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_483), 
         .C(bcd_out_15__N_479), .D(n3582), .Z(n3560)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1504_2_lut_rep_60_4_lut_4_lut_4_lut.init = 16'h1450;
    FD1P3IX MBR_i0_i16 (.D(data_out_23__N_500[16]), .SP(led_c_enable_64), 
            .CD(n3680), .CK(led_c), .Q(MBR[16]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MBR_i0_i16.GSR = "DISABLED";
    LUT4 i1758_2_lut_3_lut_3_lut_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_483), 
         .C(n3578), .D(n3573), .Z(n2662)) /* synthesis lut_function=(A+!(B (C (D))+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1758_2_lut_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hbeff;
    FD1P3IX IR_i0_i24 (.D(MBR[23]), .SP(led_c_enable_64), .CD(n3680), 
            .CK(led_c), .Q(CI_c_23));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam IR_i0_i24.GSR = "DISABLED";
    FD1P3AX display_i0_i2 (.D(n6_adj_623), .SP(clk_0_enable_11), .CK(clk_0), 
            .Q(display_c_1));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(173[3] 195[10])
    defparam display_i0_i2.GSR = "DISABLED";
    CCU2D count1_440_add_4_3 (.A0(n24), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n23), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3297), 
          .COUT(n3298), .S0(n129), .S1(n128));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440_add_4_3.INIT0 = 16'hfaaa;
    defparam count1_440_add_4_3.INIT1 = 16'hfaaa;
    defparam count1_440_add_4_3.INJECT1_0 = "NO";
    defparam count1_440_add_4_3.INJECT1_1 = "NO";
    LUT4 i1792_2_lut_rep_103 (.A(global_state[0]), .B(stop_run_c), .Z(led_c_enable_62)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam i1792_2_lut_rep_103.init = 16'h1111;
    LUT4 i1525_3_lut_4_lut_4_lut (.A(reset_c), .B(n3572), .C(n3578), .D(bcd_out_15__N_483), 
         .Z(n2787)) /* synthesis lut_function=(!(A+!(B+!(C (D)+!C !(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1525_3_lut_4_lut_4_lut.init = 16'h4554;
    FD1P3IX MAR_i0_i7 (.D(bcd_out_15__N_380), .SP(led_c_enable_64), .CD(n3680), 
            .CK(led_c), .Q(MAR[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MAR_i0_i7.GSR = "DISABLED";
    FD1P3IX MAR_i0_i6 (.D(bcd_out_15__N_382), .SP(led_c_enable_64), .CD(n3680), 
            .CK(led_c), .Q(MAR[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MAR_i0_i6.GSR = "DISABLED";
    FD1P3IX MAR_i0_i5 (.D(Q[5]), .SP(led_c_enable_64), .CD(n3680), .CK(led_c), 
            .Q(MAR[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MAR_i0_i5.GSR = "DISABLED";
    FD1P3IX MAR_i0_i4 (.D(Q[4]), .SP(led_c_enable_64), .CD(n3680), .CK(led_c), 
            .Q(MAR[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MAR_i0_i4.GSR = "DISABLED";
    LUT4 i1754_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n3562), .C(n3576), 
         .D(bcd_out_15__N_459), .Z(n2635)) /* synthesis lut_function=(A (B)+!A (B+!(C (D)+!C !(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1754_2_lut_3_lut_4_lut_4_lut.init = 16'hcddc;
    LUT4 i1745_2_lut_3_lut_3_lut_3_lut_3_lut (.A(reset_c), .B(n3573), .C(Q[0]), 
         .Z(n3463)) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1745_2_lut_3_lut_3_lut_3_lut_3_lut.init = 16'hebeb;
    FD1P3IX MAR_i0_i3 (.D(Q[3]), .SP(led_c_enable_64), .CD(n3680), .CK(led_c), 
            .Q(MAR[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MAR_i0_i3.GSR = "DISABLED";
    FD1P3IX MAR_i0_i2 (.D(Q[2]), .SP(led_c_enable_64), .CD(n2953), .CK(led_c), 
            .Q(MAR[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MAR_i0_i2.GSR = "DISABLED";
    FD1P3IX MAR_i0_i1 (.D(Q[1]), .SP(led_c_enable_64), .CD(n2953), .CK(led_c), 
            .Q(MAR[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MAR_i0_i1.GSR = "DISABLED";
    FD1P3IX count1_440__i20 (.D(n110), .SP(clk_enable_43), .CD(n2908), 
            .CK(clk), .Q(count1[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440__i20.GSR = "DISABLED";
    CCU2D count1_440_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n25), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3297), .S1(n130));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440_add_4_1.INIT0 = 16'hF000;
    defparam count1_440_add_4_1.INIT1 = 16'h0555;
    defparam count1_440_add_4_1.INJECT1_0 = "NO";
    defparam count1_440_add_4_1.INJECT1_1 = "NO";
    FD1P3IX count1_440__i21 (.D(n109), .SP(clk_enable_43), .CD(n2908), 
            .CK(clk), .Q(count1[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440__i21.GSR = "DISABLED";
    FD1P3IX count1_440__i22 (.D(n108), .SP(clk_enable_43), .CD(n2908), 
            .CK(clk), .Q(count1[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440__i22.GSR = "DISABLED";
    LUT4 i1428_2_lut_3_lut_3_lut (.A(reset_c), .B(n2646), .C(Q[0]), .Z(DISPLAY_6__N_493[4])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1428_2_lut_3_lut_3_lut.init = 16'h8c8c;
    LUT4 i1226_1_lut_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(n3599), .C(n3588), 
         .D(bcd_out_15__N_437), .Z(n2913)) /* synthesis lut_function=(A+!(B (C+(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1226_1_lut_2_lut_3_lut_4_lut_4_lut.init = 16'hbbbf;
    FD1P3IX count1_440__i23 (.D(n107), .SP(clk_enable_43), .CD(n2908), 
            .CK(clk), .Q(count1[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440__i23.GSR = "DISABLED";
    FD1P3IX count_438__i17 (.D(n78), .SP(clk_enable_43), .CD(n2996), .CK(clk), 
            .Q(count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(207[14:19])
    defparam count_438__i17.GSR = "DISABLED";
    FD1P3IX count1_440__i24 (.D(n106), .SP(clk_enable_43), .CD(n2908), 
            .CK(clk), .Q(count1[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440__i24.GSR = "DISABLED";
    FD1P3IX MBR_i0_i21 (.D(data_out_23__N_500[21]), .SP(led_c_enable_64), 
            .CD(n2953), .CK(led_c), .Q(MBR[21]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MBR_i0_i21.GSR = "DISABLED";
    LUT4 Qbcd_7__bdd_4_lut_1797_4_lut (.A(reset_c), .B(n3569), .C(n3567), 
         .D(n3568), .Z(n3535)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam Qbcd_7__bdd_4_lut_1797_4_lut.init = 16'h0203;
    FD1P3IX PC__i2 (.D(n188), .SP(led_c_enable_62), .CD(n2934), .CK(led_c), 
            .Q(Q[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam PC__i2.GSR = "ENABLED";
    LUT4 i2_2_lut (.A(count1[17]), .B(count1[18]), .Z(n6_adj_622)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i1484_2_lut_3_lut_4_lut_4_lut (.A(reset_c), .B(Q[1]), .C(n3583), 
         .D(Q[0]), .Z(n3171)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1484_2_lut_3_lut_4_lut_4_lut.init = 16'h1400;
    FD1P3IX PC__i3 (.D(n187), .SP(led_c_enable_62), .CD(n2934), .CK(led_c), 
            .Q(Q[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam PC__i3.GSR = "ENABLED";
    LUT4 n1536_bdd_4_lut_1801_4_lut (.A(reset_c), .B(n3568), .C(n3569), 
         .D(n3562), .Z(n3538)) /* synthesis lut_function=(A+!(B (C+(D))+!B (C (D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam n1536_bdd_4_lut_1801_4_lut.init = 16'habbf;
    LUT4 i1_4_lut_adj_56 (.A(n3321), .B(count1[14]), .C(count1[13]), .D(count1[12]), 
         .Z(n4)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_56.init = 16'hfcec;
    CCU2D add_7_9 (.A0(bcd_out_15__N_380), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3296), .S0(n182));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_7_9.INIT0 = 16'h5aaa;
    defparam add_7_9.INIT1 = 16'h0000;
    defparam add_7_9.INJECT1_0 = "NO";
    defparam add_7_9.INJECT1_1 = "NO";
    FD1P3IX MBR_i0_i17 (.D(data_out_23__N_500[17]), .SP(led_c_enable_64), 
            .CD(n3680), .CK(led_c), .Q(MBR[17]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MBR_i0_i17.GSR = "DISABLED";
    FD1P3IX count_438__i16 (.D(n79), .SP(clk_enable_43), .CD(n2996), .CK(clk), 
            .Q(count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(207[14:19])
    defparam count_438__i16.GSR = "DISABLED";
    FD1P3IX count_438__i15 (.D(n80), .SP(clk_enable_43), .CD(n2996), .CK(clk), 
            .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(207[14:19])
    defparam count_438__i15.GSR = "DISABLED";
    CCU2D add_7_7 (.A0(Q[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bcd_out_15__N_382), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3295), .COUT(n3296), .S0(n184), .S1(n183));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_7_7.INIT0 = 16'h5aaa;
    defparam add_7_7.INIT1 = 16'h5aaa;
    defparam add_7_7.INJECT1_0 = "NO";
    defparam add_7_7.INJECT1_1 = "NO";
    LUT4 i1445_2_lut_rep_100_2_lut (.A(reset_c), .B(Q[0]), .Z(n3600)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1445_2_lut_rep_100_2_lut.init = 16'h4444;
    CCU2D add_7_5 (.A0(Q[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Q[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3294), 
          .COUT(n3295), .S0(n186), .S1(n185));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_7_5.INIT0 = 16'h5aaa;
    defparam add_7_5.INIT1 = 16'h5aaa;
    defparam add_7_5.INJECT1_0 = "NO";
    defparam add_7_5.INJECT1_1 = "NO";
    FD1P3IX PC__i4 (.D(n186), .SP(led_c_enable_62), .CD(n2934), .CK(led_c), 
            .Q(Q[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam PC__i4.GSR = "ENABLED";
    FD1P3IX PC__i5 (.D(n185), .SP(led_c_enable_62), .CD(n2934), .CK(led_c), 
            .Q(Q[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam PC__i5.GSR = "ENABLED";
    LUT4 Qbcd_7__bdd_4_lut_1800_4_lut (.A(reset_c), .B(n3569), .C(n3562), 
         .D(n3568), .Z(n3536)) /* synthesis lut_function=(A (C)+!A !(B (D)+!B ((D)+!C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam Qbcd_7__bdd_4_lut_1800_4_lut.init = 16'ha0f4;
    FD1P3IX PC__i6 (.D(n184), .SP(led_c_enable_62), .CD(n2934), .CK(led_c), 
            .Q(Q[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam PC__i6.GSR = "ENABLED";
    LUT4 i1747_2_lut_2_lut_3_lut_4_lut_3_lut (.A(reset_c), .B(n3568), .C(n3567), 
         .Z(n3465)) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1747_2_lut_2_lut_3_lut_4_lut_3_lut.init = 16'hebeb;
    FD1P3IX PC__i7 (.D(n183), .SP(led_c_enable_62), .CD(n2934), .CK(led_c), 
            .Q(bcd_out_15__N_382)) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam PC__i7.GSR = "ENABLED";
    FD1P3IX PC__i8 (.D(n182), .SP(led_c_enable_62), .CD(n2934), .CK(led_c), 
            .Q(bcd_out_15__N_380)) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam PC__i8.GSR = "ENABLED";
    LUT4 i1503_2_lut_rep_58_3_lut_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_483), 
         .C(bcd_out_15__N_479), .D(n3582), .Z(n3558)) /* synthesis lut_function=(!(A+(B (D)+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1503_2_lut_rep_58_3_lut_4_lut_4_lut_4_lut.init = 16'h1044;
    FD1P3IX count1_440__i4 (.D(n126), .SP(clk_enable_43), .CD(n2908), 
            .CK(clk), .Q(n21)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440__i4.GSR = "DISABLED";
    FD1P3IX count1_440__i5 (.D(n125), .SP(clk_enable_43), .CD(n2908), 
            .CK(clk), .Q(n20)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440__i5.GSR = "DISABLED";
    LUT4 i1505_2_lut_rep_61_3_lut_3_lut (.A(reset_c), .B(n3580), .C(bcd_out_15__N_463), 
         .Z(n3561)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1505_2_lut_rep_61_3_lut_3_lut.init = 16'h1414;
    FD1P3IX count1_440__i6 (.D(n124), .SP(clk_enable_43), .CD(n2908), 
            .CK(clk), .Q(n19)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440__i6.GSR = "DISABLED";
    LUT4 i961_2_lut_3_lut_3_lut_4_lut_4_lut_4_lut (.A(reset_c), .B(Q[1]), 
         .C(n3583), .D(n3585), .Z(n2639)) /* synthesis lut_function=(A+!(B (C (D))+!B !(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i961_2_lut_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hbeff;
    FD1P3IX count1_440__i7 (.D(n123), .SP(clk_enable_43), .CD(n2908), 
            .CK(clk), .Q(n18_adj_621)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440__i7.GSR = "DISABLED";
    FD1P3IX count1_440__i8 (.D(n122), .SP(clk_enable_43), .CD(n2908), 
            .CK(clk), .Q(count1[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440__i8.GSR = "DISABLED";
    FD1P3IX count1_440__i9 (.D(n121), .SP(clk_enable_43), .CD(n2908), 
            .CK(clk), .Q(count1[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440__i9.GSR = "DISABLED";
    FD1P3IX count1_440__i10 (.D(n120), .SP(clk_enable_43), .CD(n2908), 
            .CK(clk), .Q(count1[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440__i10.GSR = "DISABLED";
    FD1P3IX count1_440__i11 (.D(n119), .SP(clk_enable_43), .CD(n2908), 
            .CK(clk), .Q(count1[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440__i11.GSR = "DISABLED";
    LUT4 i377_1_lut_2_lut_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_459), 
         .C(bcd_out_15__N_455), .D(n3579), .Z(DISPLAY_6__N_493_adj_631[4])) /* synthesis lut_function=(A+(B (C (D)+!C !(D))+!B !(C))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i377_1_lut_2_lut_4_lut_4_lut_4_lut.init = 16'hebaf;
    LUT4 i1508_2_lut_rep_57_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_459), 
         .C(bcd_out_15__N_455), .D(n3579), .Z(n3557)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1508_2_lut_rep_57_4_lut_4_lut_4_lut.init = 16'h1450;
    VLO i1 (.Z(GND_net));
    LUT4 i1494_4_lut (.A(address_bus[1]), .B(n3679), .C(MAR[1]), .D(n3248), 
         .Z(address_bus_7__N_80[1])) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam i1494_4_lut.init = 16'h2230;
    LUT4 i1507_2_lut_rep_56_3_lut_4_lut_4_lut_4_lut (.A(reset_c), .B(bcd_out_15__N_459), 
         .C(bcd_out_15__N_455), .D(n3579), .Z(n3556)) /* synthesis lut_function=(!(A+(B (D)+!B !(C (D))))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(12[2:7])
    defparam i1507_2_lut_rep_56_3_lut_4_lut_4_lut_4_lut.init = 16'h1044;
    LUT4 i2_4_lut_adj_57 (.A(count1[11]), .B(count1[8]), .C(count1[10]), 
         .D(count1[9]), .Z(n3321)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_57.init = 16'ha080;
    FD1P3IX count_438__i14 (.D(n81), .SP(clk_enable_43), .CD(n2996), .CK(clk), 
            .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(207[14:19])
    defparam count_438__i14.GSR = "DISABLED";
    FD1P3IX count_438__i13 (.D(n82), .SP(clk_enable_43), .CD(n2996), .CK(clk), 
            .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(207[14:19])
    defparam count_438__i13.GSR = "DISABLED";
    FD1P3IX count_438__i12 (.D(n83), .SP(clk_enable_43), .CD(n2996), .CK(clk), 
            .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(207[14:19])
    defparam count_438__i12.GSR = "DISABLED";
    FD1P3IX count_438__i11 (.D(n84), .SP(clk_enable_43), .CD(n2996), .CK(clk), 
            .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(207[14:19])
    defparam count_438__i11.GSR = "DISABLED";
    FD1P3IX count_438__i10 (.D(n85), .SP(clk_enable_43), .CD(n2996), .CK(clk), 
            .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(207[14:19])
    defparam count_438__i10.GSR = "DISABLED";
    FD1P3IX count_438__i9 (.D(n86), .SP(clk_enable_43), .CD(n2996), .CK(clk), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(207[14:19])
    defparam count_438__i9.GSR = "DISABLED";
    FD1P3IX count_438__i8 (.D(n87), .SP(clk_enable_43), .CD(n2996), .CK(clk), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(207[14:19])
    defparam count_438__i8.GSR = "DISABLED";
    FD1P3IX count_438__i7 (.D(n88), .SP(clk_enable_43), .CD(n2996), .CK(clk), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(207[14:19])
    defparam count_438__i7.GSR = "DISABLED";
    FD1P3IX count_438__i6 (.D(n89), .SP(clk_enable_43), .CD(n2996), .CK(clk), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(207[14:19])
    defparam count_438__i6.GSR = "DISABLED";
    FD1P3IX count_438__i5 (.D(n90), .SP(clk_enable_43), .CD(n2996), .CK(clk), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(207[14:19])
    defparam count_438__i5.GSR = "DISABLED";
    FD1P3IX count_438__i4 (.D(n91), .SP(clk_enable_43), .CD(n2996), .CK(clk), 
            .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(207[14:19])
    defparam count_438__i4.GSR = "DISABLED";
    FD1P3IX count_438__i3 (.D(n92), .SP(clk_enable_43), .CD(n2996), .CK(clk), 
            .Q(n15)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(207[14:19])
    defparam count_438__i3.GSR = "DISABLED";
    FD1P3IX count_438__i2 (.D(n93), .SP(clk_enable_43), .CD(n2996), .CK(clk), 
            .Q(n16)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(207[14:19])
    defparam count_438__i2.GSR = "DISABLED";
    FD1P3IX count_438__i1 (.D(n94), .SP(clk_enable_43), .CD(n2996), .CK(clk), 
            .Q(n17)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(207[14:19])
    defparam count_438__i1.GSR = "DISABLED";
    FD1P3IX MAR_i0_i0 (.D(Q[0]), .SP(led_c_enable_64), .CD(n3680), .CK(led_c), 
            .Q(MAR[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MAR_i0_i0.GSR = "DISABLED";
    FD1P3IX MBR_i0_i2 (.D(data_out_23__N_500[2]), .SP(led_c_enable_64), 
            .CD(n3680), .CK(led_c), .Q(MBR[2]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MBR_i0_i2.GSR = "DISABLED";
    FD1P3IX MBR_i0_i3 (.D(data_out_23__N_500[3]), .SP(led_c_enable_64), 
            .CD(n3680), .CK(led_c), .Q(MBR[3]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MBR_i0_i3.GSR = "DISABLED";
    FD1P3IX MBR_i0_i4 (.D(data_out_23__N_500[4]), .SP(led_c_enable_64), 
            .CD(n3680), .CK(led_c), .Q(MBR[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MBR_i0_i4.GSR = "DISABLED";
    FD1P3IX MBR_i0_i5 (.D(data_out_23__N_500[5]), .SP(led_c_enable_64), 
            .CD(n3680), .CK(led_c), .Q(MBR[5]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MBR_i0_i5.GSR = "DISABLED";
    FD1P3IX MBR_i0_i6 (.D(data_out_23__N_500[6]), .SP(led_c_enable_64), 
            .CD(n3680), .CK(led_c), .Q(MBR[6]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MBR_i0_i6.GSR = "DISABLED";
    FD1P3IX MBR_i0_i7 (.D(data_out_23__N_500[7]), .SP(led_c_enable_64), 
            .CD(n2953), .CK(led_c), .Q(MBR[7]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MBR_i0_i7.GSR = "DISABLED";
    FD1P3IX MBR_i0_i8 (.D(data_out_23__N_500[8]), .SP(led_c_enable_64), 
            .CD(n3680), .CK(led_c), .Q(MBR[8]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MBR_i0_i8.GSR = "DISABLED";
    FD1P3IX MBR_i0_i9 (.D(data_out_23__N_500[9]), .SP(led_c_enable_64), 
            .CD(n3680), .CK(led_c), .Q(MBR[9]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MBR_i0_i9.GSR = "DISABLED";
    FD1P3IX MBR_i0_i10 (.D(data_out_23__N_500[10]), .SP(led_c_enable_64), 
            .CD(n3680), .CK(led_c), .Q(MBR[10]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MBR_i0_i10.GSR = "DISABLED";
    FD1P3IX MBR_i0_i11 (.D(data_out_23__N_500[11]), .SP(led_c_enable_64), 
            .CD(n3680), .CK(led_c), .Q(MBR[11]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MBR_i0_i11.GSR = "DISABLED";
    FD1P3IX MBR_i0_i12 (.D(data_out_23__N_500[12]), .SP(led_c_enable_64), 
            .CD(n3680), .CK(led_c), .Q(MBR[12]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MBR_i0_i12.GSR = "DISABLED";
    FD1P3IX MBR_i0_i13 (.D(data_out_23__N_500[13]), .SP(led_c_enable_64), 
            .CD(n3680), .CK(led_c), .Q(MBR[13]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MBR_i0_i13.GSR = "DISABLED";
    FD1P3IX MBR_i0_i14 (.D(data_out_23__N_500[14]), .SP(led_c_enable_64), 
            .CD(n2953), .CK(led_c), .Q(MBR[14]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MBR_i0_i14.GSR = "DISABLED";
    FD1P3IX MBR_i0_i18 (.D(data_out_23__N_500[18]), .SP(led_c_enable_64), 
            .CD(n3680), .CK(led_c), .Q(MBR[18]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MBR_i0_i18.GSR = "DISABLED";
    FD1P3IX MBR_i0_i15 (.D(data_out_23__N_500[15]), .SP(led_c_enable_64), 
            .CD(n3680), .CK(led_c), .Q(MBR[15]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MBR_i0_i15.GSR = "DISABLED";
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i1495_4_lut (.A(address_bus[2]), .B(n3679), .C(MAR[2]), .D(n3248), 
         .Z(address_bus_7__N_80[2])) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam i1495_4_lut.init = 16'h2230;
    LUT4 i1496_4_lut (.A(address_bus[3]), .B(n3679), .C(MAR[3]), .D(n3248), 
         .Z(address_bus_7__N_80[3])) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam i1496_4_lut.init = 16'h2230;
    CCU2D add_7_3 (.A0(Q[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Q[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3293), 
          .COUT(n3294), .S0(n188), .S1(n187));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_7_3.INIT0 = 16'h5aaa;
    defparam add_7_3.INIT1 = 16'h5aaa;
    defparam add_7_3.INJECT1_0 = "NO";
    defparam add_7_3.INJECT1_1 = "NO";
    LUT4 i1497_4_lut (.A(address_bus[4]), .B(n3679), .C(MAR[4]), .D(n3248), 
         .Z(address_bus_7__N_80[4])) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam i1497_4_lut.init = 16'h2230;
    FD1P3IX count1_440__i12 (.D(n118), .SP(clk_enable_43), .CD(n2908), 
            .CK(clk), .Q(count1[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440__i12.GSR = "DISABLED";
    FD1P3IX count1_440__i13 (.D(n117), .SP(clk_enable_43), .CD(n2908), 
            .CK(clk), .Q(count1[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440__i13.GSR = "DISABLED";
    LUT4 i1498_4_lut (.A(address_bus[5]), .B(n3679), .C(MAR[5]), .D(n3248), 
         .Z(address_bus_7__N_80[5])) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam i1498_4_lut.init = 16'h2230;
    FD1P3IX MBR_i0_i1 (.D(data_out_23__N_500[1]), .SP(led_c_enable_64), 
            .CD(n3680), .CK(led_c), .Q(MBR[1]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MBR_i0_i1.GSR = "DISABLED";
    FD1P3IX count1_440__i14 (.D(n116), .SP(clk_enable_43), .CD(n2908), 
            .CK(clk), .Q(count1[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440__i14.GSR = "DISABLED";
    FD1P3IX count1_440__i15 (.D(n115), .SP(clk_enable_43), .CD(n2908), 
            .CK(clk), .Q(count1[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440__i15.GSR = "DISABLED";
    FD1P3IX count1_440__i16 (.D(n114), .SP(clk_enable_43), .CD(n2908), 
            .CK(clk), .Q(count1[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440__i16.GSR = "DISABLED";
    FD1P3IX count1_440__i17 (.D(n113), .SP(clk_enable_43), .CD(n2908), 
            .CK(clk), .Q(count1[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440__i17.GSR = "DISABLED";
    FD1P3IX count1_440__i18 (.D(n112), .SP(clk_enable_43), .CD(n2908), 
            .CK(clk), .Q(count1[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440__i18.GSR = "DISABLED";
    FD1P3IX count1_440__i19 (.D(n111), .SP(clk_enable_43), .CD(n2908), 
            .CK(clk), .Q(count1[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440__i19.GSR = "DISABLED";
    ROM ROM_imp (.led_c(led_c), .n3678(n3678), .address_bus_7__N_80({address_bus_7__N_80}), 
        .reset_c(reset_c), .GND_net(GND_net), .VCC_net(VCC_net), .data_out_23__N_500({data_out_23__N_500}));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(124[10:13])
    FD1P3IX count1_440__i0 (.D(n130), .SP(clk_enable_43), .CD(n2908), 
            .CK(clk), .Q(n25)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440__i0.GSR = "DISABLED";
    FD1P3IX count1_440__i1 (.D(n129), .SP(clk_enable_43), .CD(n2908), 
            .CK(clk), .Q(n24)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440__i1.GSR = "DISABLED";
    FD1P3IX count1_440__i2 (.D(n128), .SP(clk_enable_43), .CD(n2908), 
            .CK(clk), .Q(n23)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440__i2.GSR = "DISABLED";
    LUT4 i1499_4_lut (.A(address_bus[6]), .B(n3679), .C(MAR[6]), .D(n3248), 
         .Z(address_bus_7__N_80[6])) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam i1499_4_lut.init = 16'h2230;
    FD1P3IX count1_440__i3 (.D(n127), .SP(clk_enable_43), .CD(n2908), 
            .CK(clk), .Q(n22)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(214[15:21])
    defparam count1_440__i3.GSR = "DISABLED";
    LUT4 i1500_4_lut (.A(address_bus[7]), .B(n3679), .C(MAR[7]), .D(n3248), 
         .Z(address_bus_7__N_80[7])) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+((D)+!C)))) */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam i1500_4_lut.init = 16'h2230;
    FD1P3IX PC__i1 (.D(n189), .SP(led_c_enable_62), .CD(n2934), .CK(led_c), 
            .Q(Q[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam PC__i1.GSR = "ENABLED";
    Bin2BCD imp_binBCD (.bcd_out_15__N_382(bcd_out_15__N_382), .\Q[5] (Q[5]), 
            .bcd_out_15__N_380(bcd_out_15__N_380), .n3588(n3588), .bcd_out_15__N_437(bcd_out_15__N_437), 
            .bcd_out_15__N_455(bcd_out_15__N_455), .n3599(n3599), .\Q[3] (Q[3]), 
            .bcd_out_15__N_463(bcd_out_15__N_463), .n3584(n3584), .bcd_out_15__N_459(bcd_out_15__N_459), 
            .n3576(n3576), .n3569(n3569), .n3580(n3580), .reset_c(reset_c), 
            .n3562(n3562), .n3567(n3567), .\Q[1] (Q[1]), .n3585(n3585), 
            .bcd_out_15__N_483(bcd_out_15__N_483), .bcd_out_15__N_479(bcd_out_15__N_479), 
            .n3568(n3568), .n3578(n3578), .n3572(n3572), .n3583(n3583), 
            .n3573(n3573), .n3236(n3236), .n2568(n2568), .\DISPLAY_6__N_493[5] (DISPLAY_6__N_493_adj_631[5]), 
            .\Q[2] (Q[2]), .n3582(n3582), .\Q[0] (Q[0]), .n3571(n3571), 
            .n3579(n3579), .n3173(n3173), .n3556(n3556), .n3561(n3561), 
            .\DISPLAY_6__N_493[6] (DISPLAY_6__N_493_adj_627[6]), .\Q[4] (Q[4]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(116[13:20])
    FD1P3IX IR_i0_i1 (.D(MBR[0]), .SP(led_c_enable_64), .CD(n3680), .CK(led_c), 
            .Q(CI_c_0));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam IR_i0_i1.GSR = "DISABLED";
    FD1P3IX MBR_i0_i0 (.D(data_out_23__N_500[0]), .SP(led_c_enable_64), 
            .CD(n3680), .CK(led_c), .Q(MBR[0]));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(130[3] 166[10])
    defparam MBR_i0_i0.GSR = "DISABLED";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    GSR GSR_INST (.GSR(clk_enable_43));
    bcdDisplay_U1 centenas (.\ce[6] (ce[6]), .clk_0(clk_0), .n3581(n3581), 
            .\ce[5] (ce[5]), .\DISPLAY_6__N_493[5] (DISPLAY_6__N_493_adj_631[5]), 
            .\ce[4] (ce[4]), .\DISPLAY_6__N_493[4] (DISPLAY_6__N_493_adj_631[4]), 
            .\ce[3] (ce[3]), .\ce[2] (ce[2]), .n2913(n2913), .n3557(n3557));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(120[11:21])
    bcdDisplay unidades (.un({un}), .clk_0(clk_0), .n2787(n2787), .n3463(n3463), 
            .n3558(n3558), .n3555(n3555), .\DISPLAY_6__N_493[4] (DISPLAY_6__N_493[4]), 
            .n2662(n2662), .n3571(n3571), .n3564(n3564), .n3566(n3566), 
            .n3600(n3600), .n3614(n3614), .n2639(n2639), .n3236(n3236), 
            .n2646(n2646), .n3171(n3171));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(118[11:21])
    CCU2D add_7_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Q[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n3293), 
          .S1(n189));   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam add_7_1.INIT0 = 16'hF000;
    defparam add_7_1.INIT1 = 16'h5555;
    defparam add_7_1.INJECT1_0 = "NO";
    defparam add_7_1.INJECT1_1 = "NO";
    PFUMX i1806 (.BLUT(n3612), .ALUT(n3613), .C0(bcd_out_15__N_483), .Z(n3614));
    LUT4 m0_lut (.Z(n3677)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    PFUMX i1804 (.BLUT(n3609), .ALUT(n3610), .C0(n3584), .Z(n3611));
    LUT4 m1_lut (.Z(n3678)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    bcdDisplay_U0 decenas (.de({de}), .clk_0(clk_0), .\DISPLAY_6__N_493[6] (DISPLAY_6__N_493_adj_627[6]), 
            .n3556(n3556), .n3538(n3538), .n2791(n2791), .n3465(n3465), 
            .n3580(n3580), .n3568(n3568), .reset_c(reset_c), .n3584(n3584), 
            .n3536(n3536), .n3535(n3535), .n2635(n2635), .n2568(n2568), 
            .n3560(n3560), .n3611(n3611), .bcd_out_15__N_463(bcd_out_15__N_463));   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(119[10:20])
    
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
// Verilog Description of module ROM
//

module ROM (led_c, n3678, address_bus_7__N_80, reset_c, GND_net, VCC_net, 
            data_out_23__N_500);
    input led_c;
    input n3678;
    input [7:0]address_bus_7__N_80;
    input reset_c;
    input GND_net;
    input VCC_net;
    output [23:0]data_out_23__N_500;
    
    wire led_c /* synthesis is_clock=1, SET_AS_NETWORK=led_c */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(17[2:5])
    
    wire data_out_23__N_501;
    wire [23:0]data_out_23__N_549;
    
    FD1S3AX data_out (.D(n3678), .CK(led_c), .Q(data_out_23__N_501));   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam data_out.GSR = "ENABLED";
    PDPW8KC mux_169 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
            .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), .DI7(GND_net), 
            .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), .DI11(GND_net), 
            .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), .DI15(GND_net), 
            .DI16(GND_net), .DI17(GND_net), .ADW0(GND_net), .ADW1(GND_net), 
            .ADW2(GND_net), .ADW3(GND_net), .ADW4(GND_net), .ADW5(GND_net), 
            .ADW6(GND_net), .ADW7(GND_net), .ADW8(GND_net), .BE0(GND_net), 
            .BE1(GND_net), .CEW(VCC_net), .CLKW(GND_net), .CSW0(GND_net), 
            .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), 
            .ADR2(GND_net), .ADR3(GND_net), .ADR4(address_bus_7__N_80[0]), 
            .ADR5(address_bus_7__N_80[1]), .ADR6(address_bus_7__N_80[2]), 
            .ADR7(address_bus_7__N_80[3]), .ADR8(address_bus_7__N_80[4]), 
            .ADR9(address_bus_7__N_80[5]), .ADR10(address_bus_7__N_80[6]), 
            .ADR11(address_bus_7__N_80[7]), .ADR12(GND_net), .CER(VCC_net), 
            .OCER(VCC_net), .CLKR(led_c), .CSR0(GND_net), .CSR1(GND_net), 
            .CSR2(GND_net), .RST(reset_c), .DO9(data_out_23__N_549[18]), 
            .DO10(data_out_23__N_549[19]), .DO11(data_out_23__N_549[20]), 
            .DO12(data_out_23__N_549[21]), .DO13(data_out_23__N_549[22]), 
            .DO14(data_out_23__N_549[23]));
    defparam mux_169.DATA_WIDTH_W = 18;
    defparam mux_169.DATA_WIDTH_R = 18;
    defparam mux_169.REGMODE = "OUTREG";
    defparam mux_169.CSDECODE_W = "0b000";
    defparam mux_169.CSDECODE_R = "0b000";
    defparam mux_169.GSR = "DISABLED";
    defparam mux_169.RESETMODE = "ASYNC";
    defparam mux_169.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_169.INIT_DATA = "STATIC";
    defparam mux_169.INITVAL_00 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0001300018000090001100019";
    defparam mux_169.INITVAL_01 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_169.INITVAL_02 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_169.INITVAL_03 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_169.INITVAL_04 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_169.INITVAL_05 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_169.INITVAL_06 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_169.INITVAL_07 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_169.INITVAL_08 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_169.INITVAL_09 = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_169.INITVAL_0A = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_169.INITVAL_0B = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_169.INITVAL_0C = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_169.INITVAL_0D = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_169.INITVAL_0E = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_169.INITVAL_0F = "0x0000000000000000000000000000000000000000000000003F0003F0003F0003F0003F0003F0003F";
    defparam mux_169.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_169.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_169.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_169.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_169.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_169.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_169.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_169.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_169.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_169.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_169.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_169.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_169.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_169.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_169.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_169.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    PDPW8KC mux_168 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
            .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), .DI7(GND_net), 
            .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), .DI11(GND_net), 
            .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), .DI15(GND_net), 
            .DI16(GND_net), .DI17(GND_net), .ADW0(GND_net), .ADW1(GND_net), 
            .ADW2(GND_net), .ADW3(GND_net), .ADW4(GND_net), .ADW5(GND_net), 
            .ADW6(GND_net), .ADW7(GND_net), .ADW8(GND_net), .BE0(GND_net), 
            .BE1(GND_net), .CEW(VCC_net), .CLKW(GND_net), .CSW0(GND_net), 
            .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), 
            .ADR2(GND_net), .ADR3(GND_net), .ADR4(address_bus_7__N_80[0]), 
            .ADR5(address_bus_7__N_80[1]), .ADR6(address_bus_7__N_80[2]), 
            .ADR7(address_bus_7__N_80[3]), .ADR8(address_bus_7__N_80[4]), 
            .ADR9(address_bus_7__N_80[5]), .ADR10(address_bus_7__N_80[6]), 
            .ADR11(address_bus_7__N_80[7]), .ADR12(GND_net), .CER(VCC_net), 
            .OCER(VCC_net), .CLKR(led_c), .CSR0(GND_net), .CSR1(GND_net), 
            .CSR2(GND_net), .RST(reset_c), .DO0(data_out_23__N_549[9]), 
            .DO1(data_out_23__N_549[10]), .DO2(data_out_23__N_549[11]), 
            .DO3(data_out_23__N_549[12]), .DO4(data_out_23__N_549[13]), 
            .DO5(data_out_23__N_549[14]), .DO6(data_out_23__N_549[15]), 
            .DO7(data_out_23__N_549[16]), .DO8(data_out_23__N_549[17]), 
            .DO9(data_out_23__N_549[0]), .DO10(data_out_23__N_549[1]), .DO11(data_out_23__N_549[2]), 
            .DO12(data_out_23__N_549[3]), .DO13(data_out_23__N_549[4]), 
            .DO14(data_out_23__N_549[5]), .DO15(data_out_23__N_549[6]), 
            .DO16(data_out_23__N_549[7]), .DO17(data_out_23__N_549[8]));
    defparam mux_168.DATA_WIDTH_W = 18;
    defparam mux_168.DATA_WIDTH_R = 18;
    defparam mux_168.REGMODE = "OUTREG";
    defparam mux_168.CSDECODE_W = "0b000";
    defparam mux_168.CSDECODE_R = "0b000";
    defparam mux_168.GSR = "DISABLED";
    defparam mux_168.RESETMODE = "ASYNC";
    defparam mux_168.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_168.INIT_DATA = "STATIC";
    defparam mux_168.INITVAL_00 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF000000000000005000F70000D";
    defparam mux_168.INITVAL_01 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_168.INITVAL_02 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_168.INITVAL_03 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_168.INITVAL_04 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_168.INITVAL_05 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_168.INITVAL_06 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_168.INITVAL_07 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_168.INITVAL_08 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_168.INITVAL_09 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_168.INITVAL_0A = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_168.INITVAL_0B = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_168.INITVAL_0C = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_168.INITVAL_0D = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_168.INITVAL_0E = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_168.INITVAL_0F = "0x0004D00037000170000700012000320004600065003EB3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_168.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_168.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_168.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_168.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_168.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_168.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_168.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_168.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_168.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_168.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_168.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_168.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_168.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_168.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_168.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_168.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    LUT4 i194_2_lut (.A(data_out_23__N_549[20]), .B(data_out_23__N_501), 
         .Z(data_out_23__N_500[20])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i194_2_lut.init = 16'h8888;
    LUT4 i196_2_lut (.A(data_out_23__N_549[22]), .B(data_out_23__N_501), 
         .Z(data_out_23__N_500[22])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i196_2_lut.init = 16'h8888;
    LUT4 i197_2_lut (.A(data_out_23__N_549[23]), .B(data_out_23__N_501), 
         .Z(data_out_23__N_500[23])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i197_2_lut.init = 16'h8888;
    LUT4 i193_2_lut (.A(data_out_23__N_549[19]), .B(data_out_23__N_501), 
         .Z(data_out_23__N_500[19])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i193_2_lut.init = 16'h8888;
    LUT4 i190_2_lut (.A(data_out_23__N_549[16]), .B(data_out_23__N_501), 
         .Z(data_out_23__N_500[16])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i190_2_lut.init = 16'h8888;
    LUT4 i195_2_lut (.A(data_out_23__N_549[21]), .B(data_out_23__N_501), 
         .Z(data_out_23__N_500[21])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i195_2_lut.init = 16'h8888;
    LUT4 i191_2_lut (.A(data_out_23__N_549[17]), .B(data_out_23__N_501), 
         .Z(data_out_23__N_500[17])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i191_2_lut.init = 16'h8888;
    LUT4 i176_2_lut (.A(data_out_23__N_549[2]), .B(data_out_23__N_501), 
         .Z(data_out_23__N_500[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i176_2_lut.init = 16'h8888;
    LUT4 i177_2_lut (.A(data_out_23__N_549[3]), .B(data_out_23__N_501), 
         .Z(data_out_23__N_500[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i177_2_lut.init = 16'h8888;
    LUT4 i178_2_lut (.A(data_out_23__N_549[4]), .B(data_out_23__N_501), 
         .Z(data_out_23__N_500[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i178_2_lut.init = 16'h8888;
    LUT4 i179_2_lut (.A(data_out_23__N_549[5]), .B(data_out_23__N_501), 
         .Z(data_out_23__N_500[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i179_2_lut.init = 16'h8888;
    LUT4 i180_2_lut (.A(data_out_23__N_549[6]), .B(data_out_23__N_501), 
         .Z(data_out_23__N_500[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i180_2_lut.init = 16'h8888;
    LUT4 i181_2_lut (.A(data_out_23__N_549[7]), .B(data_out_23__N_501), 
         .Z(data_out_23__N_500[7])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i181_2_lut.init = 16'h8888;
    LUT4 i182_2_lut (.A(data_out_23__N_549[8]), .B(data_out_23__N_501), 
         .Z(data_out_23__N_500[8])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i182_2_lut.init = 16'h8888;
    LUT4 i183_2_lut (.A(data_out_23__N_549[9]), .B(data_out_23__N_501), 
         .Z(data_out_23__N_500[9])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i183_2_lut.init = 16'h8888;
    LUT4 i184_2_lut (.A(data_out_23__N_549[10]), .B(data_out_23__N_501), 
         .Z(data_out_23__N_500[10])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i184_2_lut.init = 16'h8888;
    LUT4 i185_2_lut (.A(data_out_23__N_549[11]), .B(data_out_23__N_501), 
         .Z(data_out_23__N_500[11])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i185_2_lut.init = 16'h8888;
    LUT4 i186_2_lut (.A(data_out_23__N_549[12]), .B(data_out_23__N_501), 
         .Z(data_out_23__N_500[12])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i186_2_lut.init = 16'h8888;
    LUT4 i187_2_lut (.A(data_out_23__N_549[13]), .B(data_out_23__N_501), 
         .Z(data_out_23__N_500[13])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i187_2_lut.init = 16'h8888;
    LUT4 i188_2_lut (.A(data_out_23__N_549[14]), .B(data_out_23__N_501), 
         .Z(data_out_23__N_500[14])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i188_2_lut.init = 16'h8888;
    LUT4 i192_2_lut (.A(data_out_23__N_549[18]), .B(data_out_23__N_501), 
         .Z(data_out_23__N_500[18])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i192_2_lut.init = 16'h8888;
    LUT4 i189_2_lut (.A(data_out_23__N_549[15]), .B(data_out_23__N_501), 
         .Z(data_out_23__N_500[15])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i189_2_lut.init = 16'h8888;
    LUT4 i175_2_lut (.A(data_out_23__N_549[1]), .B(data_out_23__N_501), 
         .Z(data_out_23__N_500[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i175_2_lut.init = 16'h8888;
    LUT4 i174_2_lut (.A(data_out_23__N_549[0]), .B(data_out_23__N_501), 
         .Z(data_out_23__N_500[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/cassandra/desktop/arqui2/rom.vhd(66[3] 76[10])
    defparam i174_2_lut.init = 16'h8888;
    
endmodule
//
// Verilog Description of module Bin2BCD
//

module Bin2BCD (bcd_out_15__N_382, \Q[5] , bcd_out_15__N_380, n3588, 
            bcd_out_15__N_437, bcd_out_15__N_455, n3599, \Q[3] , bcd_out_15__N_463, 
            n3584, bcd_out_15__N_459, n3576, n3569, n3580, reset_c, 
            n3562, n3567, \Q[1] , n3585, bcd_out_15__N_483, bcd_out_15__N_479, 
            n3568, n3578, n3572, n3583, n3573, n3236, n2568, \DISPLAY_6__N_493[5] , 
            \Q[2] , n3582, \Q[0] , n3571, n3579, n3173, n3556, 
            n3561, \DISPLAY_6__N_493[6] , \Q[4] );
    input bcd_out_15__N_382;
    input \Q[5] ;
    input bcd_out_15__N_380;
    output n3588;
    output bcd_out_15__N_437;
    output bcd_out_15__N_455;
    output n3599;
    input \Q[3] ;
    output bcd_out_15__N_463;
    output n3584;
    output bcd_out_15__N_459;
    output n3576;
    output n3569;
    output n3580;
    input reset_c;
    output n3562;
    output n3567;
    input \Q[1] ;
    output n3585;
    output bcd_out_15__N_483;
    output bcd_out_15__N_479;
    output n3568;
    output n3578;
    output n3572;
    output n3583;
    output n3573;
    output n3236;
    output n2568;
    output \DISPLAY_6__N_493[5] ;
    input \Q[2] ;
    output n3582;
    input \Q[0] ;
    output n3571;
    output n3579;
    input n3173;
    input n3556;
    input n3561;
    output \DISPLAY_6__N_493[6] ;
    input \Q[4] ;
    
    wire [3:0]n927;
    
    wire n3602, n3598, n3606, n3563, n3608, n3589, n3591;
    wire [3:0]n933;
    
    wire n3595;
    wire [3:0]n930;
    
    wire n3607;
    
    LUT4 i1212_2_lut_3_lut (.A(bcd_out_15__N_382), .B(\Q[5] ), .C(bcd_out_15__N_380), 
         .Z(n927[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1212_2_lut_3_lut.init = 16'h1010;
    LUT4 i727_3_lut_4_lut_3_lut (.A(bcd_out_15__N_382), .B(\Q[5] ), .C(bcd_out_15__N_380), 
         .Z(n927[1])) /* synthesis lut_function=(A (B+!(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i727_3_lut_4_lut_3_lut.init = 16'h8a8a;
    LUT4 i1210_2_lut_3_lut_4_lut (.A(n3602), .B(bcd_out_15__N_380), .C(n3588), 
         .D(bcd_out_15__N_437), .Z(bcd_out_15__N_455)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1210_2_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 i567_2_lut_rep_99_3_lut (.A(bcd_out_15__N_382), .B(\Q[5] ), .C(bcd_out_15__N_380), 
         .Z(n3599)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i567_2_lut_rep_99_3_lut.init = 16'he0e0;
    LUT4 i719_2_lut_rep_98_3_lut_3_lut (.A(bcd_out_15__N_382), .B(\Q[5] ), 
         .C(bcd_out_15__N_380), .Z(n3598)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i719_2_lut_rep_98_3_lut_3_lut.init = 16'h2c2c;
    LUT4 i732_2_lut_rep_102 (.A(bcd_out_15__N_382), .B(\Q[5] ), .Z(n3602)) /* synthesis lut_function=(A+(B)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i732_2_lut_rep_102.init = 16'heeee;
    LUT4 i620_2_lut_rep_86_4_lut_4_lut_else_4_lut (.A(n927[2]), .B(n927[1]), 
         .C(n3598), .D(\Q[3] ), .Z(n3606)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C (D))))) */ ;
    defparam i620_2_lut_rep_86_4_lut_4_lut_else_4_lut.init = 16'h7e6e;
    LUT4 i769_3_lut_rep_63_4_lut_3_lut_4_lut (.A(bcd_out_15__N_463), .B(n3584), 
         .C(bcd_out_15__N_459), .D(bcd_out_15__N_455), .Z(n3563)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i769_3_lut_rep_63_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i1198_2_lut_rep_76_4_lut (.A(bcd_out_15__N_463), .B(n3584), .C(bcd_out_15__N_459), 
         .D(bcd_out_15__N_455), .Z(n3576)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i1198_2_lut_rep_76_4_lut.init = 16'heee0;
    LUT4 i747_2_lut_rep_69_4_lut_4_lut (.A(bcd_out_15__N_463), .B(n3584), 
         .C(bcd_out_15__N_459), .D(bcd_out_15__N_455), .Z(n3569)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i747_2_lut_rep_69_4_lut_4_lut.init = 16'h554a;
    LUT4 i524_3_lut_rep_80 (.A(bcd_out_15__N_463), .B(n3584), .C(bcd_out_15__N_459), 
         .D(bcd_out_15__N_455), .Z(n3580)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i524_3_lut_rep_80.init = 16'hffe0;
    LUT4 i1777_2_lut_rep_62_4_lut (.A(n3584), .B(n3580), .C(bcd_out_15__N_463), 
         .D(reset_c), .Z(n3562)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A ((C+(D))+!B)) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1777_2_lut_rep_62_4_lut.init = 16'hff59;
    LUT4 i755_3_lut_rep_67_4_lut (.A(bcd_out_15__N_463), .B(n3584), .C(bcd_out_15__N_459), 
         .D(bcd_out_15__N_455), .Z(n3567)) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i755_3_lut_rep_67_4_lut.init = 16'h998c;
    LUT4 i601_3_lut_rep_68_4_lut_3_lut_4_lut (.A(\Q[1] ), .B(n3585), .C(bcd_out_15__N_483), 
         .D(bcd_out_15__N_479), .Z(n3568)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i601_3_lut_rep_68_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i1200_2_lut_rep_78_4_lut (.A(\Q[1] ), .B(n3585), .C(bcd_out_15__N_483), 
         .D(bcd_out_15__N_479), .Z(n3578)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i1200_2_lut_rep_78_4_lut.init = 16'heee0;
    LUT4 i579_2_lut_rep_72_4_lut_4_lut (.A(\Q[1] ), .B(n3585), .C(bcd_out_15__N_483), 
         .D(bcd_out_15__N_479), .Z(n3572)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i579_2_lut_rep_72_4_lut_4_lut.init = 16'h554a;
    LUT4 i512_3_lut_rep_83 (.A(\Q[1] ), .B(n3585), .C(bcd_out_15__N_483), 
         .D(bcd_out_15__N_479), .Z(n3583)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i512_3_lut_rep_83.init = 16'hffe0;
    LUT4 i587_3_lut_rep_73_4_lut (.A(\Q[1] ), .B(n3585), .C(bcd_out_15__N_483), 
         .D(bcd_out_15__N_479), .Z(n3573)) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i587_3_lut_rep_73_4_lut.init = 16'h998c;
    LUT4 i1545_2_lut_3_lut_3_lut_4_lut (.A(\Q[1] ), .B(n3585), .C(bcd_out_15__N_483), 
         .D(bcd_out_15__N_479), .Z(n3236)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+(D)))) */ ;
    defparam i1545_2_lut_3_lut_3_lut_4_lut.init = 16'h2231;
    LUT4 i1766_3_lut_4_lut (.A(bcd_out_15__N_463), .B(n3580), .C(reset_c), 
         .D(n3568), .Z(n2568)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1766_3_lut_4_lut.init = 16'hf6f9;
    LUT4 i1786_3_lut_4_lut (.A(n3608), .B(n3599), .C(n3563), .D(reset_c), 
         .Z(\DISPLAY_6__N_493[5] )) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A ((D)+!C)) */ ;
    defparam i1786_3_lut_4_lut.init = 16'hff07;
    LUT4 i535_2_lut_rep_82_3_lut (.A(\Q[2] ), .B(n3589), .C(\Q[1] ), .Z(n3582)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i535_2_lut_rep_82_3_lut.init = 16'hf6f6;
    LUT4 i1761_3_lut_rep_71_4_lut (.A(\Q[1] ), .B(n3583), .C(reset_c), 
         .D(\Q[0] ), .Z(n3571)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1761_3_lut_rep_71_4_lut.init = 16'hf6f9;
    LUT4 i534_2_lut_rep_79_3_lut_4_lut_4_lut (.A(bcd_out_15__N_437), .B(n3588), 
         .C(bcd_out_15__N_463), .D(n3599), .Z(n3579)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C+!(D))+!B (C))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i534_2_lut_rep_79_3_lut_4_lut_4_lut.init = 16'hf2fc;
    LUT4 i650_2_lut_3_lut_3_lut_4_lut (.A(\Q[2] ), .B(n3591), .C(n933[1]), 
         .D(n933[2]), .Z(bcd_out_15__N_479)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i650_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i657_3_lut_4_lut_3_lut_4_lut (.A(\Q[2] ), .B(n3591), .C(n933[1]), 
         .D(n933[2]), .Z(bcd_out_15__N_463)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i657_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i635_2_lut_rep_85_4_lut_4_lut (.A(\Q[2] ), .B(n3591), .C(n933[1]), 
         .D(n933[2]), .Z(n3585)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i635_2_lut_rep_85_4_lut_4_lut.init = 16'h554a;
    LUT4 i510_3_lut_rep_89 (.A(\Q[2] ), .B(n3591), .C(n933[1]), .D(n933[2]), 
         .Z(n3589)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i510_3_lut_rep_89.init = 16'hffe0;
    LUT4 i643_3_lut_4_lut (.A(\Q[2] ), .B(n3591), .C(n933[1]), .D(n933[2]), 
         .Z(bcd_out_15__N_483)) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i643_3_lut_4_lut.init = 16'h998c;
    LUT4 i1418_4_lut_4_lut (.A(n3562), .B(n3173), .C(n3556), .D(n3561), 
         .Z(\DISPLAY_6__N_493[6] )) /* synthesis lut_function=(A (C+(D))+!A ((C)+!B)) */ ;   // c:/users/cassandra/desktop/arqui2/binariobcd.vhd(19[9] 42[16])
    defparam i1418_4_lut_4_lut.init = 16'hfbf1;
    LUT4 i663_2_lut_rep_91_4_lut_4_lut (.A(\Q[3] ), .B(n3595), .C(n930[1]), 
         .D(n930[2]), .Z(n3591)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i663_2_lut_rep_91_4_lut_4_lut.init = 16'h554a;
    LUT4 i678_2_lut_3_lut_3_lut_4_lut (.A(\Q[3] ), .B(n3595), .C(n930[1]), 
         .D(n930[2]), .Z(n933[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i678_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i685_3_lut_rep_88_4_lut_3_lut_4_lut (.A(\Q[3] ), .B(n3595), .C(n930[1]), 
         .D(n930[2]), .Z(n3588)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i685_3_lut_rep_88_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i620_2_lut_rep_86_4_lut_4_lut_then_4_lut (.A(n927[2]), .B(n927[1]), 
         .C(n3598), .D(\Q[3] ), .Z(n3607)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C))) */ ;
    defparam i620_2_lut_rep_86_4_lut_4_lut_then_4_lut.init = 16'hf676;
    LUT4 i671_3_lut_4_lut (.A(\Q[3] ), .B(n3595), .C(n930[1]), .D(n930[2]), 
         .Z(n933[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i671_3_lut_4_lut.init = 16'h998c;
    LUT4 i713_3_lut_4_lut_3_lut_4_lut (.A(n3598), .B(\Q[4] ), .C(n927[1]), 
         .D(n927[2]), .Z(bcd_out_15__N_437)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i713_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i691_2_lut_rep_95_4_lut_4_lut (.A(n3598), .B(\Q[4] ), .C(n927[1]), 
         .D(n927[2]), .Z(n3595)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i691_2_lut_rep_95_4_lut_4_lut.init = 16'h332c;
    LUT4 i706_2_lut_3_lut_3_lut_4_lut (.A(n3598), .B(\Q[4] ), .C(n927[1]), 
         .D(n927[2]), .Z(n930[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i706_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i699_3_lut_4_lut (.A(n3598), .B(\Q[4] ), .C(n927[1]), .D(n927[2]), 
         .Z(n930[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // C:/lscc/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i699_3_lut_4_lut.init = 16'h998a;
    LUT4 i607_2_lut_rep_84_3_lut_3_lut_4_lut (.A(n3602), .B(bcd_out_15__N_380), 
         .C(n3588), .D(bcd_out_15__N_437), .Z(n3584)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;
    defparam i607_2_lut_rep_84_3_lut_3_lut_4_lut.init = 16'h7870;
    LUT4 i615_3_lut_4_lut_3_lut_4_lut (.A(n3602), .B(bcd_out_15__N_380), 
         .C(n3588), .D(bcd_out_15__N_437), .Z(bcd_out_15__N_459)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i615_3_lut_4_lut_3_lut_4_lut.init = 16'hf700;
    PFUMX i1802 (.BLUT(n3606), .ALUT(n3607), .C0(\Q[4] ), .Z(n3608));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module bcdDisplay_U1
//

module bcdDisplay_U1 (\ce[6] , clk_0, n3581, \ce[5] , \DISPLAY_6__N_493[5] , 
            \ce[4] , \DISPLAY_6__N_493[4] , \ce[3] , \ce[2] , n2913, 
            n3557);
    output \ce[6] ;
    input clk_0;
    input n3581;
    output \ce[5] ;
    input \DISPLAY_6__N_493[5] ;
    output \ce[4] ;
    input \DISPLAY_6__N_493[4] ;
    output \ce[3] ;
    output \ce[2] ;
    input n2913;
    input n3557;
    
    wire clk_0 /* synthesis is_clock=1, SET_AS_NETWORK=clk_0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(75[8:13])
    
    FD1S3AX DISPLAY_i5 (.D(n3581), .CK(clk_0), .Q(\ce[6] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=120, LSE_RLINE=120 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i5.GSR = "ENABLED";
    FD1S3AY DISPLAY_i4 (.D(\DISPLAY_6__N_493[5] ), .CK(clk_0), .Q(\ce[5] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=120, LSE_RLINE=120 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i4.GSR = "ENABLED";
    FD1S3AY DISPLAY_i3 (.D(\DISPLAY_6__N_493[4] ), .CK(clk_0), .Q(\ce[4] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=120, LSE_RLINE=120 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i3.GSR = "ENABLED";
    FD1S3JX DISPLAY_i2 (.D(\DISPLAY_6__N_493[4] ), .CK(clk_0), .PD(n3581), 
            .Q(\ce[3] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=120, LSE_RLINE=120 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i2.GSR = "ENABLED";
    FD1S3JX DISPLAY_i1 (.D(n3557), .CK(clk_0), .PD(n2913), .Q(\ce[2] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=120, LSE_RLINE=120 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module bcdDisplay
//

module bcdDisplay (un, clk_0, n2787, n3463, n3558, n3555, \DISPLAY_6__N_493[4] , 
            n2662, n3571, n3564, n3566, n3600, n3614, n2639, n3236, 
            n2646, n3171);
    output [6:0]un;
    input clk_0;
    input n2787;
    input n3463;
    input n3558;
    input n3555;
    input \DISPLAY_6__N_493[4] ;
    input n2662;
    input n3571;
    input n3564;
    input n3566;
    input n3600;
    input n3614;
    input n2639;
    input n3236;
    output n2646;
    input n3171;
    
    wire clk_0 /* synthesis is_clock=1, SET_AS_NETWORK=clk_0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(75[8:13])
    wire [6:0]DISPLAY_6__N_493;
    
    wire n7;
    
    FD1S3JX DISPLAY_i0 (.D(n3463), .CK(clk_0), .PD(n2787), .Q(un[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i0.GSR = "ENABLED";
    FD1S3AX DISPLAY_i6 (.D(DISPLAY_6__N_493[6]), .CK(clk_0), .Q(un[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i6.GSR = "ENABLED";
    FD1S3JX DISPLAY_i5 (.D(n3555), .CK(clk_0), .PD(n3558), .Q(un[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i5.GSR = "ENABLED";
    FD1S3AY DISPLAY_i4 (.D(\DISPLAY_6__N_493[4] ), .CK(clk_0), .Q(un[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i4.GSR = "ENABLED";
    FD1S3JX DISPLAY_i3 (.D(n7), .CK(clk_0), .PD(n3558), .Q(un[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i3.GSR = "ENABLED";
    FD1S3JX DISPLAY_i1 (.D(n3571), .CK(clk_0), .PD(n2662), .Q(un[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i1.GSR = "ENABLED";
    LUT4 E_3__I_0_Mux_3_i7_4_lut_4_lut (.A(n3571), .B(n3564), .C(n3566), 
         .D(n3600), .Z(n7)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A !(B+(C+!(D))))) */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(30[3] 41[12])
    defparam E_3__I_0_Mux_3_i7_4_lut_4_lut.init = 16'h5c5f;
    FD1S3JX DISPLAY_i2 (.D(n3614), .CK(clk_0), .PD(n3600), .Q(un[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=11, LSE_RCOL=21, LSE_LLINE=118, LSE_RLINE=118 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i2.GSR = "ENABLED";
    PFUMX i968 (.BLUT(n2639), .ALUT(n3236), .C0(n3558), .Z(n2646));
    LUT4 i1424_4_lut (.A(n3564), .B(n3558), .C(n3171), .D(n3566), .Z(DISPLAY_6__N_493[6])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(30[3] 41[12])
    defparam i1424_4_lut.init = 16'hcfee;
    
endmodule
//
// Verilog Description of module bcdDisplay_U0
//

module bcdDisplay_U0 (de, clk_0, \DISPLAY_6__N_493[6] , n3556, n3538, 
            n2791, n3465, n3580, n3568, reset_c, n3584, n3536, 
            n3535, n2635, n2568, n3560, n3611, bcd_out_15__N_463);
    output [6:0]de;
    input clk_0;
    input \DISPLAY_6__N_493[6] ;
    input n3556;
    input n3538;
    input n2791;
    input n3465;
    input n3580;
    input n3568;
    input reset_c;
    input n3584;
    input n3536;
    input n3535;
    input n2635;
    input n2568;
    input n3560;
    input n3611;
    input bcd_out_15__N_463;
    
    wire clk_0 /* synthesis is_clock=1, SET_AS_NETWORK=clk_0 */ ;   // c:/users/cassandra/desktop/arqui2/alu_fetch.vhd(75[8:13])
    wire [6:0]DISPLAY_6__N_493;
    
    wire n3617, n3616, n3615;
    
    FD1S3AX DISPLAY_i6 (.D(\DISPLAY_6__N_493[6] ), .CK(clk_0), .Q(de[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i6.GSR = "ENABLED";
    FD1S3JX DISPLAY_i5 (.D(n3538), .CK(clk_0), .PD(n3556), .Q(de[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i5.GSR = "ENABLED";
    FD1S3AY DISPLAY_i4 (.D(DISPLAY_6__N_493[4]), .CK(clk_0), .Q(de[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i4.GSR = "ENABLED";
    FD1S3JX DISPLAY_i3 (.D(n3617), .CK(clk_0), .PD(n3556), .Q(de[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i3.GSR = "ENABLED";
    FD1S3JX DISPLAY_i0 (.D(n3465), .CK(clk_0), .PD(n2791), .Q(de[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i0.GSR = "ENABLED";
    LUT4 i1795_then_4_lut (.A(n3580), .B(n3568), .C(reset_c), .D(n3584), 
         .Z(n3616)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A ((C+!(D))+!B)) */ ;
    defparam i1795_then_4_lut.init = 16'hf9f7;
    LUT4 i1795_else_4_lut (.A(n3580), .B(n3568), .C(reset_c), .D(n3584), 
         .Z(n3615)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam i1795_else_4_lut.init = 16'hfef3;
    PFUMX i1798 (.BLUT(n3536), .ALUT(n3535), .C0(n3556), .Z(DISPLAY_6__N_493[4]));
    FD1S3JX DISPLAY_i1 (.D(n2568), .CK(clk_0), .PD(n2635), .Q(de[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i1.GSR = "ENABLED";
    FD1S3JX DISPLAY_i2 (.D(n3611), .CK(clk_0), .PD(n3560), .Q(de[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=10, LSE_RCOL=20, LSE_LLINE=119, LSE_RLINE=119 */ ;   // c:/users/cassandra/desktop/arqui2/bcddisplay.vhd(27[2] 42[9])
    defparam DISPLAY_i2.GSR = "ENABLED";
    PFUMX i1808 (.BLUT(n3615), .ALUT(n3616), .C0(bcd_out_15__N_463), .Z(n3617));
    
endmodule
