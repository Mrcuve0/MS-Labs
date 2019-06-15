###################################################################

# Created by write_sdc on Sat Jun 15 14:27:44 2019

###################################################################
set sdc_version 1.9

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_wire_load_model -name 5K_hvratio_1_4 -library NangateOpenCellLibrary
create_clock [get_ports Clk]  -period 0.9  -waveform {0 0.45}
set_max_delay 0.82  -from [list [get_ports {A_tle[31]}] [get_ports {A_tle[30]}] [get_ports        \
{A_tle[29]}] [get_ports {A_tle[28]}] [get_ports {A_tle[27]}] [get_ports        \
{A_tle[26]}] [get_ports {A_tle[25]}] [get_ports {A_tle[24]}] [get_ports        \
{A_tle[23]}] [get_ports {A_tle[22]}] [get_ports {A_tle[21]}] [get_ports        \
{A_tle[20]}] [get_ports {A_tle[19]}] [get_ports {A_tle[18]}] [get_ports        \
{A_tle[17]}] [get_ports {A_tle[16]}] [get_ports {A_tle[15]}] [get_ports        \
{A_tle[14]}] [get_ports {A_tle[13]}] [get_ports {A_tle[12]}] [get_ports        \
{A_tle[11]}] [get_ports {A_tle[10]}] [get_ports {A_tle[9]}] [get_ports         \
{A_tle[8]}] [get_ports {A_tle[7]}] [get_ports {A_tle[6]}] [get_ports           \
{A_tle[5]}] [get_ports {A_tle[4]}] [get_ports {A_tle[3]}] [get_ports           \
{A_tle[2]}] [get_ports {A_tle[1]}] [get_ports {A_tle[0]}] [get_ports           \
{B_tle[31]}] [get_ports {B_tle[30]}] [get_ports {B_tle[29]}] [get_ports        \
{B_tle[28]}] [get_ports {B_tle[27]}] [get_ports {B_tle[26]}] [get_ports        \
{B_tle[25]}] [get_ports {B_tle[24]}] [get_ports {B_tle[23]}] [get_ports        \
{B_tle[22]}] [get_ports {B_tle[21]}] [get_ports {B_tle[20]}] [get_ports        \
{B_tle[19]}] [get_ports {B_tle[18]}] [get_ports {B_tle[17]}] [get_ports        \
{B_tle[16]}] [get_ports {B_tle[15]}] [get_ports {B_tle[14]}] [get_ports        \
{B_tle[13]}] [get_ports {B_tle[12]}] [get_ports {B_tle[11]}] [get_ports        \
{B_tle[10]}] [get_ports {B_tle[9]}] [get_ports {B_tle[8]}] [get_ports          \
{B_tle[7]}] [get_ports {B_tle[6]}] [get_ports {B_tle[5]}] [get_ports           \
{B_tle[4]}] [get_ports {B_tle[3]}] [get_ports {B_tle[2]}] [get_ports           \
{B_tle[1]}] [get_ports {B_tle[0]}] [get_ports Cin_tle] [get_ports Clk]         \
[get_ports rst]]  -to [list [get_ports Cout_tle] [get_ports {Sum_tle[31]}] [get_ports           \
{Sum_tle[30]}] [get_ports {Sum_tle[29]}] [get_ports {Sum_tle[28]}] [get_ports  \
{Sum_tle[27]}] [get_ports {Sum_tle[26]}] [get_ports {Sum_tle[25]}] [get_ports  \
{Sum_tle[24]}] [get_ports {Sum_tle[23]}] [get_ports {Sum_tle[22]}] [get_ports  \
{Sum_tle[21]}] [get_ports {Sum_tle[20]}] [get_ports {Sum_tle[19]}] [get_ports  \
{Sum_tle[18]}] [get_ports {Sum_tle[17]}] [get_ports {Sum_tle[16]}] [get_ports  \
{Sum_tle[15]}] [get_ports {Sum_tle[14]}] [get_ports {Sum_tle[13]}] [get_ports  \
{Sum_tle[12]}] [get_ports {Sum_tle[11]}] [get_ports {Sum_tle[10]}] [get_ports  \
{Sum_tle[9]}] [get_ports {Sum_tle[8]}] [get_ports {Sum_tle[7]}] [get_ports     \
{Sum_tle[6]}] [get_ports {Sum_tle[5]}] [get_ports {Sum_tle[4]}] [get_ports     \
{Sum_tle[3]}] [get_ports {Sum_tle[2]}] [get_ports {Sum_tle[1]}] [get_ports     \
{Sum_tle[0]}]]
