set log file alu_lec.log -replace 
read library /home/vlsi6/Desktop/kumar_dicd/ALU/equi_check/tsl18fs120_scl_ss.v -verilog -both
read design /home/vlsi6/Desktop/kumar_dicd/ALU/rtl/alu.v -verilog -golden
read design /home/vlsi6/Desktop/kumar_dicd/ALU/synthesis/alu_netlist.v -verilog -revised
set system mode lec
add compare point -all
compare
