ghdl -a constants.vhd
ghdl -a controlUnit_RF.vhd
ghdl -a tb_controlUnit_RF.vhd

ghdl -e controlUnit_RF
ghdl -e tb_controlUnit_RF

./tb_controlunit_rf --stop-time=50ns --wave=waveforms.ghw --vcd=waveforms.vcd
