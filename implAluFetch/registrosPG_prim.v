// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Mon Apr 08 22:59:32 2024
//
// Verilog Description of module registrosPG
//

module registrosPG (clk, reset, enable, data_in, selector, data_out);   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(5[8:19])
    input clk;   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(6[12:15])
    input reset;   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(7[12:17])
    input enable;   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(8[12:18])
    input [23:0]data_in;   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(9[12:19])
    input [1:0]selector;   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(10[12:20])
    output [23:0]data_out;   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(11[12:20])
    
    wire clk_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_c */ ;   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(6[12:15])
    
    wire GND_net, reset_c, enable_c, data_in_c_23, data_in_c_22, data_in_c_21, 
        data_in_c_20, data_in_c_19, data_in_c_18, data_in_c_17, data_in_c_16, 
        data_in_c_15, data_in_c_14, data_in_c_13, data_in_c_12, data_in_c_11, 
        data_in_c_10, data_in_c_9, data_in_c_8, data_in_c_7, data_in_c_6, 
        data_in_c_5, data_in_c_4, data_in_c_3, data_in_c_2, data_in_c_1, 
        data_in_c_0, selector_c_1, selector_c_0, data_out_c_23, data_out_c_22, 
        data_out_c_21, data_out_c_20, data_out_c_19, data_out_c_18, 
        data_out_c_17, data_out_c_16, data_out_c_15, data_out_c_14, 
        data_out_c_13, data_out_c_12, data_out_c_11, data_out_c_10, 
        data_out_c_9, data_out_c_8, data_out_c_7, data_out_c_6, data_out_c_5, 
        data_out_c_4, data_out_c_3, data_out_c_2, data_out_c_1, data_out_c_0, 
        clk_c_enable_3, clk_c_enable_2, n540, n539, n538, n537, 
        n536, n535, n534, n533, n532, n531, n530, n529, n528, 
        n527, n526, n525, n524, n523, n522, n521, n520, n519, 
        n518, n517, n572, clk_c_enable_4, n450, n445, n616, n440, 
        n615, n622, n435, clk_c_enable_1, VCC_net;
    
    VHI i193 (.Z(VCC_net));
    LUT4 i157_2_lut_4_lut (.A(n615), .B(n616), .C(selector_c_1), .D(n540), 
         .Z(data_out_c_23)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i157_2_lut_4_lut.init = 16'hca00;
    FD1P3AX creset_34 (.D(n622), .SP(clk_c_enable_1), .CK(clk_c), .Q(n435));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam creset_34.GSR = "ENABLED";
    LUT4 i164_2_lut_4_lut (.A(n615), .B(n616), .C(selector_c_1), .D(n533), 
         .Z(data_out_c_16)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i164_2_lut_4_lut.init = 16'hca00;
    LUT4 i156_2_lut_4_lut (.A(n615), .B(n616), .C(selector_c_1), .D(n517), 
         .Z(data_out_c_0)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i156_2_lut_4_lut.init = 16'hca00;
    FD1P3AX creset_42 (.D(n622), .SP(clk_c_enable_2), .CK(clk_c), .Q(n445));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam creset_42.GSR = "ENABLED";
    FD1P3AX creset_46 (.D(n622), .SP(clk_c_enable_3), .CK(clk_c), .Q(n450));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam creset_46.GSR = "ENABLED";
    LUT4 i163_2_lut_4_lut (.A(n615), .B(n616), .C(selector_c_1), .D(n534), 
         .Z(data_out_c_17)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i163_2_lut_4_lut.init = 16'hca00;
    LUT4 i189_3_lut (.A(n435), .B(n440), .C(selector_c_0), .Z(n615)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i189_3_lut.init = 16'hcaca;
    LUT4 i155_2_lut_4_lut (.A(n615), .B(n616), .C(selector_c_1), .D(n518), 
         .Z(data_out_c_1)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i155_2_lut_4_lut.init = 16'hca00;
    OB data_out_pad_10 (.I(data_out_c_10), .O(data_out[10]));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(11[12:20])
    LUT4 i154_2_lut_4_lut (.A(n615), .B(n616), .C(selector_c_1), .D(n519), 
         .Z(data_out_c_2)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i154_2_lut_4_lut.init = 16'hca00;
    LUT4 i167_2_lut_4_lut (.A(n615), .B(n616), .C(selector_c_1), .D(n530), 
         .Z(data_out_c_13)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i167_2_lut_4_lut.init = 16'hca00;
    LUT4 i166_2_lut_4_lut (.A(n615), .B(n616), .C(selector_c_1), .D(n531), 
         .Z(data_out_c_14)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i166_2_lut_4_lut.init = 16'hca00;
    IB data_in_pad_13 (.I(data_in[13]), .O(data_in_c_13));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(9[12:19])
    LUT4 i165_2_lut_4_lut (.A(n615), .B(n616), .C(selector_c_1), .D(n532), 
         .Z(data_out_c_15)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i165_2_lut_4_lut.init = 16'hca00;
    LUT4 i158_2_lut_4_lut (.A(n615), .B(n616), .C(selector_c_1), .D(n539), 
         .Z(data_out_c_22)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i158_2_lut_4_lut.init = 16'hca00;
    LUT4 i153_2_lut_4_lut (.A(n615), .B(n616), .C(selector_c_1), .D(n520), 
         .Z(data_out_c_3)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i153_2_lut_4_lut.init = 16'hca00;
    IB data_in_pad_14 (.I(data_in[14]), .O(data_in_c_14));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(9[12:19])
    OB data_out_pad_11 (.I(data_out_c_11), .O(data_out[11]));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(11[12:20])
    LUT4 i162_2_lut_4_lut (.A(n615), .B(n616), .C(selector_c_1), .D(n535), 
         .Z(data_out_c_18)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i162_2_lut_4_lut.init = 16'hca00;
    IB data_in_pad_15 (.I(data_in[15]), .O(data_in_c_15));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(9[12:19])
    LUT4 i152_2_lut_4_lut (.A(n615), .B(n616), .C(selector_c_1), .D(n521), 
         .Z(data_out_c_4)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i152_2_lut_4_lut.init = 16'hca00;
    LUT4 i161_2_lut_4_lut (.A(n615), .B(n616), .C(selector_c_1), .D(n536), 
         .Z(data_out_c_19)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i161_2_lut_4_lut.init = 16'hca00;
    IB data_in_pad_16 (.I(data_in[16]), .O(data_in_c_16));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(9[12:19])
    LUT4 i151_2_lut_4_lut (.A(n615), .B(n616), .C(selector_c_1), .D(n522), 
         .Z(data_out_c_5)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i151_2_lut_4_lut.init = 16'hca00;
    OB data_out_pad_12 (.I(data_out_c_12), .O(data_out[12]));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(11[12:20])
    LUT4 i150_2_lut_4_lut (.A(n615), .B(n616), .C(selector_c_1), .D(n523), 
         .Z(data_out_c_6)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i150_2_lut_4_lut.init = 16'hca00;
    IB data_in_pad_17 (.I(data_in[17]), .O(data_in_c_17));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(9[12:19])
    LUT4 i149_2_lut_4_lut (.A(n615), .B(n616), .C(selector_c_1), .D(n524), 
         .Z(data_out_c_7)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i149_2_lut_4_lut.init = 16'hca00;
    LUT4 i160_2_lut_4_lut (.A(n615), .B(n616), .C(selector_c_1), .D(n537), 
         .Z(data_out_c_20)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i160_2_lut_4_lut.init = 16'hca00;
    IB data_in_pad_18 (.I(data_in[18]), .O(data_in_c_18));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(9[12:19])
    LUT4 i172_2_lut_4_lut (.A(n615), .B(n616), .C(selector_c_1), .D(n525), 
         .Z(data_out_c_8)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i172_2_lut_4_lut.init = 16'hca00;
    OB data_out_pad_13 (.I(data_out_c_13), .O(data_out[13]));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(11[12:20])
    IB data_in_pad_19 (.I(data_in[19]), .O(data_in_c_19));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(9[12:19])
    IB selector_pad_0 (.I(selector[0]), .O(selector_c_0));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(10[12:20])
    IB data_in_pad_20 (.I(data_in[20]), .O(data_in_c_20));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(9[12:19])
    IB selector_pad_1 (.I(selector[1]), .O(selector_c_1));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(10[12:20])
    OB data_out_pad_14 (.I(data_out_c_14), .O(data_out[14]));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(11[12:20])
    IB data_in_pad_0 (.I(data_in[0]), .O(data_in_c_0));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(9[12:19])
    IB data_in_pad_21 (.I(data_in[21]), .O(data_in_c_21));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(9[12:19])
    IB data_in_pad_1 (.I(data_in[1]), .O(data_in_c_1));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(9[12:19])
    IB data_in_pad_2 (.I(data_in[2]), .O(data_in_c_2));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(9[12:19])
    IB data_in_pad_3 (.I(data_in[3]), .O(data_in_c_3));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(9[12:19])
    IB data_in_pad_22 (.I(data_in[22]), .O(data_in_c_22));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(9[12:19])
    IB data_in_pad_4 (.I(data_in[4]), .O(data_in_c_4));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(9[12:19])
    OB data_out_pad_15 (.I(data_out_c_15), .O(data_out[15]));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(11[12:20])
    IB data_in_pad_5 (.I(data_in[5]), .O(data_in_c_5));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(9[12:19])
    IB data_in_pad_23 (.I(data_in[23]), .O(data_in_c_23));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(9[12:19])
    IB data_in_pad_6 (.I(data_in[6]), .O(data_in_c_6));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(9[12:19])
    IB data_in_pad_7 (.I(data_in[7]), .O(data_in_c_7));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(9[12:19])
    OB data_out_pad_22 (.I(data_out_c_22), .O(data_out[22]));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(11[12:20])
    IB enable_pad (.I(enable), .O(enable_c));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(8[12:18])
    IB data_in_pad_8 (.I(data_in[8]), .O(data_in_c_8));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(9[12:19])
    IB data_in_pad_9 (.I(data_in[9]), .O(data_in_c_9));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(9[12:19])
    LUT4 i159_2_lut_4_lut (.A(n615), .B(n616), .C(selector_c_1), .D(n538), 
         .Z(data_out_c_21)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i159_2_lut_4_lut.init = 16'hca00;
    SPR16X4C selector_1__I_01 (.DI0(data_in_c_16), .DI1(data_in_c_17), .DI2(data_in_c_18), 
            .DI3(data_in_c_19), .AD0(selector_c_0), .AD1(selector_c_1), 
            .AD2(GND_net), .AD3(GND_net), .CK(clk_c), .WRE(enable_c), 
            .DO0(n533), .DO1(n534), .DO2(n535), .DO3(n536));
    defparam selector_1__I_01.initval = "0x0000000000000000";
    SPR16X4C selector_1__I_02 (.DI0(data_in_c_12), .DI1(data_in_c_13), .DI2(data_in_c_14), 
            .DI3(data_in_c_15), .AD0(selector_c_0), .AD1(selector_c_1), 
            .AD2(GND_net), .AD3(GND_net), .CK(clk_c), .WRE(enable_c), 
            .DO0(n529), .DO1(n530), .DO2(n531), .DO3(n532));
    defparam selector_1__I_02.initval = "0x0000000000000000";
    SPR16X4C selector_1__I_03 (.DI0(data_in_c_8), .DI1(data_in_c_9), .DI2(data_in_c_10), 
            .DI3(data_in_c_11), .AD0(selector_c_0), .AD1(selector_c_1), 
            .AD2(GND_net), .AD3(GND_net), .CK(clk_c), .WRE(enable_c), 
            .DO0(n525), .DO1(n526), .DO2(n527), .DO3(n528));
    defparam selector_1__I_03.initval = "0x0000000000000000";
    LUT4 i171_2_lut_4_lut (.A(n615), .B(n616), .C(selector_c_1), .D(n526), 
         .Z(data_out_c_9)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i171_2_lut_4_lut.init = 16'hca00;
    SPR16X4C selector_1__I_04 (.DI0(data_in_c_4), .DI1(data_in_c_5), .DI2(data_in_c_6), 
            .DI3(data_in_c_7), .AD0(selector_c_0), .AD1(selector_c_1), 
            .AD2(GND_net), .AD3(GND_net), .CK(clk_c), .WRE(enable_c), 
            .DO0(n521), .DO1(n522), .DO2(n523), .DO3(n524));
    defparam selector_1__I_04.initval = "0x0000000000000000";
    IB data_in_pad_10 (.I(data_in[10]), .O(data_in_c_10));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(9[12:19])
    SPR16X4C selector_1__I_05 (.DI0(data_in_c_0), .DI1(data_in_c_1), .DI2(data_in_c_2), 
            .DI3(data_in_c_3), .AD0(selector_c_0), .AD1(selector_c_1), 
            .AD2(GND_net), .AD3(GND_net), .CK(clk_c), .WRE(enable_c), 
            .DO0(n517), .DO1(n518), .DO2(n519), .DO3(n520));
    defparam selector_1__I_05.initval = "0x0000000000000000";
    SPR16X4C selector_1__I_00 (.DI0(data_in_c_20), .DI1(data_in_c_21), .DI2(data_in_c_22), 
            .DI3(data_in_c_23), .AD0(selector_c_0), .AD1(selector_c_1), 
            .AD2(GND_net), .AD3(GND_net), .CK(clk_c), .WRE(enable_c), 
            .DO0(n537), .DO1(n538), .DO2(n539), .DO3(n540));
    defparam selector_1__I_00.initval = "0x0000000000000000";
    OB data_out_pad_23 (.I(data_out_c_23), .O(data_out[23]));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(11[12:20])
    FD1P3AX creset_38 (.D(n622), .SP(clk_c_enable_4), .CK(clk_c), .Q(n440));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(43[27:57])
    defparam creset_38.GSR = "ENABLED";
    IB data_in_pad_11 (.I(data_in[11]), .O(data_in_c_11));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(9[12:19])
    IB data_in_pad_12 (.I(data_in[12]), .O(data_in_c_12));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(9[12:19])
    GSR GSR_INST (.GSR(n572));
    IB reset_pad (.I(reset), .O(reset_c));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(7[12:17])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(6[12:15])
    OB data_out_pad_16 (.I(data_out_c_16), .O(data_out[16]));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(11[12:20])
    OB data_out_pad_0 (.I(data_out_c_0), .O(data_out[0]));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(11[12:20])
    OB data_out_pad_17 (.I(data_out_c_17), .O(data_out[17]));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(11[12:20])
    OB data_out_pad_1 (.I(data_out_c_1), .O(data_out[1]));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(11[12:20])
    OB data_out_pad_2 (.I(data_out_c_2), .O(data_out[2]));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(11[12:20])
    OB data_out_pad_3 (.I(data_out_c_3), .O(data_out[3]));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(11[12:20])
    OB data_out_pad_18 (.I(data_out_c_18), .O(data_out[18]));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(11[12:20])
    OB data_out_pad_4 (.I(data_out_c_4), .O(data_out[4]));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(11[12:20])
    LUT4 i1_2_lut_3_lut (.A(enable_c), .B(selector_c_0), .C(selector_c_1), 
         .Z(clk_c_enable_1)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0202;
    LUT4 i169_2_lut_4_lut (.A(n615), .B(n616), .C(selector_c_1), .D(n528), 
         .Z(data_out_c_11)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i169_2_lut_4_lut.init = 16'hca00;
    OB data_out_pad_19 (.I(data_out_c_19), .O(data_out[19]));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(11[12:20])
    LUT4 i1_2_lut_3_lut_adj_1 (.A(enable_c), .B(selector_c_0), .C(selector_c_1), 
         .Z(clk_c_enable_2)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_1.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_2 (.A(selector_c_0), .B(enable_c), .C(selector_c_1), 
         .Z(clk_c_enable_3)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_2.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_adj_3 (.A(selector_c_0), .B(enable_c), .C(selector_c_1), 
         .Z(clk_c_enable_4)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_3.init = 16'h0808;
    OB data_out_pad_5 (.I(data_out_c_5), .O(data_out[5]));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(11[12:20])
    LUT4 i190_3_lut (.A(n445), .B(n450), .C(selector_c_0), .Z(n616)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i190_3_lut.init = 16'hcaca;
    LUT4 i144_1_lut (.A(reset_c), .Z(n572)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(7[12:17])
    defparam i144_1_lut.init = 16'h5555;
    LUT4 i170_2_lut_4_lut (.A(n615), .B(n616), .C(selector_c_1), .D(n527), 
         .Z(data_out_c_10)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i170_2_lut_4_lut.init = 16'hca00;
    LUT4 i168_2_lut_4_lut (.A(n615), .B(n616), .C(selector_c_1), .D(n529), 
         .Z(data_out_c_12)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i168_2_lut_4_lut.init = 16'hca00;
    VLO i29 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    OB data_out_pad_6 (.I(data_out_c_6), .O(data_out[6]));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(11[12:20])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 m1_lut (.Z(n622)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    OB data_out_pad_7 (.I(data_out_c_7), .O(data_out[7]));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(11[12:20])
    OB data_out_pad_20 (.I(data_out_c_20), .O(data_out[20]));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(11[12:20])
    OB data_out_pad_8 (.I(data_out_c_8), .O(data_out[8]));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(11[12:20])
    OB data_out_pad_21 (.I(data_out_c_21), .O(data_out[21]));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(11[12:20])
    OB data_out_pad_9 (.I(data_out_c_9), .O(data_out[9]));   // c:/users/cassandra/desktop/arqui2/rpg24_4.vhd(11[12:20])
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

