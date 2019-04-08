#!/bin/bash
export PATH=/usr/local/bin

# replace 'playerx' with computer name for corresponding player

# connect audio interface inputs to Max
jack_connect Max:in1 system:capture_1
jack_connect Max:in2 system:capture_2

# connect sends to other laptops
jack_connect Max:out2 'player2':to_slave_1
jack_connect Max:out3 'player3':to_slave_1
jack_connect Max:out4 'player4':to_slave_1

# connect returns from other laptops
jack_connect Max:in3 'player2':from_slave_1
jack_connect Max:in4 'player3':from_slave_1
jack_connect Max:in5 'player4':from_slave_1

# local audio out to audio interface - mono signal mirrored to both 1 and 2
jack_connect Max:out1 system:playback_1
jack_connect Max:out1 system:playback_2