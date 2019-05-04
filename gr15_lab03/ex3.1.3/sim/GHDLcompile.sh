ghdl -a constants.vhd
ghdl -a controlUnit_RF.vhd
ghdl -a physical_RF.vhd
ghdl -a translationUnit_RF.vhd
ghdl -a registerFile_TLE.vhd
# ghdl -a tb_controlUnit_RF.vhd
ghdl -a tb_registerFile.vhd

ghdl -e controlUnit_RF
ghdl -e physical_RF
ghdl -e translationUnit_RF
ghdl -e registerFile_TLE
ghdl -e tb_registerFile

./tb_registerfile --stop-time=550ns --wave=RFwaveforms.ghw --vcd=RFwaveforms.vcd
