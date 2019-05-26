ghdl -a myTypes.vhd
ghdl -a ControlUnit_FSM.vhd
ghdl -a CU_FSM_Test.vhd

ghdl -e cu_fsm
ghdl -e cu_test

./cu_test --stop-time=140ns --wave=CU_FSM.ghw --vcd=CU_FSM.vcd