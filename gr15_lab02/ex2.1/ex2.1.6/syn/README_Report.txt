# Report of the synthesis of the Pentium4 adder (completeAdder.vhd)

## Here we will analyze the results obtained for the synthesis process proposed in the Lab02.pdf file, section by section.

### Section "Check and Save"

For this section we have reported 3 different files: one Area report and two Timing reports.
The two timing reports ("TIMING_REPORT_completeAdder_PostSyn.txt" and "TIMING_REPORT_completeAdder_10Paths_PostSyn.txt" contains (respectively) only the most critical path and the 10 most critical paths of the entire design "completeAdder.vhd".

    #### --> TIMING_REPORT_completeAdder_PostSyn.txt

    In this file Synopsys reported the analysis of the critical path of the "completeAdder" entity, which goes from the "Cin" input signal to the "Sum[31]" output signal as stated from row 16 to row 19 o the report file.
    In the following table we can clearly see all the steps completed during the analysis and the partial timings added at each step. We can see, for example, that the first component encountered is the XOR gate used to complement (or not) the "B" operand. The gate adds a delay of 0.15ns to the entire path.

    Finally, the total delay is of 0.78ns (no constraint were given, as Synopsys points out before the EOF)

    #### --> TIMING_REPORT_completeAdder_10Paths_PostSyn.txt

    In this file we told Synopsys to analyze the 10 most critical paths of the "completeAdder.vhd" entity.
    The paths reported have approximately the same delays (0.78ns) so, with this approximation on 2 digits after the decimal point, it's quite difficult to denote the various differences. 
    Still, they are ordered from the lowest value to the biggest one. As expected the "most" critical path is the one previously analyzed going from Cin to Sum[31].
    We can appreciate that the 10 most critical paths are the ones connected to the 10 most significant bits of the final result (Sum[31] to Sum[22]).
    Once again, the path was unconstrained.

    #### --> AREA_REPORT_completeAdder_PostSyn.txt

    In this report Synopsys analyzed the area required by the entire circuit.
    We can observe that, as expected, the entire circuit is a pure combinational one, as there are no sequential blocks in it (row 18 of the report).

    The total area is equal to 607 units.


### Section "Constraint the synthesis"

For this section we have set up a timing constraint of 0.62ns *which is the 20% of the previously returned value of 0.78ns).
The obtained results are shown in the "p4add-timing-opt.txt" report file.

    #### --> p4add-timing-opt.txt

    This is the report file obtained after the constrained synthesis performed by Synopsys.
    The timing constraint is of 0.62ns and, as stated in the final rows of the table (row 66) the requirements have been met.
    This time the Startpoint is still Cin while the Endpoint is the output pin Sum[23].
    As an additional result we can see in row 63 and row 64 the "required time" and the "Arrival time". The difference between those 2 times gives us the "slack". If the slack is a positive number then we can consider our synthesis as successful. In our case the slack is exactly 0 and Synopsys confirmed that the given time requirement has been met.

    Of course these changes didn't come out of thin air, as clearly other parameters of the circuit became worst, such as the area: our circuit is certainly bigger now, using now more resources to achieve the same result in a lower time (thus, reducing the overall levels of the combination logic)
    In the histogram displayed by Synopsys we could see 27 worst case paths, all of them with a slack really near to 0 but still positive. Other paths had a greater slack, so they was in the right part of the histogram.


### Section "Using timing scripts"

For this section we took a look at the proposed script which we correclty edited to insert the analysis of our entities.
Also, we changed the exit paths of the produces reports to point to the path "./reports/done by the given script/<FILENAME>.txt", in order to easily distinguish them from the previous reports, while keeping cleaner the actual workspace.

    #### --> ADD_timepot_1t.rpt
    
    In this file we can see the unconstrained analysis done by Synopsys. As before, since this analysis is unconstrained, the delay value of the critical path is 0.78 ns.
    We can identify that most of the delay (0.70ns) is given by the Sparse Tree structure, since most of the rows in the table refers to blocks and components used internally in the Sparse Tree structure. 
    We report below that part of the table contained in the report file.

    Point                                                   Incr       Path
    --------------------------------------------------------------------------
    input external delay                                    0.00       0.00 r
    Cin (in)                                                0.00       0.00 r
    U64/Z (XOR2_X1)                                         0.15       0.15 r
    ST/B[0] (SparseTree_N32_RADIX4)                         0.00       0.15 r
    ST/PGNetwork_1/B[0] (PGNetwork_N32)                     0.00       0.15 r
    ST/PGNetwork_1/SpecBlock_0/b (SpecialPGBlock)           0.00       0.15 r
    ST/PGNetwork_1/SpecBlock_0/PGBlock/b (PGNetBlock_1)     0.00       0.15 r
    ST/PGNetwork_1/SpecBlock_0/PGBlock/U2/Z (XOR2_X1)       0.08       0.23 r
    ST/PGNetwork_1/SpecBlock_0/PGBlock/gp[0] (PGNetBlock_1)
                                                            0.00       0.23 r
    ST/PGNetwork_1/SpecBlock_0/GGBlock/GikPik[0] (GeneralGenerate_3)
                                                            0.00       0.23 r
    ST/PGNetwork_1/SpecBlock_0/GGBlock/U2/ZN (AOI21_X1)     0.03       0.26 f
    ST/PGNetwork_1/SpecBlock_0/GGBlock/U1/ZN (INV_X1)       0.03       0.29 r
    ST/PGNetwork_1/SpecBlock_0/GGBlock/Gij (GeneralGenerate_3)
                                                            0.00       0.29 r
    ST/PGNetwork_1/SpecBlock_0/G1_0 (SpecialPGBlock)        0.00       0.29 r
    ST/PGNetwork_1/gpSignals[0] (PGNetwork_N32)             0.00       0.29 r
    ST/ST_row1And2_1/input[0] (ST_row1And2_N32)             0.00       0.29 r
    ST/ST_row1And2_1/TBS_0/Gk_1_right (triBlockSpecial)     0.00       0.29 r
    ST/ST_row1And2_1/TBS_0/G_1/Gk_1 (GeneralGenerate_2)     0.00       0.29 r
    ST/ST_row1And2_1/TBS_0/G_1/U2/ZN (AOI21_X1)             0.03       0.31 f
    ST/ST_row1And2_1/TBS_0/G_1/U1/ZN (INV_X1)               0.03       0.34 r
    ST/ST_row1And2_1/TBS_0/G_1/Gij (GeneralGenerate_2)      0.00       0.34 r
    ST/ST_row1And2_1/TBS_0/G_2/Gk_1 (GeneralGenerate_1)     0.00       0.34 r
    ST/ST_row1And2_1/TBS_0/G_2/U2/ZN (AOI21_X1)             0.03       0.36 f
    ST/ST_row1And2_1/TBS_0/G_2/U1/ZN (INV_X1)               0.05       0.41 r
    ST/ST_row1And2_1/TBS_0/G_2/Gij (GeneralGenerate_1)      0.00       0.41 r
    ST/ST_row1And2_1/TBS_0/Gij (triBlockSpecial)            0.00       0.41 r
    ST/ST_row1And2_1/output[7] (ST_row1And2_N32)            0.00       0.41 r
    ST/G_1_0_0_0/Gk_1 (GeneralGenerate_0)                   0.00       0.41 r
    ST/G_1_0_0_0/U2/ZN (AOI21_X1)                           0.04       0.45 f
    ST/G_1_0_0_0/U1/ZN (INV_X1)                             0.06       0.50 r
    ST/G_1_0_0_0/Gij (GeneralGenerate_0)                    0.00       0.50 r
    ST/G_1_1_0_1/Gk_1 (GeneralGenerate_8)                   0.00       0.50 r
    ST/G_1_1_0_1/U2/ZN (AOI21_X1)                           0.04       0.54 f
    ST/G_1_1_0_1/U1/ZN (INV_X1)                             0.07       0.61 r
    ST/G_1_1_0_1/Gij (GeneralGenerate_8)                    0.00       0.61 r
    ST/G_1_2_0_2/Gk_1 (GeneralGenerate_5)                   0.00       0.61 r
    ST/G_1_2_0_2/U2/ZN (AOI21_X1)                           0.04       0.65 f
    ST/G_1_2_0_2/U1/ZN (INV_X1)                             0.05       0.70 r
    ST/G_1_2_0_2/Gij (GeneralGenerate_5)                    0.00       0.70 r
    ST/carryVector[6] (SparseTree_N32_RADIX4)               0.00       0.70 r

    The rest of the overall delay (0.08ns) is given by the remaining part of the structure (the Carry Select Sum Generator (CSSG)), as we can clearly see in the rest of the table:

    CSSG/carry_vector[6] (CSSG_generic_N32_RADIX4)          0.00       0.70 r
    CSSG/CSB_7/Cin (CSB_generic_N4_1)                       0.00       0.70 r
    CSSG/CSB_7/MUX21_1/SEL (MUX21_GENERIC_N4_1)             0.00       0.70 r
    CSSG/CSB_7/MUX21_1/U1/Z (MUX2_X1)                       0.08       0.78 f
    CSSG/CSB_7/MUX21_1/Y[3] (MUX21_GENERIC_N4_1)            0.00       0.78 f
    CSSG/CSB_7/S[3] (CSB_generic_N4_1)                      0.00       0.78 f
    CSSG/S[31] (CSSG_generic_N32_RADIX4)                    0.00       0.78 f
    Sum[31] (out)                                           0.00       0.78 f
    data arrival time                                                  0.78
    --------------------------------------------------------------------------


    #### --> ADD_timepot_1t.rpt

    As before, the area reported is entirely combinational, as expected.

    Combinational area:        607.011995


    #### --> ADD_timepot_2t.rpt

    This file is the report obtained with the constrained timing analysis: the time constraint was of 0.62ns for the critical path. 
    As we have seen before, the slack is near 0 and so the requirement is met, we have now a critical path delay of 0.62ns. As before, the majority of the delay is due to the Sparse Tree structure, while the sum generations is clearly playing a marginal role in the overall structure latency. This demonstrates again the importance of an optimized carry generation structure.


    #### --> ADD_timepot_2a.rpt

    Let's analyze how the area changed in order to met the new time requirement:
    In the left we report the table obtained in the first (unconstrained) report, while on the right you can appreciate the table reported in the (second) constrained report:

    Number of ports:                           98       |       Number of ports:                           98
    Number of nets:                           138       |       Number of nets:                           165   
    Number of cells:                           34       |       Number of cells:                           61
    Number of combinational cells:             32       |       Number of combinational cells:             59
    Number of sequential cells:                 0       |       Number of sequential cells:                 0
    Number of macros:                           0       |       Number of macros:                           0
    Number of buf/inv:                          0       |       Number of buf/inv:                         22
    Number of references:                       3       |       Number of references:                       7

    Combinational area:        607.011995               |       Combinational area:        664.201995

    As we can clearly see, the number of combinational cells nearly doubled (from 34 to 61) and this increased also the number of overall nets.
    This also required an increased number of buffer gates to propagate the signal (form 0 to 22).

    These changes increased the final area from 607 units to 664.20 units.