Compilation process:

1) Uses a slightly modified MCPL_output.comp from McStas 2.4.1,
   - #include <sys/stat.h> for allowing compilation on mingw/windows
   - uses mcpl_close_outfile(outputfile); instead of mcpl_close_and_gzip_outfile(outputfile); as this does not put data on stdout

2) McStas_MCPL_output.instr.raw is the output instr file from the command
   mcstas2vitess MCPL_output.com 
   (and McStas_MCPL_output.c.raw the corresponding c output)

   The instr has a modified main() function with a global finished flag, and uses -O rather than lets the used MCPL_output redefine the ncount from what is in the used 
   event file x repeat_count. For the same reason, the module has no "ncount" defined.

3) McStas and gcc were run manually for the module generation:
   a) mcstas --no-main McStas_MCPL_output.instr -o McStas_MCPL_output.c
   b) MacOS: gcc McStas_MCPL_output.c -o mcstas_ess_butterfly_Darwin_x86_64 -lm -O2 -I$MCSTAS/libs/mcpl/ -L$MCSTAS/libs/mcpl/ -lmcpl
   c) Linux: gcc McStas_MCPL_output.c -o mcstas_ess_butterfly_Linux_x86_64 -lm -O2 -I$MCSTAS/libs/mcpl/ -L$MCSTAS/libs/mcpl/ -lmcpl
   d) Linux - for Windows: 
      1. First you need to recompile an MCPL lib using mingw and place it somewhere, e.g. $PWD/MCPL/
      2. i686-w64-mingw32-gcc McStas_MCPL_output.c -o mcstas_ess_butterfly.exe -lm -O2 -IMCPL/ -LMCPL -lmcpl

4) The mcstas_mcpl_output.tcl snippet has various local modifications for reasonable defaults within the Vitess system