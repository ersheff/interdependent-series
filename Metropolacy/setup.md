## Metropolacy Setup Instructions


### **Software Requirements**
- Max 8, which can be downloaded from [Cycling 74's website](https://cycling74.com) (Performance of *Metropolacy* does not require a license for Max and can be performed without authorizing the software).


### **Hardware Requirements**
#### Snare Drum Setup
- 1 X snare drum with stand
- 1 X small speaker (5-6.5" powered monitor recommended)
- 1 X directional dynamic micropohne (e.g. Shure SM57) with stand
- 1 X pair of standard drum sticks
- 1 X pair of medium-hard timpani mallets
- 1 X spare drum head, similar diameter to snare drum, with the hoop cut off ([see demonstration](https://youtu.be/qDQ7eHNufNs?t=53))
#### Laptop Setup
- 1 X laptop
- 1 X audio interface with at least 2 microphone input and 3 line outputs
- 1 X custom piezo-based interface (see [fabrication instructions](fabrication.md))
- 1 X Ableton Push or similar 8X8 grid-based MIDI controller with pressure sesitive pads
- 1 X medium-hard timpani mallet
#### Miscellaneous
- cables as needed for specific hardware being used (e.g. mic cable, USB, TRS-TRS, etc.)


### **Setup procedure**
#### Snare Drum Setup
1. The snare drum should be in good working order and tuned.
2. The microphone should be placed across from the perfomer on the top side of the drum, directed towards the middle of the head using an appropriate [snare drum miking technique](https://google.com/search?q=snare+drum+microphone+placement&tbm=isch).
3. The speaker should be placed under the snare drum, facing up, across from the performer and as close to the bottom head as possible. Mounting of the speaker is at the discretion of the perfofmer – suggestions include: a spare snare drum stand, a platform set on top of a conga stand, a spare speaker to act as a stand, etc.
4. The microphone should be connected to input 2 of the audio interface. The speaker should be connected to output 3.
5. If the speaker has a gain control or the audio interface has an output level control for output 3, tests should be performed in advance for the first section of the composition to set these levels for quick feedback response without being excessively loud.

<img src="../images/metropolacy-setup.png" width="377" height="360" />

#### Laptop Setup
1. Laptop, MIDI controller, piezo-based interface, and audio interface should all be set on a tray/table at a comfortable height. Placement of the components is up to the performer – however, it is suggested to put the piezo-based interface to the right of the MIDI controller for right-handed performers. 
2. The piezo-based interface should be connected to input 1 of the audio interface. Outputs 1-2 should go to the house mixer. MIDI controller and audio interface should be connected to their respective inputs (e.g. USB, Thunderbolt, etc.).

### **Startup procedure**
1. Open "Metropolacy-performance.maxpat"
2. Open "Options>Audio Status..." from the menu bar and ensure that your audio interface is selected as the Input and Output Device and that the I/O Vector Size is set to a reasonably small value (e.g. 64). This will likely only need to be set the first time as Max may remember these settings.
3. In the main patch window, click the speaker icon button to turn audio processing on.
4. Check input levels for the piezo and snare mic inputs using the meters on the left side of the window and adjust gain on the corresponding audio interface inputs as needed. This step can be done during rehearsal/setup and can be skipped in the future as long as the audio interface gain settings are retained.
5. Begin!
