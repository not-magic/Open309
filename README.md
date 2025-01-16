# Open309

An open-source 3D Printed Crown 309 fightstick body replacement.

This started out as a way to create a NEW Helpme body that supported Omron D2RV-LG silent switches. But it may also be used by anybody to tweak and print their own 309 body and adjust the collar shape and switch spacing, or just print a replacement if your old body breaks.

The body is in 3 parts to minimize what needs to be printed while tweaking things, as well as make it print with minimal supports:

* *Collar* - This works as a replacement for the stock NEW Helpme collar (you can mix and match with the original collar).
* *Body* - the middle part that holds the grommet.
* *Switch Plate* - This holds the switches and controls their spacing

# Printing

There are premade .STLs over in the [Releases](https://github.com/not-magic/Open309/releases) you can start with.

There are three variants of switch plates in the releases:

* Standard - (24.7 seems to be what the stock spacing is)
* Variable Deadzones - These adjust the switch spacings to have a larger down deadzone and the rest to have shorter deadzones, just for something to play around with.
* D2RV - These are what I found worked for me for the D2RV-LG switches, and include variable deadzones. I have settled on the 24.3 spacing.

The variable deadzone switch plates are meant to be oriented with the text to the top of the body, so the "down" switch is a the top.

There are many variations of the collars with different throw angles and collar shapes:

* circle
* heavy_squircle
* squircle
* light_squircle
* square

And each of them in throw angles:

* 14.5
* 15.0
* 15.5
* 16.0

It's difficult to measure the stock throw angle but I think it's about 15.

## Parts Required

All parts were designed to fit the [Crown CWL-309-MJ-NEW-Helpme-KMS-ST30 Joystick](https://focusattack.com/crown-cwl-309-mj-new-helpme-kms-st30-joystick/)

Other 309 variants may also work, but don't have any of them so I am not sure. It is likely they can all work with minimal modifications.

To assemble this you will also need `8x 16mm M3 bolts with nuts`, to attach the switches to the switch plate. The height of the switch plate is designed for exactly 16mm bolts so anything else will either not reach the nuts or will intersect with the body.

The printed body is also a tiny bit too long for the stock `25mm M4 bolts`. It works, barely, but it works better with `30mm M4 bolts`.

All pieces are assembled stacked and held together by the M4 body bolts.

The only parts kept from the original lever are:

* The one-piece stick
* The grommit + dx bobbin
* The actuator (16mm or 16.2mm) which you could 3d print if you wanted
* The M6 E-clip
* The mounting plate
* Microswitches

If you were planning on replacing the grommet and switches anyway it may be cheaper to just buy the remaining parts.

## Print settings

I did all test printing on a Prusa Mk3s with a 0.6 mm nozzle.

If the collar is printed I would recommend using a random seam position, and lightly sanding the collar. This will prevent a ridge in the collar shape. I print the collar upside down with supports, which creates some pretty bad surface quality that is entirely hidden by the mounting plate.

There are two collar variations, one with ridges, to minimize supports, and a flat version. The jury is out if the ridges help much, it produces fewer but harder to remove supports.

# Modifying the design

This was made using [OpenSCAD](https://openscad.org/), which is a free open source parametric modeller. Once you open the file you can modify variables in the customizer (Window | Customizer in the menu) or just modify the source directly.
![Switch Zones](./images/switch_zones.png)

In this example image:

* The green area represents when one switch is triggered for a cardinal direction.
* The blue area represents when two switches are triggered for a diagonal.
* The grey box is the switch deadzone, which is required for proper function of the switches. Switches may activate at 1.4mm but may not deactivate until the lever is moved back 0.3mm.
* The white area is the neutral zone, where the switches have no interaction. On a levered switch this will be slightly twisted because the switch levers pivot. The lever must sit neutrally here or the switches cannot function correctly.
* The black circle represents a circular collar, the cap on the max rotation of the stick.

The proper switch spacing is a balance:

* Diagonals need to be large enough to be accurate.
* Cardinal zones need to be shallow enough you can double tap the directions for dashing reliably.
* Cardinal zones need to be wide enough to find them accurately
* Deadzones add a kind of "stickyness" to inputs, where a down to right motion may produce a QCF output if the down is still active because it hasn't left the down deadzone.

You can also make dash actions a bit more reliable by increasing the grommet tension, as it will return into the neutral zone faster.

## Parameters

* _SWITCH_SPACING_AWAY_ - This is the distance of switches to the center. The larger the value, the larger the neutral zone becomes and the smaller the activation zones become.
* _SWITCH_SPACING_SIDEWAYS_ - This moves the switches perpedicular to the center. A larger value will increase the size of the switch deadzone.
* _EXTRA_SWITCH_SPACING_AWAY_\* - These are options to add extra away switch spacing in each input direction, if you wanted "up" to be less sensitive for example.
* _EXTRA_SWITCH_SPACING_SIDEWAYS_\* - These are options to adjust the deadzone size in each direction.
* _SWITCH_ROTATION_ - This will rotate the switches towards (negative) or away from the center (positive). This may be necessary if the switches do not trigger when the lever is exactly parallel. This is the case with the D2RV-LG switches. Adjusting this will also twist all of the activation zones.
* _STICK_THROW_DEGREES_ - This is the max rotation of the lever (e.g. max throw angle) which is used to generate the collar angles. This adjusts the size of the collar.
* _SWITCH_GUARD_DISTANCE_ - This will adjust the size of the gate in the switch plate. This may never be hit, but due to the way korean levers work, applying enough pressure you can force the grommet to deform and push the actuator towards the lever anyway. So this is protection against damaging the switches. If you find you are hitting this with space to go, lower this distance, I tuned the defaults for the D2RV variants. Hitting this guard during normal operation will apply a square gate like feel, and is also going to be noisier as you hit the guard with more velocity than the collar.
* _SHAFT_DIAMETER_ - This is the diameter of the stick shaft, used to generate the collar range of motion.
* _SQUIRCLENESS_  - This affects the shape of the collar. At 0 it is a perfect circle. Higher numbers warp it into a square.


Using a larger sized actuator has the same basic effect of reducing the switch away spacing, except it may also reduce the throw angle if it hits the switch guard.

### Exporting it

Using the 'PART' parameter, select each part and export it with F6, then F7

Alternatively on linux you can run `make` to rebuild every part. Use `make -j 32` (or your core count number) to process them in parallel.

