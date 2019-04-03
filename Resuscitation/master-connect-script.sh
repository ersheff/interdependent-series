#!/bin/bash
export PATH=/usr/local/bin

# replace 'playerx' with computer name for corresponding player

# connect sends to other laptops
jack_connect Max:out1 'player2':to_slave_1
jack_connect Max:out2 'player3':to_slave_1
jack_connect Max:out3 'player4':to_slave_1

# connect returns from other laptops
jack_connect Max:in1 'player2':from_slave_1
jack_connect Max:in2 'player3':from_slave_1
jack_connect Max:in3 'player4':from_slave_1

# local audio out to audio interface - mono signal mirrored to both 1 and 2
jack_connect Max:out4 system:playback_1
jack_connect Max:out4 system:playback_2