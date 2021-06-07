#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Thu Jun  3 12:45:04 2021                
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
set init_verilog rca.v
set init_lef_file /software/dk/nangate45/lef/NangateOpenCellLibrary.lef
init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -coreMarginsBy die -site FreePDK45_38x28_10R_NP_162NW_34O -r 1.0 0.6 5.0 5.0 5.0 5.0
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.929660600098 0.599515 5.13 5.04 5.13 5.04
uiSetTool select
getIoFlowFlag
fit
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
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1(1) metal10(10) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { metal1(1) metal10(10) } -nets { vdd gnd } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1(1) metal10(10) }
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1(1) metal10(10) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { metal1(1) metal10(10) } -nets { vdd gnd } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1(1) metal10(10) }
setPlaceMode -prerouteAsObs {1 2 3 4 5 6 7 8}
setPlaceMode -fp false
placeDesign
setPlaceMode -fp false
placeDesign
setPlaceMode -fp false
placeDesign
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -spreadDirection clockwise -side Top -layer 1 -spreadType side -pin {{a[0]} {a[1]} {a[2]} {a[3]} {a[4]} {a[5]} {a[6]} {a[7]} {a[8]} {a[9]} {a[10]} {a[11]} {a[12]} {a[13]} {a[14]} {a[15]} {a[16]} {a[17]} {a[18]} {a[19]} {a[20]} {a[21]} {a[22]} {a[23]} {a[24]} {a[25]} {a[26]} {a[27]} {a[28]} {a[29]} {a[30]} {a[31]} {a[32]} {a[33]} {a[34]} {a[35]} {a[36]} {a[37]} {a[38]} {a[39]} {a[40]} {a[41]} {a[42]} {a[43]} {a[44]} {a[45]} {a[46]} {a[47]} {a[48]} {a[49]} {a[50]} {a[51]} {a[52]} {a[53]} {a[54]} {a[55]} {a[56]} {a[57]} {a[58]} {a[59]} {a[60]} {a[61]} {a[62]} {a[63]} {a[64]} {a[65]} {a[66]} {a[67]} {a[68]} {a[69]} {a[70]} {a[71]} {a[72]} {a[73]} {a[74]} {a[75]} {a[76]} {a[77]} {a[78]} {a[79]} {a[80]} {a[81]} {a[82]} {a[83]} {a[84]} {a[85]} {a[86]} {a[87]} {a[88]} {a[89]} {a[90]} {a[91]} {a[92]} {a[93]} {a[94]} {a[95]} {a[96]} {a[97]} {a[98]} {a[99]} {a[100]} {a[101]} {a[102]} {a[103]} {a[104]} {a[105]} {a[106]} {a[107]} {a[108]} {a[109]} {a[110]} {a[111]} {a[112]} {a[113]} {a[114]} {a[115]} {a[116]} {a[117]} {a[118]} {a[119]} {a[120]} {a[121]} {a[122]} {a[123]} {a[124]} {a[125]} {a[126]} {a[127]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -side Top -layer 1 -spreadType side -pin {{a[0]} {a[1]} {a[2]} {a[3]} {a[4]} {a[5]} {a[6]} {a[7]} {a[8]} {a[9]} {a[10]} {a[11]} {a[12]} {a[13]} {a[14]} {a[15]} {a[16]} {a[17]} {a[18]} {a[19]} {a[20]} {a[21]} {a[22]} {a[23]} {a[24]} {a[25]} {a[26]} {a[27]} {a[28]} {a[29]} {a[30]} {a[31]} {a[32]} {a[33]} {a[34]} {a[35]} {a[36]} {a[37]} {a[38]} {a[39]} {a[40]} {a[41]} {a[42]} {a[43]} {a[44]} {a[45]} {a[46]} {a[47]} {a[48]} {a[49]} {a[50]} {a[51]} {a[52]} {a[53]} {a[54]} {a[55]} {a[56]} {a[57]} {a[58]} {a[59]} {a[60]} {a[61]} {a[62]} {a[63]} {a[64]} {a[65]} {a[66]} {a[67]} {a[68]} {a[69]} {a[70]} {a[71]} {a[72]} {a[73]} {a[74]} {a[75]} {a[76]} {a[77]} {a[78]} {a[79]} {a[80]} {a[81]} {a[82]} {a[83]} {a[84]} {a[85]} {a[86]} {a[87]} {a[88]} {a[89]} {a[90]} {a[91]} {a[92]} {a[93]} {a[94]} {a[95]} {a[96]} {a[97]} {a[98]} {a[99]} {a[100]} {a[101]} {a[102]} {a[103]} {a[104]} {a[105]} {a[106]} {a[107]} {a[108]} {a[109]} {a[110]} {a[111]} {a[112]} {a[113]} {a[114]} {a[115]} {a[116]} {a[117]} {a[118]} {a[119]} {a[120]} {a[121]} {a[122]} {a[123]} {a[124]} {a[125]} {a[126]} {a[127]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -spreadDirection clockwise -side Left -layer 1 -spreadType side -pin {{b[0]} {b[1]} {b[2]} {b[3]} {b[4]} {b[5]} {b[6]} {b[7]} {b[8]} {b[9]} {b[10]} {b[11]} {b[12]} {b[13]} {b[14]} {b[15]} {b[16]} {b[17]} {b[18]} {b[19]} {b[20]} {b[21]} {b[22]} {b[23]} {b[24]} {b[25]} {b[26]} {b[27]} {b[28]} {b[29]} {b[30]} {b[31]} {b[32]} {b[33]} {b[34]} {b[35]} {b[36]} {b[37]} {b[38]} {b[39]} {b[40]} {b[41]} {b[42]} {b[43]} {b[44]} {b[45]} {b[46]} {b[47]} {b[48]} {b[49]} {b[50]} {b[51]} {b[52]} {b[53]} {b[54]} {b[55]} {b[56]} {b[57]} {b[58]} {b[59]} {b[60]} {b[61]} {b[62]} {b[63]} {b[64]} {b[65]} {b[66]} {b[67]} {b[68]} {b[69]} {b[70]} {b[71]} {b[72]} {b[73]} {b[74]} {b[75]} {b[76]} {b[77]} {b[78]} {b[79]} {b[80]} {b[81]} {b[82]} {b[83]} {b[84]} {b[85]} {b[86]} {b[87]} {b[88]} {b[89]} {b[90]} {b[91]} {b[92]} {b[93]} {b[94]} {b[95]} {b[96]} {b[97]} {b[98]} {b[99]} {b[100]} {b[101]} {b[102]} {b[103]} {b[104]} {b[105]} {b[106]} {b[107]} {b[108]} {b[109]} {b[110]} {b[111]} {b[112]} {b[113]} {b[114]} {b[115]} {b[116]} {b[117]} {b[118]} {b[119]} {b[120]} {b[121]} {b[122]} {b[123]} {b[124]} {b[125]} {b[126]} {b[127]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -side Left -layer 1 -spreadType side -pin {{b[0]} {b[1]} {b[2]} {b[3]} {b[4]} {b[5]} {b[6]} {b[7]} {b[8]} {b[9]} {b[10]} {b[11]} {b[12]} {b[13]} {b[14]} {b[15]} {b[16]} {b[17]} {b[18]} {b[19]} {b[20]} {b[21]} {b[22]} {b[23]} {b[24]} {b[25]} {b[26]} {b[27]} {b[28]} {b[29]} {b[30]} {b[31]} {b[32]} {b[33]} {b[34]} {b[35]} {b[36]} {b[37]} {b[38]} {b[39]} {b[40]} {b[41]} {b[42]} {b[43]} {b[44]} {b[45]} {b[46]} {b[47]} {b[48]} {b[49]} {b[50]} {b[51]} {b[52]} {b[53]} {b[54]} {b[55]} {b[56]} {b[57]} {b[58]} {b[59]} {b[60]} {b[61]} {b[62]} {b[63]} {b[64]} {b[65]} {b[66]} {b[67]} {b[68]} {b[69]} {b[70]} {b[71]} {b[72]} {b[73]} {b[74]} {b[75]} {b[76]} {b[77]} {b[78]} {b[79]} {b[80]} {b[81]} {b[82]} {b[83]} {b[84]} {b[85]} {b[86]} {b[87]} {b[88]} {b[89]} {b[90]} {b[91]} {b[92]} {b[93]} {b[94]} {b[95]} {b[96]} {b[97]} {b[98]} {b[99]} {b[100]} {b[101]} {b[102]} {b[103]} {b[104]} {b[105]} {b[106]} {b[107]} {b[108]} {b[109]} {b[110]} {b[111]} {b[112]} {b[113]} {b[114]} {b[115]} {b[116]} {b[117]} {b[118]} {b[119]} {b[120]} {b[121]} {b[122]} {b[123]} {b[124]} {b[125]} {b[126]} {b[127]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 1 -spreadType center -spacing 0.14 -pin c_out
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 1 -spreadType center -spacing 0.14 -pin c_out
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -spreadDirection clockwise -side Right -layer 1 -spreadType side -pin {{sum[0]} {sum[1]} {sum[2]} {sum[3]} {sum[4]} {sum[5]} {sum[6]} {sum[7]} {sum[8]} {sum[9]} {sum[10]} {sum[11]} {sum[12]} {sum[13]} {sum[14]} {sum[15]} {sum[16]} {sum[17]} {sum[18]} {sum[19]} {sum[20]} {sum[21]} {sum[22]} {sum[23]} {sum[24]} {sum[25]} {sum[26]} {sum[27]} {sum[28]} {sum[29]} {sum[30]} {sum[31]} {sum[32]} {sum[33]} {sum[34]} {sum[35]} {sum[36]} {sum[37]} {sum[38]} {sum[39]} {sum[40]} {sum[41]} {sum[42]} {sum[43]} {sum[44]} {sum[45]} {sum[46]} {sum[47]} {sum[48]} {sum[49]} {sum[50]} {sum[51]} {sum[52]} {sum[53]} {sum[54]} {sum[55]} {sum[56]} {sum[57]} {sum[58]} {sum[59]} {sum[60]} {sum[61]} {sum[62]} {sum[63]} {sum[64]} {sum[65]} {sum[66]} {sum[67]} {sum[68]} {sum[69]} {sum[70]} {sum[71]} {sum[72]} {sum[73]} {sum[74]} {sum[75]} {sum[76]} {sum[77]} {sum[78]} {sum[79]} {sum[80]} {sum[81]} {sum[82]} {sum[83]} {sum[84]} {sum[85]} {sum[86]} {sum[87]} {sum[88]} {sum[89]} {sum[90]} {sum[91]} {sum[92]} {sum[93]} {sum[94]} {sum[95]} {sum[96]} {sum[97]} {sum[98]} {sum[99]} {sum[100]} {sum[101]} {sum[102]} {sum[103]} {sum[104]} {sum[105]} {sum[106]} {sum[107]} {sum[108]} {sum[109]} {sum[110]} {sum[111]} {sum[112]} {sum[113]} {sum[114]} {sum[115]} {sum[116]} {sum[117]} {sum[118]} {sum[119]} {sum[120]} {sum[121]} {sum[122]} {sum[123]} {sum[124]} {sum[125]} {sum[126]} {sum[127]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -side Right -layer 1 -spreadType side -pin {{sum[0]} {sum[1]} {sum[2]} {sum[3]} {sum[4]} {sum[5]} {sum[6]} {sum[7]} {sum[8]} {sum[9]} {sum[10]} {sum[11]} {sum[12]} {sum[13]} {sum[14]} {sum[15]} {sum[16]} {sum[17]} {sum[18]} {sum[19]} {sum[20]} {sum[21]} {sum[22]} {sum[23]} {sum[24]} {sum[25]} {sum[26]} {sum[27]} {sum[28]} {sum[29]} {sum[30]} {sum[31]} {sum[32]} {sum[33]} {sum[34]} {sum[35]} {sum[36]} {sum[37]} {sum[38]} {sum[39]} {sum[40]} {sum[41]} {sum[42]} {sum[43]} {sum[44]} {sum[45]} {sum[46]} {sum[47]} {sum[48]} {sum[49]} {sum[50]} {sum[51]} {sum[52]} {sum[53]} {sum[54]} {sum[55]} {sum[56]} {sum[57]} {sum[58]} {sum[59]} {sum[60]} {sum[61]} {sum[62]} {sum[63]} {sum[64]} {sum[65]} {sum[66]} {sum[67]} {sum[68]} {sum[69]} {sum[70]} {sum[71]} {sum[72]} {sum[73]} {sum[74]} {sum[75]} {sum[76]} {sum[77]} {sum[78]} {sum[79]} {sum[80]} {sum[81]} {sum[82]} {sum[83]} {sum[84]} {sum[85]} {sum[86]} {sum[87]} {sum[88]} {sum[89]} {sum[90]} {sum[91]} {sum[92]} {sum[93]} {sum[94]} {sum[95]} {sum[96]} {sum[97]} {sum[98]} {sum[99]} {sum[100]} {sum[101]} {sum[102]} {sum[103]} {sum[104]} {sum[105]} {sum[106]} {sum[107]} {sum[108]} {sum[109]} {sum[110]} {sum[111]} {sum[112]} {sum[113]} {sum[114]} {sum[115]} {sum[116]} {sum[117]} {sum[118]} {sum[119]} {sum[120]} {sum[121]} {sum[122]} {sum[123]} {sum[124]} {sum[125]} {sum[126]} {sum[127]}}
setPinAssignMode -pinEditInBatch false
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS
optDesign -postCTS -hold
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS
optDesign -postCTS -hold
getFillerMode -quiet
addFiller -cell FILLCELL_X8 FILLCELL_X4 FILLCELL_X2 FILLCELL_X1 FILLCELL_X16 FILLCELL_X32 -prefix FILLER
addFiller -cell FILLCELL_X8 FILLCELL_X4 FILLCELL_X2 FILLCELL_X1 FILLCELL_X16 FILLCELL_X32 -prefix FILLER
addFiller -cell FILLCELL_X8 FILLCELL_X4 FILLCELL_X2 FILLCELL_X1 FILLCELL_X16 FILLCELL_X32 -prefix FILLER
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
setAnalysisMode -analysisType onChipVariation
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
optDesign -postRoute -hold
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
optDesign -postRoute -hold
saveDesign myRCA_size128
saveDesign myRCA_size128
win
gui_select -rect {55.426 30.938 56.708 31.365}
reset_parasitics
extractRC
rcOut -setload RCA_size128.setload -rc_corner standard
rcOut -setres RCA_size128.setres -rc_corner standard
rcOut -spf RCA_size128.spf -rc_corner standard
rcOut -spef RCA_size128.spef -rc_corner standard
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix RCA_size128_postRoute -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix RCA_size128_postRoute -outDir timingReports
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
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea true -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg false -diffCellViol true -sameCellViol false -padFillerCellsOverlap true -routingBlkgPinOverlap true -routingCellBlkgOverlap true -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
reportGateCount -level 5 -limit 100 -outfile RCA_size128.gateCount
saveNetlist RCA_size128.v
all_hold_analysis_views 
all_setup_analysis_views 
write_sdf  -ideal_clock_network RCA_size128.sdf
write_sdf  -ideal_clock_network RCA_size128.sdf
