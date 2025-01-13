STLS = \
	stls/309_body.stl\
	stls/309_collar_light_squircle.stl\
	stls/309_collar_squircle.stl\
	stls/309_collar_heavy_squircle.stl\
	stls/309_collar_circle.stl\
	stls/309_collar_square.stl\
	stls/309_collar_light_squircle_flat.stl\
	stls/309_collar_squircle_flat.stl\
	stls/309_collar_heavy_squircle_flat.stl\
	stls/309_collar_circle_flat.stl\
	stls/309_collar_square_flat.stl\
	stls/309_switch_plate_25.2mm.stl\
	stls/309_switch_plate_25.1mm.stl\
	stls/309_switch_plate_25.0mm.stl\
	stls/309_switch_plate_24.9mm.stl\
	stls/309_switch_plate_24.8mm.stl\
	stls/309_switch_plate_24.7mm.stl\
	stls/309_switch_plate_24.6mm.stl\
	stls/309_switch_plate_24.5mm.stl\
	stls/309_switch_plate_24.5mm.stl\
	stls/309_switch_plate_D2RV_25.1mm.stl\
	stls/309_switch_plate_D2RV_25.0mm.stl\
	stls/309_switch_plate_D2RV_24.9mm.stl\
	stls/309_switch_plate_D2RV_24.8mm.stl\
	stls/309_switch_plate_D2RV_24.7mm.stl\

all: ${STLS} stls/Open309_STLs.zip

OSC = openscad

stls/309_body.stl: Open309.scad
	${OSC} -D PART=2 -o $@ Open309.scad

stls/309_collar_light_squircle.stl: Open309.scad
	${OSC} -D PART=1 -D SQUIRCLENESS=1.5 -o $@ Open309.scad

stls/309_collar_squircle.stl: Open309.scad
	${OSC} -D PART=1 -D SQUIRCLENESS=1.8 -o $@ Open309.scad

stls/309_collar_heavy_squircle.stl: Open309.scad
	${OSC} -D PART=1 -D SQUIRCLENESS=2.1 -o $@ Open309.scad

stls/309_collar_circle.stl: Open309.scad
	${OSC} -D PART=1 -D SQUIRCLENESS=0 -o $@ Open309.scad

stls/309_collar_square.stl: Open309.scad
	${OSC} -D PART=1 -D SQUIRCLENESS=4 -o $@ Open309.scad

stls/309_collar_light_squircle_flat.stl: Open309.scad
	${OSC} -D PART=1 -D SQUIRCLENESS=1.5 -D COLLAR_RIDGES=false -o $@ Open309.scad

stls/309_collar_squircle_flat.stl: Open309.scad
	${OSC} -D PART=1 -D SQUIRCLENESS=1.8  -D COLLAR_RIDGES=false -o $@ Open309.scad

stls/309_collar_heavy_squircle_flat.stl: Open309.scad
	${OSC} -D PART=1 -D SQUIRCLENESS=2.1  -D COLLAR_RIDGES=false -o $@ Open309.scad

stls/309_collar_circle_flat.stl: Open309.scad
	${OSC} -D PART=1 -D SQUIRCLENESS=0  -D COLLAR_RIDGES=false -o $@ Open309.scad

stls/309_collar_square_flat.stl: Open309.scad
	${OSC} -D PART=1 -D SQUIRCLENESS=4  -D COLLAR_RIDGES=false -o $@ Open309.scad

stls/309_switch_plate_25.2mm.stl: Open309.scad
	${OSC} -D PART=3 -D SWITCH_SPACING_AWAY=25.2 -o $@ Open309.scad

stls/309_switch_plate_25.1mm.stl: Open309.scad
	${OSC} -D PART=3 -D SWITCH_SPACING_AWAY=25.1 -o $@ Open309.scad

stls/309_switch_plate_25.0mm.stl: Open309.scad
	${OSC} -D PART=3 -D SWITCH_SPACING_AWAY=25.0 -o $@ Open309.scad

stls/309_switch_plate_24.9mm.stl: Open309.scad
	${OSC} -D PART=3 -D SWITCH_SPACING_AWAY=24.9 -o $@ Open309.scad

stls/309_switch_plate_24.8mm.stl: Open309.scad
	${OSC} -D PART=3 -D SWITCH_SPACING_AWAY=24.8 -o $@ Open309.scad

stls/309_switch_plate_24.7mm.stl: Open309.scad
	${OSC} -D PART=3 -D SWITCH_SPACING_AWAY=24.7 -o $@ Open309.scad

stls/309_switch_plate_24.6mm.stl: Open309.scad
	${OSC} -D PART=3 -D SWITCH_SPACING_AWAY=24.6 -o $@ Open309.scad

stls/309_switch_plate_24.5mm.stl: Open309.scad
	${OSC} -D PART=3 -D SWITCH_SPACING_AWAY=24.5 -o $@ Open309.scad

stls/309_switch_plate_D2RV_25.1mm.stl: Open309.scad
	${OSC} -D PART=3 -D SWITCH_SPACING_AWAY=25.1 -D SWITCH_ROTATION=-1.4 -o $@ Open309.scad

stls/309_switch_plate_D2RV_25.0mm.stl: Open309.scad
	${OSC} -D PART=3 -D SWITCH_SPACING_AWAY=25.0 -D SWITCH_ROTATION=-1.4 -o $@ Open309.scad

stls/309_switch_plate_D2RV_24.9mm.stl: Open309.scad
	${OSC} -D PART=3 -D SWITCH_SPACING_AWAY=24.9 -D SWITCH_ROTATION=-1.4 -o $@ Open309.scad

stls/309_switch_plate_D2RV_24.8mm.stl: Open309.scad
	${OSC} -D PART=3 -D SWITCH_SPACING_AWAY=24.8 -D SWITCH_ROTATION=-1.4 -o $@ Open309.scad

stls/309_switch_plate_D2RV_24.7mm.stl: Open309.scad
	${OSC} -D PART=3 -D SWITCH_SPACING_AWAY=24.7 -D SWITCH_ROTATION=-1.4 -o $@ Open309.scad

stls/Open309_STLs.zip: ${STLS}
	zip -FS -j $@ ${STLS}