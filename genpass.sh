#!/bin/bash

# simple script for passwords generation
# 12 charachters by default or number of first argument

SPECIAL='!"#$%&()*+,-./:;<=>?@[\]^_`{|}~'
if [[ $1 == "-a" ]]; then
    ALL=true
    shift 1
fi

CHAR=${1:-12}

if [[ $ALL == "true" ]]; then
    head /dev/urandom | tr -cd "[[:alnum:]$SPECIAL]" |  head -c$CHAR; echo
else
    head /dev/urandom | tr -cd '[[:alnum:]]' |  head -c$CHAR; echo
fi
