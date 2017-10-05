# Example of a user module named "special"
#
# If a file usermodule.tcl exist in the VITESS source directory
# it is executed as part of the VITESS GUI.

global AvailableSET
lappend AvailableSET {mcstas_ess_butterfly}
### ESS_butterfly
###
gSet mcstas_ess_butterflyESET {
  {"ESS butterfly moderator, 2016 revision" header}
  {"number of tracjectories" float 1e6 {"Ncount [1]" "Defines number of trajectories to generate" "" n}}
  {sector string "N" {"sector [str]" "Defines the 'sector' of your instrument position. Valid values are N,S,E and W" "" S}}
  {beamline float 1 {"beamline [1]" "Defines the 'beamline number' of your instrument position. Valid values are 1..10 or 1..11 depending on sector" "" a}}
  {yheight float 0.03 {"yheight [m]" "Defines the moderator height. Valid values are 0.03 m and 0.06 m" "" b}}
  {cold_frac float 0.5 {"cold_frac [1]" "Defines the statistical fraction of events emitted from the cold part of the moderator" "" c}}
  {dist float 2 {"dist [m]" "Distance from origin to focusing rectangle; at (0,0,dist) - alternatively use target_index" "" e} 1}
  {focus_xw float "" {"focus_xw [m]" "Width of focusing rectangle" "" g} 1}
  {focus_yh float "" {"focus_yh [m]" "Height of focusing rectangle" "" h} 1}
  {c_performance float 1 {"c_performance [1]" "Cold brilliance scalar performance multiplicator c_performance > 0" "" i}}
  {t_performance float 1 {"t_performance [1]" "Thermal brilliance scalar performance multiplicator t_performance > 0" "" j}}
  {Lmin float "" {"Lmin [AA]" "Minimum wavelength simulated" "" k} 1}
  {Lmax float "" {"Lmax [AA]" "Maximum wavelength simulated" "" l} 1}
  {tmax_multiplier float 3 {"tmax_multiplier [1]" "Defined maximum emission time at moderator, tmax= tmax_multiplier * ESS_PULSE_DURATION." "" m}}
  {n_pulses float 1 {"n_pulses [1]" "Number of pulses simulated. 0 and 1 creates one pulse." "" o}}
  {acc_power float 5 {"acc_power [MW]" "Accelerator power in MW" "" p}}
  {tfocus_dist float 0 {"tfocus_dist [m]" "Position of time focusing window along z axis" "" q} 1}
  {tfocus_time float 0 {"tfocus_time [s]" "Time position of time focusing window" "" r} 1}
  {tfocus_width float 0 {"tfocus_width [s]" "Time width of time focusing window" "" s} 1}
  {xpos float 0 {"X position [m]" "X position of module" "" x}}
  {ypos float 0 {"Y position [m]" "Y position of module" "" y}}
  {zpos float 0 {"Z position [m]" "Z position of module" "" z}}
}


global AvailableSET
lappend AvailableSET {mcstas_mcpl_input}
### MCPL_input
###
gSet mcstas_mcpl_inputESET {
  {"Source-like component that reads neutron state parameters from an mcpl-file." header}
  {filename string "" {"filename [str]" "Name of neutron mcpl file to read." "" I} "" "" 1}
  {polarisationuse float 1 {"polarisationuse [ ]" "If !=0 read polarisation vectors from file." "" a}}
  {verbose float 1 {"verbose [ ]" "Print debugging information for first 10 particles read." "" b}}
  {Emin float 0 {"Emin [meV]" "Lower energy bound. Particles found in the MCPL-file below the limit are skipped." "" c} 1}
  {Emax float 1e300 {"Emax [meV]" "Upper energy bound. Particles found in the MCPL-file above the limit are skipped." "" d}}
  {repeat_count float 1 {"repeat_count [1]" "Repeat contents of the MCPL file this number of times. NB: When running MPI, repeating is implicit and is taken into account by integer division. Should be combined sith the _smear options!" "" e}}
  {E_smear float 0 {"E_smear [1]" "When repeating events, make a Gaussian MC choice within E_smear*E around particle energy E" "" g} 1}
  {pos_smear float 0 {"pos_smear [m]" "When repeating events, make a flat MC choice of position within pos_smear around particle starting position" "" h} 1}
  {dir_smear float 0 {"dir_smear [deg]" "When repeating events, make a Gaussian MC choice of direction within dir_smear around particle direction" "" i} 1}
  {xpos float 0 {"X position [m]" "X position of module" "" x}}
  {ypos float 0 {"Y position [m]" "Y position of module" "" y}}
  {zpos float 0 {"Z position [m]" "Z position of module" "" z}}
}

global AvailableSET
lappend AvailableSET {mcstas_mcpl_input}
### MCPL_input
###
gSet mcstas_mcpl_inputESET {
  {"Source-like component that reads neutron state parameters from an mcpl-file." header}
  {filename string "" {"filename [str]" "Name of neutron mcpl file to read." "" I} "" "" 1}
  {polarisationuse float 1 {"polarisationuse [ ]" "If !=0 read polarisation vectors from file." "" a}}
  {verbose float 1 {"verbose [ ]" "Print debugging information for first 10 particles read." "" b}}
  {Emin float 0 {"Emin [meV]" "Lower energy bound. Particles found in the MCPL-file below the limit are skipped." "" c} 1}
  {Emax float 1e300 {"Emax [meV]" "Upper energy bound. Particles found in the MCPL-file above the limit are skipped." "" d}}
  {repeat_count float 1 {"repeat_count [1]" "Repeat contents of the MCPL file this number of times. NB: When running MPI, repeating is implicit and is taken into account by integer division. Should be combined sith the _smear options!" "" e}}
  {E_smear float 0 {"E_smear [1]" "When repeating events, make a Gaussian MC choice within E_smear*E around particle energy E" "" g} 1}
  {pos_smear float 0 {"pos_smear [m]" "When repeating events, make a flat MC choice of position within pos_smear around particle starting position" "" h} 1}
  {dir_smear float 0 {"dir_smear [deg]" "When repeating events, make a Gaussian MC choice of direction within dir_smear around particle direction" "" i} 1}
  {xpos float 0 {"X position [m]" "X position of module" "" x}}
  {ypos float 0 {"Y position [m]" "Y position of module" "" y}}
  {zpos float 0 {"Z position [m]" "Z position of module" "" z}}
}

global AvailableSET
lappend AvailableSET {mcstas_ess_butterfly_mcpl}
### ESS_butterfly
###
gSet mcstas_ess_butterfly_mcplESET {
  {"ESS butterfly moderator via MCPL input files," header}
  {sector string "N" {"sector [str]" "Defines the 'sector' of your instrument position. Valid values are N,S,E and W" "" S}}
  {beamline float 1  {"beamline [1]" "Defines the 'beamline number' of your instrument position. Valid values are 1..10 or 1..11 depending on sector" "" a}}
  {thres float 1 {"thres [1]" "Remove particle data with weight higher than this value" "" T}}
  {filter float   0  {"filter [1]" "Defines if a filtered version of the MCPL input file should be used" "" f}}
  {repeat float   0  {"repeat count [1]" "Defines the number of needed repetitions of the MCPL input file" "" r}}
  {E_smear float  0  {"E_smear [1]" "Relative MC choice on particle energy when repeating" "" E}}
  {pos_smear float  0  {"pos_smear [m]" "Range of positional MC choice on particle when repeating" "" P}}
  {dir_smear float  0  {"dir_smear [deg]" "Range of directional MC choice on particle when repeating" "" D}}
  {xpos float 0 {"X position [m]" "X position of module" "" x}}
  {ypos float 0 {"Y position [m]" "Y position of module" "" y}}
  {zpos float 0 {"Z position [m]" "Z position of module" "" z}}
}
