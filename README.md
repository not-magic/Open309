# Open309

Tunable 3D Printed Crown 309 fightstick body replacement.

This started out as a way to create a NEW Helpme body that supported Omron D2RV-LG silent switches. But it is really a basis that allows for anybody to tweak and print their own 309 body and adjust the collar shape and switch spacing, or just print a replacement if your old body breaks.

## Parts Required

To assemble this you will need:

* 4x 30mm M4 bolts with nuts. The M4 nuts that a New Helpme comes with may be reused.
* 8x 16mm M2 bolts with nuts

The body is in 3 parts to minimize what needs to be printed while tweaking things, as well as make it print with minimal supports:

* A collar. The stock collar may still be used if you are happy with how it feels. You can also only print this if you are happy with the stock switch spacing.
* The center body part (that holds the grommet)
* The switch plate. This may be changed on the base body at any time.

## Print settings

Tolerances were optimized for printing on my Prusa Mk3s w/ a 0.6 mm nozzle, using PLA+.

If the collar is printed I would recommend using a random seam position, and lightly sanding the collar. This will prevent a noticeable bump in collar shape. I print the collar upside down with supports, which creates some pretty bad surface quality that is entirely hidden by the mounting plate.

## Tweaking the design.

It is made using [OpenSCAD](https://openscad.org/), which is a free open source parametric modeller. Once you open the design you can modify variables in the customizer (Window | Customizer in the menu) or in the tool bar

* _SWITCH_SPACING_AWAY_ - This adjusts the main switch spacing away from the center of the stick. This is the main thing to tweak to adjust the size of the deadzone.
* _SWITCH_SPACING_SIDEWAYS_ - This moves the switches left and right. This should almost never need to be changed unless you want to use a non lever switch or have a custom lever postion.
* _SWITCH_ROTATION_ - This will rotate the switches towards (negative) or away from the center (positive). This may be necessary if the switches do not trigger when the lever is exactly parallel.
* _STICK_THROW_DEGREES_ - This is the max rotation of the lever (e.g. max throw angle) which is used to generate the collar angles.
* _SWITCH_GUARD_DISTANCE_ - This will adjust the size of the gate in the switch plate. This may never be hit, but due to the way korean levers work, applying enough pressure you can force the grommet to deform and push the actuator towards the lever anyway. This is protection against damaging the switches. If you find you are hitting this with space to go, lower this distance.
* _SHAFT_DIAMETER_ - This is the diameter of the shaft, used to generate the collar range of motion
* _SQUIRCLENESS_  - This affects the shape of the gate. At 0 it is a perfect circle. Higher numbers warp it into a square.

### Exporting it

Using the 'PART' parameter, select each part and export it with F6, then F7

Alternatively on linux you can run `make` to rebuild every part. Use `make -j 32` (or your core count number) to process them in parallel.