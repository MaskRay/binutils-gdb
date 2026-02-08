#source: reloc-section-sym.s
#as: --reloc-section-sym=all
#objdump: -rsj .data
#name: reloc-section-sym=all

.*: +file format .*

RELOCATION RECORDS FOR \[\.data\]:
OFFSET +TYPE +VALUE
0*0 [^ ]+ +\.text.*
0*4 [^ ]+ +\.text.*
#pass
