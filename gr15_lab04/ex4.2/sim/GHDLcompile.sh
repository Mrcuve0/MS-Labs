ghdl -a myTypes.vhd
ghdl -a CU_Hardwired.vhd
ghdl -a CU_Test.vhd

ghdl -e CU_HW
ghdl -e CU_Test

 ./cu_test --stop-time=50ns --wave=CU_HW.ghw --vcd=CU_HW.vcd
