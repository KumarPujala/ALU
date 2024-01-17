set_attribute init_lib_search_path /home/vlsi6/pdk/scl_pdk/stdlib/fs120/liberty/lib_flow_ss/
set_attribute init_hdl_search_path /home/vlsi6/Desktop/kumar_dicd/ALU/simulation/
set_attr library tsl18fs120_scl_ss.lib

read_hdl alu.v
elaborate
read_sdc /home/vlsi6/Desktop/kumar_dicd/ALU/constraints/constraints.sdc

set_attribute syn_generic_effort medium
set_attribute syn_map_effort medium
set_attribute syn_opt_effort medium

syn_generic
syn_map
syn_opt

write_hdl > alu_netlist.v
write_sdc > alu_sdc.sdc

report_timing > alu_timing.rep
report_gates > alu_area.rep
report_power > alu_power.rep

