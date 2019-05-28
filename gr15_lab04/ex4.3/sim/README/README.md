# How to read waveforms and testbench

### **Waveforms**
In this folder we provide 3 different waveforms files: 

* The "OVERALL" one contains the entire time of simulation (going from 0 ns to 140 ns)
* The "PART1" file contains the first 70 ns of simulation
* The "PART2" file contains the last 70 ns of simulation

For the entire simulation time we test all the different instructions in a sequential manner. Since the entire structure is NOT pipelined, every 3 clock cycles a new instruction is sent to the inputs of the CU.

#### Comments

We, as designers, suppose that the environment around our Control Unit and Datapath will not send any meaningful data to the inputs of the datapath if the Reset signal is active.

![alt text](./CW_to_signal_mapping.png)

The designed FSM is a Mealy one (since the outputs depend on the value of both the state and the input values). However, since the proces `P_OUTPUTS` is only sensitive to the `currentState` signal (and not on the `CW` signal), the obtained behavior does not present the typical glitches we could have on a pure Mealy machine (achieved by adding the `CW` signal to the `P_OUTPUTS` process sensitivity list).
This is like putting a register after a combinational component (the `P_CW` process in this case) in order to synchronize its outputs to the system clock.

More info on the FSM can be found in the comments embedded in the code and in the `FSM Diagram.pdf` file.

### **Testbench**
The testbench is pretty basic: we test all the possible instructions one after the other.
We firstly test RTYPE instructions (and so we provide both fUNC and OPCODE signals to the input of the DUT)
and finally we test all the ITYPE instructions (By providing only the OPCODE input signal).

At each instruction tested we also set the *currentInstruction* signal, in order to easily understand, while reading the waveforms, which instruction's `OPCODE` and `FUNC` we are sending as input to the Hardwired CU.


