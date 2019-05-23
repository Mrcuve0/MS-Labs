* Simulating a simple nand with IR DROP

* including MOS model 
.lib '$ST_HSPICE_LIB/include_CMOS013.lib' CMOS013lib

* including a small set of gates containing parasitics informations
.include '$ST_HSPICE_LIB/CMOS013.spi'
 
*****************************************************

* the nand  subcircuit is already described in the file CMOS013.spi
* included above. the name of the subcircuit is ND2HS
* and its template is: .subckt ND2HS A B Z gnd vdd

*parameters
.param g_ref ='0+step'
.param v_ref ='alim-step'

* instance of the nand: can be the same as for mynand
* only the reference to the template name must be changed 
xnand inA inB out gnd_ref vdd_ref ND2HS
cload out 0 10f

*****************************************************
* defining inputs
vina inA 0 dc 1.2
vinb inB 0 pwl 0 0 1n 0 1.3n 1.2 2n 1.2 2.3n 0 
v_vdd vdd_ref 0 DC v_ref
v_gnd gnd_ref 0 DC g_ref
.param alim=1.2


**********************************************************
*    Measuring falling and rising times
.measure tran fnand_irdrop TRIG v(out) VAL='(v_ref-g_ref)*0.9+g_ref' FALL=1
+TARG v(out) VAL='(v_ref-g_ref)*0.1+g_ref' FALL=1
.measure tran rnand_irdrop TRIG v(out) VAL='(v_ref-g_ref)*0.1+g_ref' RISE=1
+TARG v(out) VAL='(v_ref-g_ref)*0.9+g_ref' RISE=1

*    Measuring delay
.measure tran nanddelay_irdrop TRIG V(inB) VAL='(v_ref-g_ref)*0.5+g_ref' RISE=1 
+ TARG V(out) VAL='(v_ref-g_ref)*0.5+g_ref' FALL=1


**********************************************************
* defining the simulation step and duration  
*.tran 1p 3n sweep=step 0, 0.35, 0.05 
.tran 1p 3n sweep step INCR 0.05 0 0.35

* instruction necessary for creating output data
* to be processed by a waveform viewer 
.option post

.end 
 
