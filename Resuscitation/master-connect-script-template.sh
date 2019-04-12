#!/bin/bash
export PATH=/usr/local/bin

# this file is provided as a template to save
# the master-connect-script.sh file should be edited to work with your specific setup

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

# Eric Sheffield 2019
# CC-BY-4.0