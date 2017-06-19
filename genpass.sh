#!/bin/bash

# simple script for passwords generation
# 12 charachters by default or number of first argument
CHAR=${1:-12}
head /dev/urandom | base64 | tr -cd '[[:alnum:]]' |  head -c$CHAR; echo
