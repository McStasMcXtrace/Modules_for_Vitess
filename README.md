Copenhagen, 2017/10/5

This repo contains a series of McStas components, translated with minor modifications to become Vitess modules.

**MODULES/** contains binaries for Linux 64bit, Mac OS X and windows - corresponding to the following McStas components:
1) ESS_butterfly.comp -> mcstas_ess_butterfly
2) ESS_butterfly_MCPL_instr -> mcstas_ess_butterfly_mcpl
3) MCPL_input -> mcstas_mcpl_input
4) MCPL_output -> mcstas_mcpl_output

**GUI/** contains a set of test Vitess gui files making use of the modules

**SRC/** contains the original McStas code plus (light) documentation on the needed code changes

**Installation:**
1) Copy the modules corresponding to your platform from MODULES/ to your /where/ever/vitess/MODULES/
2) Copy GUI/usermodule.tcl to your /where/ever/vitess/GUI/

**Usage:**
Try the relevant .gui files found in subfolders of GUI/, respecting
1) Change of directory to that folder
2) All of the below "source" modules will only run from an "exported" shell or batch file - they produce no data when used from the Vitess GUI
  * ESS_butterfly
  * ESS_butterfly_mcpl
  * MCPL_input
3) Please always specify a **full path** for the MCPL file when using the MCPL Input/Output modules
4) When using the ESS_butterfly_MCPL module, please place the relevant beamport MCPL file from http://public.esss.dk/users/willend/MCPL/ in the simulation folder


