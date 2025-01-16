# Generated from generate_makefile.py
OUTPUTS = \
	stls/309_body.stl\
	stls/309_collar_14.5_circle_flat.stl\
	stls/309_collar_14.5_circle_ridges.stl\
	stls/309_collar_15.0_circle_flat.stl\
	stls/309_collar_15.0_circle_ridges.stl\
	stls/309_collar_15.5_circle_flat.stl\
	stls/309_collar_15.5_circle_ridges.stl\
	stls/309_collar_16.0_circle_flat.stl\
	stls/309_collar_16.0_circle_ridges.stl\
	stls/309_collar_14.5_light_squircle_flat.stl\
	stls/309_collar_14.5_light_squircle_ridges.stl\
	stls/309_collar_15.0_light_squircle_flat.stl\
	stls/309_collar_15.0_light_squircle_ridges.stl\
	stls/309_collar_15.5_light_squircle_flat.stl\
	stls/309_collar_15.5_light_squircle_ridges.stl\
	stls/309_collar_16.0_light_squircle_flat.stl\
	stls/309_collar_16.0_light_squircle_ridges.stl\
	stls/309_collar_14.5_squircle_flat.stl\
	stls/309_collar_14.5_squircle_ridges.stl\
	stls/309_collar_15.0_squircle_flat.stl\
	stls/309_collar_15.0_squircle_ridges.stl\
	stls/309_collar_15.5_squircle_flat.stl\
	stls/309_collar_15.5_squircle_ridges.stl\
	stls/309_collar_16.0_squircle_flat.stl\
	stls/309_collar_16.0_squircle_ridges.stl\
	stls/309_collar_14.5_heavy_squircle_flat.stl\
	stls/309_collar_14.5_heavy_squircle_ridges.stl\
	stls/309_collar_15.0_heavy_squircle_flat.stl\
	stls/309_collar_15.0_heavy_squircle_ridges.stl\
	stls/309_collar_15.5_heavy_squircle_flat.stl\
	stls/309_collar_15.5_heavy_squircle_ridges.stl\
	stls/309_collar_16.0_heavy_squircle_flat.stl\
	stls/309_collar_16.0_heavy_squircle_ridges.stl\
	stls/309_collar_14.5_square_flat.stl\
	stls/309_collar_14.5_square_ridges.stl\
	stls/309_collar_15.0_square_flat.stl\
	stls/309_collar_15.0_square_ridges.stl\
	stls/309_collar_15.5_square_flat.stl\
	stls/309_collar_15.5_square_ridges.stl\
	stls/309_collar_16.0_square_flat.stl\
	stls/309_collar_16.0_square_ridges.stl\
	stls/309_switch_plate_24.4_D2RV.stl\
	stls/309_switch_plate_24.3_D2RV.stl\
	stls/309_switch_plate_24.2_D2RV.stl\
	stls/309_switch_plate_24.9_STD.stl\
	stls/309_switch_plate_24.8_STD.stl\
	stls/309_switch_plate_24.7_STD.stl\
	stls/309_switch_plate_24.6_STD.stl\
	stls/309_switch_plate_24.5_STD.stl\
	stls/309_switch_plate_24.4_STD.stl\
	stls/309_switch_plate_24.3_STD.stl\
	stls/309_switch_plate_24.9_VD.stl\
	stls/309_switch_plate_24.8_VD.stl\
	stls/309_switch_plate_24.7_VD.stl\
	stls/309_switch_plate_24.6_VD.stl\
	stls/309_switch_plate_24.5_VD.stl\
	stls/309_switch_plate_24.4_VD.stl\
	stls/309_switch_plate_24.3_VD.stl\


all: ${OUTPUTS} stls/.directory_marker stls/Open309_STLs.zip

stls/.directory_marker:
	mkdir -p ${dir $@}
	touch $@

stls/309_body.stl: stls/.directory_marker Open309.scad
	openscad -D PART=2 -o $@ Open309.scad

stls/309_collar_14.5_circle_flat.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=0 -D STICK_THROW_DEGREES=14.5 -D COLLAR_RIDGES=false -o $@ Open309.scad

stls/309_collar_14.5_circle_ridges.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=0 -D STICK_THROW_DEGREES=14.5 -D COLLAR_RIDGES=true -o $@ Open309.scad

stls/309_collar_15.0_circle_flat.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=0 -D STICK_THROW_DEGREES=15.0 -D COLLAR_RIDGES=false -o $@ Open309.scad

stls/309_collar_15.0_circle_ridges.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=0 -D STICK_THROW_DEGREES=15.0 -D COLLAR_RIDGES=true -o $@ Open309.scad

stls/309_collar_15.5_circle_flat.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=0 -D STICK_THROW_DEGREES=15.5 -D COLLAR_RIDGES=false -o $@ Open309.scad

stls/309_collar_15.5_circle_ridges.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=0 -D STICK_THROW_DEGREES=15.5 -D COLLAR_RIDGES=true -o $@ Open309.scad

stls/309_collar_16.0_circle_flat.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=0 -D STICK_THROW_DEGREES=16.0 -D COLLAR_RIDGES=false -o $@ Open309.scad

stls/309_collar_16.0_circle_ridges.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=0 -D STICK_THROW_DEGREES=16.0 -D COLLAR_RIDGES=true -o $@ Open309.scad

stls/309_collar_14.5_light_squircle_flat.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=1.5 -D STICK_THROW_DEGREES=14.5 -D COLLAR_RIDGES=false -o $@ Open309.scad

stls/309_collar_14.5_light_squircle_ridges.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=1.5 -D STICK_THROW_DEGREES=14.5 -D COLLAR_RIDGES=true -o $@ Open309.scad

stls/309_collar_15.0_light_squircle_flat.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=1.5 -D STICK_THROW_DEGREES=15.0 -D COLLAR_RIDGES=false -o $@ Open309.scad

stls/309_collar_15.0_light_squircle_ridges.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=1.5 -D STICK_THROW_DEGREES=15.0 -D COLLAR_RIDGES=true -o $@ Open309.scad

stls/309_collar_15.5_light_squircle_flat.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=1.5 -D STICK_THROW_DEGREES=15.5 -D COLLAR_RIDGES=false -o $@ Open309.scad

stls/309_collar_15.5_light_squircle_ridges.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=1.5 -D STICK_THROW_DEGREES=15.5 -D COLLAR_RIDGES=true -o $@ Open309.scad

stls/309_collar_16.0_light_squircle_flat.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=1.5 -D STICK_THROW_DEGREES=16.0 -D COLLAR_RIDGES=false -o $@ Open309.scad

stls/309_collar_16.0_light_squircle_ridges.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=1.5 -D STICK_THROW_DEGREES=16.0 -D COLLAR_RIDGES=true -o $@ Open309.scad

stls/309_collar_14.5_squircle_flat.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=1.8 -D STICK_THROW_DEGREES=14.5 -D COLLAR_RIDGES=false -o $@ Open309.scad

stls/309_collar_14.5_squircle_ridges.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=1.8 -D STICK_THROW_DEGREES=14.5 -D COLLAR_RIDGES=true -o $@ Open309.scad

stls/309_collar_15.0_squircle_flat.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=1.8 -D STICK_THROW_DEGREES=15.0 -D COLLAR_RIDGES=false -o $@ Open309.scad

stls/309_collar_15.0_squircle_ridges.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=1.8 -D STICK_THROW_DEGREES=15.0 -D COLLAR_RIDGES=true -o $@ Open309.scad

stls/309_collar_15.5_squircle_flat.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=1.8 -D STICK_THROW_DEGREES=15.5 -D COLLAR_RIDGES=false -o $@ Open309.scad

stls/309_collar_15.5_squircle_ridges.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=1.8 -D STICK_THROW_DEGREES=15.5 -D COLLAR_RIDGES=true -o $@ Open309.scad

stls/309_collar_16.0_squircle_flat.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=1.8 -D STICK_THROW_DEGREES=16.0 -D COLLAR_RIDGES=false -o $@ Open309.scad

stls/309_collar_16.0_squircle_ridges.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=1.8 -D STICK_THROW_DEGREES=16.0 -D COLLAR_RIDGES=true -o $@ Open309.scad

stls/309_collar_14.5_heavy_squircle_flat.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=2.1 -D STICK_THROW_DEGREES=14.5 -D COLLAR_RIDGES=false -o $@ Open309.scad

stls/309_collar_14.5_heavy_squircle_ridges.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=2.1 -D STICK_THROW_DEGREES=14.5 -D COLLAR_RIDGES=true -o $@ Open309.scad

stls/309_collar_15.0_heavy_squircle_flat.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=2.1 -D STICK_THROW_DEGREES=15.0 -D COLLAR_RIDGES=false -o $@ Open309.scad

stls/309_collar_15.0_heavy_squircle_ridges.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=2.1 -D STICK_THROW_DEGREES=15.0 -D COLLAR_RIDGES=true -o $@ Open309.scad

stls/309_collar_15.5_heavy_squircle_flat.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=2.1 -D STICK_THROW_DEGREES=15.5 -D COLLAR_RIDGES=false -o $@ Open309.scad

stls/309_collar_15.5_heavy_squircle_ridges.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=2.1 -D STICK_THROW_DEGREES=15.5 -D COLLAR_RIDGES=true -o $@ Open309.scad

stls/309_collar_16.0_heavy_squircle_flat.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=2.1 -D STICK_THROW_DEGREES=16.0 -D COLLAR_RIDGES=false -o $@ Open309.scad

stls/309_collar_16.0_heavy_squircle_ridges.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=2.1 -D STICK_THROW_DEGREES=16.0 -D COLLAR_RIDGES=true -o $@ Open309.scad

stls/309_collar_14.5_square_flat.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=4.0 -D STICK_THROW_DEGREES=14.5 -D COLLAR_RIDGES=false -o $@ Open309.scad

stls/309_collar_14.5_square_ridges.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=4.0 -D STICK_THROW_DEGREES=14.5 -D COLLAR_RIDGES=true -o $@ Open309.scad

stls/309_collar_15.0_square_flat.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=4.0 -D STICK_THROW_DEGREES=15.0 -D COLLAR_RIDGES=false -o $@ Open309.scad

stls/309_collar_15.0_square_ridges.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=4.0 -D STICK_THROW_DEGREES=15.0 -D COLLAR_RIDGES=true -o $@ Open309.scad

stls/309_collar_15.5_square_flat.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=4.0 -D STICK_THROW_DEGREES=15.5 -D COLLAR_RIDGES=false -o $@ Open309.scad

stls/309_collar_15.5_square_ridges.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=4.0 -D STICK_THROW_DEGREES=15.5 -D COLLAR_RIDGES=true -o $@ Open309.scad

stls/309_collar_16.0_square_flat.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=4.0 -D STICK_THROW_DEGREES=16.0 -D COLLAR_RIDGES=false -o $@ Open309.scad

stls/309_collar_16.0_square_ridges.stl: stls/.directory_marker Open309.scad
	openscad -D PART=1 -D SQUIRCLENESS=4.0 -D STICK_THROW_DEGREES=16.0 -D COLLAR_RIDGES=true -o $@ Open309.scad

stls/309_switch_plate_24.4_D2RV.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=24.4  -D SWITCH_SPACING_SIDEWAYS=6.5 -D EXTRA_SWITCH_SPACING_SIDEWAYS_DOWN=1.0 -D SWITCH_ROTATION=-1.4 -o $@ Open309.scad

stls/309_switch_plate_24.3_D2RV.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=24.3  -D SWITCH_SPACING_SIDEWAYS=6.5 -D EXTRA_SWITCH_SPACING_SIDEWAYS_DOWN=1.0 -D SWITCH_ROTATION=-1.4 -o $@ Open309.scad

stls/309_switch_plate_24.2_D2RV.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=24.2  -D SWITCH_SPACING_SIDEWAYS=6.5 -D EXTRA_SWITCH_SPACING_SIDEWAYS_DOWN=1.0 -D SWITCH_ROTATION=-1.4 -o $@ Open309.scad

stls/309_switch_plate_24.9_STD.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=24.9 -o $@ Open309.scad

stls/309_switch_plate_24.8_STD.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=24.8 -o $@ Open309.scad

stls/309_switch_plate_24.7_STD.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=24.7 -o $@ Open309.scad

stls/309_switch_plate_24.6_STD.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=24.6 -o $@ Open309.scad

stls/309_switch_plate_24.5_STD.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=24.5 -o $@ Open309.scad

stls/309_switch_plate_24.4_STD.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=24.4 -o $@ Open309.scad

stls/309_switch_plate_24.3_STD.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=24.3 -o $@ Open309.scad

stls/309_switch_plate_24.9_VD.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=24.9 -D SWITCH_SPACING_SIDEWAYS=6.5 -D EXTRA_SWITCH_SPACING_SIDEWAYS_DOWN=1.0 -o $@ Open309.scad

stls/309_switch_plate_24.8_VD.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=24.8 -D SWITCH_SPACING_SIDEWAYS=6.5 -D EXTRA_SWITCH_SPACING_SIDEWAYS_DOWN=1.0 -o $@ Open309.scad

stls/309_switch_plate_24.7_VD.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=24.7 -D SWITCH_SPACING_SIDEWAYS=6.5 -D EXTRA_SWITCH_SPACING_SIDEWAYS_DOWN=1.0 -o $@ Open309.scad

stls/309_switch_plate_24.6_VD.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=24.6 -D SWITCH_SPACING_SIDEWAYS=6.5 -D EXTRA_SWITCH_SPACING_SIDEWAYS_DOWN=1.0 -o $@ Open309.scad

stls/309_switch_plate_24.5_VD.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=24.5 -D SWITCH_SPACING_SIDEWAYS=6.5 -D EXTRA_SWITCH_SPACING_SIDEWAYS_DOWN=1.0 -o $@ Open309.scad

stls/309_switch_plate_24.4_VD.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=24.4 -D SWITCH_SPACING_SIDEWAYS=6.5 -D EXTRA_SWITCH_SPACING_SIDEWAYS_DOWN=1.0 -o $@ Open309.scad

stls/309_switch_plate_24.3_VD.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=24.3 -D SWITCH_SPACING_SIDEWAYS=6.5 -D EXTRA_SWITCH_SPACING_SIDEWAYS_DOWN=1.0 -o $@ Open309.scad

stls/Open309_STLs.zip: stls/.directory_marker ${OUTPUTS}
	zip -FS -j $@ ${OUTPUTS}
