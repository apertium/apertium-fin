#!/bin/bash
# check coverages of texts/*

if ! echo talo | hfst-lookup fin.automorf.hfst | fgrep 'talo<n><sg><nom>' ; then
    exit 1
fi
if ! echo talonmies | hfst-lookup fin.automorf.hfst |
    fgrep 'talonmies<n><sg><nom>' ; then
    exit 1
fi
exit 0
