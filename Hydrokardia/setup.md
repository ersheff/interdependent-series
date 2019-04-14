## Hydrokardia Setup Instructions


### **Software Requirements**
- Max 8, which can be downloaded from [Cycling 74's website](https://cycling74.com) (Performance of *Hydrokardia* does not require a license for Max and can be performed without authorizing the software).
- [TouchOSC](https://hexler.net), a $5 mobile app
- TouchOSC Bridge is recommended but not required


### **Hardware Requirements**
**At each location**
- 1 X laptop
- 1 X audio interface
- 1 X mobile tablet device running TouchOSC
- Internet access, wired or wireless
- cables as needed for specific hardware being used (e.g. USB cables, ethernet cables, etc.)
- cables to connect tablet to laptop (optional)


### **Setup procedure**
1. A Node.js server application for *Hydrokardia* is provided as a submodule in this repo and [here](https://github.com/ersheff/hydrokardia-server), but a hosting option must be configured ahead of time by the performers. I recommend the free service level of [Heroku](https://www.heroku.com). A walkthrough guide for deploying your first Node.js app on Heroku can be found [here](https://devcenter.heroku.com/articles/getting-started-with-nodejs). General deployment instructions can be found [here](https://devcenter.heroku.com/articles/deploying-nodejs). Theoretically, a non-telematic version of *Hydrokardia* can be performed using a local instance of the server app running on a local computer.
2. Once the server is configured, the url in the "hydrokardia-client.js" file should be changed to point to your server's address. The directory in "Hydrokardia-server-startup" should be changed to the local directory of the server repo.
3. The TouchOSC layout "hydrokardia-faders" should be loaded onto both tablet devices.
4. The host name in the "left-hostname.txt" and "right-hostname.txt" files should be changed to the host name of player A and player B's tablets, respectively.
5. The laptop at each location should be connected to a projector. Outputs 1-2 of the audio interface at each location should be connected to the house mixer.


### **Startup procedure**
1. Connect both laptops to the Internet.
2. Establish connections between tablets and laptops. This can either be done by putting both devices on the same network or using the TouchOSC Bridge application to create a wired connection. The latter option is slightly more complicated but will perform better.
    - For the first wireless option, enter your laptop's IP address in the OSC Connections menu in the TouchOSC app. Set the outgoing port to 8000 and the incoming port to 9000.
    - For the second wired option, first ensure that the TouchOSC Bridge helper application is running on your laptop, then connect your tablet to your laptop using USB. Next, open the TouchOSC Bridge menu in the TouchOSC app on the mobile device. In this menu, if connected properly, the host name of your laptop should show up. Tap this host name – your laptop's IP address should automtically appear. Once it does, go back into the OSC Connections menu and enter the same IP address for the Host. Set the outgoing port to 8000 and the incoming port to 9000.
3. Start up your *Hydrokardia* server by double-clicking "Hydrokardia-server-startup."
4. Player A, controlling the left half of the wave and the audio parameters, should open "Hydrokardia-left.maxpat." Player B, controlling the right half of the wave and the video parameters, should open "Hydrokardia-right.maxpat."
5. Once the patch is open, confirm that it is connected to the server. You should see a fromServer "welcome" message in the Max console window. You can also enter chat messages to communicate with the remote player. Their responses will show up in the console with a "~" flag. If none of this appears to be working, try clicking the "restart client" button.
6. Test TouchOSC communication from your tablet by using the provided testing module.
7. Click the speaker icon to start audio processing.
8. Click the "start countdown" button to intiate a 5 second countdown and synchronize timers at both locations.
9. Begin when the timer hits 0:00!
