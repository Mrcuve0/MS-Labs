###################################################################

# Created by write_sdc on Thu Jun 13 11:44:24 2019

###################################################################
set sdc_version 1.9

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_wire_load_model -name 5K_hvratio_1_4 -library NangateOpenCellLibrary
set_max_delay 0.68  -from [list [get_ports {A[31]}] [get_ports {A[30]}] [get_ports {A[29]}]       \
[get_ports {A[28]}] [get_ports {A[27]}] [get_ports {A[26]}] [get_ports         \
{A[25]}] [get_ports {A[24]}] [get_ports {A[23]}] [get_ports {A[22]}]           \
[get_ports {A[21]}] [get_ports {A[20]}] [get_ports {A[19]}] [get_ports         \
{A[18]}] [get_ports {A[17]}] [get_ports {A[16]}] [get_ports {A[15]}]           \
[get_ports {A[14]}] [get_ports {A[13]}] [get_ports {A[12]}] [get_ports         \
{A[11]}] [get_ports {A[10]}] [get_ports {A[9]}] [get_ports {A[8]}] [get_ports  \
{A[7]}] [get_ports {A[6]}] [get_ports {A[5]}] [get_ports {A[4]}] [get_ports    \
{A[3]}] [get_ports {A[2]}] [get_ports {A[1]}] [get_ports {A[0]}] [get_ports    \
{B[31]}] [get_ports {B[30]}] [get_ports {B[29]}] [get_ports {B[28]}]           \
[get_ports {B[27]}] [get_ports {B[26]}] [get_ports {B[25]}] [get_ports         \
{B[24]}] [get_ports {B[23]}] [get_ports {B[22]}] [get_ports {B[21]}]           \
[get_ports {B[20]}] [get_ports {B[19]}] [get_ports {B[18]}] [get_ports         \
{B[17]}] [get_ports {B[16]}] [get_ports {B[15]}] [get_ports {B[14]}]           \
[get_ports {B[13]}] [get_ports {B[12]}] [get_ports {B[11]}] [get_ports         \
{B[10]}] [get_ports {B[9]}] [get_ports {B[8]}] [get_ports {B[7]}] [get_ports   \
{B[6]}] [get_ports {B[5]}] [get_ports {B[4]}] [get_ports {B[3]}] [get_ports    \
{B[2]}] [get_ports {B[1]}] [get_ports {B[0]}] [get_ports Cin]]  -to [list [get_ports Cout] [get_ports {Sum[31]}] [get_ports {Sum[30]}]        \
[get_ports {Sum[29]}] [get_ports {Sum[28]}] [get_ports {Sum[27]}] [get_ports   \
{Sum[26]}] [get_ports {Sum[25]}] [get_ports {Sum[24]}] [get_ports {Sum[23]}]   \
[get_ports {Sum[22]}] [get_ports {Sum[21]}] [get_ports {Sum[20]}] [get_ports   \
{Sum[19]}] [get_ports {Sum[18]}] [get_ports {Sum[17]}] [get_ports {Sum[16]}]   \
[get_ports {Sum[15]}] [get_ports {Sum[14]}] [get_ports {Sum[13]}] [get_ports   \
{Sum[12]}] [get_ports {Sum[11]}] [get_ports {Sum[10]}] [get_ports {Sum[9]}]    \
[get_ports {Sum[8]}] [get_ports {Sum[7]}] [get_ports {Sum[6]}] [get_ports      \
{Sum[5]}] [get_ports {Sum[4]}] [get_ports {Sum[3]}] [get_ports {Sum[2]}]       \
[get_ports {Sum[1]}] [get_ports {Sum[0]}]]
