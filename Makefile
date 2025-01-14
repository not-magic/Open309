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
	stls/309_switch_plate_25.2_D2RV.stl\
	stls/309_switch_plate_25.2.stl\
	stls/309_switch_plate_25.1_D2RV.stl\
	stls/309_switch_plate_25.1.stl\
	stls/309_switch_plate_25.0_D2RV.stl\
	stls/309_switch_plate_25.0.stl\
	stls/309_switch_plate_24.9_D2RV.stl\
	stls/309_switch_plate_24.9.stl\
	stls/309_switch_plate_24.8_D2RV.stl\
	stls/309_switch_plate_24.8.stl\
	stls/309_switch_plate_24.7_D2RV.stl\
	stls/309_switch_plate_24.7.stl\
	stls/309_switch_plate_24.6_D2RV.stl\
	stls/309_switch_plate_24.6.stl\
	stls/309_switch_plate_24.5_D2RV.stl\
	stls/309_switch_plate_24.5.stl\


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

stls/309_switch_plate_25.2_D2RV.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=25.2 -D SWITCH_ROTATION=-1.5 -o $@ Open309.scad

stls/309_switch_plate_25.2.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=25.2 -o $@ Open309.scad

stls/309_switch_plate_25.1_D2RV.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=25.1 -D SWITCH_ROTATION=-1.5 -o $@ Open309.scad

stls/309_switch_plate_25.1.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=25.1 -o $@ Open309.scad

stls/309_switch_plate_25.0_D2RV.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=25.0 -D SWITCH_ROTATION=-1.5 -o $@ Open309.scad

stls/309_switch_plate_25.0.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=25.0 -o $@ Open309.scad

stls/309_switch_plate_24.9_D2RV.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=24.9 -D SWITCH_ROTATION=-1.5 -o $@ Open309.scad

stls/309_switch_plate_24.9.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=24.9 -o $@ Open309.scad

stls/309_switch_plate_24.8_D2RV.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=24.8 -D SWITCH_ROTATION=-1.5 -o $@ Open309.scad

stls/309_switch_plate_24.8.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=24.8 -o $@ Open309.scad

stls/309_switch_plate_24.7_D2RV.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=24.7 -D SWITCH_ROTATION=-1.5 -o $@ Open309.scad

stls/309_switch_plate_24.7.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=24.7 -o $@ Open309.scad

stls/309_switch_plate_24.6_D2RV.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=24.6 -D SWITCH_ROTATION=-1.5 -o $@ Open309.scad

stls/309_switch_plate_24.6.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=24.6 -o $@ Open309.scad

stls/309_switch_plate_24.5_D2RV.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=24.5 -D SWITCH_ROTATION=-1.5 -o $@ Open309.scad

stls/309_switch_plate_24.5.stl: stls/.directory_marker Open309.scad
	openscad -D PART=3 -D SWITCH_SPACING_AWAY=24.5 -o $@ Open309.scad

stls/Open309_STLs.zip: stls/.directory_marker ${OUTPUTS}
	zip -FS -j $@ ${OUTPUTS}
