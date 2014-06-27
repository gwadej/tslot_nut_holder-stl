# T-Slot Nut Holder Design

This was my first 3D model when working with my original Thing-o-Matic 3D
printer.  It's a small holder that helps with positioning and supporting hex
nuts.

## The Problem

When assembling the Thing-o-Matic printer, I found the t-slot construction
technique to be quite cool at first. After needing to take a few things apart
and put them back together, I found the standard advice to be annoying.

The issue is that you have to slide a hex nut into this little gap in the wood
or acrylic of the printer and run a screw perpendicular to it to engage the
nut. Since the nut capture opening was open on both sides, the nut regularly
falls out when you are trying to put the screw in place. The advice from the
mailing list was to tape the nut in place and then remove the tape afterwards.

## My Solution

After one too many session opening the base of my Thing-o-Matic and having the
hex nuts fall out of the t-slots, I decided to do something about it. This
design should hold the M3 hex nuts firmly in a t-slot, while still making them
easy to remove if possible. The bottom of the holder also serves to spread the
force from the nut to reduce potential damaging effects of compression on the
wood.

Because the object is small and the tolerances are pretty tight, the printing
can be a little finicky. The included OpenSCAD model contains commented
parameters that should make adjusting the object pretty easy.

I have only printed this in ABS. It is very important that you print the holder
with an infill of 100%. Otherwise the bottom layer tends not to be solid.

I've had good luck printing with a thickness of 0.2mm and a width/thickness of
2.
