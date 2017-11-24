set C_TypeInfoList {{ 
"astroSim" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"result": [[], {"array": ["0", [54]]}] }],["1","2"],""],
 "1": [ "p_int", [[], {"array": ["0", [54]]}],""],
 "2": [ "mul", [[], {"scalar": "double"}],""], 
"0": [ "int64_t", {"typedef": [[[], {"scalar": "long int"}],""]}]
}}
set moduleName astroSim
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {astroSim}
set C_modelType { void 0 }
set C_modelArgList {
	{ result int 64 regular {array 54 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "result", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "result","cData": "long int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 53,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ result_address0 sc_out sc_lv 6 signal 0 } 
	{ result_ce0 sc_out sc_logic 1 signal 0 } 
	{ result_we0 sc_out sc_logic 1 signal 0 } 
	{ result_d0 sc_out sc_lv 64 signal 0 } 
	{ result_address1 sc_out sc_lv 6 signal 0 } 
	{ result_ce1 sc_out sc_logic 1 signal 0 } 
	{ result_we1 sc_out sc_logic 1 signal 0 } 
	{ result_d1 sc_out sc_lv 64 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "result_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "result", "role": "address0" }} , 
 	{ "name": "result_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "ce0" }} , 
 	{ "name": "result_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "we0" }} , 
 	{ "name": "result_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "result", "role": "d0" }} , 
 	{ "name": "result_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "result", "role": "address1" }} , 
 	{ "name": "result_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "ce1" }} , 
 	{ "name": "result_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result", "role": "we1" }} , 
 	{ "name": "result_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "result", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "astroSim",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_janus_run_fu_120"}],
		"Port" : [
			{"Name" : "result", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_out"}]},
			{"Name" : "mul", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "mul"}]},
			{"Name" : "p_int_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_3"}]},
			{"Name" : "p_int_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_0"}]},
			{"Name" : "p_int_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_4"}]},
			{"Name" : "p_int_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_1"}]},
			{"Name" : "p_int_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_5"}]},
			{"Name" : "p_int_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_2"}]},
			{"Name" : "p_int_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_9"}]},
			{"Name" : "p_int_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_6"}]},
			{"Name" : "p_int_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_10"}]},
			{"Name" : "p_int_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_7"}]},
			{"Name" : "p_int_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_11"}]},
			{"Name" : "p_int_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_8"}]},
			{"Name" : "p_int_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_15"}]},
			{"Name" : "p_int_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_12"}]},
			{"Name" : "p_int_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_16"}]},
			{"Name" : "p_int_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_13"}]},
			{"Name" : "p_int_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_17"}]},
			{"Name" : "p_int_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_14"}]},
			{"Name" : "p_int_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_21"}]},
			{"Name" : "p_int_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_18"}]},
			{"Name" : "p_int_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_22"}]},
			{"Name" : "p_int_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_19"}]},
			{"Name" : "p_int_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_23"}]},
			{"Name" : "p_int_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_20"}]},
			{"Name" : "p_int_27", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_27"}]},
			{"Name" : "p_int_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_24"}]},
			{"Name" : "p_int_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_28"}]},
			{"Name" : "p_int_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_25"}]},
			{"Name" : "p_int_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_29"}]},
			{"Name" : "p_int_26", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_26"}]},
			{"Name" : "p_int_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_33"}]},
			{"Name" : "p_int_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_30"}]},
			{"Name" : "p_int_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_34"}]},
			{"Name" : "p_int_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_31"}]},
			{"Name" : "p_int_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_35"}]},
			{"Name" : "p_int_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_32"}]},
			{"Name" : "p_int_39", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_39"}]},
			{"Name" : "p_int_36", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_36"}]},
			{"Name" : "p_int_40", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_40"}]},
			{"Name" : "p_int_37", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_37"}]},
			{"Name" : "p_int_41", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_41"}]},
			{"Name" : "p_int_38", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_38"}]},
			{"Name" : "p_int_45", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_45"}]},
			{"Name" : "p_int_42", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_42"}]},
			{"Name" : "p_int_46", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_46"}]},
			{"Name" : "p_int_43", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_43"}]},
			{"Name" : "p_int_47", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_47"}]},
			{"Name" : "p_int_44", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_44"}]},
			{"Name" : "p_int_51", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_51"}]},
			{"Name" : "p_int_48", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_48"}]},
			{"Name" : "p_int_52", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_52"}]},
			{"Name" : "p_int_49", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_49"}]},
			{"Name" : "p_int_53", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_53"}]},
			{"Name" : "p_int_50", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_janus_run_fu_120", "Port" : "p_int_50"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139"],
		"CDFG" : "janus_run",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "p_int_out", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mul", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_int_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_45", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_46", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_43", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_47", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_44", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_51", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_48", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_52", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_49", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_53", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_int_50", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.grp_p_hls_fptosi_double_s_fu_794", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_double_s",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.grp_p_hls_fptosi_double_s_fu_799", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_double_s",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.grp_p_hls_fptosi_double_s_fu_804", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_double_s",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.grp_p_hls_fptosi_double_s_fu_809", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_double_s",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.grp_p_hls_fptosi_double_s_fu_814", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_double_s",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.grp_p_hls_fptosi_double_s_fu_819", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_double_s",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.grp_p_hls_fptosi_double_s_fu_824", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_double_s",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.grp_p_hls_fptosi_double_s_fu_829", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_double_s",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.grp_p_hls_fptosi_double_s_fu_834", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_double_s",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.grp_p_hls_fptosi_double_s_fu_839", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_double_s",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.grp_p_hls_fptosi_double_s_fu_844", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_double_s",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.grp_p_hls_fptosi_double_s_fu_849", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_double_s",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.grp_p_hls_fptosi_double_s_fu_854", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_double_s",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.grp_p_hls_fptosi_double_s_fu_859", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_double_s",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.grp_p_hls_fptosi_double_s_fu_864", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_double_s",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.grp_p_hls_fptosi_double_s_fu_869", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_double_s",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.tmp_60_7_p_hls_fptosi_double_s_fu_874", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_double_s",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.tmp_68_7_p_hls_fptosi_double_s_fu_879", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_double_s",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.tmp_53_8_p_hls_fptosi_double_s_fu_884", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_double_s",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.tmp_60_8_p_hls_fptosi_double_s_fu_889", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_double_s",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.tmp_68_8_p_hls_fptosi_double_s_fu_894", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_double_s",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dadddsubbkb_U2", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dadddsubbkb_U3", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dadddsubbkb_U4", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dadddsubbkb_U5", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dadddsubbkb_U6", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dadddsubbkb_U7", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dadddsubbkb_U8", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dadddsubbkb_U9", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dadddsubbkb_U10", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dadddsubbkb_U11", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dadddsubbkb_U12", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dadddsubbkb_U13", "Parent" : "1"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dadddsubbkb_U14", "Parent" : "1"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dadddsubbkb_U15", "Parent" : "1"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dadddsubbkb_U16", "Parent" : "1"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dadddsubbkb_U17", "Parent" : "1"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dadddsubbkb_U18", "Parent" : "1"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dadddsubbkb_U19", "Parent" : "1"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dadddsubbkb_U20", "Parent" : "1"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dadddsubbkb_U21", "Parent" : "1"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dadddsubbkb_U22", "Parent" : "1"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dadddsubbkb_U23", "Parent" : "1"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dadddsubbkb_U24", "Parent" : "1"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dsub_64ncud_U25", "Parent" : "1"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dsub_64ncud_U26", "Parent" : "1"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dsub_64ncud_U27", "Parent" : "1"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dsub_64ncud_U28", "Parent" : "1"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dsub_64ncud_U29", "Parent" : "1"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dsub_64ncud_U30", "Parent" : "1"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dsub_64ncud_U31", "Parent" : "1"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dsub_64ncud_U32", "Parent" : "1"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dsub_64ncud_U33", "Parent" : "1"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dsub_64ncud_U34", "Parent" : "1"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dsub_64ncud_U35", "Parent" : "1"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dsub_64ncud_U36", "Parent" : "1"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dsub_64ncud_U37", "Parent" : "1"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dsub_64ncud_U38", "Parent" : "1"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dsub_64ncud_U39", "Parent" : "1"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U40", "Parent" : "1"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U41", "Parent" : "1"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U42", "Parent" : "1"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U43", "Parent" : "1"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U44", "Parent" : "1"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U45", "Parent" : "1"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U46", "Parent" : "1"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U47", "Parent" : "1"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U48", "Parent" : "1"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U49", "Parent" : "1"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U50", "Parent" : "1"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U51", "Parent" : "1"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U52", "Parent" : "1"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U53", "Parent" : "1"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U54", "Parent" : "1"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U55", "Parent" : "1"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U56", "Parent" : "1"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U57", "Parent" : "1"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U58", "Parent" : "1"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U59", "Parent" : "1"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U60", "Parent" : "1"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U61", "Parent" : "1"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U62", "Parent" : "1"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U63", "Parent" : "1"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U64", "Parent" : "1"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U65", "Parent" : "1"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U66", "Parent" : "1"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U67", "Parent" : "1"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U68", "Parent" : "1"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U69", "Parent" : "1"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U70", "Parent" : "1"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U71", "Parent" : "1"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U72", "Parent" : "1"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U73", "Parent" : "1"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U74", "Parent" : "1"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dmul_64ndEe_U75", "Parent" : "1"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_sitodp_6eOg_U76", "Parent" : "1"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_sitodp_6eOg_U77", "Parent" : "1"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_sitodp_6eOg_U78", "Parent" : "1"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_sitodp_6eOg_U79", "Parent" : "1"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_sitodp_6eOg_U80", "Parent" : "1"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_sitodp_6eOg_U81", "Parent" : "1"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_sitodp_6eOg_U82", "Parent" : "1"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_sitodp_6eOg_U83", "Parent" : "1"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_sitodp_6eOg_U84", "Parent" : "1"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_sitodp_6eOg_U85", "Parent" : "1"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_sitodp_6eOg_U86", "Parent" : "1"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_sitodp_6eOg_U87", "Parent" : "1"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_sitodp_6eOg_U88", "Parent" : "1"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_sitodp_6eOg_U89", "Parent" : "1"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_sitodp_6eOg_U90", "Parent" : "1"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_sitodp_6eOg_U91", "Parent" : "1"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_sitodp_6eOg_U92", "Parent" : "1"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_sitodp_6eOg_U93", "Parent" : "1"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_sitodp_6eOg_U94", "Parent" : "1"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_sitodp_6eOg_U95", "Parent" : "1"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_sitodp_6eOg_U96", "Parent" : "1"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_sitodp_6eOg_U97", "Parent" : "1"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dsqrt_64fYi_U98", "Parent" : "1"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dsqrt_64fYi_U99", "Parent" : "1"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dsqrt_64fYi_U100", "Parent" : "1"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dsqrt_64fYi_U101", "Parent" : "1"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dsqrt_64fYi_U102", "Parent" : "1"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dsqrt_64fYi_U103", "Parent" : "1"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dsqrt_64fYi_U104", "Parent" : "1"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dsqrt_64fYi_U105", "Parent" : "1"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dsqrt_64fYi_U106", "Parent" : "1"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dsqrt_64fYi_U107", "Parent" : "1"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_dsqrt_64fYi_U108", "Parent" : "1"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_drecip_6g8j_U109", "Parent" : "1"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_drecip_6g8j_U110", "Parent" : "1"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_drecip_6g8j_U111", "Parent" : "1"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_drecip_6g8j_U112", "Parent" : "1"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_drecip_6g8j_U113", "Parent" : "1"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_drecip_6g8j_U114", "Parent" : "1"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_drecip_6g8j_U115", "Parent" : "1"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_drecip_6g8j_U116", "Parent" : "1"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_drecip_6g8j_U117", "Parent" : "1"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_janus_run_fu_120.astroSim_drecip_6g8j_U118", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	astroSim {
		result {Type O LastRead -1 FirstWrite 2}
		mul {Type I LastRead -1 FirstWrite -1}
		p_int_3 {Type IO LastRead -1 FirstWrite -1}
		p_int_0 {Type IO LastRead -1 FirstWrite -1}
		p_int_4 {Type IO LastRead -1 FirstWrite -1}
		p_int_1 {Type IO LastRead -1 FirstWrite -1}
		p_int_5 {Type IO LastRead -1 FirstWrite -1}
		p_int_2 {Type IO LastRead -1 FirstWrite -1}
		p_int_9 {Type IO LastRead -1 FirstWrite -1}
		p_int_6 {Type IO LastRead -1 FirstWrite -1}
		p_int_10 {Type IO LastRead -1 FirstWrite -1}
		p_int_7 {Type IO LastRead -1 FirstWrite -1}
		p_int_11 {Type IO LastRead -1 FirstWrite -1}
		p_int_8 {Type IO LastRead -1 FirstWrite -1}
		p_int_15 {Type IO LastRead -1 FirstWrite -1}
		p_int_12 {Type IO LastRead -1 FirstWrite -1}
		p_int_16 {Type IO LastRead -1 FirstWrite -1}
		p_int_13 {Type IO LastRead -1 FirstWrite -1}
		p_int_17 {Type IO LastRead -1 FirstWrite -1}
		p_int_14 {Type IO LastRead -1 FirstWrite -1}
		p_int_21 {Type IO LastRead -1 FirstWrite -1}
		p_int_18 {Type IO LastRead -1 FirstWrite -1}
		p_int_22 {Type IO LastRead -1 FirstWrite -1}
		p_int_19 {Type IO LastRead -1 FirstWrite -1}
		p_int_23 {Type IO LastRead -1 FirstWrite -1}
		p_int_20 {Type IO LastRead -1 FirstWrite -1}
		p_int_27 {Type IO LastRead -1 FirstWrite -1}
		p_int_24 {Type IO LastRead -1 FirstWrite -1}
		p_int_28 {Type IO LastRead -1 FirstWrite -1}
		p_int_25 {Type IO LastRead -1 FirstWrite -1}
		p_int_29 {Type IO LastRead -1 FirstWrite -1}
		p_int_26 {Type IO LastRead -1 FirstWrite -1}
		p_int_33 {Type IO LastRead -1 FirstWrite -1}
		p_int_30 {Type IO LastRead -1 FirstWrite -1}
		p_int_34 {Type IO LastRead -1 FirstWrite -1}
		p_int_31 {Type IO LastRead -1 FirstWrite -1}
		p_int_35 {Type IO LastRead -1 FirstWrite -1}
		p_int_32 {Type IO LastRead -1 FirstWrite -1}
		p_int_39 {Type IO LastRead -1 FirstWrite -1}
		p_int_36 {Type IO LastRead -1 FirstWrite -1}
		p_int_40 {Type IO LastRead -1 FirstWrite -1}
		p_int_37 {Type IO LastRead -1 FirstWrite -1}
		p_int_41 {Type IO LastRead -1 FirstWrite -1}
		p_int_38 {Type IO LastRead -1 FirstWrite -1}
		p_int_45 {Type IO LastRead -1 FirstWrite -1}
		p_int_42 {Type IO LastRead -1 FirstWrite -1}
		p_int_46 {Type IO LastRead -1 FirstWrite -1}
		p_int_43 {Type IO LastRead -1 FirstWrite -1}
		p_int_47 {Type IO LastRead -1 FirstWrite -1}
		p_int_44 {Type IO LastRead -1 FirstWrite -1}
		p_int_51 {Type IO LastRead -1 FirstWrite -1}
		p_int_48 {Type IO LastRead -1 FirstWrite -1}
		p_int_52 {Type IO LastRead -1 FirstWrite -1}
		p_int_49 {Type IO LastRead -1 FirstWrite -1}
		p_int_53 {Type IO LastRead -1 FirstWrite -1}
		p_int_50 {Type IO LastRead -1 FirstWrite -1}}
	janus_run {
		p_int_out {Type O LastRead -1 FirstWrite 2}
		mul {Type I LastRead -1 FirstWrite -1}
		p_int_3 {Type IO LastRead -1 FirstWrite -1}
		p_int_0 {Type IO LastRead -1 FirstWrite -1}
		p_int_4 {Type IO LastRead -1 FirstWrite -1}
		p_int_1 {Type IO LastRead -1 FirstWrite -1}
		p_int_5 {Type IO LastRead -1 FirstWrite -1}
		p_int_2 {Type IO LastRead -1 FirstWrite -1}
		p_int_9 {Type IO LastRead -1 FirstWrite -1}
		p_int_6 {Type IO LastRead -1 FirstWrite -1}
		p_int_10 {Type IO LastRead -1 FirstWrite -1}
		p_int_7 {Type IO LastRead -1 FirstWrite -1}
		p_int_11 {Type IO LastRead -1 FirstWrite -1}
		p_int_8 {Type IO LastRead -1 FirstWrite -1}
		p_int_15 {Type IO LastRead -1 FirstWrite -1}
		p_int_12 {Type IO LastRead -1 FirstWrite -1}
		p_int_16 {Type IO LastRead -1 FirstWrite -1}
		p_int_13 {Type IO LastRead -1 FirstWrite -1}
		p_int_17 {Type IO LastRead -1 FirstWrite -1}
		p_int_14 {Type IO LastRead -1 FirstWrite -1}
		p_int_21 {Type IO LastRead -1 FirstWrite -1}
		p_int_18 {Type IO LastRead -1 FirstWrite -1}
		p_int_22 {Type IO LastRead -1 FirstWrite -1}
		p_int_19 {Type IO LastRead -1 FirstWrite -1}
		p_int_23 {Type IO LastRead -1 FirstWrite -1}
		p_int_20 {Type IO LastRead -1 FirstWrite -1}
		p_int_27 {Type IO LastRead -1 FirstWrite -1}
		p_int_24 {Type IO LastRead -1 FirstWrite -1}
		p_int_28 {Type IO LastRead -1 FirstWrite -1}
		p_int_25 {Type IO LastRead -1 FirstWrite -1}
		p_int_29 {Type IO LastRead -1 FirstWrite -1}
		p_int_26 {Type IO LastRead -1 FirstWrite -1}
		p_int_33 {Type IO LastRead -1 FirstWrite -1}
		p_int_30 {Type IO LastRead -1 FirstWrite -1}
		p_int_34 {Type IO LastRead -1 FirstWrite -1}
		p_int_31 {Type IO LastRead -1 FirstWrite -1}
		p_int_35 {Type IO LastRead -1 FirstWrite -1}
		p_int_32 {Type IO LastRead -1 FirstWrite -1}
		p_int_39 {Type IO LastRead -1 FirstWrite -1}
		p_int_36 {Type IO LastRead -1 FirstWrite -1}
		p_int_40 {Type IO LastRead -1 FirstWrite -1}
		p_int_37 {Type IO LastRead -1 FirstWrite -1}
		p_int_41 {Type IO LastRead -1 FirstWrite -1}
		p_int_38 {Type IO LastRead -1 FirstWrite -1}
		p_int_45 {Type IO LastRead -1 FirstWrite -1}
		p_int_42 {Type IO LastRead -1 FirstWrite -1}
		p_int_46 {Type IO LastRead -1 FirstWrite -1}
		p_int_43 {Type IO LastRead -1 FirstWrite -1}
		p_int_47 {Type IO LastRead -1 FirstWrite -1}
		p_int_44 {Type IO LastRead -1 FirstWrite -1}
		p_int_51 {Type IO LastRead -1 FirstWrite -1}
		p_int_48 {Type IO LastRead -1 FirstWrite -1}
		p_int_52 {Type IO LastRead -1 FirstWrite -1}
		p_int_49 {Type IO LastRead -1 FirstWrite -1}
		p_int_53 {Type IO LastRead -1 FirstWrite -1}
		p_int_50 {Type IO LastRead -1 FirstWrite -1}}
	p_hls_fptosi_double_s {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_double_s {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_double_s {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_double_s {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_double_s {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_double_s {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_double_s {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_double_s {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_double_s {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_double_s {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_double_s {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_double_s {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_double_s {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_double_s {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_double_s {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_double_s {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_double_s {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_double_s {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_double_s {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_double_s {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_double_s {
		x {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "534177", "Max" : "534177"}
	, {"Name" : "Interval", "Min" : "534178", "Max" : "534178"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	result { ap_memory {  { result_address0 mem_address 1 6 }  { result_ce0 mem_ce 1 1 }  { result_we0 mem_we 1 1 }  { result_d0 mem_din 1 64 }  { result_address1 mem_address 1 6 }  { result_ce1 mem_ce 1 1 }  { result_we1 mem_we 1 1 }  { result_d1 mem_din 1 64 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
