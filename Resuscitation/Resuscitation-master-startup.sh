#!/bin/bash

# set DIR variable to directory of the startup script
DIR="$(cd "$(dirname "$0")" && pwd)"

# start jack
jackd -R -d coreaudio -p 32 &
jack_load netmanager

# open Max patch
open $DIR/Resuscitation-master.maxpat