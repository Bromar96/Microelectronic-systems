###################################################################

# Created by write_sdc on Thu Jun  3 14:52:11 2021

###################################################################
set sdc_version 1.9

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_wire_load_model -name 5K_hvratio_1_4 -library NangateOpenCellLibrary
set_max_delay 10  -from [list [get_ports {A_mp[31]}] [get_ports {A_mp[30]}] [get_ports          \
{A_mp[29]}] [get_ports {A_mp[28]}] [get_ports {A_mp[27]}] [get_ports           \
{A_mp[26]}] [get_ports {A_mp[25]}] [get_ports {A_mp[24]}] [get_ports           \
{A_mp[23]}] [get_ports {A_mp[22]}] [get_ports {A_mp[21]}] [get_ports           \
{A_mp[20]}] [get_ports {A_mp[19]}] [get_ports {A_mp[18]}] [get_ports           \
{A_mp[17]}] [get_ports {A_mp[16]}] [get_ports {A_mp[15]}] [get_ports           \
{A_mp[14]}] [get_ports {A_mp[13]}] [get_ports {A_mp[12]}] [get_ports           \
{A_mp[11]}] [get_ports {A_mp[10]}] [get_ports {A_mp[9]}] [get_ports {A_mp[8]}] \
[get_ports {A_mp[7]}] [get_ports {A_mp[6]}] [get_ports {A_mp[5]}] [get_ports   \
{A_mp[4]}] [get_ports {A_mp[3]}] [get_ports {A_mp[2]}] [get_ports {A_mp[1]}]   \
[get_ports {A_mp[0]}] [get_ports {B_mp[31]}] [get_ports {B_mp[30]}] [get_ports \
{B_mp[29]}] [get_ports {B_mp[28]}] [get_ports {B_mp[27]}] [get_ports           \
{B_mp[26]}] [get_ports {B_mp[25]}] [get_ports {B_mp[24]}] [get_ports           \
{B_mp[23]}] [get_ports {B_mp[22]}] [get_ports {B_mp[21]}] [get_ports           \
{B_mp[20]}] [get_ports {B_mp[19]}] [get_ports {B_mp[18]}] [get_ports           \
{B_mp[17]}] [get_ports {B_mp[16]}] [get_ports {B_mp[15]}] [get_ports           \
{B_mp[14]}] [get_ports {B_mp[13]}] [get_ports {B_mp[12]}] [get_ports           \
{B_mp[11]}] [get_ports {B_mp[10]}] [get_ports {B_mp[9]}] [get_ports {B_mp[8]}] \
[get_ports {B_mp[7]}] [get_ports {B_mp[6]}] [get_ports {B_mp[5]}] [get_ports   \
{B_mp[4]}] [get_ports {B_mp[3]}] [get_ports {B_mp[2]}] [get_ports {B_mp[1]}]   \
[get_ports {B_mp[0]}]]  -to [list [get_ports {Y_mp[63]}] [get_ports {Y_mp[62]}] [get_ports            \
{Y_mp[61]}] [get_ports {Y_mp[60]}] [get_ports {Y_mp[59]}] [get_ports           \
{Y_mp[58]}] [get_ports {Y_mp[57]}] [get_ports {Y_mp[56]}] [get_ports           \
{Y_mp[55]}] [get_ports {Y_mp[54]}] [get_ports {Y_mp[53]}] [get_ports           \
{Y_mp[52]}] [get_ports {Y_mp[51]}] [get_ports {Y_mp[50]}] [get_ports           \
{Y_mp[49]}] [get_ports {Y_mp[48]}] [get_ports {Y_mp[47]}] [get_ports           \
{Y_mp[46]}] [get_ports {Y_mp[45]}] [get_ports {Y_mp[44]}] [get_ports           \
{Y_mp[43]}] [get_ports {Y_mp[42]}] [get_ports {Y_mp[41]}] [get_ports           \
{Y_mp[40]}] [get_ports {Y_mp[39]}] [get_ports {Y_mp[38]}] [get_ports           \
{Y_mp[37]}] [get_ports {Y_mp[36]}] [get_ports {Y_mp[35]}] [get_ports           \
{Y_mp[34]}] [get_ports {Y_mp[33]}] [get_ports {Y_mp[32]}] [get_ports           \
{Y_mp[31]}] [get_ports {Y_mp[30]}] [get_ports {Y_mp[29]}] [get_ports           \
{Y_mp[28]}] [get_ports {Y_mp[27]}] [get_ports {Y_mp[26]}] [get_ports           \
{Y_mp[25]}] [get_ports {Y_mp[24]}] [get_ports {Y_mp[23]}] [get_ports           \
{Y_mp[22]}] [get_ports {Y_mp[21]}] [get_ports {Y_mp[20]}] [get_ports           \
{Y_mp[19]}] [get_ports {Y_mp[18]}] [get_ports {Y_mp[17]}] [get_ports           \
{Y_mp[16]}] [get_ports {Y_mp[15]}] [get_ports {Y_mp[14]}] [get_ports           \
{Y_mp[13]}] [get_ports {Y_mp[12]}] [get_ports {Y_mp[11]}] [get_ports           \
{Y_mp[10]}] [get_ports {Y_mp[9]}] [get_ports {Y_mp[8]}] [get_ports {Y_mp[7]}]  \
[get_ports {Y_mp[6]}] [get_ports {Y_mp[5]}] [get_ports {Y_mp[4]}] [get_ports   \
{Y_mp[3]}] [get_ports {Y_mp[2]}] [get_ports {Y_mp[1]}] [get_ports {Y_mp[0]}]]
