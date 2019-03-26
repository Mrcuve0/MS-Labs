gui_start
analyze -library WORK -format vhdl {/home/ms19.15/MS/gr15_lab01/ex1/ex1.6/ex1.6.2/syn/constants.vhd /home/ms19.15/MS/gr15_lab01/ex1/ex1.6/ex1.6.2/syn/alu_type.vhd /home/ms19.15/MS/gr15_lab01/ex1/ex1.6/ex1.6.2/syn/alu.vhd}
elaborate ALU -architecture BEHAVIOR -library WORK -parameters "N = 4"
change_selection -name __slctBus6 -type {cell design} _sel86
compile -exact_map
change_selection -name __slctBus18 -type {cell design} _sel212
write -hierarchy -format verilog -output /home/ms19.15/MS/gr15_lab01/ex1/ex1.6/ex1.6.2/syn/alu_generic_4_BEH_PostSyn.v
write -hierarchy -format vhdl -output /home/ms19.15/MS/gr15_lab01/ex1/ex1.6/ex1.6.2/syn/alu_generic_4_BEH_PostSyn.vhdl
uplevel #0 { report_area -nosplit }
uplevel #0 { report_timing -path full -delay max -nworst 1 -max_paths 1 -significant_digits 2 -sort_by group }