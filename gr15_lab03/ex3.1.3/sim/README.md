# Windowed Register File

## Our assumptions:

In our design we have supposed these generic constants:

* 8 registers per each window block (IN - LOCAL _ OUT)
* 8 registers for the GLOBAL window block
* 4 windows 
* 72 registers in the physical registerFile

All the signals are active high, the reset is synchronous.
We have 2 read ports and 1 write port, reading and writing is simultaneous.

In the Top Level Entity (TLE) we instantiated 3 main components: the Translation Unit, the Control Unit and the Physical Register File.

* **Control Unit**: handles the CWP and SWP signals. Receives as input the CALL, RET signals and move the Current Window Pointer and Saved Window Pointer accordingly. At the same time it asserts the FILL/SPILL signals depending on what of those operations need to be performed. During FILL/SPILL, the CU generates the addresses (in Windowed Address notation) of the registers to be moved to/form memory.
* **Translation Unit**: performs the translation of the addresses, receives as input the addresses (in Windowed Address Notation) and creates as output the addresses in Physical Address Notation, using the CWP signal coming from the Control Unit.
* **Physical Register File**: contains the physical registers, it hs 2 read ports and 1 write port. It also includes the communication bus between register File and memory, to allow FILL/SPILL operations.

We supposed the use of an additional BUS (defined as "buffer") to allow the communication between RF and memory. the same BUS can be used for both FILL and SPILL operations (read form memory, write to memory).
The use of this unique bus allows us to communicate with the MMU avoiding conflicts between other system communications on the same memory lines, thus leading to a more performant operations (supposing that memory will have also other read/write ports to communicate with the rest of the system).

The FILL/SPILL operations are initialized by asserting the FILL/SPILL signals, that will be read by the MMU. The MMU could not respond immediately, for example if it has to complete other operations.
Supposing this behavior, we "stall" the register file waiting to complete the FILL/SPILL operation until the MMU is ready.
Once the MMu is ready, it notifies its readyness to the register file by asserting the MMUStrobe signal. Once the RF receives this signal, the FILL/SPILL operation is executed.

During FILL/SPILL operations the CU of the Register File generates the addresses fo the registers going from 0 to 15. At the same time the CU will use the CWP signal out of its original purpose: during FILL/SPILL operations, the CWP signal is no more used to indicate the last SUB inserted but it's used to points to the correct register to be FILLed/SPILLed.

The generated addresses and the "special" CWP are sent to the translation Unit that, along with the FILL/SPILL signals, will "translate" the address from a "Window address notation" to the "Physical address notation". At the same time, the CU will assert the WR_Mem/RD_Mem to inform the Physical RF to use the BUS (connected to the memory) as IN or OUT.

## Testbench

### Files
We decided to provide the meaningful waveform in multiple files. The "Meaningful_Waveforms_RF_OVERALL" one contains the entire simulation window, which is then splitted among the other files "Meaningfil_Waveforms_PART1, "...PART2" etc...

### PART1
In the PART1 file we can see the reset of the RF: the CWP is set to 0 and the SWP is set to 0x0F (a meaningful value is not needed since the SWP is not used yet). The CWP assumes the value of SWP+1, indicating the number of the SUBroutine to be spilled.
After time = 16 ns, during the "waitstate", a first value (DEADBEEF) is written into the registerFile, address = 0: the value is written at the next clock cycle. In the same time the value is written in register[0][31..0], the same value is read and placed in the output read port (RD2). The output port RD1 reads the value of register[8][31..0] which is equal to "0", since the register have just been reset.
At time 24 ns the first sequence of CALLs arrive: the CWP goes from 0 to 1 and then from 1 to 2.
At time 28 ns the last CALL will require the first SPILL operation: the RF enters the "pre_spillFillState" and asserts the SPILL signal. Let's now imagine the MMU is ready and the MMUStrobe signal is sent to the RF.
The RF then enters the "spillState", the CWP assumes a meaningless value (better: it does no more indicate the current SUBroutine but it is used to address calculation). During the "spillState" the CU generates all the address to be spilled, as tou can see in the bottom of the waveforms.

Once all the register have been spilled (time = 64 ns), the SPILL signal is reverted back to low value and the CWP/SWP are updated with the correct and actual values. The rest of the PART1 procedes as stated above.

### PART2
This part continues with a series of CALL sequences what already explained in PART1. Notice how the CWP generated during the spillState is affecting the translation of the addresses generated by the Control Unit. If CWP = 2 the first address (=0) points to register 32 (since each CWP displacement corresponds to a displacement of 16 register (N*2)).

### PART3 
At time 232 ns the first sequence of RETs arrives, the CWP is decremented while the SWP remains the same.
At time 238 ns, during the waitState, some write and read operations are performed.
At time 270 ns the first FILL operation is needed since we cannot procede with the return unless we retrieve before the data we need from memory.
At time 302 ns the FILL operation is completed and so the CWP and SWP are updated at the end of this state.

### PART4
Following the same path of the previous part, we continue with a sequence of RET signals.
At time 426 ns we can suppose the MMU is kept busy by some other hardware in the network: the RF stays in the "pre_spillFillState" up until the MMUStrobe signal is finally sent, meaning the MMU is ready to serve the RF (time 452ns)

### PART5
At time 530.5 ns the reset signal is raised, the RF is reset.
