#!/bin/bash
# check coverages of texts/*

cat texts/* |\
    apertium -d . fin-morph |\
    egrep '\*[^$]*' -o foo |\
    sort |\
    uniq -c |\
    sort -nr > misses.freqs
misses=$(wc -l < misses.freqs)
if test ${misses} -gt 1371 ; then
    echo Coverage has regressed, see misses.freqs
    exit 1
else
    exit 0
fi
exit 0
