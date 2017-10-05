global AvailableSET
lappend AvailableSET {mcstas_mcpl_output}
### MCPL_output
###
gSet mcstas_mcpl_outputESET {
  {"Detector-like component that writes neutron state parameters into an mcpl-format\nbinary, virtual-source neutron file." header}
  {polarisationuse float "" {"polarisationuse [1]" "Enable storing the polarisation state of the neutron." "" a} 1}
  {doubleprec float "" {"doubleprec [1]" "Use double precision storage" "" b} 1}
  {verbose float "" {"verbose [1]" "If 1) Print summary information for created MCPL file. 2) Also print summary of first 10 particles information stored in the MCPL file. >2) Also print information for first 10 particles as they are being stored by McStas." "" c} 1}
  {userflag float "" {"userflag [1]" "Extra variable to attach to each neutron. The value of this variable will be packed into a 32 bit integer." "" d} 1}
  {filename string "" {"filename [str]" "Name of neutron file to write. Default is standard output [string]. If not given, a unique name will be used." "" S} "" "" 1}
  {userflagcomment string "" {"userflagcomment [str]" "String variable to describe the userflag. If this string is empty (the default) no userflags will be stored." "" U}}
  {merge_mpi float 1 {"merge_mpi [1]" "Flag to indicate if output should be merged in case of MPI" "" e}}
  {keep_mpi_unmerged float "" {"keep_mpi_unmerged [1]" "Flag to indicate if original unmerged mcpl-files should be kept (or deleted)." "" g} 1}
  {xpos float 0 {"X position [m]" "X position of module" "" x}}
  {ypos float 0 {"Y position [m]" "Y position of module" "" y}}
  {zpos float 0 {"Z position [m]" "Z position of module" "" z}}
}
