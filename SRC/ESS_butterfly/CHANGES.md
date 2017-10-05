Compilation process:

1) Uses standard ESS_butterfly.comp from McStas 2.4.1

2) McStas_ESS_butterfly.instr.raw is the output instr file from the command
   mcstas2vitess ESS_butterfly.com as_a_source
   (and McStas_ESS_butterfly.c.raw the corresponding c output)
   
3) The above was edited to remove the irrelevant input parameter 'target_index' which will have no meaning in Vitess

4) McStas and gcc were run manually for the module generation:
   a) mcstas --no-main McStas_ESS_butterfly.instr -o McStas_ESS_butterfly.c
   b) MacOS: gcc -lm -O2 McStas_ESS_butterfly.c -o mcstas_ess_butterfly_Darwin_x86_64
   c) Linux: gcc -lm -O2 McStas_ESS_butterfly.c -o mcstas_ess_butterfly_Linux_x86_64
   d) Linux - for Windows: i686-w64-mingw32-gcc -lm -O2 McStas_ESS_butterfly.c -o mcstas_ess_butterfly.exe

5) The mcstas_ess_butterfly_output.tcl snippet has various local modifications for reasonable defaults within the Vitess system