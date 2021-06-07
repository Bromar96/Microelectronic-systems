###################################################################

# Created by write_sdc on Thu Jun  3 12:37:51 2021

###################################################################
set sdc_version 1.9

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_wire_load_model -name 5K_hvratio_1_4 -library NangateOpenCellLibrary
set_max_delay 5  -from [list [get_ports {a[127]}] [get_ports {a[126]}] [get_ports {a[125]}]    \
[get_ports {a[124]}] [get_ports {a[123]}] [get_ports {a[122]}] [get_ports      \
{a[121]}] [get_ports {a[120]}] [get_ports {a[119]}] [get_ports {a[118]}]       \
[get_ports {a[117]}] [get_ports {a[116]}] [get_ports {a[115]}] [get_ports      \
{a[114]}] [get_ports {a[113]}] [get_ports {a[112]}] [get_ports {a[111]}]       \
[get_ports {a[110]}] [get_ports {a[109]}] [get_ports {a[108]}] [get_ports      \
{a[107]}] [get_ports {a[106]}] [get_ports {a[105]}] [get_ports {a[104]}]       \
[get_ports {a[103]}] [get_ports {a[102]}] [get_ports {a[101]}] [get_ports      \
{a[100]}] [get_ports {a[99]}] [get_ports {a[98]}] [get_ports {a[97]}]          \
[get_ports {a[96]}] [get_ports {a[95]}] [get_ports {a[94]}] [get_ports         \
{a[93]}] [get_ports {a[92]}] [get_ports {a[91]}] [get_ports {a[90]}]           \
[get_ports {a[89]}] [get_ports {a[88]}] [get_ports {a[87]}] [get_ports         \
{a[86]}] [get_ports {a[85]}] [get_ports {a[84]}] [get_ports {a[83]}]           \
[get_ports {a[82]}] [get_ports {a[81]}] [get_ports {a[80]}] [get_ports         \
{a[79]}] [get_ports {a[78]}] [get_ports {a[77]}] [get_ports {a[76]}]           \
[get_ports {a[75]}] [get_ports {a[74]}] [get_ports {a[73]}] [get_ports         \
{a[72]}] [get_ports {a[71]}] [get_ports {a[70]}] [get_ports {a[69]}]           \
[get_ports {a[68]}] [get_ports {a[67]}] [get_ports {a[66]}] [get_ports         \
{a[65]}] [get_ports {a[64]}] [get_ports {a[63]}] [get_ports {a[62]}]           \
[get_ports {a[61]}] [get_ports {a[60]}] [get_ports {a[59]}] [get_ports         \
{a[58]}] [get_ports {a[57]}] [get_ports {a[56]}] [get_ports {a[55]}]           \
[get_ports {a[54]}] [get_ports {a[53]}] [get_ports {a[52]}] [get_ports         \
{a[51]}] [get_ports {a[50]}] [get_ports {a[49]}] [get_ports {a[48]}]           \
[get_ports {a[47]}] [get_ports {a[46]}] [get_ports {a[45]}] [get_ports         \
{a[44]}] [get_ports {a[43]}] [get_ports {a[42]}] [get_ports {a[41]}]           \
[get_ports {a[40]}] [get_ports {a[39]}] [get_ports {a[38]}] [get_ports         \
{a[37]}] [get_ports {a[36]}] [get_ports {a[35]}] [get_ports {a[34]}]           \
[get_ports {a[33]}] [get_ports {a[32]}] [get_ports {a[31]}] [get_ports         \
{a[30]}] [get_ports {a[29]}] [get_ports {a[28]}] [get_ports {a[27]}]           \
[get_ports {a[26]}] [get_ports {a[25]}] [get_ports {a[24]}] [get_ports         \
{a[23]}] [get_ports {a[22]}] [get_ports {a[21]}] [get_ports {a[20]}]           \
[get_ports {a[19]}] [get_ports {a[18]}] [get_ports {a[17]}] [get_ports         \
{a[16]}] [get_ports {a[15]}] [get_ports {a[14]}] [get_ports {a[13]}]           \
[get_ports {a[12]}] [get_ports {a[11]}] [get_ports {a[10]}] [get_ports {a[9]}] \
[get_ports {a[8]}] [get_ports {a[7]}] [get_ports {a[6]}] [get_ports {a[5]}]    \
[get_ports {a[4]}] [get_ports {a[3]}] [get_ports {a[2]}] [get_ports {a[1]}]    \
[get_ports {a[0]}] [get_ports {b[127]}] [get_ports {b[126]}] [get_ports        \
{b[125]}] [get_ports {b[124]}] [get_ports {b[123]}] [get_ports {b[122]}]       \
[get_ports {b[121]}] [get_ports {b[120]}] [get_ports {b[119]}] [get_ports      \
{b[118]}] [get_ports {b[117]}] [get_ports {b[116]}] [get_ports {b[115]}]       \
[get_ports {b[114]}] [get_ports {b[113]}] [get_ports {b[112]}] [get_ports      \
{b[111]}] [get_ports {b[110]}] [get_ports {b[109]}] [get_ports {b[108]}]       \
[get_ports {b[107]}] [get_ports {b[106]}] [get_ports {b[105]}] [get_ports      \
{b[104]}] [get_ports {b[103]}] [get_ports {b[102]}] [get_ports {b[101]}]       \
[get_ports {b[100]}] [get_ports {b[99]}] [get_ports {b[98]}] [get_ports        \
{b[97]}] [get_ports {b[96]}] [get_ports {b[95]}] [get_ports {b[94]}]           \
[get_ports {b[93]}] [get_ports {b[92]}] [get_ports {b[91]}] [get_ports         \
{b[90]}] [get_ports {b[89]}] [get_ports {b[88]}] [get_ports {b[87]}]           \
[get_ports {b[86]}] [get_ports {b[85]}] [get_ports {b[84]}] [get_ports         \
{b[83]}] [get_ports {b[82]}] [get_ports {b[81]}] [get_ports {b[80]}]           \
[get_ports {b[79]}] [get_ports {b[78]}] [get_ports {b[77]}] [get_ports         \
{b[76]}] [get_ports {b[75]}] [get_ports {b[74]}] [get_ports {b[73]}]           \
[get_ports {b[72]}] [get_ports {b[71]}] [get_ports {b[70]}] [get_ports         \
{b[69]}] [get_ports {b[68]}] [get_ports {b[67]}] [get_ports {b[66]}]           \
[get_ports {b[65]}] [get_ports {b[64]}] [get_ports {b[63]}] [get_ports         \
{b[62]}] [get_ports {b[61]}] [get_ports {b[60]}] [get_ports {b[59]}]           \
[get_ports {b[58]}] [get_ports {b[57]}] [get_ports {b[56]}] [get_ports         \
{b[55]}] [get_ports {b[54]}] [get_ports {b[53]}] [get_ports {b[52]}]           \
[get_ports {b[51]}] [get_ports {b[50]}] [get_ports {b[49]}] [get_ports         \
{b[48]}] [get_ports {b[47]}] [get_ports {b[46]}] [get_ports {b[45]}]           \
[get_ports {b[44]}] [get_ports {b[43]}] [get_ports {b[42]}] [get_ports         \
{b[41]}] [get_ports {b[40]}] [get_ports {b[39]}] [get_ports {b[38]}]           \
[get_ports {b[37]}] [get_ports {b[36]}] [get_ports {b[35]}] [get_ports         \
{b[34]}] [get_ports {b[33]}] [get_ports {b[32]}] [get_ports {b[31]}]           \
[get_ports {b[30]}] [get_ports {b[29]}] [get_ports {b[28]}] [get_ports         \
{b[27]}] [get_ports {b[26]}] [get_ports {b[25]}] [get_ports {b[24]}]           \
[get_ports {b[23]}] [get_ports {b[22]}] [get_ports {b[21]}] [get_ports         \
{b[20]}] [get_ports {b[19]}] [get_ports {b[18]}] [get_ports {b[17]}]           \
[get_ports {b[16]}] [get_ports {b[15]}] [get_ports {b[14]}] [get_ports         \
{b[13]}] [get_ports {b[12]}] [get_ports {b[11]}] [get_ports {b[10]}]           \
[get_ports {b[9]}] [get_ports {b[8]}] [get_ports {b[7]}] [get_ports {b[6]}]    \
[get_ports {b[5]}] [get_ports {b[4]}] [get_ports {b[3]}] [get_ports {b[2]}]    \
[get_ports {b[1]}] [get_ports {b[0]}]]  -to [list [get_ports c_out] [get_ports {sum[127]}] [get_ports {sum[126]}]     \
[get_ports {sum[125]}] [get_ports {sum[124]}] [get_ports {sum[123]}]           \
[get_ports {sum[122]}] [get_ports {sum[121]}] [get_ports {sum[120]}]           \
[get_ports {sum[119]}] [get_ports {sum[118]}] [get_ports {sum[117]}]           \
[get_ports {sum[116]}] [get_ports {sum[115]}] [get_ports {sum[114]}]           \
[get_ports {sum[113]}] [get_ports {sum[112]}] [get_ports {sum[111]}]           \
[get_ports {sum[110]}] [get_ports {sum[109]}] [get_ports {sum[108]}]           \
[get_ports {sum[107]}] [get_ports {sum[106]}] [get_ports {sum[105]}]           \
[get_ports {sum[104]}] [get_ports {sum[103]}] [get_ports {sum[102]}]           \
[get_ports {sum[101]}] [get_ports {sum[100]}] [get_ports {sum[99]}] [get_ports \
{sum[98]}] [get_ports {sum[97]}] [get_ports {sum[96]}] [get_ports {sum[95]}]   \
[get_ports {sum[94]}] [get_ports {sum[93]}] [get_ports {sum[92]}] [get_ports   \
{sum[91]}] [get_ports {sum[90]}] [get_ports {sum[89]}] [get_ports {sum[88]}]   \
[get_ports {sum[87]}] [get_ports {sum[86]}] [get_ports {sum[85]}] [get_ports   \
{sum[84]}] [get_ports {sum[83]}] [get_ports {sum[82]}] [get_ports {sum[81]}]   \
[get_ports {sum[80]}] [get_ports {sum[79]}] [get_ports {sum[78]}] [get_ports   \
{sum[77]}] [get_ports {sum[76]}] [get_ports {sum[75]}] [get_ports {sum[74]}]   \
[get_ports {sum[73]}] [get_ports {sum[72]}] [get_ports {sum[71]}] [get_ports   \
{sum[70]}] [get_ports {sum[69]}] [get_ports {sum[68]}] [get_ports {sum[67]}]   \
[get_ports {sum[66]}] [get_ports {sum[65]}] [get_ports {sum[64]}] [get_ports   \
{sum[63]}] [get_ports {sum[62]}] [get_ports {sum[61]}] [get_ports {sum[60]}]   \
[get_ports {sum[59]}] [get_ports {sum[58]}] [get_ports {sum[57]}] [get_ports   \
{sum[56]}] [get_ports {sum[55]}] [get_ports {sum[54]}] [get_ports {sum[53]}]   \
[get_ports {sum[52]}] [get_ports {sum[51]}] [get_ports {sum[50]}] [get_ports   \
{sum[49]}] [get_ports {sum[48]}] [get_ports {sum[47]}] [get_ports {sum[46]}]   \
[get_ports {sum[45]}] [get_ports {sum[44]}] [get_ports {sum[43]}] [get_ports   \
{sum[42]}] [get_ports {sum[41]}] [get_ports {sum[40]}] [get_ports {sum[39]}]   \
[get_ports {sum[38]}] [get_ports {sum[37]}] [get_ports {sum[36]}] [get_ports   \
{sum[35]}] [get_ports {sum[34]}] [get_ports {sum[33]}] [get_ports {sum[32]}]   \
[get_ports {sum[31]}] [get_ports {sum[30]}] [get_ports {sum[29]}] [get_ports   \
{sum[28]}] [get_ports {sum[27]}] [get_ports {sum[26]}] [get_ports {sum[25]}]   \
[get_ports {sum[24]}] [get_ports {sum[23]}] [get_ports {sum[22]}] [get_ports   \
{sum[21]}] [get_ports {sum[20]}] [get_ports {sum[19]}] [get_ports {sum[18]}]   \
[get_ports {sum[17]}] [get_ports {sum[16]}] [get_ports {sum[15]}] [get_ports   \
{sum[14]}] [get_ports {sum[13]}] [get_ports {sum[12]}] [get_ports {sum[11]}]   \
[get_ports {sum[10]}] [get_ports {sum[9]}] [get_ports {sum[8]}] [get_ports     \
{sum[7]}] [get_ports {sum[6]}] [get_ports {sum[5]}] [get_ports {sum[4]}]       \
[get_ports {sum[3]}] [get_ports {sum[2]}] [get_ports {sum[1]}] [get_ports      \
{sum[0]}]]
