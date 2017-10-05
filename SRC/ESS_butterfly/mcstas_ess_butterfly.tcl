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
