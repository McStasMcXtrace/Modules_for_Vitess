Compilation process:

1) The instrumentfile McStas_ESS_butterfly_MCPL.instr is derived from ../ESS_butterfly/McStas_ESS_butterfly.instr and the
   ESS_butterfly_MCPL_test.instr from the McStas distribution. 

   The instr has a modified main() function that lets the used MCPL_input redefine the ncount from what is in the used 
   event file x repeat_count. For the same reason, the module has no "ncount" defined.

2) McStas and gcc were run manually for the module generation:
   a) mcstas --no-main McStas_ESS_butterfly_MCPL.instr -o McStas_ESS_butterfly_MCPL.c
   b) MacOS: gcc McStas_ESS_butterfly_MCPL.c -o mcstas_ess_butterfly_mcpl_Darwin_x86_64 -lm -O2 -I$MCSTAS/libs/mcpl/ -L$MCSTAS/libs/mcpl/ -lmcpl
   c) Linux: gcc McStas_ESS_butterfly_MCPL.c -o mcstas_ess_butterfly_mcpl_Linux_x86_64 -lm -O2 -I$MCSTAS/libs/mcpl/ -L$MCSTAS/libs/mcpl/ -lmcpl
   d) Linux - for Windows: 
      1. First you need to recompile an MCPL lib using mingw and place it somewhere, e.g. $PWD/MCPL/
      2. i686-w64-mingw32-gcc McStas_ESS_butterfly_MCPL.c -o mcstas_ess_butterfly_mcpl.exe -lm -O2 -IMCPL/ -LMCPL -lmcpl

3) The mcstas_ess_butterfly_mcpl.tcl snippet has various local modifications for reasonable defaults within the Vitess system