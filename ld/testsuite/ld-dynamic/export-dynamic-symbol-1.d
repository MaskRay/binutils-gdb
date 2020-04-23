#name: --export-dynamic-symbol foo archive
#source: export-dynamic-symbol.s
#ld: -pie --export-dynamic-symbol foo tmpdir/libfoo.a
#nm: -n

#failif
#...
[0-9a-f]+ T +foo
#...
