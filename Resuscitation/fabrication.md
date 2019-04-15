## Resuscitation Interface Fabrication Instructions

### **Materials Needed**
#### Electronics
- 4 X Arduino Nanos or equivalent (many inexpensive third party options are available)
- 4 X Force Sensing Resistors (e.g. [these](https://www.sparkfun.com/products/9375))
- 4 X 10k resistors
- 4 X small solderless prototyping breadboards
- 4 X standard piezoelectric discs
- 4 X film piezo tines (e.g. [these](https://www.sparkfun.com/products/9196))
- 8 X XLRM connectors
- 8 X female crimp pins appropriate for 18-26 AWG wire
- Length of shielded 3 conductor audio cable, approximately 10' (e.g. the type used for mic cables)

#### Hardware
- Length of 1" X 6" hardwood, approximately 4'
- 32 X 3/4" #6 wood screws
- 8 X 1 1/2" #6 wood screws
- 8 X 2" mending plate (e.g. [these](https://www.homedepot.com/p/Everbilt-2-in-Zinc-Plated-Mending-Plate-4-Pack-15299/202033910))
- 4 X blank 2-gang "indestructible" nylon electrical outlet wall plates (e.g. [these](https://www.homedepot.com/p/Leviton-2-Gang-Midway-Blank-Nylon-Wall-Plate-White-R52-0PJ23-00W/202059889))
- 16 X rubber feet

#### Miscellaneous
- Medium grit sandpaper
- Gaffer or electrical tape

### **Tools Needed**
- Saw (band, miter, hand, etc.)
- Drill (drill press is best)
- 7/64" drill bit
- 3/16" drill bit
- Screwdriver
- Soldering iron and solder


### **Procedure**

#### Soldering and electronics
1. Cut audio cable into 8 equal lengths, each approximately 14" long.
2. Strip approximately 3/4" of the outer jacket from each end of all 8 segments, then strip a small amount from the end of each wire.
3. On one end of 4 of the cable segments, solder the red wire to one of the crimp pins and both the black and stranded wires to another crimp pin.
<img src="../images/res-crimp.jpg" width="320"/>
4. On one end of the other 4 cable segments, solder the red wire to the inner part of a piezo disc and both the black and stranded wires to the outer metal part of the disc.
<img src="../images/res-disc.jpg" width="320"/>
5. Solder XLR connectors to the bare end of all 8 cable segments. The stranded wire goes to pin 1, red wire to pin 2, black wire to pin 3. You should now have 4 piezo disc to XLR cables and 4 crimp pin to XLR cables.
6. For each of the 4 crimp pin to XLR cables, insert the legs of one of the film piezos into the crimp pins and squeeze them tight with needle nose pliers. DO NOT solder directly to the film piezo as this will damage it. Cover any exposed metal between the red wire and the film piezo with a small bit of electrical or gaffer tape.
<img src="../images/res-film.jpg" width="320"/>


#### Wood work
***All pilot holes should be drilled 1/2" deep using 7/64" bit. All through holes should be drilled using 3/16" bit.***
***The following steps should be repeated 4 times.***
1. Cut 10" and 1" pieces from 1" X 6" board. Reduce width of 1" piece to 3".
<img src="../images/res-boards.jpg" width="284"/>
2. Drill 4 pilot holes in 10" piece for electrical plate. Plate should be centered width-wise at one end.
<img src="../images/res-plate-holes.jpg" width="284"/>
3. Drill 4 pilot holes for mending plates, 2 each at the end of both pieces. On the 10" piece, these holes should be at the opposite end of the plate pilot holes.
<img src="../images/res-mend-holes.jpg" width="320"/>
4. Drill 2 through holes for the longer wood screws to pass through the 1" piece, inset 1/4" from each end and inset 1/2" from each long edge (centered).
5. Drill 2 pilot holes in 10" piece positioned so that the 1" piece can be screwed on top of the board flush with the end opposite the plate pilot holes. This measurement should be done manually to account for variations in board widths.
6. Send edges and corners as desired.


#### Assembly and finishing touches
***The following steps should be repeated 4 times.***
1. Sand the surface of the 2-gang plastic plate until it is evenly textured.
2. Tape the piezo disc to the bottom of the 2-gang plate. Angle the disc so that the wire passes near one corner of the plate. Try to only adhere tape to the metal part of the disc to avoid damaging the inner part. Add an extra piece of tape to secure the cable.
<img src="../images/res-piezo-tape.jpg" width="320"/>
3. Cut a piece of foam to fit under the 2-gang plastic plate, approximately 4 3/4" square. Cut off one corner of the foam square.
<img src="../images/res-piezo-bigfoam.jpg" width="320"/>
4. Place the foam under the plate, aligning the cut corner with the cable from the piezo. Insert 4 of the short wood screws through the plate holes and push them through the foam.
<img src="../images/res-foam-under-plate.jpg" width="320"/>
5. Glue small pieces of foam to one of the mending plates and between the mending plate pilot holes on the 1" piece of wood.
<img src="../images/res-film-foam.jpg" width="320"/>
6. Insert the Arduino into the breadboard. Put a 10k ohm resistor across A7 (analog input 7) and ground. Insert the legs of the FSR into A7 and 5v.
<img src="../images/res-FSR.jpg" width="284"/>
7. Cut 1" square pieces of foam. Push 2 of the 1 1/2" wood screws through the 1" piece of wood and through the foam.
<img src="../images/res-long-screws.jpg" width="320"/>
8. Screw the plastic plate onto the 10" board with the piezo and foam underneath. Screw the 1" piece of wood to the other end of the board, ensuring that the cable from the piezo passes underneath, between the foam squares. All of these screws should be just hand tightened - DO NOT over tighten. Afix the Arduino board assembly just above the plate on the left side and afix the FSR to the top left corner of the plate.
<img src="../images/res-top-view.jpg" width="284"/>
9. Loosely screw the 2 mending plates onto the end of the assembly with the foam facing inside on the top plate. Insert a film piezo cable through the 2 mending plates so that the top plate holds the film piezo in place and the bottom one holds the cable in place. The film piezo should stick out approximately 1/2" from the top. Again, hand tighten but do not overtighten.
<img src="../images/res-mending-plates.jpg" width="320"/>
10. Afix 4 rubber feet to the bottom corners.
<img src="../images/res-feet.jpg" width="284"/>
11. Cut the snare wires in half (this is only done once).
<img src="../images/res-snare-wires.jpg" width="284"/>
12. Load the "Resuscitation-FSR" sketch onto the Arduino. Confim that it is working by opening the serial monitor and pressing the FSR. You should see the values changing.
13. The interface is now fully assembled.
<img src="../images/res-assembled.jpg" width="320"/>



