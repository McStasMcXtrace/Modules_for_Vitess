global AvailableSET
lappend AvailableSET {mcstas_mcpl_input}
### MCPL_input
###
gSet mcstas_mcpl_inputESET {
  {"Source-like component that reads neutron state parameters from an mcpl-file." header}
  {"number of tracjectories" float 1e6 {"Ncount [1]" "Defines number of trajectories to generate" "" n}}
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
