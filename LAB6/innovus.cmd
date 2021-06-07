#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Thu Jun  3 09:55:02 2021                
#                                                     
#######################################################

#@(#)CDS: Innovus v17.11-s080_1 (64bit) 08/04/2017 11:13 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 17.11-s080_1 NR170721-2155/17_11-UB (database version 2.30, 390.7.1) {superthreading v1.44}
#@(#)CDS: AAE 17.11-s034 (64bit) 08/04/2017 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 17.11-s053_1 () Aug  1 2017 23:31:41 ( )
#@(#)CDS: SYNTECH 17.11-s012_1 () Jul 21 2017 02:29:12 ( )
#@(#)CDS: CPE v17.11-s095
#@(#)CDS: IQRC/TQRC 16.1.1-s215 (64bit) Thu Jul  6 20:18:10 PDT 2017 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getDrawView
loadWorkspace -name Physical
win
set defHierChar /
set delaycal_input_transition_delay 0.1ps
set fpIsMaxIoHeight 0
set init_gnd_net gnd
set init_mmmc_file Default.view
set init_oa_search_lib {}
set init_pwr_net vdd
set init_verilog sum.v
set init_lef_file /software/dk/nangate45/lef/NangateOpenCellLibrary.lef
init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -coreMarginsBy die -site FreePDK45_38x28_10R_NP_162NW_34O -r 1 0.6 5.0 5.0 5.0 5.0
uiSetTool select
getIoFlowFlag
fit
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 1 0.6 5.0 5.0 5.0 5.0
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.958493795464 0.598972 5.13 5.04 5.13 5.04
uiSetTool select
getIoFlowFlag
fit
gui_select -rect {-1.112 -0.243 -2.492 11.655}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {gnd vdd} -type core_rings -follow core -layer {top metal9 bottom metal9 left metal10 right metal10} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
gui_select -rect {78.662 50.675 -24.858 52.970}
gui_select -rect {10.303 19.774 10.082 22.593}
gui_select -rect {0.127 0.525 0.109 1.163}
gui_select -rect {2.220 1.149 2.147 1.955}
zoomOut
gui_select -rect {-76.823 46.174 194.027 -117.020}
gui_select -rect {-34.956 48.737 122.256 -90.532}
gui_select -rect {110.294 -76.862 97.478 78.642}
gui_select -rect {80.389 -58.065 184.629 109.401}
gui_select -rect {-12.883 17.166 0.328 -0.246}
zoomOut
zoomOut
zoomOut
gui_select -rect {0.247 -0.043 0.155 0.052}
gui_select -rect {-0.036 0.096 -0.036 0.045}
gui_select -rect {-0.149 -0.091 -0.137 -0.144}
gui_select -rect {-0.126 -0.038 -0.034 0.032}
gui_select -rect {-0.220 0.096 -0.046 -0.014}
selectObject IO_Pin {A[127]}
deselectAll
selectObject IO_Pin {S[127]}
gui_select -rect {-0.092 0.015 -0.123 0.005}
gui_select -rect {-0.115 -0.043 -0.145 -0.032}
selectObject IO_Pin {A[127]}
deselectAll
selectObject IO_Pin {S[127]}
deselectAll
selectObject IO_Pin {A[127]}
gui_select -rect {-0.060 -0.002 0.025 0.048}
zoomOut
zoomOut
zoomOut
zoomIn
zoomIn
gui_select -rect {88.852 -0.981 26.260 7.817}
gui_select -rect {91.251 0.218 14.462 35.813}
gui_select -rect {103.650 24.816 104.050 -5.981}
gui_select -rect {101.450 19.416 101.850 -6.580}
gui_select -rect {23.261 30.015 11.262 45.613}
get_visible_nets
get_visible_nets
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {gnd vdd} -type core_rings -follow core -layer {top metal9 bottom metal9 left metal10 right metal10} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {gnd vdd} -type core_rings -follow core -layer {top metal9 bottom metal9 left metal10 right metal10} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {gnd vdd} -type core_rings -follow core -layer {top metal9 bottom metal9 left metal10 right metal10} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {gnd vdd} -type core_rings -follow core -layer {top metal9 bottom metal9 left metal10 right metal10} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {gnd vdd} -type core_rings -follow core -layer {top metal9 bottom metal9 left metal10 right metal10} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {gnd vdd} -type core_rings -follow core -layer {top metal9 bottom metal9 left metal10 right metal10} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {gnd vdd} -type core_rings -follow core -layer {top metal9 bottom metal9 left metal10 right metal10} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.5 bottom 1.5 left 1.5 right 1.5} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.958493795464 0.598972 5.13 5.04 5.13 5.04
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.958493795464 0.598972 5.13 5.04 5.13 5.04
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.958493795464 0.598972 5.13 5.04 5.13 5.04
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.958493795464 0.598972 5.13 5.04 5.13 5.04
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.958493795464 0.598972 5.13 5.04 5.13 5.04
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.958493795464 0.598972 5.13 5.04 5.13 5.04
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.958493795464 0.598972 5.13 5.04 5.13 5.04
uiSetTool select
getIoFlowFlag
fit
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {gnd vdd} -type core_rings -follow core -layer {top metal9 bottom metal9 left metal10 right metal10} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.5 bottom 1.5 left 1.5 right 1.5} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {gnd vdd} -type core_rings -follow core -layer {top metal9 bottom metal9 left metal10 right metal10} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.5 bottom 1.5 left 1.5 right 1.5} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
gui_select -rect {78.550 69.419 85.793 57.004}
gui_select -rect {67.688 74.764 83.551 54.072}
zoomOut
zoomOut
zoomOut
zoomOut
zoomOut
zoomOut
zoomOut
zoomIn
zoomIn
zoomIn
zoomIn
zoomIn
zoomIn
zoomIn
zoomIn
zoomIn
zoomIn
zoomIn
fit
fit
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length 0 -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring }
addStripe -nets {vdd gnd} -layer metal10 -direction vertical -width 0.8 -spacing 0.8 -set_to_set_distance 20 -start_from left -start_offset 15 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal10 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal10 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length 0 -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring }
addStripe -nets {vdd gnd} -layer metal10 -direction vertical -width 0.8 -spacing 0.8 -set_to_set_distance 20 -start_from left -start_offset 15 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal10 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal10 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.958493795464 0.598972 5.13 5.04 5.13 5.04
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.958493795464 0.598972 5.13 5.04 5.13 5.04
uiSetTool select
getIoFlowFlag
fit
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {vdd gnd} -type core_rings -follow core -layer {top metal9 bottom metal9 left metal10 right metal10} -width {top 0.8 bottom 0.8 left 0.8 right 0.8} -spacing {top 0.8 bottom 0.8 left 0.8 right 0.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {vdd gnd} -type core_rings -follow core -layer {top metal9 bottom metal9 left metal10 right metal10} -width {top 0.8 bottom 0.8 left 0.8 right 0.8} -spacing {top 0.8 bottom 0.8 left 0.8 right 0.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
selectWire 1.3650 1.3200 2.1650 75.9600 10 gnd
deselectAll
selectWire 2.9650 2.9200 3.7650 74.3600 10 vdd
deselectAll
selectWire 1.3650 1.3200 2.1650 75.9600 10 gnd
deselectAll
selectWire 1.3650 1.3200 2.1650 75.9600 10 gnd
deselectAll
selectWire 1.3650 1.3200 2.1650 75.9600 10 gnd
deselectAll
selectWire 1.3650 75.1600 79.0050 75.9600 9 gnd
deselectAll
selectWire 1.3650 1.3200 2.1650 75.9600 10 gnd
deselectAll
selectWire 2.9650 2.9200 3.7650 74.3600 10 vdd
deselectAll
selectWire 20.1300 5.0400 20.9300 72.2400 10 vdd
deselectAll
selectWire 1.3650 1.3200 2.1650 75.9600 10 gnd
deselectAll
selectWire 2.9650 2.9200 3.7650 74.3600 10 vdd
deselectAll
selectWire 2.9650 2.9200 77.4050 3.7200 9 vdd
deselectAll
selectWire 1.3650 1.3200 79.0050 2.1200 9 gnd
deselectAll
selectWire 2.9650 2.9200 77.4050 3.7200 9 vdd
deselectAll
selectWire 1.3650 1.3200 2.1650 75.9600 10 gnd
deselectAll
selectWire 1.3650 1.3200 2.1650 75.9600 10 gnd
deselectAll
selectWire 1.3650 75.1600 79.0050 75.9600 9 gnd
deselectAll
selectWire 2.9650 73.5600 77.4050 74.3600 9 vdd
deselectAll
selectWire 1.3650 75.1600 79.0050 75.9600 9 gnd
deselectAll
selectWire 2.9650 73.5600 77.4050 74.3600 9 vdd
deselectAll
selectWire 1.3650 75.1600 79.0050 75.9600 9 gnd
deselectAll
selectWire 2.9650 73.5600 77.4050 74.3600 9 vdd
deselectAll
selectWire 1.3650 75.1600 79.0050 75.9600 9 gnd
deselectAll
selectWire 1.3650 1.3200 2.1650 75.9600 10 gnd
deselectAll
selectWire 1.3650 75.1600 79.0050 75.9600 9 gnd
deselectAll
selectWire 2.9650 73.5600 77.4050 74.3600 9 vdd
deselectAll
selectWire 61.7300 5.0400 62.5300 72.2400 10 gnd
deselectAll
selectWire 60.1300 5.0400 60.9300 72.2400 10 vdd
deselectAll
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length 0 -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring }
addStripe -nets {vdd gnd} -layer metal10 -direction vertical -width 0.8 -spacing 0.8 -set_to_set_distance 20 -start_from left -start_offset 15 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal10 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal10 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length 0 -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring }
addStripe -nets {vdd gnd} -layer metal10 -direction vertical -width 0.8 -spacing 0.8 -set_to_set_distance 20 -start_from left -start_offset 15 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal10 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal10 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length 0 -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring }
addStripe -nets {vdd gnd} -layer metal10 -direction vertical -width 0.8 -spacing 0.8 -set_to_set_distance 20 -start_from left -start_offset 15 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal10 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal10 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length 0 -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring }
addStripe -nets {vdd gnd} -layer metal10 -direction vertical -width 0.8 -spacing 0.8 -set_to_set_distance 20 -start_from left -start_offset 15 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal10 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal10 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length 0 -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring }
addStripe -nets {vdd gnd} -layer metal10 -direction vertical -width 0.8 -spacing 0.8 -set_to_set_distance 20 -start_from left -start_offset 15 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal10 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal10 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length 0 -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring }
addStripe -nets {vdd gnd} -layer metal10 -direction vertical -width 0.8 -spacing 0.8 -set_to_set_distance 20 -start_from left -start_offset 15 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal10 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal10 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length 0 -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring }
addStripe -nets {vdd gnd} -layer metal10 -direction vertical -width 0.8 -spacing 0.8 -set_to_set_distance 20 -start_from left -start_offset 15 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal10 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal10 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
selectWire 40.1300 5.0400 40.9300 72.2400 10 vdd
deselectAll
selectWire 41.7300 1.3200 42.5300 75.9600 10 gnd
deselectAll
selectWire 2.9650 73.5600 77.4050 74.3600 9 vdd
deselectAll
selectWire 1.3650 75.1600 79.0050 75.9600 9 gnd
deselectAll
selectWire 1.3650 75.1600 79.0050 75.9600 9 gnd
deselectAll
selectWire 41.7300 1.3200 42.5300 75.9600 10 gnd
deselectAll
selectWire 41.7300 1.3200 42.5300 75.9600 10 gnd
deselectAll
selectWire 41.7300 1.3200 42.5300 75.9600 10 gnd
deselectAll
selectWire 40.1300 5.0400 40.9300 72.2400 10 vdd
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1(1) metal10(10) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { metal1(1) metal10(10) } -nets { vdd gnd } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1(1) metal10(10) }
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1(1) metal10(10) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { metal1(1) metal10(10) } -nets { vdd gnd } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1(1) metal10(10) }
deselectAll
selectWire 2.9650 72.1550 5.1300 72.3250 1 vdd
deselectAll
selectWire 1.3650 70.7550 5.1300 70.9250 1 gnd
deselectAll
selectWire 5.1300 70.7550 75.2400 70.9250 1 gnd
deselectAll
selectWire 5.1300 70.7550 75.2400 70.9250 1 gnd
deselectAll
selectWire 21.7300 1.3200 22.5300 75.9600 10 gnd
gui_select -rect {22.714 73.245 21.587 71.742}
fit
setPlaceMode -prerouteAsObs {1 2 3 4 5 6 7 8}
setPlaceMode -fp false
placeDesign
selectWire 51.9300 50.6800 52.0900 50.7500 2 {maprca/CTMP[86]}
gui_select -rect {74.512 79.928 84.384 40.593}
zoomIn
gui_select -rect {73.499 56.590 79.372 41.151}
gui_select -rect {74.800 53.023 79.091 44.566}
deselectAll
fit
gui_select -rect {26.552 11.245 30.067 9.368}
fit
deselectAll
selectWire 21.7300 5.0400 22.5300 72.2400 10 gnd
deselectAll
selectWire 5.1300 41.3550 75.2400 41.5250 1 vdd
deselectAll
selectWire 65.9900 41.7550 67.0100 41.8250 3 n386
deselectAll
selectInst maprca/FAI_21/U5
deselectAll
selectWire 5.1300 41.3550 75.2400 41.5250 1 vdd
deselectAll
selectWire 78.2050 1.3200 79.0050 75.9600 10 gnd
gui_select -rect {78.350 42.550 56.703 39.674}
gui_select -rect {55.306 39.674 54.706 39.594}
selectObject Pin {ATMP_reg[36]/D}
deselectAll
selectObject Pin {ATMP_reg[36]/D}
deselectAll
selectWire 5.1300 6.3550 75.2400 6.5250 1 gnd
deselectAll
gui_select -rect {63.177 21.385 51.789 14.292}
fit
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -spreadDirection clockwise -side Top -layer 1 -spreadType side -pin {{A[0]} {A[1]} {A[2]} {A[3]} {A[4]} {A[5]} {A[6]} {A[7]} {A[8]} {A[9]} {A[10]} {A[11]} {A[12]} {A[13]} {A[14]} {A[15]} {A[16]} {A[17]} {A[18]} {A[19]} {A[20]} {A[21]} {A[22]} {A[23]} {A[24]} {A[25]} {A[26]} {A[27]} {A[28]} {A[29]} {A[30]} {A[31]} {A[32]} {A[33]} {A[34]} {A[35]} {A[36]} {A[37]} {A[38]} {A[39]} {A[40]} {A[41]} {A[42]} {A[43]} {A[44]} {A[45]} {A[46]} {A[47]} {A[48]} {A[49]} {A[50]} {A[51]} {A[52]} {A[53]} {A[54]} {A[55]} {A[56]} {A[57]} {A[58]} {A[59]} {A[60]} {A[61]} {A[62]} {A[63]} {A[64]} {A[65]} {A[66]} {A[67]} {A[68]} {A[69]} {A[70]} {A[71]} {A[72]} {A[73]} {A[74]} {A[75]} {A[76]} {A[77]} {A[78]} {A[79]} {A[80]} {A[81]} {A[82]} {A[83]} {A[84]} {A[85]} {A[86]} {A[87]} {A[88]} {A[89]} {A[90]} {A[91]} {A[92]} {A[93]} {A[94]} {A[95]} {A[96]} {A[97]} {A[98]} {A[99]} {A[100]} {A[101]} {A[102]} {A[103]} {A[104]} {A[105]} {A[106]} {A[107]} {A[108]} {A[109]} {A[110]} {A[111]} {A[112]} {A[113]} {A[114]} {A[115]} {A[116]} {A[117]} {A[118]} {A[119]} {A[120]} {A[121]} {A[122]} {A[123]} {A[124]} {A[125]} {A[126]} {A[127]}}
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -spreadDirection clockwise -side Top -layer 1 -spreadType side -pin {{B[0]} {B[1]} {B[2]} {B[3]} {B[4]} {B[5]} {B[6]} {B[7]} {B[8]} {B[9]} {B[10]} {B[11]} {B[12]} {B[13]} {B[14]} {B[15]} {B[16]} {B[17]} {B[18]} {B[19]} {B[20]} {B[21]} {B[22]} {B[23]} {B[24]} {B[25]} {B[26]} {B[27]} {B[28]} {B[29]} {B[30]} {B[31]} {B[32]} {B[33]} {B[34]} {B[35]} {B[36]} {B[37]} {B[38]} {B[39]} {B[40]} {B[41]} {B[42]} {B[43]} {B[44]} {B[45]} {B[46]} {B[47]} {B[48]} {B[49]} {B[50]} {B[51]} {B[52]} {B[53]} {B[54]} {B[55]} {B[56]} {B[57]} {B[58]} {B[59]} {B[60]} {B[61]} {B[62]} {B[63]} {B[64]} {B[65]} {B[66]} {B[67]} {B[68]} {B[69]} {B[70]} {B[71]} {B[72]} {B[73]} {B[74]} {B[75]} {B[76]} {B[77]} {B[78]} {B[79]} {B[80]} {B[81]} {B[82]} {B[83]} {B[84]} {B[85]} {B[86]} {B[87]} {B[88]} {B[89]} {B[90]} {B[91]} {B[92]} {B[93]} {B[94]} {B[95]} {B[96]} {B[97]} {B[98]} {B[99]} {B[100]} {B[101]} {B[102]} {B[103]} {B[104]} {B[105]} {B[106]} {B[107]} {B[108]} {B[109]} {B[110]} {B[111]} {B[112]} {B[113]} {B[114]} {B[115]} {B[116]} {B[117]} {B[118]} {B[119]} {B[120]} {B[121]} {B[122]} {B[123]} {B[124]} {B[125]} {B[126]} {B[127]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -side Left -layer 1 -spreadType side -pin {{B[0]} {B[1]} {B[2]} {B[3]} {B[4]} {B[5]} {B[6]} {B[7]} {B[8]} {B[9]} {B[10]} {B[11]} {B[12]} {B[13]} {B[14]} {B[15]} {B[16]} {B[17]} {B[18]} {B[19]} {B[20]} {B[21]} {B[22]} {B[23]} {B[24]} {B[25]} {B[26]} {B[27]} {B[28]} {B[29]} {B[30]} {B[31]} {B[32]} {B[33]} {B[34]} {B[35]} {B[36]} {B[37]} {B[38]} {B[39]} {B[40]} {B[41]} {B[42]} {B[43]} {B[44]} {B[45]} {B[46]} {B[47]} {B[48]} {B[49]} {B[50]} {B[51]} {B[52]} {B[53]} {B[54]} {B[55]} {B[56]} {B[57]} {B[58]} {B[59]} {B[60]} {B[61]} {B[62]} {B[63]} {B[64]} {B[65]} {B[66]} {B[67]} {B[68]} {B[69]} {B[70]} {B[71]} {B[72]} {B[73]} {B[74]} {B[75]} {B[76]} {B[77]} {B[78]} {B[79]} {B[80]} {B[81]} {B[82]} {B[83]} {B[84]} {B[85]} {B[86]} {B[87]} {B[88]} {B[89]} {B[90]} {B[91]} {B[92]} {B[93]} {B[94]} {B[95]} {B[96]} {B[97]} {B[98]} {B[99]} {B[100]} {B[101]} {B[102]} {B[103]} {B[104]} {B[105]} {B[106]} {B[107]} {B[108]} {B[109]} {B[110]} {B[111]} {B[112]} {B[113]} {B[114]} {B[115]} {B[116]} {B[117]} {B[118]} {B[119]} {B[120]} {B[121]} {B[122]} {B[123]} {B[124]} {B[125]} {B[126]} {B[127]}}
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 1 -spreadType center -spacing 0.14 -pin Ci
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 1 -spreadType center -spacing 0.14 -pin CLK
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 1 -spreadType center -spacing 0.14 -pin Co
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 1 -spreadType center -spacing 0.14 -pin RST
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Right -layer 1 -spreadType center -spacing 0.14 -pin {{S[0]} {S[1]} {S[2]} {S[3]} {S[4]} {S[5]} {S[6]} {S[7]} {S[8]} {S[9]} {S[10]} {S[11]} {S[12]} {S[13]} {S[14]} {S[15]} {S[16]} {S[17]} {S[18]} {S[19]} {S[20]} {S[21]} {S[22]} {S[23]} {S[24]} {S[25]} {S[26]} {S[27]} {S[28]} {S[29]} {S[30]} {S[31]} {S[32]} {S[33]} {S[34]} {S[35]} {S[36]} {S[37]} {S[38]} {S[39]} {S[40]} {S[41]} {S[42]} {S[43]} {S[44]} {S[45]} {S[46]} {S[47]} {S[48]} {S[49]} {S[50]} {S[51]} {S[52]} {S[53]} {S[54]} {S[55]} {S[56]} {S[57]} {S[58]} {S[59]} {S[60]} {S[61]} {S[62]} {S[63]} {S[64]} {S[65]} {S[66]} {S[67]} {S[68]} {S[69]} {S[70]} {S[71]} {S[72]} {S[73]} {S[74]} {S[75]} {S[76]} {S[77]} {S[78]} {S[79]} {S[80]} {S[81]} {S[82]} {S[83]} {S[84]} {S[85]} {S[86]} {S[87]} {S[88]} {S[89]} {S[90]} {S[91]} {S[92]} {S[93]} {S[94]} {S[95]} {S[96]} {S[97]} {S[98]} {S[99]} {S[100]} {S[101]} {S[102]} {S[103]} {S[104]} {S[105]} {S[106]} {S[107]} {S[108]} {S[109]} {S[110]} {S[111]} {S[112]} {S[113]} {S[114]} {S[115]} {S[116]} {S[117]} {S[118]} {S[119]} {S[120]} {S[121]} {S[122]} {S[123]} {S[124]} {S[125]} {S[126]} {S[127]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -side Top -layer 1 -spreadType side -pin {{A[0]} {A[1]} {A[2]} {A[3]} {A[4]} {A[5]} {A[6]} {A[7]} {A[8]} {A[9]} {A[10]} {A[11]} {A[12]} {A[13]} {A[14]} {A[15]} {A[16]} {A[17]} {A[18]} {A[19]} {A[20]} {A[21]} {A[22]} {A[23]} {A[24]} {A[25]} {A[26]} {A[27]} {A[28]} {A[29]} {A[30]} {A[31]} {A[32]} {A[33]} {A[34]} {A[35]} {A[36]} {A[37]} {A[38]} {A[39]} {A[40]} {A[41]} {A[42]} {A[43]} {A[44]} {A[45]} {A[46]} {A[47]} {A[48]} {A[49]} {A[50]} {A[51]} {A[52]} {A[53]} {A[54]} {A[55]} {A[56]} {A[57]} {A[58]} {A[59]} {A[60]} {A[61]} {A[62]} {A[63]} {A[64]} {A[65]} {A[66]} {A[67]} {A[68]} {A[69]} {A[70]} {A[71]} {A[72]} {A[73]} {A[74]} {A[75]} {A[76]} {A[77]} {A[78]} {A[79]} {A[80]} {A[81]} {A[82]} {A[83]} {A[84]} {A[85]} {A[86]} {A[87]} {A[88]} {A[89]} {A[90]} {A[91]} {A[92]} {A[93]} {A[94]} {A[95]} {A[96]} {A[97]} {A[98]} {A[99]} {A[100]} {A[101]} {A[102]} {A[103]} {A[104]} {A[105]} {A[106]} {A[107]} {A[108]} {A[109]} {A[110]} {A[111]} {A[112]} {A[113]} {A[114]} {A[115]} {A[116]} {A[117]} {A[118]} {A[119]} {A[120]} {A[121]} {A[122]} {A[123]} {A[124]} {A[125]} {A[126]} {A[127]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 1 -spreadType center -spacing 0.14 -pin Ci
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 1 -spreadType center -spacing 0.14 -pin {{A[0]} {A[1]} {A[2]} {A[3]} {A[4]} {A[5]} {A[6]} {A[7]} {A[8]} {A[9]} {A[10]} {A[11]} {A[12]} {A[13]} {A[14]} {A[15]} {A[16]} {A[17]} {A[18]} {A[19]} {A[20]} {A[21]} {A[22]} {A[23]} {A[24]} {A[25]} {A[26]} {A[27]} {A[28]} {A[29]} {A[30]} {A[31]} {A[32]} {A[33]} {A[34]} {A[35]} {A[36]} {A[37]} {A[38]} {A[39]} {A[40]} {A[41]} {A[42]} {A[43]} {A[44]} {A[45]} {A[46]} {A[47]} {A[48]} {A[49]} {A[50]} {A[51]} {A[52]} {A[53]} {A[54]} {A[55]} {A[56]} {A[57]} {A[58]} {A[59]} {A[60]} {A[61]} {A[62]} {A[63]} {A[64]} {A[65]} {A[66]} {A[67]} {A[68]} {A[69]} {A[70]} {A[71]} {A[72]} {A[73]} {A[74]} {A[75]} {A[76]} {A[77]} {A[78]} {A[79]} {A[80]} {A[81]} {A[82]} {A[83]} {A[84]} {A[85]} {A[86]} {A[87]} {A[88]} {A[89]} {A[90]} {A[91]} {A[92]} {A[93]} {A[94]} {A[95]} {A[96]} {A[97]} {A[98]} {A[99]} {A[100]} {A[101]} {A[102]} {A[103]} {A[104]} {A[105]} {A[106]} {A[107]} {A[108]} {A[109]} {A[110]} {A[111]} {A[112]} {A[113]} {A[114]} {A[115]} {A[116]} {A[117]} {A[118]} {A[119]} {A[120]} {A[121]} {A[122]} {A[123]} {A[124]} {A[125]} {A[126]} {A[127]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 1 -spreadType center -spacing 0.19 -pin {{A[0]} {A[1]} {A[2]} {A[3]} {A[4]} {A[5]} {A[6]} {A[7]} {A[8]} {A[9]} {A[10]} {A[11]} {A[12]} {A[13]} {A[14]} {A[15]} {A[16]} {A[17]} {A[18]} {A[19]} {A[20]} {A[21]} {A[22]} {A[23]} {A[24]} {A[25]} {A[26]} {A[27]} {A[28]} {A[29]} {A[30]} {A[31]} {A[32]} {A[33]} {A[34]} {A[35]} {A[36]} {A[37]} {A[38]} {A[39]} {A[40]} {A[41]} {A[42]} {A[43]} {A[44]} {A[45]} {A[46]} {A[47]} {A[48]} {A[49]} {A[50]} {A[51]} {A[52]} {A[53]} {A[54]} {A[55]} {A[56]} {A[57]} {A[58]} {A[59]} {A[60]} {A[61]} {A[62]} {A[63]} {A[64]} {A[65]} {A[66]} {A[67]} {A[68]} {A[69]} {A[70]} {A[71]} {A[72]} {A[73]} {A[74]} {A[75]} {A[76]} {A[77]} {A[78]} {A[79]} {A[80]} {A[81]} {A[82]} {A[83]} {A[84]} {A[85]} {A[86]} {A[87]} {A[88]} {A[89]} {A[90]} {A[91]} {A[92]} {A[93]} {A[94]} {A[95]} {A[96]} {A[97]} {A[98]} {A[99]} {A[100]} {A[101]} {A[102]} {A[103]} {A[104]} {A[105]} {A[106]} {A[107]} {A[108]} {A[109]} {A[110]} {A[111]} {A[112]} {A[113]} {A[114]} {A[115]} {A[116]} {A[117]} {A[118]} {A[119]} {A[120]} {A[121]} {A[122]} {A[123]} {A[124]} {A[125]} {A[126]} {A[127]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Left -layer 1 -spreadType center -spacing 0.38 -pin {{B[0]} {B[1]} {B[2]} {B[3]} {B[4]} {B[5]} {B[6]} {B[7]} {B[8]} {B[9]} {B[10]} {B[11]} {B[12]} {B[13]} {B[14]} {B[15]} {B[16]} {B[17]} {B[18]} {B[19]} {B[20]} {B[21]} {B[22]} {B[23]} {B[24]} {B[25]} {B[26]} {B[27]} {B[28]} {B[29]} {B[30]} {B[31]} {B[32]} {B[33]} {B[34]} {B[35]} {B[36]} {B[37]} {B[38]} {B[39]} {B[40]} {B[41]} {B[42]} {B[43]} {B[44]} {B[45]} {B[46]} {B[47]} {B[48]} {B[49]} {B[50]} {B[51]} {B[52]} {B[53]} {B[54]} {B[55]} {B[56]} {B[57]} {B[58]} {B[59]} {B[60]} {B[61]} {B[62]} {B[63]} {B[64]} {B[65]} {B[66]} {B[67]} {B[68]} {B[69]} {B[70]} {B[71]} {B[72]} {B[73]} {B[74]} {B[75]} {B[76]} {B[77]} {B[78]} {B[79]} {B[80]} {B[81]} {B[82]} {B[83]} {B[84]} {B[85]} {B[86]} {B[87]} {B[88]} {B[89]} {B[90]} {B[91]} {B[92]} {B[93]} {B[94]} {B[95]} {B[96]} {B[97]} {B[98]} {B[99]} {B[100]} {B[101]} {B[102]} {B[103]} {B[104]} {B[105]} {B[106]} {B[107]} {B[108]} {B[109]} {B[110]} {B[111]} {B[112]} {B[113]} {B[114]} {B[115]} {B[116]} {B[117]} {B[118]} {B[119]} {B[120]} {B[121]} {B[122]} {B[123]} {B[124]} {B[125]} {B[126]} {B[127]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Left -layer 1 -spreadType center -spacing 0.42 -pin {{B[0]} {B[1]} {B[2]} {B[3]} {B[4]} {B[5]} {B[6]} {B[7]} {B[8]} {B[9]} {B[10]} {B[11]} {B[12]} {B[13]} {B[14]} {B[15]} {B[16]} {B[17]} {B[18]} {B[19]} {B[20]} {B[21]} {B[22]} {B[23]} {B[24]} {B[25]} {B[26]} {B[27]} {B[28]} {B[29]} {B[30]} {B[31]} {B[32]} {B[33]} {B[34]} {B[35]} {B[36]} {B[37]} {B[38]} {B[39]} {B[40]} {B[41]} {B[42]} {B[43]} {B[44]} {B[45]} {B[46]} {B[47]} {B[48]} {B[49]} {B[50]} {B[51]} {B[52]} {B[53]} {B[54]} {B[55]} {B[56]} {B[57]} {B[58]} {B[59]} {B[60]} {B[61]} {B[62]} {B[63]} {B[64]} {B[65]} {B[66]} {B[67]} {B[68]} {B[69]} {B[70]} {B[71]} {B[72]} {B[73]} {B[74]} {B[75]} {B[76]} {B[77]} {B[78]} {B[79]} {B[80]} {B[81]} {B[82]} {B[83]} {B[84]} {B[85]} {B[86]} {B[87]} {B[88]} {B[89]} {B[90]} {B[91]} {B[92]} {B[93]} {B[94]} {B[95]} {B[96]} {B[97]} {B[98]} {B[99]} {B[100]} {B[101]} {B[102]} {B[103]} {B[104]} {B[105]} {B[106]} {B[107]} {B[108]} {B[109]} {B[110]} {B[111]} {B[112]} {B[113]} {B[114]} {B[115]} {B[116]} {B[117]} {B[118]} {B[119]} {B[120]} {B[121]} {B[122]} {B[123]} {B[124]} {B[125]} {B[126]} {B[127]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Right -layer 1 -spreadType center -spacing -0.14 -pin {{S[0]} {S[1]} {S[2]} {S[3]} {S[4]} {S[5]} {S[6]} {S[7]} {S[8]} {S[9]} {S[10]} {S[11]} {S[12]} {S[13]} {S[14]} {S[15]} {S[16]} {S[17]} {S[18]} {S[19]} {S[20]} {S[21]} {S[22]} {S[23]} {S[24]} {S[25]} {S[26]} {S[27]} {S[28]} {S[29]} {S[30]} {S[31]} {S[32]} {S[33]} {S[34]} {S[35]} {S[36]} {S[37]} {S[38]} {S[39]} {S[40]} {S[41]} {S[42]} {S[43]} {S[44]} {S[45]} {S[46]} {S[47]} {S[48]} {S[49]} {S[50]} {S[51]} {S[52]} {S[53]} {S[54]} {S[55]} {S[56]} {S[57]} {S[58]} {S[59]} {S[60]} {S[61]} {S[62]} {S[63]} {S[64]} {S[65]} {S[66]} {S[67]} {S[68]} {S[69]} {S[70]} {S[71]} {S[72]} {S[73]} {S[74]} {S[75]} {S[76]} {S[77]} {S[78]} {S[79]} {S[80]} {S[81]} {S[82]} {S[83]} {S[84]} {S[85]} {S[86]} {S[87]} {S[88]} {S[89]} {S[90]} {S[91]} {S[92]} {S[93]} {S[94]} {S[95]} {S[96]} {S[97]} {S[98]} {S[99]} {S[100]} {S[101]} {S[102]} {S[103]} {S[104]} {S[105]} {S[106]} {S[107]} {S[108]} {S[109]} {S[110]} {S[111]} {S[112]} {S[113]} {S[114]} {S[115]} {S[116]} {S[117]} {S[118]} {S[119]} {S[120]} {S[121]} {S[122]} {S[123]} {S[124]} {S[125]} {S[126]} {S[127]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Right -layer 1 -spreadType center -spacing -0.14 -pin {{S[0]} {S[1]} {S[2]} {S[3]} {S[4]} {S[5]} {S[6]} {S[7]} {S[8]} {S[9]} {S[10]} {S[11]} {S[12]} {S[13]} {S[14]} {S[15]} {S[16]} {S[17]} {S[18]} {S[19]} {S[20]} {S[21]} {S[22]} {S[23]} {S[24]} {S[25]} {S[26]} {S[27]} {S[28]} {S[29]} {S[30]} {S[31]} {S[32]} {S[33]} {S[34]} {S[35]} {S[36]} {S[37]} {S[38]} {S[39]} {S[40]} {S[41]} {S[42]} {S[43]} {S[44]} {S[45]} {S[46]} {S[47]} {S[48]} {S[49]} {S[50]} {S[51]} {S[52]} {S[53]} {S[54]} {S[55]} {S[56]} {S[57]} {S[58]} {S[59]} {S[60]} {S[61]} {S[62]} {S[63]} {S[64]} {S[65]} {S[66]} {S[67]} {S[68]} {S[69]} {S[70]} {S[71]} {S[72]} {S[73]} {S[74]} {S[75]} {S[76]} {S[77]} {S[78]} {S[79]} {S[80]} {S[81]} {S[82]} {S[83]} {S[84]} {S[85]} {S[86]} {S[87]} {S[88]} {S[89]} {S[90]} {S[91]} {S[92]} {S[93]} {S[94]} {S[95]} {S[96]} {S[97]} {S[98]} {S[99]} {S[100]} {S[101]} {S[102]} {S[103]} {S[104]} {S[105]} {S[106]} {S[107]} {S[108]} {S[109]} {S[110]} {S[111]} {S[112]} {S[113]} {S[114]} {S[115]} {S[116]} {S[117]} {S[118]} {S[119]} {S[120]} {S[121]} {S[122]} {S[123]} {S[124]} {S[125]} {S[126]} {S[127]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -side Top -layer 1 -spreadType side -pin {{A[0]} {A[1]} {A[2]} {A[3]} {A[4]} {A[5]} {A[6]} {A[7]} {A[8]} {A[9]} {A[10]} {A[11]} {A[12]} {A[13]} {A[14]} {A[15]} {A[16]} {A[17]} {A[18]} {A[19]} {A[20]} {A[21]} {A[22]} {A[23]} {A[24]} {A[25]} {A[26]} {A[27]} {A[28]} {A[29]} {A[30]} {A[31]} {A[32]} {A[33]} {A[34]} {A[35]} {A[36]} {A[37]} {A[38]} {A[39]} {A[40]} {A[41]} {A[42]} {A[43]} {A[44]} {A[45]} {A[46]} {A[47]} {A[48]} {A[49]} {A[50]} {A[51]} {A[52]} {A[53]} {A[54]} {A[55]} {A[56]} {A[57]} {A[58]} {A[59]} {A[60]} {A[61]} {A[62]} {A[63]} {A[64]} {A[65]} {A[66]} {A[67]} {A[68]} {A[69]} {A[70]} {A[71]} {A[72]} {A[73]} {A[74]} {A[75]} {A[76]} {A[77]} {A[78]} {A[79]} {A[80]} {A[81]} {A[82]} {A[83]} {A[84]} {A[85]} {A[86]} {A[87]} {A[88]} {A[89]} {A[90]} {A[91]} {A[92]} {A[93]} {A[94]} {A[95]} {A[96]} {A[97]} {A[98]} {A[99]} {A[100]} {A[101]} {A[102]} {A[103]} {A[104]} {A[105]} {A[106]} {A[107]} {A[108]} {A[109]} {A[110]} {A[111]} {A[112]} {A[113]} {A[114]} {A[115]} {A[116]} {A[117]} {A[118]} {A[119]} {A[120]} {A[121]} {A[122]} {A[123]} {A[124]} {A[125]} {A[126]} {A[127]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -side Top -layer 1 -spreadType side -pin {{A[0]} {A[1]} {A[2]} {A[3]} {A[4]} {A[5]} {A[6]} {A[7]} {A[8]} {A[9]} {A[10]} {A[11]} {A[12]} {A[13]} {A[14]} {A[15]} {A[16]} {A[17]} {A[18]} {A[19]} {A[20]} {A[21]} {A[22]} {A[23]} {A[24]} {A[25]} {A[26]} {A[27]} {A[28]} {A[29]} {A[30]} {A[31]} {A[32]} {A[33]} {A[34]} {A[35]} {A[36]} {A[37]} {A[38]} {A[39]} {A[40]} {A[41]} {A[42]} {A[43]} {A[44]} {A[45]} {A[46]} {A[47]} {A[48]} {A[49]} {A[50]} {A[51]} {A[52]} {A[53]} {A[54]} {A[55]} {A[56]} {A[57]} {A[58]} {A[59]} {A[60]} {A[61]} {A[62]} {A[63]} {A[64]} {A[65]} {A[66]} {A[67]} {A[68]} {A[69]} {A[70]} {A[71]} {A[72]} {A[73]} {A[74]} {A[75]} {A[76]} {A[77]} {A[78]} {A[79]} {A[80]} {A[81]} {A[82]} {A[83]} {A[84]} {A[85]} {A[86]} {A[87]} {A[88]} {A[89]} {A[90]} {A[91]} {A[92]} {A[93]} {A[94]} {A[95]} {A[96]} {A[97]} {A[98]} {A[99]} {A[100]} {A[101]} {A[102]} {A[103]} {A[104]} {A[105]} {A[106]} {A[107]} {A[108]} {A[109]} {A[110]} {A[111]} {A[112]} {A[113]} {A[114]} {A[115]} {A[116]} {A[117]} {A[118]} {A[119]} {A[120]} {A[121]} {A[122]} {A[123]} {A[124]} {A[125]} {A[126]} {A[127]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -side Left -layer 1 -spreadType side -pin {{B[0]} {B[1]} {B[2]} {B[3]} {B[4]} {B[5]} {B[6]} {B[7]} {B[8]} {B[9]} {B[10]} {B[11]} {B[12]} {B[13]} {B[14]} {B[15]} {B[16]} {B[17]} {B[18]} {B[19]} {B[20]} {B[21]} {B[22]} {B[23]} {B[24]} {B[25]} {B[26]} {B[27]} {B[28]} {B[29]} {B[30]} {B[31]} {B[32]} {B[33]} {B[34]} {B[35]} {B[36]} {B[37]} {B[38]} {B[39]} {B[40]} {B[41]} {B[42]} {B[43]} {B[44]} {B[45]} {B[46]} {B[47]} {B[48]} {B[49]} {B[50]} {B[51]} {B[52]} {B[53]} {B[54]} {B[55]} {B[56]} {B[57]} {B[58]} {B[59]} {B[60]} {B[61]} {B[62]} {B[63]} {B[64]} {B[65]} {B[66]} {B[67]} {B[68]} {B[69]} {B[70]} {B[71]} {B[72]} {B[73]} {B[74]} {B[75]} {B[76]} {B[77]} {B[78]} {B[79]} {B[80]} {B[81]} {B[82]} {B[83]} {B[84]} {B[85]} {B[86]} {B[87]} {B[88]} {B[89]} {B[90]} {B[91]} {B[92]} {B[93]} {B[94]} {B[95]} {B[96]} {B[97]} {B[98]} {B[99]} {B[100]} {B[101]} {B[102]} {B[103]} {B[104]} {B[105]} {B[106]} {B[107]} {B[108]} {B[109]} {B[110]} {B[111]} {B[112]} {B[113]} {B[114]} {B[115]} {B[116]} {B[117]} {B[118]} {B[119]} {B[120]} {B[121]} {B[122]} {B[123]} {B[124]} {B[125]} {B[126]} {B[127]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -side Left -layer 1 -spreadType side -pin {{B[0]} {B[1]} {B[2]} {B[3]} {B[4]} {B[5]} {B[6]} {B[7]} {B[8]} {B[9]} {B[10]} {B[11]} {B[12]} {B[13]} {B[14]} {B[15]} {B[16]} {B[17]} {B[18]} {B[19]} {B[20]} {B[21]} {B[22]} {B[23]} {B[24]} {B[25]} {B[26]} {B[27]} {B[28]} {B[29]} {B[30]} {B[31]} {B[32]} {B[33]} {B[34]} {B[35]} {B[36]} {B[37]} {B[38]} {B[39]} {B[40]} {B[41]} {B[42]} {B[43]} {B[44]} {B[45]} {B[46]} {B[47]} {B[48]} {B[49]} {B[50]} {B[51]} {B[52]} {B[53]} {B[54]} {B[55]} {B[56]} {B[57]} {B[58]} {B[59]} {B[60]} {B[61]} {B[62]} {B[63]} {B[64]} {B[65]} {B[66]} {B[67]} {B[68]} {B[69]} {B[70]} {B[71]} {B[72]} {B[73]} {B[74]} {B[75]} {B[76]} {B[77]} {B[78]} {B[79]} {B[80]} {B[81]} {B[82]} {B[83]} {B[84]} {B[85]} {B[86]} {B[87]} {B[88]} {B[89]} {B[90]} {B[91]} {B[92]} {B[93]} {B[94]} {B[95]} {B[96]} {B[97]} {B[98]} {B[99]} {B[100]} {B[101]} {B[102]} {B[103]} {B[104]} {B[105]} {B[106]} {B[107]} {B[108]} {B[109]} {B[110]} {B[111]} {B[112]} {B[113]} {B[114]} {B[115]} {B[116]} {B[117]} {B[118]} {B[119]} {B[120]} {B[121]} {B[122]} {B[123]} {B[124]} {B[125]} {B[126]} {B[127]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -side Right -layer 1 -spreadType side -pin {{S[0]} {S[1]} {S[2]} {S[3]} {S[4]} {S[5]} {S[6]} {S[7]} {S[8]} {S[9]} {S[10]} {S[11]} {S[12]} {S[13]} {S[14]} {S[15]} {S[16]} {S[17]} {S[18]} {S[19]} {S[20]} {S[21]} {S[22]} {S[23]} {S[24]} {S[25]} {S[26]} {S[27]} {S[28]} {S[29]} {S[30]} {S[31]} {S[32]} {S[33]} {S[34]} {S[35]} {S[36]} {S[37]} {S[38]} {S[39]} {S[40]} {S[41]} {S[42]} {S[43]} {S[44]} {S[45]} {S[46]} {S[47]} {S[48]} {S[49]} {S[50]} {S[51]} {S[52]} {S[53]} {S[54]} {S[55]} {S[56]} {S[57]} {S[58]} {S[59]} {S[60]} {S[61]} {S[62]} {S[63]} {S[64]} {S[65]} {S[66]} {S[67]} {S[68]} {S[69]} {S[70]} {S[71]} {S[72]} {S[73]} {S[74]} {S[75]} {S[76]} {S[77]} {S[78]} {S[79]} {S[80]} {S[81]} {S[82]} {S[83]} {S[84]} {S[85]} {S[86]} {S[87]} {S[88]} {S[89]} {S[90]} {S[91]} {S[92]} {S[93]} {S[94]} {S[95]} {S[96]} {S[97]} {S[98]} {S[99]} {S[100]} {S[101]} {S[102]} {S[103]} {S[104]} {S[105]} {S[106]} {S[107]} {S[108]} {S[109]} {S[110]} {S[111]} {S[112]} {S[113]} {S[114]} {S[115]} {S[116]} {S[117]} {S[118]} {S[119]} {S[120]} {S[121]} {S[122]} {S[123]} {S[124]} {S[125]} {S[126]} {S[127]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -side Right -layer 1 -spreadType side -pin {{S[0]} {S[1]} {S[2]} {S[3]} {S[4]} {S[5]} {S[6]} {S[7]} {S[8]} {S[9]} {S[10]} {S[11]} {S[12]} {S[13]} {S[14]} {S[15]} {S[16]} {S[17]} {S[18]} {S[19]} {S[20]} {S[21]} {S[22]} {S[23]} {S[24]} {S[25]} {S[26]} {S[27]} {S[28]} {S[29]} {S[30]} {S[31]} {S[32]} {S[33]} {S[34]} {S[35]} {S[36]} {S[37]} {S[38]} {S[39]} {S[40]} {S[41]} {S[42]} {S[43]} {S[44]} {S[45]} {S[46]} {S[47]} {S[48]} {S[49]} {S[50]} {S[51]} {S[52]} {S[53]} {S[54]} {S[55]} {S[56]} {S[57]} {S[58]} {S[59]} {S[60]} {S[61]} {S[62]} {S[63]} {S[64]} {S[65]} {S[66]} {S[67]} {S[68]} {S[69]} {S[70]} {S[71]} {S[72]} {S[73]} {S[74]} {S[75]} {S[76]} {S[77]} {S[78]} {S[79]} {S[80]} {S[81]} {S[82]} {S[83]} {S[84]} {S[85]} {S[86]} {S[87]} {S[88]} {S[89]} {S[90]} {S[91]} {S[92]} {S[93]} {S[94]} {S[95]} {S[96]} {S[97]} {S[98]} {S[99]} {S[100]} {S[101]} {S[102]} {S[103]} {S[104]} {S[105]} {S[106]} {S[107]} {S[108]} {S[109]} {S[110]} {S[111]} {S[112]} {S[113]} {S[114]} {S[115]} {S[116]} {S[117]} {S[118]} {S[119]} {S[120]} {S[121]} {S[122]} {S[123]} {S[124]} {S[125]} {S[126]} {S[127]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 1 -spreadType center -spacing 0.14 -pin Ci
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 1 -spreadType center -spacing 0.14 -pin Ci
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 1 -spreadType center -spacing 0.14 -pin CLK
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 1 -spreadType center -spacing 0.14 -pin CLK
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 1 -spreadType center -spacing 0.14 -pin CLK
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 1 -spreadType center -spacing 0.14 -pin Co
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 1 -spreadType center -spacing 0.14 -pin Co
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 1 -spreadType center -spacing 0.14 -pin RST
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 1 -spreadType center -spacing 0.14 -pin RST
setPinAssignMode -pinEditInBatch false
zoomIn
gui_select -rect {26.592 45.566 51.364 31.944}
zoomOut
gui_select -rect {-5.400 62.340 -5.120 66.055}
zoomSelected
zoomOut
zoomIn
gui_select -rect {-34.205 20.216 -125.377 28.805}
get_visible_nets
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS
optDesign -postCTS -hold
fit
getFillerMode -quiet
addFiller -cell FILLCELL_X8 FILLCELL_X4 FILLCELL_X2 FILLCELL_X32 FILLCELL_X16 FILLCELL_X1 -prefix FILLER
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -drouteStartIteration default
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
selectWire 0.0350 34.6150 1.2700 34.6850 1 {B[57]}
deselectAll
selectWire 5.7600 36.2950 5.8300 36.6450 2 {ATMP[119]}
deselectAll
selectWire 7.0900 36.8550 10.0100 36.9250 3 {B[61]}
fit
setAnalysisMode -analysisType onChipVariation
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS
optDesign -postCTS -hold
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
saveDesign SUM
win
saveDesign rca
saveDesign rca
win
set_analysis_view -setup {default} -hold {default}
set_analysis_view -setup {default} -hold {default}
reset_parasitics
extractRC
rcOut -setload SUM.setload -rc_corner standard
rcOut -setres SUM.setres -rc_corner standard
rcOut -spf SUM.spf -rc_corner standard
rcOut -spef SUM.spef -rc_corner standard
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix SUM_postRoute -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix SUM_postRoute -outDir timingReports
get_time_unit
report_timing -machine_readable -max_paths 10000 -max_slack 0.75 -path_exceptions all > top.mtarpt
load_timing_debug_report -name default_report top.mtarpt
verifyConnectivity -type all -error 1000 -warning 50
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea true -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg false -diffCellViol true -sameCellViol false -padFillerCellsOverlap true -routingBlkgPinOverlap true -routingCellBlkgOverlap true -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
reportGateCount -level 5 -limit 100 -outfile SUM.gateCount
saveNetlist SUM.v
all_hold_analysis_views 
all_setup_analysis_views 
write_sdf  -ideal_clock_network SUM.sdf
