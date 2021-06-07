#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Thu Jun  3 15:02:45 2021                
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
set init_verilog mult.v
set init_lef_file /software/dk/nangate45/lef/NangateOpenCellLibrary.lef
init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -coreMarginsBy die -site FreePDK45_38x28_10R_NP_162NW_34O -r 1.0 0.6 5.0 5.0 5.0 5
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.99649122807 0.599993 5.13 5.04 5.13 5.04
uiSetTool select
getIoFlowFlag
fit
getIoFlowFlag
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
addRing -nets {vdd gnd} -type core_rings -follow core -layer {top metal9 bottom metal9 left metal10 right metal10} -width {top 0.8 bottom 0.8 left 0.8 right 0.8} -spacing {top 0.8 bottom 0.8 left 0.8 right 0.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {vdd gnd} -type core_rings -follow core -layer {top metal9 bottom metal9 left metal10 right metal10} -width {top 0.8 bottom 0.8 left 0.8 right 0.8} -spacing {top 0.8 bottom 0.8 left 0.8 right 0.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
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
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length 0 -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring }
addStripe -nets {vdd gnd} -layer metal10 -direction vertical -width 0.8 -spacing 0.8 -set_to_set_distance 20 -start_from left -start_offset 15 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal10 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal10 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length 0 -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring }
addStripe -nets {vdd gnd} -layer metal10 -direction vertical -width 0.8 -spacing 0.8 -set_to_set_distance 20 -start_from left -start_offset 15 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal10 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal10 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length 0 -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring }
addStripe -nets {vdd gnd} -layer metal10 -direction vertical -width 0.8 -spacing 0.8 -set_to_set_distance 20 -start_from left -start_offset 15 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal10 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal10 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1(1) metal10(10) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { metal1(1) metal10(10) } -nets { vdd gnd } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1(1) metal10(10) }
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1(1) metal10(10) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { metal1(1) metal10(10) } -nets { vdd gnd } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1(1) metal10(10) }
zoomIn
zoomIn
fit
setPlaceMode -prerouteAsObs {1 2 3 4 5 6 7 8}
setPlaceMode -fp false
placeDesign
setPlaceMode -fp false
placeDesign
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -spreadDirection clockwise -side Left -layer 1 -spreadType side -pin {{A_mp[0]} {A_mp[1]} {A_mp[2]} {A_mp[3]} {A_mp[4]} {A_mp[5]} {A_mp[6]} {A_mp[7]} {A_mp[8]} {A_mp[9]} {A_mp[10]} {A_mp[11]} {A_mp[12]} {A_mp[13]} {A_mp[14]} {A_mp[15]} {A_mp[16]} {A_mp[17]} {A_mp[18]} {A_mp[19]} {A_mp[20]} {A_mp[21]} {A_mp[22]} {A_mp[23]} {A_mp[24]} {A_mp[25]} {A_mp[26]} {A_mp[27]} {A_mp[28]} {A_mp[29]} {A_mp[30]} {A_mp[31]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -side Left -layer 1 -spreadType side -pin {{A_mp[0]} {A_mp[1]} {A_mp[2]} {A_mp[3]} {A_mp[4]} {A_mp[5]} {A_mp[6]} {A_mp[7]} {A_mp[8]} {A_mp[9]} {A_mp[10]} {A_mp[11]} {A_mp[12]} {A_mp[13]} {A_mp[14]} {A_mp[15]} {A_mp[16]} {A_mp[17]} {A_mp[18]} {A_mp[19]} {A_mp[20]} {A_mp[21]} {A_mp[22]} {A_mp[23]} {A_mp[24]} {A_mp[25]} {A_mp[26]} {A_mp[27]} {A_mp[28]} {A_mp[29]} {A_mp[30]} {A_mp[31]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -spreadDirection clockwise -side Top -layer 1 -spreadType side -pin {{B_mp[0]} {B_mp[1]} {B_mp[2]} {B_mp[3]} {B_mp[4]} {B_mp[5]} {B_mp[6]} {B_mp[7]} {B_mp[8]} {B_mp[9]} {B_mp[10]} {B_mp[11]} {B_mp[12]} {B_mp[13]} {B_mp[14]} {B_mp[15]} {B_mp[16]} {B_mp[17]} {B_mp[18]} {B_mp[19]} {B_mp[20]} {B_mp[21]} {B_mp[22]} {B_mp[23]} {B_mp[24]} {B_mp[25]} {B_mp[26]} {B_mp[27]} {B_mp[28]} {B_mp[29]} {B_mp[30]} {B_mp[31]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -side Top -layer 1 -spreadType side -pin {{B_mp[0]} {B_mp[1]} {B_mp[2]} {B_mp[3]} {B_mp[4]} {B_mp[5]} {B_mp[6]} {B_mp[7]} {B_mp[8]} {B_mp[9]} {B_mp[10]} {B_mp[11]} {B_mp[12]} {B_mp[13]} {B_mp[14]} {B_mp[15]} {B_mp[16]} {B_mp[17]} {B_mp[18]} {B_mp[19]} {B_mp[20]} {B_mp[21]} {B_mp[22]} {B_mp[23]} {B_mp[24]} {B_mp[25]} {B_mp[26]} {B_mp[27]} {B_mp[28]} {B_mp[29]} {B_mp[30]} {B_mp[31]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -spreadDirection clockwise -side Bottom -layer 1 -spreadType side -pin {{Y_mp[0]} {Y_mp[1]} {Y_mp[2]} {Y_mp[3]} {Y_mp[4]} {Y_mp[5]} {Y_mp[6]} {Y_mp[7]} {Y_mp[8]} {Y_mp[9]} {Y_mp[10]} {Y_mp[11]} {Y_mp[12]} {Y_mp[13]} {Y_mp[14]} {Y_mp[15]} {Y_mp[16]} {Y_mp[17]} {Y_mp[18]} {Y_mp[19]} {Y_mp[20]} {Y_mp[21]} {Y_mp[22]} {Y_mp[23]} {Y_mp[24]} {Y_mp[25]} {Y_mp[26]} {Y_mp[27]} {Y_mp[28]} {Y_mp[29]} {Y_mp[30]} {Y_mp[31]} {Y_mp[32]} {Y_mp[33]} {Y_mp[34]} {Y_mp[35]} {Y_mp[36]} {Y_mp[37]} {Y_mp[38]} {Y_mp[39]} {Y_mp[40]} {Y_mp[41]} {Y_mp[42]} {Y_mp[43]} {Y_mp[44]} {Y_mp[45]} {Y_mp[46]} {Y_mp[47]} {Y_mp[48]} {Y_mp[49]} {Y_mp[50]} {Y_mp[51]} {Y_mp[52]} {Y_mp[53]} {Y_mp[54]} {Y_mp[55]} {Y_mp[56]} {Y_mp[57]} {Y_mp[58]} {Y_mp[59]} {Y_mp[60]} {Y_mp[61]} {Y_mp[62]} {Y_mp[63]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -side Bottom -layer 1 -spreadType side -pin {{Y_mp[0]} {Y_mp[1]} {Y_mp[2]} {Y_mp[3]} {Y_mp[4]} {Y_mp[5]} {Y_mp[6]} {Y_mp[7]} {Y_mp[8]} {Y_mp[9]} {Y_mp[10]} {Y_mp[11]} {Y_mp[12]} {Y_mp[13]} {Y_mp[14]} {Y_mp[15]} {Y_mp[16]} {Y_mp[17]} {Y_mp[18]} {Y_mp[19]} {Y_mp[20]} {Y_mp[21]} {Y_mp[22]} {Y_mp[23]} {Y_mp[24]} {Y_mp[25]} {Y_mp[26]} {Y_mp[27]} {Y_mp[28]} {Y_mp[29]} {Y_mp[30]} {Y_mp[31]} {Y_mp[32]} {Y_mp[33]} {Y_mp[34]} {Y_mp[35]} {Y_mp[36]} {Y_mp[37]} {Y_mp[38]} {Y_mp[39]} {Y_mp[40]} {Y_mp[41]} {Y_mp[42]} {Y_mp[43]} {Y_mp[44]} {Y_mp[45]} {Y_mp[46]} {Y_mp[47]} {Y_mp[48]} {Y_mp[49]} {Y_mp[50]} {Y_mp[51]} {Y_mp[52]} {Y_mp[53]} {Y_mp[54]} {Y_mp[55]} {Y_mp[56]} {Y_mp[57]} {Y_mp[58]} {Y_mp[59]} {Y_mp[60]} {Y_mp[61]} {Y_mp[62]} {Y_mp[63]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -side Bottom -layer 1 -spreadType side -pin {{Y_mp[0]} {Y_mp[1]} {Y_mp[2]} {Y_mp[3]} {Y_mp[4]} {Y_mp[5]} {Y_mp[6]} {Y_mp[7]} {Y_mp[8]} {Y_mp[9]} {Y_mp[10]} {Y_mp[11]} {Y_mp[12]} {Y_mp[13]} {Y_mp[14]} {Y_mp[15]} {Y_mp[16]} {Y_mp[17]} {Y_mp[18]} {Y_mp[19]} {Y_mp[20]} {Y_mp[21]} {Y_mp[22]} {Y_mp[23]} {Y_mp[24]} {Y_mp[25]} {Y_mp[26]} {Y_mp[27]} {Y_mp[28]} {Y_mp[29]} {Y_mp[30]} {Y_mp[31]} {Y_mp[32]} {Y_mp[33]} {Y_mp[34]} {Y_mp[35]} {Y_mp[36]} {Y_mp[37]} {Y_mp[38]} {Y_mp[39]} {Y_mp[40]} {Y_mp[41]} {Y_mp[42]} {Y_mp[43]} {Y_mp[44]} {Y_mp[45]} {Y_mp[46]} {Y_mp[47]} {Y_mp[48]} {Y_mp[49]} {Y_mp[50]} {Y_mp[51]} {Y_mp[52]} {Y_mp[53]} {Y_mp[54]} {Y_mp[55]} {Y_mp[56]} {Y_mp[57]} {Y_mp[58]} {Y_mp[59]} {Y_mp[60]} {Y_mp[61]} {Y_mp[62]} {Y_mp[63]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -side Bottom -layer 1 -spreadType side -pin {{Y_mp[0]} {Y_mp[1]} {Y_mp[2]} {Y_mp[3]} {Y_mp[4]} {Y_mp[5]} {Y_mp[6]} {Y_mp[7]} {Y_mp[8]} {Y_mp[9]} {Y_mp[10]} {Y_mp[11]} {Y_mp[12]} {Y_mp[13]} {Y_mp[14]} {Y_mp[15]} {Y_mp[16]} {Y_mp[17]} {Y_mp[18]} {Y_mp[19]} {Y_mp[20]} {Y_mp[21]} {Y_mp[22]} {Y_mp[23]} {Y_mp[24]} {Y_mp[25]} {Y_mp[26]} {Y_mp[27]} {Y_mp[28]} {Y_mp[29]} {Y_mp[30]} {Y_mp[31]} {Y_mp[32]} {Y_mp[33]} {Y_mp[34]} {Y_mp[35]} {Y_mp[36]} {Y_mp[37]} {Y_mp[38]} {Y_mp[39]} {Y_mp[40]} {Y_mp[41]} {Y_mp[42]} {Y_mp[43]} {Y_mp[44]} {Y_mp[45]} {Y_mp[46]} {Y_mp[47]} {Y_mp[48]} {Y_mp[49]} {Y_mp[50]} {Y_mp[51]} {Y_mp[52]} {Y_mp[53]} {Y_mp[54]} {Y_mp[55]} {Y_mp[56]} {Y_mp[57]} {Y_mp[58]} {Y_mp[59]} {Y_mp[60]} {Y_mp[61]} {Y_mp[62]} {Y_mp[63]}}
setPinAssignMode -pinEditInBatch false
setPinAssignMode -pinEditInBatch false
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS
optDesign -postCTS -hold
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS
optDesign -postCTS -hold
getFillerMode -quiet
addFiller -cell FILLCELL_X8 FILLCELL_X4 FILLCELL_X32 FILLCELL_X2 FILLCELL_X16 FILLCELL_X1 -prefix FILLER
addFiller -cell FILLCELL_X8 FILLCELL_X4 FILLCELL_X32 FILLCELL_X2 FILLCELL_X16 FILLCELL_X1 -prefix FILLER
fit
zoomOut
zoomOut
zoomOut
zoomOut
zoomIn
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -drouteStartIteration default
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -drouteStartIteration default
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -drouteStartIteration default
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -drouteStartIteration default
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
fit
setAnalysisMode -analysisType onChipvariation
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
optDesign -postRoute -hold
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
optDesign -postRoute -hold
saveDesign myBOOTHMUL_NBIT32
saveDesign myBOOTHMUL_NBIT32
win
reset_parasitics
extractRC
rcOut -setload BOOTHMUL_NBIT32.setload -rc_corner standard
rcOut -setres BOOTHMUL_NBIT32.setres -rc_corner standard
rcOut -spf BOOTHMUL_NBIT32.spf -rc_corner standard
rcOut -spef BOOTHMUL_NBIT32.spef -rc_corner standard
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix BOOTHMUL_NBIT32_postRoute -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix BOOTHMUL_NBIT32_postRoute -outDir timingReports
get_time_unit
report_timing -machine_readable -max_paths 10000 -max_slack 0.75 -path_exceptions all > top.mtarpt
load_timing_debug_report -name default_report top.mtarpt
get_time_unit
report_timing -machine_readable -max_paths 10000 -max_slack 0.75 -path_exceptions all > top.mtarpt
load_timing_debug_report -name default_report top.mtarpt
get_time_unit
report_timing -machine_readable -max_paths 10000 -max_slack 0.75 -path_exceptions all > top.mtarpt
load_timing_debug_report -name default_report top.mtarpt
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix BOOTHMUL_NBIT32_postRoute -outDir timingReports
get_time_unit
report_timing -machine_readable -max_paths 10000 -max_slack 0.75 -path_exceptions all > top.mtarpt
load_timing_debug_report -name default_report top.mtarpt
verifyConnectivity -type all -error 1000 -warning 50
verifyConnectivity -type all -error 1000 -warning 50
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea true -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg false -diffCellViol true -sameCellViol false -padFillerCellsOverlap true -routingBlkgPinOverlap true -routingCellBlkgOverlap true -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea true -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg false -diffCellViol true -sameCellViol false -padFillerCellsOverlap true -routingBlkgPinOverlap true -routingCellBlkgOverlap true -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
reportGateCount -level 5 -limit 100 -outfile BOOTHMUL_NBIT32.gateCount
saveNetlist BOOTHMUL_NBIT32.v
all_hold_analysis_views 
all_setup_analysis_views 
write_sdf  -ideal_clock_network BOOTHMUL_NBIT32.sdf
