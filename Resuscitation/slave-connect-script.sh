#!/bin/bash
export PATH=/usr/local/bin

# connect send to master
jack_connect Max:out2 system:playback_1

# connect return from master
jack_connect Max:in3 system:capture_1

# connect inputs from audio interace
jack_connect Max:in1 audioadapter:capture_1
jack_connect Max:in2 audioadapter:capture_2

# local audio out to audio interface - mono signal mirrored to both 1 and 2
jack_connect Max:out1 audioadapter:playback_1
jack_connect Max:out1 audioadapter:playback_2