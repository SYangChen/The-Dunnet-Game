#!/bin/sed -f
s/^[ \t]*//
s/insert/put/
s/throw/drop/
s/take/get/
s/^x[ \t]*$/l/
s/^l\([ \t].*[^ \t]*.*\)/x\1/
s/palms/tree/g
s/emerald/bracelet/g
s/card/board/g
s/cpu/board/g
\_^$_ {N;d;}
N
\_^i[ \t\n\r]_ c i
\_^l[ \t\n\r]_ c l
\_^[^x][ \t\n\r]_ c I don't understand that
s/^drop[ \t]*/d /
s/^eat[ \t]*/e /
s/^get[ \t]*/g /
s/^climb[ \t]*/c /
s/^shake[ \t]*/s /
s/^put[ \t]*/p /
\_^c \n.*tree[s]\{,1\}.*_ s/^c /c tree/
\_c [\n\r]_ c There is nothing here to climb.
\_^g all_ c g all
\_^[a-zA-Z][ \t]*[\n\r]_ c You must supply an object.
\_^[a-zA-Z][^ \t]_ c I don't understand that
h
s/\n.*/\n bear bin bins board boulder bracelet cabinet coconut coconuts computer food key lamp shovel tree trees vax /
\_^[^ \t] \([^ \t\n\r]\{1,\}\)[ \t\n\r][^\n\r]*[\n\r]*.*[ \t]\1[ \t].*$_ !c I do not know what that is.
g
\_^p\([ \t]\{1,\}[^ \t]\{1,\}\)\{,2\}[ \t]*[\n\r]_ c You must supply an indirect object.
\_^[^p]_ bc
h
s/\n.*/\n bear bin bins board boulder bracelet cabinet coconut coconuts computer food key lamp shovel tree trees vax /
\_^p\([ \t]\{1,\}[^ \t\n\r]\{1,\}\)\{2\}[ \t]\{1,\}\([^ \t\n\r]\{1,\}\)[ \t\n\r][^\n\r]*[\n\r]*.*[ \t]\2[ \t].*$_ !c I do not know what that indirect object is.
g
:c
\_^p_ s/^\(p\([ \t]\{1,\}[^ \t\n\r]\{1,\}\)\{3\}\)[^\n\r]*/\1/
\_^[^p]_ s/^\(.[ \t]\{1,\}[^ \t\n\r]\{1,\}\)[^\n\r]*/\1/
\_^[^cg]_ ba
\_^[cg] \([^ \t\n\r]*\)[\n\r].*\1.*_ !c I do not see that here.
:a
\_^[xs] \([^ \t\n\r]*\)[\n\r].*\1.*_ bb
\_^p\([ \t]\{1,\}[^ \t\n\r]\{1,\}\)\{2\}[ \t]\{1,\}\([^ \t\n\r]\{1,\}\)[\n\r].*\2.*_ bb
\_^[xsp]_ s/\n/ @\n/
:b
s/\n.*//
q
