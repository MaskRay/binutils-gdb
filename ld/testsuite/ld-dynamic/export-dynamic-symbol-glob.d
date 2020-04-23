#name: -u --export-dynamic-symbol f* archive
#source: export-dynamic-symbol.s
#ld: -pie -u foo --export-dynamic-symbol f* tmpdir/libfoo.a
#nm: -D

#...
[0-9a-f]+ T +foo
#...
