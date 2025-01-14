SPACINGS = [
	25.2,
	25.1,
	25.0,
	24.9,
	24.8,
	24.7,
	24.6,
	24.5,
]

COLLAR_SHAPES = {
	"circle":0,
	"light_squircle":1.5,
	"squircle":1.8,
	"heavy_squircle":2.1,
	"square":4.0,
}

COLLAR_RIDGES = {
	"flat": "-D COLLAR_RIDGES=false",
	"ridges": "-D COLLAR_RIDGES=true",
}

COLLAR_THROWS = [
	14.5,
	15.0,
	15.5,
	16.0
]

with open("Makefile", "w") as f:
	f.write("# Generated from generate_makefile.py")

	f.write("\nOUTPUTS = \\")
	f.write("\n\tstls/309_body.stl\\")

	for shape in COLLAR_SHAPES.keys():
		for throw in COLLAR_THROWS:
			for ridge in COLLAR_RIDGES.keys():
				f.write(f"\n\tstls/309_collar_{throw}_{shape}_{ridge}.stl\\")

	for spacing in SPACINGS:
		f.write(f"\n\tstls/309_switch_plate_{spacing}_D2RV.stl\\")
		f.write(f"\n\tstls/309_switch_plate_{spacing}.stl\\")

	f.write("\n\n")

	f.write("\nall: ${OUTPUTS} stls/.directory_marker stls/Open309_STLs.zip")

	f.write("\n\nstls/.directory_marker:")
	f.write("\n\tmkdir -p ${dir $@}")
	f.write("\n\ttouch $@")

	f.write("\n\nstls/309_body.stl: stls/.directory_marker Open309.scad")
	f.write("\n\topenscad -D PART=2 -o $@ Open309.scad")

	for shape, squircleness in COLLAR_SHAPES.items():
		for throw in COLLAR_THROWS:
			for ridge, ridge_value in COLLAR_RIDGES.items():
				f.write(f"\n\nstls/309_collar_{throw}_{shape}_{ridge}.stl: stls/.directory_marker Open309.scad")
				f.write(f"\n\topenscad -D PART=1 -D SQUIRCLENESS={squircleness} -D STICK_THROW_DEGREES={throw} {ridge_value} -o $@ Open309.scad")

	for spacing in SPACINGS:
		f.write(f"\n\nstls/309_switch_plate_{spacing}_D2RV.stl: stls/.directory_marker Open309.scad")
		f.write(f"\n\topenscad -D PART=3 -D SWITCH_SPACING_AWAY={spacing} -D SWITCH_ROTATION=-1.5 -o $@ Open309.scad")

		f.write(f"\n\nstls/309_switch_plate_{spacing}.stl: stls/.directory_marker Open309.scad")
		f.write(f"\n\topenscad -D PART=3 -D SWITCH_SPACING_AWAY={spacing} -o $@ Open309.scad")

	f.write("\n\nstls/Open309_STLs.zip: stls/.directory_marker ${OUTPUTS}")
	f.write("\n\tzip -FS -j $@ ${OUTPUTS}")
	f.write("\n")