Compilation process:

1) Uses standard MCPL_input.comp from McStas 2.4.1

2) McStas_MCPL_input.instr.raw is the output instr file from the command
   mcstas2vitess MCPL_input.com as_a_source
   (and McStas_MCPL_input.c.raw the corresponding c output)

   The instr has a modified main() function that lets the used MCPL_input redefine the ncount from what is in the used 
   event file x repeat_count. For the same reason, the module has no "ncount" defined.

3) McStas and gcc were run manually for the module generation:
   a) mcstas --no-main McStas_MCPL_input.instr -o McStas_MCPL_input.c
   b) MacOS: gcc McStas_MCPL_input.c -o mcstas_ess_butterfly_Darwin_x86_64 -lm -O2 -I$MCSTAS/libs/mcpl/ -L$MCSTAS/libs/mcpl/ -lmcpl
   c) Linux: gcc McStas_MCPL_input.c -o mcstas_ess_butterfly_Linux_x86_64 -lm -O2 -I$MCSTAS/libs/mcpl/ -L$MCSTAS/libs/mcpl/ -lmcpl
   d) Linux - for Windows: 
      1. First you need to recompile an MCPL lib using mingw and place it somewhere, e.g. $PWD/MCPL/
      2. i686-w64-mingw32-gcc McStas_MCPL_input.c -o mcstas_ess_butterfly.exe -lm -O2 -IMCPL/ -LMCPL -lmcpl
