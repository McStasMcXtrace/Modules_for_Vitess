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
