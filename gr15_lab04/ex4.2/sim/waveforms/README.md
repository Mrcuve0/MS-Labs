# How to read waveforms and testbench

### **Waveforms**
In this folder we provide 3 different waveforms files: 
* The "OVERALL" one contains the entire time of simulation (going from 0 ns to 50 ns)
* The "PART1" file contains the first 25 ns of simulation
* The "PART2" file contains the last 25 ns of simulation

### **Testbench**
The testbench is pretty basic: we test all the possible instructions one after the other.
We firstly test RTYPE instructions (and so we provide both fUNC and OPCODE signals to the input of the DUT)
and finally we test all the ITYPE instructions (By providing only the OPCODE input signal).

At each instruction tested we also set the *currentInstruction* signal, in order to easily understand, while reading the waveforms, which instruction's OPCODE and FUNC we are sending as input to the Hardwired CU.


