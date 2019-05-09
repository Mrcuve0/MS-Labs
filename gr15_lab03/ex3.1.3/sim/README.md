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

* **Control Unit**: handles the CWP and SWP signals. Receives as input the CALL, RET signals and move the Current Window Pointer and Saved Window Pointer accordingly. At the same time it asserts the FILL/SPILL signals depending on what of those operations need to be performed. During FILL/SPILL, the CU egenerates the addresses (in Windowed Address notation) of the registers to be moved to/form memory.
* **Translation Unit**: performs the transaltion of the addresses, receives as input the addresses (in Windowed Address Notation) and creates as output the addresses in Physical Address Notation, using the CWP signal coming from the Control Unit.
* **Physical Register File**: contains the physical registers, it hs 2 read ports and 1 write port. It also includes the communication bus between register File and memory, to allow FILL/SPILL operations.

We supposed the use of an additional BUS (defined as "buffer") to allow the communication between RF and memory. the same BUS can be used for both FILL and SPILL operations (read form memory, write to memory).
The use of this unique bus allows us to communicate with the MMU avoiding conflicts between other system communications on the same memory lines, thus leading to a more performant operations (supposing that memory will have also other read/write ports to communicate with the rest of the system).

The FILL/SPILL operations are initialized by asserting the FILL/SPILL signals, that will be read by the MMU. The MMU could not respond immediately, for example if it has to complete other operations.
Supposing this behavior, we "stall" the register file waiting to complete the FILL/SPILL operation until the MMU is ready.
Once the MMu is ready, it notifies its readyness to the register file by asserting the MMUStrobe signal. Once the RF receives this signal, the FILL/SPILL operation is exectured.

During FILL/SPILL operations the CU of the Register File generates the addresses fo the registers going from 0 to 15. At the same time the CU will use the CWP signal out of its original purpose: during FILL/SPILL operations, the CWP signal is no more used to indicate the last SUB inserted but it's used to points to the correct resgister to be FILLed/SPILLed.

The generated addresses and the "special" CWP are sent to the translation Unit that, along with the FILL/SPILL signals, will "translate" the address from a "Window address notation" to the "Physical address notation". At the same time, the CU will assert the WR_Mem/RD_Mem to inform the Physical RF to use the BUS (connected to the memory) as IN or OUT.

## Testbench

We decided to provide the meaningful waveform in multiple files. The "OVERALL" one contains the entire simulation, which is then splitted among the PART1, PART2 etc...

