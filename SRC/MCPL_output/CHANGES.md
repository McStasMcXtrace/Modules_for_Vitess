0) Prerequisites: McStas 2.4.1 installed with Perl tools

1.1) Mac and Linux:

1.1) Run the command mcstas-2.4.1-environment 

1.2) Run mcstas2vitess.pl MCPL_output.comp (will generate .instr code, but not compile)

1.3) On Mac:    gcc -g -O2 -lm -o mcstas_mcpl_output_Darwin_x86_64 McStas_MCPL_output.c -lm -I$MCSTAS/libs/mcpl -L$MCSTAS/libs/mcpl -lmcpl
1.4) On Linux:	gcc -g -O2 -lm -o mcstas_mcpl_output_Linux_x86_64 McStas_MCPL_output.c -lm -I$MCSTAS/libs/mcpl -L$MCSTAS/libs/mcpl -lmcpl


2) Windows:
   Transport .c code to Windows, start the McStas 2.4.1 environment and perform
   gcc -g -O2 -lm -o mcstas_mcpl_output.exe McStas_MCPL_output.c -lm -Ic:\\mcstas-2.4.1\\lib\\libs\\mcpl -Lc:\\mcstas-2.4.1\\lib\\libs\\mcpl -lmcpl

3) Create docs using Linux or Macos mcdoc.pl:
mcdoc.pl .
rm McStas_MCPL_output.html
mv MCPL_output.html mcstas_mcpl_output.html
