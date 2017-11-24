############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project zedAstroSim
set_top astroSim
add_files janus.hpp
add_files zedAstroSim.cpp
add_files -tb astro_test.cpp
open_solution "solution1"
set_part {xczu19eg-ffve1924-3-e-es2} -tool vivado
create_clock -period 10 -name default
#source "./zedAstroSim/solution1/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design
export_design -flow syn -rtl verilog -format ip_catalog
