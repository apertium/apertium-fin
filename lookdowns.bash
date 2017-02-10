#!/bin/bash
# check coverages of texts/*

if ! echo 'talo<n><sg><nom>' | hfst-lookup fin.autogen.hfst | fgrep 'talo' ; then
    exit 1
fi
if ! echo 'talonmies<n><sg><nom>' | hfst-lookup fin.autogen.hfst |
    fgrep 'talonmies' ; then
    exit 1
fi
exit 0
