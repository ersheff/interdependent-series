#!/bin/bash

# set DIR variable to directory of the startup script
DIR="$(cd "$(dirname "$0")" && pwd)"

# start netjack with 3 ins and 2 outs
jackd -R -d net -l 2 -C 3 -P 2 &
jack_load audioadapter

# open Max patch
open $DIR/Resuscitation-slave.maxpat