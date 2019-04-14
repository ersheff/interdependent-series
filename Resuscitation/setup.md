## Resuscitation Setup Instructions


### **Software Requirements**
- Max 8, which can be downloaded from [Cycling 74's website](https://cycling74.com) (Performance of *Metropolacy* does not require a license for Max and can be performed without authorizing the software).
- Jack2 audio API, which can be downloaded from [here](http://jackaudio.org).


### **Hardware Requirements**
- 4 X macOS laptops
- 4 X audio interfaces with at least 2 microphone inputs (Note: the type of audio interface may dramatically affect sound quality. In our tests, a MOTU Ultralite MKIII worked very well, while other less expensive bus-powered audio interfaces introduced unaccaptable levels of noise to the input signals.)
- 4 X custom piezo-based interfaces (see [fabrication instructions](fabrication.md))
- 1 X wired ethernet router
- 4 X small wooden dowels, one for each player
- 2 X thin bamboo chopsticks (e.g. from takeout), one each for players 3 and 4
- 1 X snare wire cut in half, one half each for players 3 and 4
- cables as needed for specific hardware being used (e.g. USB cables, ethernet cables, etc.)


### **Setup procedure**
1. Laptop, piezo-based interface, and audio interface should all be set on a tray/table at a comfortable height. Placement of the components is up to the performer – however, it is suggested to put the piezo-based interface to the right of the laptop for right-handed performers. 
2. The film piezo tine should be connected to input 1 of the audio interface, while the piezo under the plate should be connected to input 2. Outputs 1 and 2 are identical – suggested setup is to connect output 1 to local amplification (e.g. hemispherical laptop ensemble speaker) and connect output 2 to the house mixer for enhanced volume, low-frequency response, and spatialization. Arduino and audio interface should be connected to their respective inputs (e.g. USB, Thunderbolt, etc.).


### **Startup procedure**
1. Edit "master-connect-script.sh" with the host names of laptops 2-4 (e.g. replace 'player2' with the host name for laptop 2, 'player3' with laptop 3's name, etc.). This host name can be found in the Computer Name field in System Preferences>Sharing. This file only needs to be edited the first time the software for *Resuscitation* is run.
2. On laptop 1, double-click "Resuscitation-master-startup." On laptops 2-4, double-click "Resuscitation-slave-startup." This is a script that will start Jack2 with the appropriate settings and launch either the "Resuscitation-master.maxpat" or "Resuscitation-slave.maxpat" files.
3. Additional startup instructions are provided in the Max patch. They essentially involve ensuring that the audio device is configured correctly, ensuring that data is being received from the Arduino, and initializing all NetJack2 connections and instrument parameters.
4. Check input levels for the piezo inputs using the meters on the left side of the window and adjust gain on the corresponding audio interface inputs as needed. This step can be done during rehearsal/setup and can be skipped in the future as long as the audio interface gain settings are retained.
5. Begin!
