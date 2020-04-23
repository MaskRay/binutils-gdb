#name: -u --export-dynamic-symbol foo archive
#source: export-dynamic-symbol.s
#ld: -pie -u foo --export-dynamic-symbol foo --export-dynamic-symbol=bar tmpdir/libfoo.a
#nm: -D

#...
[0-9a-f]+ T +bar
[0-9a-f]+ T +foo
#...
