ghdl -a --ieee=synopsys myTypes.vhd
ghdl -a --ieee=synopsys ControlUnit_UP.vhd
ghdl -a --ieee=synopsys CU_Test.vhd

ghdl -e --ieee=synopsys cu_up
ghdl -e --ieee=synopsys cu_test

./cu_test --stop-time=140ns --wave=CU_UP.ghw --vcd=CU_UP.vcd