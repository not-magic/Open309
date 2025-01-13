# Open309

Tunable 3D Printed Crown 309 fightstick body replacement.

This started out as a way to create a NEW Helpme body that supported Omron D2RV-LG silent switches. But it is really a basis that allows for anybody to tweak and print their own 309 body and adjust the collar shape and switch spacing, or just print a replacement if your old body breaks.

## Parts Required

To assemble this you will also need 8x 16mm M2 bolts with nuts, to attach the switches to the switch plate. The height of the switch plate is designed exactly for 16mm bolts so anything else will either not reach the nuts or will intersect with the body.

The body is in 3 parts to minimize what needs to be printed while tweaking things, as well as make it print with minimal supports:

* *Collar*. The stock collar may still be used if you are happy with how it feels. You can also only print this if you are happy with the stock switch spacing.
* *Body* the middle part (that holds the grommet).
* *Switch Plate*. This holds the switch spacing.

## Print settings

Tolerances were optimized for printing on my Prusa Mk3s w/ a 0.6 mm nozzle, using PLA+.

If the collar is printed I would recommend using a random seam position, and lightly sanding the collar. This will prevent a noticeable bump in collar shape. I print the collar upside down with supports, which creates some pretty bad surface quality that is entirely hidden by the mounting plate.

There are two collar variations, one with ridges, to minimize support contacts that may be easier to print, and a flat version.

## Tweaking the design.

This was made using [OpenSCAD](https://openscad.org/), which is a free open source parametric modeller. Once you open the design you can modify variables in the customizer (Window | Customizer in the menu) or in the tool bar

![Switch Zones](./images/switch_zones.png)

In this example image:

* The green area represents when one switch is triggered for a cardinal direction
* The blue area represents when the diagonals will be triggered.
* The grey box is the switch deadzone, which is required for proper function of the switches. Switches may activate at 1.4mm but may not deactivate until the lever is moved back 1.3mm. The lever must sit neutrally outside of this zone.
* The white area is the neutral deadzone, where the switches have no interaction. On a levered switch this will be slightly tilted because of the levers rotating.
* The black circle represents a circular collar, the cap on the max rotation of the stick.

The proper switch spacing is a balance to make the diagonals are just large enough to be hit reliably, and the cardinal zones are just small enough you can reliably double tap the directions for dashing.

You can make double taps more reliable by increasing the grommet tension as it will return into the safe neutral zone faster.


* _SWITCH_SPACING_AWAY_ - This is the distance of switches to the center. The larger the value, the larger the safe neutral zone becomes and the smaller the activation zones become.
* _SWITCH_SPACING_SIDEWAYS_ - This moves the switches perpedicular to the center. A smaller value (it is negative) will increase the size of the switch deadzone, reduce the tactility of the switches, increse the resistance to tolerance errors, and reduce how much the safe neutral is twisted.
* _SWITCH_ROTATION_ - This will rotate the switches towards (negative) or away from the center (positive). This may be necessary if the switches do not trigger when the lever is exactly parallel. Adjusting this will also twist all of the activation zones.
* _STICK_THROW_DEGREES_ - This is the max rotation of the lever (e.g. max throw angle) which is used to generate the collar angles. This adjusts the size of the collar.
* _SWITCH_GUARD_DISTANCE_ - This will adjust the size of the gate in the switch plate. This may never be hit, but due to the way korean levers work, applying enough pressure you can force the grommet to deform and push the actuator towards the lever anyway. This is protection against damaging the switches. If you find you are hitting this with space to go, lower this distance.
* _SHAFT_DIAMETER_ - This is the diameter of the shaft, used to generate the collar range of motion.
* _SQUIRCLENESS_  - This affects the shape of the gate. At 0 it is a perfect circle. Higher numbers warp it into a square.

Using a larger sized actuator has the same basic effect of reducing the switch away spacing, except it may also reduce the throw angle if it hits the switch guard.

### Exporting it

Using the 'PART' parameter, select each part and export it with F6, then F7

Alternatively on linux you can run `make` to rebuild every part. Use `make -j 32` (or your core count number) to process them in parallel.

