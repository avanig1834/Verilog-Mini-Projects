#! /c/Source/iverilog-install/bin/vvp
:ivl_version "12.0 (devel)" "(s20150603-1539-g2693dd32b)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision - 12;
:vpi_module "C:\iverilog\lib\ivl\system.vpi";
:vpi_module "C:\iverilog\lib\ivl\vhdl_sys.vpi";
:vpi_module "C:\iverilog\lib\ivl\vhdl_textio.vpi";
:vpi_module "C:\iverilog\lib\ivl\v2005_math.vpi";
:vpi_module "C:\iverilog\lib\ivl\va_math.vpi";
S_000002b78114a1e0 .scope module, "fifo_tb" "fifo_tb" 2 4;
 .timescale -9 -12;
o000002b781151fa8 .functor BUFZ 1, C4<z>; HiZ drive
v000002b78119f1f0_0 .net "Clk", 0 0, o000002b781151fa8;  0 drivers
v000002b78119f290_0 .net "EMPTY", 0 0, L_000002b7811a1380;  1 drivers
v000002b78119f970_0 .var "EN", 0 0;
v000002b78119fa10_0 .net "FULL", 0 0, L_000002b7811a0c00;  1 drivers
v000002b7811a1ec0_0 .var "RD", 0 0;
v000002b7811a1c40_0 .var "Rst", 0 0;
v000002b7811a0520_0 .var "WR", 0 0;
v000002b7811a0480_0 .var "clk", 0 0;
v000002b7811a1240_0 .var "dataIn", 31 0;
v000002b7811a07a0_0 .net "dataOut", 31 0, v000002b78119f8d0_0;  1 drivers
S_000002b78114a370 .scope module, "uut" "fifo" 2 13, 3 1 0, S_000002b78114a1e0;
 .timescale -9 -12;
    .port_info 0 /INPUT 1 "Clk";
    .port_info 1 /INPUT 32 "dataIn";
    .port_info 2 /INPUT 1 "RD";
    .port_info 3 /INPUT 1 "WR";
    .port_info 4 /INPUT 1 "EN";
    .port_info 5 /OUTPUT 32 "dataOut";
    .port_info 6 /INPUT 1 "Rst";
    .port_info 7 /OUTPUT 1 "EMPTY";
    .port_info 8 /OUTPUT 1 "FULL";
v000002b78114a5a0_0 .net "Clk", 0 0, o000002b781151fa8;  alias, 0 drivers
v000002b781113140_0 .var "Count", 2 0;
v000002b78113d360_0 .net "EMPTY", 0 0, L_000002b7811a1380;  alias, 1 drivers
v000002b78113d400_0 .net "EN", 0 0, v000002b78119f970_0;  1 drivers
v000002b78119f650 .array "FIFO", 7 0, 31 0;
v000002b78119fd30_0 .net "FULL", 0 0, L_000002b7811a0c00;  alias, 1 drivers
v000002b78119ffb0_0 .net "RD", 0 0, v000002b7811a1ec0_0;  1 drivers
v000002b78119fab0_0 .net "Rst", 0 0, v000002b7811a1c40_0;  1 drivers
v000002b78119f330_0 .net "WR", 0 0, v000002b7811a0520_0;  1 drivers
v000002b78119f470_0 .net *"_ivl_0", 31 0, L_000002b7811a1560;  1 drivers
L_000002b7811a2160 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v000002b78119f3d0_0 .net/2u *"_ivl_10", 0 0, L_000002b7811a2160;  1 drivers
v000002b78119fb50_0 .net *"_ivl_14", 31 0, L_000002b7811a0f20;  1 drivers
L_000002b7811a21a8 .functor BUFT 1, C4<00000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v000002b78119f0b0_0 .net *"_ivl_17", 28 0, L_000002b7811a21a8;  1 drivers
L_000002b7811a21f0 .functor BUFT 1, C4<00000000000000000000000000001000>, C4<0>, C4<0>, C4<0>;
v000002b78119f6f0_0 .net/2u *"_ivl_18", 31 0, L_000002b7811a21f0;  1 drivers
v000002b78119fbf0_0 .net *"_ivl_20", 0 0, L_000002b7811a0a20;  1 drivers
L_000002b7811a2238 .functor BUFT 1, C4<1>, C4<0>, C4<0>, C4<0>;
v000002b78119f510_0 .net/2u *"_ivl_22", 0 0, L_000002b7811a2238;  1 drivers
L_000002b7811a2280 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v000002b78119f790_0 .net/2u *"_ivl_24", 0 0, L_000002b7811a2280;  1 drivers
L_000002b7811a2088 .functor BUFT 1, C4<00000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v000002b78119f830_0 .net *"_ivl_3", 28 0, L_000002b7811a2088;  1 drivers
L_000002b7811a20d0 .functor BUFT 1, C4<00000000000000000000000000000000>, C4<0>, C4<0>, C4<0>;
v000002b78119fc90_0 .net/2u *"_ivl_4", 31 0, L_000002b7811a20d0;  1 drivers
v000002b78119f5b0_0 .net *"_ivl_6", 0 0, L_000002b7811a05c0;  1 drivers
L_000002b7811a2118 .functor BUFT 1, C4<1>, C4<0>, C4<0>, C4<0>;
v000002b78119fdd0_0 .net/2u *"_ivl_8", 0 0, L_000002b7811a2118;  1 drivers
v000002b78119fe70_0 .net "dataIn", 31 0, v000002b7811a1240_0;  1 drivers
v000002b78119f8d0_0 .var "dataOut", 31 0;
v000002b78119f150_0 .var "readCounter", 2 0;
v000002b78119ff10_0 .var "writeCounter", 2 0;
E_000002b78113b7b0 .event posedge, v000002b78114a5a0_0;
L_000002b7811a1560 .concat [ 3 29 0 0], v000002b781113140_0, L_000002b7811a2088;
L_000002b7811a05c0 .cmp/eq 32, L_000002b7811a1560, L_000002b7811a20d0;
L_000002b7811a1380 .functor MUXZ 1, L_000002b7811a2160, L_000002b7811a2118, L_000002b7811a05c0, C4<>;
L_000002b7811a0f20 .concat [ 3 29 0 0], v000002b781113140_0, L_000002b7811a21a8;
L_000002b7811a0a20 .cmp/eq 32, L_000002b7811a0f20, L_000002b7811a21f0;
L_000002b7811a0c00 .functor MUXZ 1, L_000002b7811a2280, L_000002b7811a2238, L_000002b7811a0a20, C4<>;
    .scope S_000002b78114a370;
T_0 ;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v000002b781113140_0, 0, 3;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v000002b78119f150_0, 0, 3;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v000002b78119ff10_0, 0, 3;
    %end;
    .thread T_0;
    .scope S_000002b78114a370;
T_1 ;
    %wait E_000002b78113b7b0;
    %load/vec4 v000002b78113d400_0;
    %pad/u 32;
    %cmpi/e 0, 0, 32;
    %jmp/0xz  T_1.0, 4;
    %jmp T_1.1;
T_1.0 ;
    %load/vec4 v000002b78119fab0_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_1.2, 8;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v000002b78119f150_0, 0, 3;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v000002b78119ff10_0, 0, 3;
    %jmp T_1.3;
T_1.2 ;
    %load/vec4 v000002b78119ffb0_0;
    %cmpi/e 1, 0, 1;
    %flag_get/vec4 4;
    %jmp/0 T_1.6, 4;
    %load/vec4 v000002b781113140_0;
    %pad/u 32;
    %pushi/vec4 0, 0, 32;
    %cmp/ne;
    %flag_get/vec4 4;
    %and;
T_1.6;
    %flag_set/vec4 8;
    %jmp/0xz  T_1.4, 8;
    %load/vec4 v000002b78119f150_0;
    %pad/u 5;
    %ix/vec4 4;
    %load/vec4a v000002b78119f650, 4;
    %store/vec4 v000002b78119f8d0_0, 0, 32;
    %load/vec4 v000002b78119f150_0;
    %addi 1, 0, 3;
    %store/vec4 v000002b78119f150_0, 0, 3;
    %jmp T_1.5;
T_1.4 ;
    %load/vec4 v000002b78119f330_0;
    %cmpi/e 1, 0, 1;
    %flag_get/vec4 4;
    %jmp/0 T_1.9, 4;
    %load/vec4 v000002b781113140_0;
    %pad/u 32;
    %cmpi/u 8, 0, 32;
    %flag_get/vec4 5;
    %and;
T_1.9;
    %flag_set/vec4 8;
    %jmp/0xz  T_1.7, 8;
    %load/vec4 v000002b78119fe70_0;
    %load/vec4 v000002b78119ff10_0;
    %pad/u 5;
    %ix/vec4 4;
    %store/vec4a v000002b78119f650, 4, 0;
    %load/vec4 v000002b78119ff10_0;
    %addi 1, 0, 3;
    %store/vec4 v000002b78119ff10_0, 0, 3;
T_1.7 ;
T_1.5 ;
T_1.3 ;
T_1.1 ;
    %load/vec4 v000002b78119ff10_0;
    %pad/u 32;
    %cmpi/e 8, 0, 32;
    %jmp/0xz  T_1.10, 4;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v000002b78119ff10_0, 0, 3;
    %jmp T_1.11;
T_1.10 ;
    %load/vec4 v000002b78119f150_0;
    %pad/u 32;
    %cmpi/e 8, 0, 32;
    %jmp/0xz  T_1.12, 4;
    %pushi/vec4 0, 0, 3;
    %store/vec4 v000002b78119f150_0, 0, 3;
T_1.12 ;
T_1.11 ;
    %load/vec4 v000002b78119ff10_0;
    %load/vec4 v000002b78119f150_0;
    %cmp/u;
    %jmp/0xz  T_1.14, 5;
    %load/vec4 v000002b78119f150_0;
    %load/vec4 v000002b78119ff10_0;
    %sub;
    %store/vec4 v000002b781113140_0, 0, 3;
    %jmp T_1.15;
T_1.14 ;
    %load/vec4 v000002b78119f150_0;
    %load/vec4 v000002b78119ff10_0;
    %cmp/u;
    %jmp/0xz  T_1.16, 5;
    %load/vec4 v000002b78119ff10_0;
    %load/vec4 v000002b78119f150_0;
    %sub;
    %store/vec4 v000002b781113140_0, 0, 3;
T_1.16 ;
T_1.15 ;
    %jmp T_1;
    .thread T_1;
    .scope S_000002b78114a1e0;
T_2 ;
    %vpi_call 2 16 "$dumpfile", "fifo.vcd" {0 0 0};
    %vpi_call 2 17 "$dumpvars", 32'sb00000000000000000000000000000000, S_000002b78114a1e0 {0 0 0};
    %vpi_call 2 18 "$monitor", "clk=%b, Rst=%b, EN=%b, RD=%b, WR=%b, datain=%h", v000002b7811a0480_0, v000002b7811a1c40_0, v000002b78119f970_0, v000002b7811a1ec0_0, v000002b7811a0520_0, v000002b7811a1240_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v000002b7811a0480_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v000002b7811a1ec0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v000002b7811a0520_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v000002b7811a1c40_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v000002b78119f970_0, 0, 1;
    %pushi/vec4 0, 0, 32;
    %store/vec4 v000002b7811a1240_0, 0, 32;
    %delay 100000, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v000002b78119f970_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v000002b7811a1c40_0, 0, 1;
    %delay 20000, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v000002b7811a1c40_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v000002b7811a0520_0, 0, 1;
    %pushi/vec4 0, 0, 32;
    %store/vec4 v000002b7811a1240_0, 0, 32;
    %delay 20000, 0;
    %pushi/vec4 1, 0, 32;
    %store/vec4 v000002b7811a1240_0, 0, 32;
    %delay 20000, 0;
    %pushi/vec4 2, 0, 32;
    %store/vec4 v000002b7811a1240_0, 0, 32;
    %delay 20000, 0;
    %pushi/vec4 3, 0, 32;
    %store/vec4 v000002b7811a1240_0, 0, 32;
    %delay 20000, 0;
    %pushi/vec4 4, 0, 32;
    %store/vec4 v000002b7811a1240_0, 0, 32;
    %delay 20000, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v000002b7811a0520_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v000002b7811a1ec0_0, 0, 1;
    %delay 500000, 0;
    %vpi_call 2 52 "$finish" {0 0 0};
    %end;
    .thread T_2;
    .scope S_000002b78114a1e0;
T_3 ;
    %delay 10000, 0;
    %load/vec4 v000002b7811a0480_0;
    %inv;
    %store/vec4 v000002b7811a0480_0, 0, 1;
    %jmp T_3;
    .thread T_3;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "fifo_tb.v";
    "./fifo.v";
