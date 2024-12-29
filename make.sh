#!/bin/bash
for f in *.dmp ; do
    a=`basename $f .s`
    cut -d'#' -f1 <$f | xxd -p -r >$a
    chmod +x $a
done
