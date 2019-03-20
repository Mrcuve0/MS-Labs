gui_start
analyze -library WORK -format vhdl {/home/ms19.15/setup/syn/constants.vhd}
analyze -library WORK -format vhdl {/home/ms19.15/setup/syn/iv.vhd}
analyze -library WORK -format vhdl {/home/ms19.15/setup/syn/nd2.vhd}
analyze -library WORK -format vhdl {/home/ms19.15/setup/syn/mux21.vhd}
analyze -library WORK -format vhdl {/home/ms19.15/setup/syn/iv.vhd}
analyze -library WORK -format vhdl {/home/ms19.15/setup/syn/nd2.vhd}
analyze -library WORK -format vhdl {/home/ms19.15/setup/syn/mux21.vhd}
elaborate MUX21 -library WORK
change_selection -name __slctBus6 -type {cell design} _sel95
compile -exact_map
change_selection -name __slctBus112 -type {cell design} _sel439
write -hierarchy -format ddc -output /home/ms19.15/setup/syn/mux1.ddc
write -hierarchy -format vhdl -output /home/ms19.15/setup/syn/mux1.vhdl
write -hierarchy -format ddc