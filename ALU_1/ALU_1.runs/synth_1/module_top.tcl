# 
# Synthesis run script generated by Vivado
# 

set_param gui.test TreeTableDev
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

create_project -in_memory -part xc7z020clg484-1
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/chathura/Desktop/Verilog_DFT/ALU_1/ALU_1.cache/wt [current_project]
set_property parent.project_path /home/chathura/Desktop/Verilog_DFT/ALU_1/ALU_1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:zc702:part0:1.0 [current_project]
read_verilog -library xil_defaultlib {
  /home/chathura/Desktop/Verilog_DFT/ALU_1/ALU_1.srcs/sources_1/new/shifter.v
  /home/chathura/Desktop/Verilog_DFT/ALU_1/ALU_1.srcs/sources_1/new/ALU.v
  /home/chathura/Desktop/Verilog_DFT/ALU_1/ALU_1.srcs/sources_1/new/module_top.v
  /home/chathura/Desktop/Verilog_DFT/ALU_1/ALU_1.srcs/sources_1/new/dft.v
  /home/chathura/Desktop/Verilog_DFT/ALU_1/ALU_1.srcs/sources_1/new/clock_module.v
}
catch { write_hwdef -file module_top.hwdef }
synth_design -top module_top -part xc7z020clg484-1
write_checkpoint -noxdef module_top.dcp
catch { report_utilization -file module_top_utilization_synth.rpt -pb module_top_utilization_synth.pb }
