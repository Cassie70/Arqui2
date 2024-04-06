// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Sat Apr 06 00:32:02 2024
//
// Verilog Description of module registro24
//

module registro24 (clk, clr, load, data_in, data_out);   // c:/users/cassandra/desktop/arqui2/registro24.vhd(4[8:18])
    input clk;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(5[2:5])
    input clr;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(6[2:5])
    input load;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(7[2:6])
    input [23:0]data_in;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(8[2:9])
    output [23:0]data_out;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(9[2:10])
    
    wire clk_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_c */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(5[2:5])
    
    wire VCC_net, clr_c, load_c, data_in_c_23, data_in_c_22, data_in_c_21, 
        data_in_c_20, data_in_c_19, data_in_c_18, data_in_c_17, data_in_c_16, 
        data_in_c_15, data_in_c_14, data_in_c_13, data_in_c_12, data_in_c_11, 
        data_in_c_10, data_in_c_9, data_in_c_8, data_in_c_7, data_in_c_6, 
        data_in_c_5, data_in_c_4, data_in_c_3, data_in_c_2, data_in_c_1, 
        data_in_c_0, data_out_c_23, data_out_c_22, data_out_c_21, data_out_c_20, 
        data_out_c_19, data_out_c_18, data_out_c_17, data_out_c_16, 
        data_out_c_15, data_out_c_14, data_out_c_13, data_out_c_12, 
        data_out_c_11, data_out_c_10, data_out_c_9, data_out_c_8, data_out_c_7, 
        data_out_c_6, data_out_c_5, data_out_c_4, data_out_c_3, data_out_c_2, 
        data_out_c_1, data_out_c_0, GND_net, n83;
    
    VLO i27 (.Z(GND_net));
    FD1P3AX registro_i0_i2 (.D(data_in_c_1), .SP(load_c), .CK(clk_c), 
            .Q(data_out_c_1));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i0_i2.GSR = "ENABLED";
    GSR GSR_INST (.GSR(n83));
    OB data_out_pad_23 (.I(data_out_c_23), .O(data_out[23]));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(9[2:10])
    LUT4 i20_1_lut (.A(clr_c), .Z(n83)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/cassandra/desktop/arqui2/registro24.vhd(6[2:5])
    defparam i20_1_lut.init = 16'h5555;
    OB data_out_pad_22 (.I(data_out_c_22), .O(data_out[22]));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(9[2:10])
    OB data_out_pad_21 (.I(data_out_c_21), .O(data_out[21]));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(9[2:10])
    OB data_out_pad_20 (.I(data_out_c_20), .O(data_out[20]));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(9[2:10])
    OB data_out_pad_19 (.I(data_out_c_19), .O(data_out[19]));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(9[2:10])
    OB data_out_pad_18 (.I(data_out_c_18), .O(data_out[18]));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(9[2:10])
    OB data_out_pad_17 (.I(data_out_c_17), .O(data_out[17]));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(9[2:10])
    OB data_out_pad_16 (.I(data_out_c_16), .O(data_out[16]));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(9[2:10])
    OB data_out_pad_15 (.I(data_out_c_15), .O(data_out[15]));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(9[2:10])
    OB data_out_pad_14 (.I(data_out_c_14), .O(data_out[14]));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(9[2:10])
    OB data_out_pad_13 (.I(data_out_c_13), .O(data_out[13]));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(9[2:10])
    OB data_out_pad_12 (.I(data_out_c_12), .O(data_out[12]));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(9[2:10])
    OB data_out_pad_11 (.I(data_out_c_11), .O(data_out[11]));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(9[2:10])
    OB data_out_pad_10 (.I(data_out_c_10), .O(data_out[10]));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(9[2:10])
    OB data_out_pad_9 (.I(data_out_c_9), .O(data_out[9]));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(9[2:10])
    OB data_out_pad_8 (.I(data_out_c_8), .O(data_out[8]));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(9[2:10])
    OB data_out_pad_7 (.I(data_out_c_7), .O(data_out[7]));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(9[2:10])
    OB data_out_pad_6 (.I(data_out_c_6), .O(data_out[6]));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(9[2:10])
    OB data_out_pad_5 (.I(data_out_c_5), .O(data_out[5]));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(9[2:10])
    OB data_out_pad_4 (.I(data_out_c_4), .O(data_out[4]));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(9[2:10])
    OB data_out_pad_3 (.I(data_out_c_3), .O(data_out[3]));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(9[2:10])
    OB data_out_pad_2 (.I(data_out_c_2), .O(data_out[2]));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(9[2:10])
    OB data_out_pad_1 (.I(data_out_c_1), .O(data_out[1]));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(9[2:10])
    OB data_out_pad_0 (.I(data_out_c_0), .O(data_out[0]));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(9[2:10])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(5[2:5])
    IB clr_pad (.I(clr), .O(clr_c));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(6[2:5])
    IB load_pad (.I(load), .O(load_c));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(7[2:6])
    IB data_in_pad_23 (.I(data_in[23]), .O(data_in_c_23));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(8[2:9])
    IB data_in_pad_22 (.I(data_in[22]), .O(data_in_c_22));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(8[2:9])
    IB data_in_pad_21 (.I(data_in[21]), .O(data_in_c_21));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(8[2:9])
    IB data_in_pad_20 (.I(data_in[20]), .O(data_in_c_20));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(8[2:9])
    IB data_in_pad_19 (.I(data_in[19]), .O(data_in_c_19));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(8[2:9])
    IB data_in_pad_18 (.I(data_in[18]), .O(data_in_c_18));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(8[2:9])
    IB data_in_pad_17 (.I(data_in[17]), .O(data_in_c_17));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(8[2:9])
    IB data_in_pad_16 (.I(data_in[16]), .O(data_in_c_16));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(8[2:9])
    IB data_in_pad_15 (.I(data_in[15]), .O(data_in_c_15));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(8[2:9])
    IB data_in_pad_14 (.I(data_in[14]), .O(data_in_c_14));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(8[2:9])
    IB data_in_pad_13 (.I(data_in[13]), .O(data_in_c_13));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(8[2:9])
    IB data_in_pad_12 (.I(data_in[12]), .O(data_in_c_12));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(8[2:9])
    IB data_in_pad_11 (.I(data_in[11]), .O(data_in_c_11));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(8[2:9])
    IB data_in_pad_10 (.I(data_in[10]), .O(data_in_c_10));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(8[2:9])
    IB data_in_pad_9 (.I(data_in[9]), .O(data_in_c_9));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(8[2:9])
    IB data_in_pad_8 (.I(data_in[8]), .O(data_in_c_8));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(8[2:9])
    IB data_in_pad_7 (.I(data_in[7]), .O(data_in_c_7));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(8[2:9])
    IB data_in_pad_6 (.I(data_in[6]), .O(data_in_c_6));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(8[2:9])
    IB data_in_pad_5 (.I(data_in[5]), .O(data_in_c_5));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(8[2:9])
    IB data_in_pad_4 (.I(data_in[4]), .O(data_in_c_4));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(8[2:9])
    IB data_in_pad_3 (.I(data_in[3]), .O(data_in_c_3));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(8[2:9])
    IB data_in_pad_2 (.I(data_in[2]), .O(data_in_c_2));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(8[2:9])
    IB data_in_pad_1 (.I(data_in[1]), .O(data_in_c_1));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(8[2:9])
    IB data_in_pad_0 (.I(data_in[0]), .O(data_in_c_0));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(8[2:9])
    VHI i28 (.Z(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    FD1P3AX registro_i0_i3 (.D(data_in_c_2), .SP(load_c), .CK(clk_c), 
            .Q(data_out_c_2));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i0_i3.GSR = "ENABLED";
    FD1P3AX registro_i0_i4 (.D(data_in_c_3), .SP(load_c), .CK(clk_c), 
            .Q(data_out_c_3));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i0_i4.GSR = "ENABLED";
    FD1P3AX registro_i0_i5 (.D(data_in_c_4), .SP(load_c), .CK(clk_c), 
            .Q(data_out_c_4));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i0_i5.GSR = "ENABLED";
    FD1P3AX registro_i0_i6 (.D(data_in_c_5), .SP(load_c), .CK(clk_c), 
            .Q(data_out_c_5));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i0_i6.GSR = "ENABLED";
    FD1P3AX registro_i0_i7 (.D(data_in_c_6), .SP(load_c), .CK(clk_c), 
            .Q(data_out_c_6));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i0_i7.GSR = "ENABLED";
    FD1P3AX registro_i0_i8 (.D(data_in_c_7), .SP(load_c), .CK(clk_c), 
            .Q(data_out_c_7));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i0_i8.GSR = "ENABLED";
    FD1P3AX registro_i0_i9 (.D(data_in_c_8), .SP(load_c), .CK(clk_c), 
            .Q(data_out_c_8));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i0_i9.GSR = "ENABLED";
    FD1P3AX registro_i0_i10 (.D(data_in_c_9), .SP(load_c), .CK(clk_c), 
            .Q(data_out_c_9));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i0_i10.GSR = "ENABLED";
    FD1P3AX registro_i0_i11 (.D(data_in_c_10), .SP(load_c), .CK(clk_c), 
            .Q(data_out_c_10));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i0_i11.GSR = "ENABLED";
    FD1P3AX registro_i0_i12 (.D(data_in_c_11), .SP(load_c), .CK(clk_c), 
            .Q(data_out_c_11));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i0_i12.GSR = "ENABLED";
    FD1P3AX registro_i0_i13 (.D(data_in_c_12), .SP(load_c), .CK(clk_c), 
            .Q(data_out_c_12));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i0_i13.GSR = "ENABLED";
    FD1P3AX registro_i0_i14 (.D(data_in_c_13), .SP(load_c), .CK(clk_c), 
            .Q(data_out_c_13));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i0_i14.GSR = "ENABLED";
    FD1P3AX registro_i0_i15 (.D(data_in_c_14), .SP(load_c), .CK(clk_c), 
            .Q(data_out_c_14));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i0_i15.GSR = "ENABLED";
    FD1P3AX registro_i0_i16 (.D(data_in_c_15), .SP(load_c), .CK(clk_c), 
            .Q(data_out_c_15));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i0_i16.GSR = "ENABLED";
    FD1P3AX registro_i0_i17 (.D(data_in_c_16), .SP(load_c), .CK(clk_c), 
            .Q(data_out_c_16));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i0_i17.GSR = "ENABLED";
    FD1P3AX registro_i0_i18 (.D(data_in_c_17), .SP(load_c), .CK(clk_c), 
            .Q(data_out_c_17));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i0_i18.GSR = "ENABLED";
    FD1P3AX registro_i0_i19 (.D(data_in_c_18), .SP(load_c), .CK(clk_c), 
            .Q(data_out_c_18));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i0_i19.GSR = "ENABLED";
    FD1P3AX registro_i0_i20 (.D(data_in_c_19), .SP(load_c), .CK(clk_c), 
            .Q(data_out_c_19));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i0_i20.GSR = "ENABLED";
    FD1P3AX registro_i0_i21 (.D(data_in_c_20), .SP(load_c), .CK(clk_c), 
            .Q(data_out_c_20));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i0_i21.GSR = "ENABLED";
    FD1P3AX registro_i0_i22 (.D(data_in_c_21), .SP(load_c), .CK(clk_c), 
            .Q(data_out_c_21));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i0_i22.GSR = "ENABLED";
    FD1P3AX registro_i0_i23 (.D(data_in_c_22), .SP(load_c), .CK(clk_c), 
            .Q(data_out_c_22));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i0_i23.GSR = "ENABLED";
    FD1P3AX registro_i0_i24 (.D(data_in_c_23), .SP(load_c), .CK(clk_c), 
            .Q(data_out_c_23));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i0_i24.GSR = "ENABLED";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1P3AX registro_i0_i1 (.D(data_in_c_0), .SP(load_c), .CK(clk_c), 
            .Q(data_out_c_0));   // c:/users/cassandra/desktop/arqui2/registro24.vhd(18[3] 24[10])
    defparam registro_i0_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

