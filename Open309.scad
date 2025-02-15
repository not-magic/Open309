
SWITCH_SPACING_AWAY = 24.3; // .1
SWITCH_SPACING_SIDEWAYS = 7.0; // .1
SWITCH_ROTATION = -1.4; // .1
SWITCH_GUARD_DISTANCE = 14.5; // .1

EXTRA_SWITCH_SPACING_SIDEWAYS_UP = 0.0; // .1
EXTRA_SWITCH_SPACING_SIDEWAYS_DOWN = 0.0; // .1
EXTRA_SWITCH_SPACING_SIDEWAYS_LEFT_RIGHT = 0.0; // .1

EXTRA_SWITCH_SPACING_AWAY_UP = 0.0; // .1
EXTRA_SWITCH_SPACING_AWAY_DOWN = 0.0; // .1
EXTRA_SWITCH_SPACING_AWAY_LEFT_RIGHT = 0.0; // .1

PART = 0; // [0:Everything, 1:Collar, 2:Body, 3:Switch Plate, 4:2D Switch Plate]

STICK_THROW_DEGREES=15; // .1
SHAFT_DIAMETER = 9; // .1
SQUIRCLENESS = 1.8; // .1

// if true, the collar has ridges in it to potentially improve printablility
COLLAR_RIDGES = true;

module test() {
	children();
}

PART_EVERYTHING = 0;
PART_COLLAR = 1;
PART_BODY = 2;
PART_SWITCH_PLATE = 3;
PART_SWITCH_PLATE2D = 4;

$fn = $preview ? 0 : 66;

HEX_RADIUS = 3.35;
BOLT_HOLE_RADIUS = 1.6;

BODY_HOLE_DIAMETER = 4.4;

BODY_SIZE = 65;

M4_NUT_D = 8.4;

BODY_HEIGHT = 18;

STICK_ROTATION_OFFSET = 6.5/2+2.5;

/*
DEFAULT_OUTER_HOLE_SPACING = [-29.2, 14.5, 0];
SWITCH_HOLE_DIM = [22.2, 10.3, 0];

OUTER_HOLE_SPACING = [-29.2, SWITCH_SPACING_AWAY-SWITCH_HOLE_DIM[1], 0];
*/


SWITCH_HOLE_DIM = [-22.2, -10.3, 0];
OUTER_HOLE_SPACING = [
	[-(SWITCH_SPACING_SIDEWAYS + EXTRA_SWITCH_SPACING_SIDEWAYS_UP), SWITCH_SPACING_AWAY + EXTRA_SWITCH_SPACING_AWAY_UP, 0],
	[-(SWITCH_SPACING_SIDEWAYS + EXTRA_SWITCH_SPACING_SIDEWAYS_LEFT_RIGHT), SWITCH_SPACING_AWAY + EXTRA_SWITCH_SPACING_AWAY_LEFT_RIGHT, 0],
	[-(SWITCH_SPACING_SIDEWAYS + EXTRA_SWITCH_SPACING_SIDEWAYS_DOWN), SWITCH_SPACING_AWAY + EXTRA_SWITCH_SPACING_AWAY_DOWN, 0],
	[-(SWITCH_SPACING_SIDEWAYS + EXTRA_SWITCH_SPACING_SIDEWAYS_LEFT_RIGHT), SWITCH_SPACING_AWAY + EXTRA_SWITCH_SPACING_AWAY_LEFT_RIGHT, 0],
];

BODY_BOLT_SPACING = 45/2;

module outer_hole_transform()
{
	for (i = [0:3])
	{
		rotate([0,0,90*i])
		{
			translate(OUTER_HOLE_SPACING[i]) rotate(SWITCH_ROTATION) children();
		}
	}
}

module inner_hole_transform()
{
	outer_hole_transform() translate(SWITCH_HOLE_DIM) children();
}

module body_2d()
{
	translate([-BODY_SIZE/2, -BODY_SIZE/2]) hull() {
		body_r = 2;
		translate([body_r, body_r]) circle(r=body_r);
		translate([BODY_SIZE-body_r, body_r]) circle(r=body_r);
		translate([body_r, BODY_SIZE-body_r]) circle(r=body_r);
		translate([BODY_SIZE-body_r, BODY_SIZE-body_r]) circle(r=body_r);
	}	
}

module main(part)
{
	difference()
	{
		union()
		{
			difference()
			{
				union()
				{
					linear_extrude(BODY_HEIGHT) body_2d();
					
					//translate([-(25)-6, 25-6, -6]) cube([12,6,7]);
					//translate([-(25)-6, 25-6*3, -6]) cube([12,6,7]);
										
					if (part == PART_SWITCH_PLATE)
					{
						accuracy = 0.1;						
						tab_thickness = 4.5;

						inner_hole_transform() translate([0,0,-6] + [-2.8, -2.8 -tab_thickness - accuracy,0]) {
							cube([7.5, tab_thickness, 11]);
						}
						
						outer_hole_transform() translate([0,0,-6] + [-10, 2.8 + accuracy, 0]) 
						{
							cube([12.8, tab_thickness, 11]);
						}
					}
				}
				
				translate([0,0,BODY_HEIGHT-9]) cylinder(d=51.2, h=10);
				translate([0,0,BODY_HEIGHT-13]) cylinder(d=37, h=10);
				shaft_travel();
				//m4_bolts();
			}

			for (i = [0:3])
			{
				rotate([0,0,90*i])
				{
					difference()
					{
						hull()
						{
							translate([(51-7)/2, 0, 0]) cylinder(h=BODY_HEIGHT-2.5, d=7);
							translate([51/2, 0, 0]) cylinder(h=BODY_HEIGHT-2.5, d=7);
						}
					}
				}
				
			}
			
			if (part == PART_SWITCH_PLATE)
			{
				outer_hole_transform() rotate([0,0,90])
				{
					translate([0,0,-0.5]) cylinder(h=6, r=HEX_RADIUS+2, $fn=6);
				}			
				
				inner_hole_transform()
				{
					translate([0,0,-0.5]) cylinder(h=6, r=HEX_RADIUS+2, $fn=6);				
				}
			}
		}
		
		body_bolt_holes();
		translate([0,0,BODY_HEIGHT]) part_b_slots();
		
		switch_bolt_holes(part);
		
		
		//slots();
		if (part == PART_SWITCH_PLATE)
		{
			translate([-SWITCH_SPACING_AWAY-2,-SWITCH_GUARD_DISTANCE+2,-1]) linear_extrude(2) mirror([0,1]) text(str("A:", SWITCH_SPACING_AWAY), 5);
			translate([SWITCH_GUARD_DISTANCE+9,-SWITCH_SPACING_AWAY+11,-1]) linear_extrude(2) mirror([0,1]) text(str("S:", SWITCH_SPACING_SIDEWAYS), 5, halign="right");
			translate([SWITCH_SPACING_AWAY+1, SWITCH_GUARD_DISTANCE+4,-1]) linear_extrude(2) mirror([0,1]) text(str("R:", SWITCH_ROTATION, "°"), 5, halign="right");
			
			switch_guard();
			
		}

	}
	
	
	/*
	for (i = [0:3])
	{
		translate([40, -20 + 10*i, BODY_HEIGHT-13])
		{
			difference()
			{
				cylinder(h=2, r=HEX_RADIUS-0.2, $fn=6);
				cylinder(h=20, center=true, r=BOLT_HOLE_RADIUS);
			}
		}
	}*/
}

module switch_bolt_holes_2d(scale=1.0)
{
	outer_hole_transform() circle(r=BOLT_HOLE_RADIUS*scale);
	inner_hole_transform() circle(r=BOLT_HOLE_RADIUS*scale);
}

module switch_bolt_holes(part)
{
	if (part == PART_SWITCH_PLATE)
	{
		translate([0,0,-10]) linear_extrude(17) switch_bolt_holes_2d();
		
		nut_height = (5.5+3);
		
		outer_hole_transform() rotate([0,0,90])
		{
			translate([0,0,7-3]) cylinder(h=3, r=HEX_RADIUS, center=true, $fn=6);
		}
		
		inner_hole_transform()
		{
			translate([0,0,7-3]) cylinder(h=3, r=HEX_RADIUS, center=true, $fn=6);
		}
	}
}

module switch_guard_2d()
{
	radius = 6;
	guard_distance = SWITCH_SPACING_AWAY-SWITCH_GUARD_DISTANCE;
	
	hull()
	{
		for (i = [0:3])
		{
			rotate([0,0,i*90]) translate([guard_distance-radius, -guard_distance+radius, -0.01]) circle(radius);
		}
	}
}

module switch_guard()
{
	radius = 7;
	guard_distance = SWITCH_SPACING_AWAY-SWITCH_GUARD_DISTANCE;
	
	hull()
	{
		for (i = [0:3])
		{
			rotate([0,0,i*90]) translate([guard_distance-radius, -guard_distance+radius, -0.01]) cylinder(h=10, r1=radius, r2=radius-1);
		}
	}
}

//switch_guard();

//switch_bolt_holes("B");

module shaft_travel()
{
	//cube([17.5,17.5,100],center=true);
	
	translate([0,0,BODY_HEIGHT-STICK_ROTATION_OFFSET]) 
	{
		intersection()
		{
			union()
			{
				subdivisions = 64;
								
				hull() for (i= [0:subdivisions]) 
				{
					increment = 360/subdivisions;
					rotation = increment*i;
					slant = (1-abs((rotation % 90)-45)/45) * SQUIRCLENESS;
					
					rotate([0,STICK_THROW_DEGREES/2+slant,rotation]) cylinder(d=SHAFT_DIAMETER, h=BODY_HEIGHT*3);
				}		
			}
			
			cube(100, true);
		}		
	}
	
}

module body_bolt_holes_2d(scale=1.0)
{
	for (i = [0:3])
	{
		rotate(90*i)
		{
			translate([BODY_BOLT_SPACING, 0])
				circle(d=BODY_HOLE_DIAMETER*scale);
		}
	}
			
}

module body_bolt_holes(hex=true, chamfer=false)
{
	translate([0,0,-50]) linear_extrude(100) body_bolt_holes_2d();
	
	for (i = [0:3])
	{
		rotate([0,0,90*i])
		{
			translate([BODY_BOLT_SPACING, 0, 0]) {
				
				if (hex)
				{
					cylinder(h=6, d=M4_NUT_D, center=true, $fn=6);
				}
				
				if (chamfer)
				{
					cylinder(2.9, r2=4, r1=BODY_HOLE_DIAMETER/2);
					//translate([0,0,2.39]) cylinder(h=2.4, r=4);
				}
			}
			
		}
	}	
}

module part_b_slots(extra=0.2)
{
	for (i = [0:3])
	{
		rotate([0,0,90*i])
		{
			
			translate([(65-3.3)/2-2, 0, -2]) hull()
			{
				translate([0,17,0]) cylinder(h=2.01, d=3.1+extra);
				translate([0,-17,0]) cylinder(h=2.01, d=3.1+extra);
			}
		}
	}
}


module divider()
{
	translate([-100, -100, 5.01]) cube([200,200,100]);
}

if (PART == PART_SWITCH_PLATE || PART == PART_EVERYTHING)
{
	color("red") union() difference()
	{
		main(PART_SWITCH_PLATE);
		divider();
	}
}

if (PART == PART_BODY || PART == PART_EVERYTHING)
{
	intersection()
	{
		divider();
		main(PART_BODY);
	}
}

if (PART == PART_COLLAR || PART == PART_EVERYTHING)
{
	GATE_HEIGHT = 7;
	COLLAR_HEIGHT = 7;

	
	color("lightblue") difference()
	{
		translate([0,0,BODY_HEIGHT])
		{
			difference()
			{
				union()
				{
					translate([-BODY_SIZE/2, -BODY_SIZE/2]) hull() {
						body_r = 2;
						translate([body_r, body_r, 0]) cylinder(r=body_r, h=GATE_HEIGHT);
						translate([BODY_SIZE-body_r, body_r, 0]) cylinder(r=body_r, h=GATE_HEIGHT);
						translate([body_r, BODY_SIZE-body_r, 0]) cylinder(r=body_r, h=GATE_HEIGHT);
						translate([BODY_SIZE-body_r, BODY_SIZE-body_r, 0]) cylinder(r=body_r, h=GATE_HEIGHT);
					}
					
					cylinder(d=34.5, h=GATE_HEIGHT+COLLAR_HEIGHT);
					
					translate([0,0,-2.5]) 
					difference()
					{
						cylinder(d=50.5, h=3);
						
						for (i = [0:3])
						{
							rotate([0,0,90*i]) hull()
							{
								translate([BODY_BOLT_SPACING,0,0]) cylinder(h=100, d=BODY_HOLE_DIAMETER, center=true);
								translate([40,0,0]) cylinder(h=100, r=BODY_HOLE_DIAMETER, center=true);
							}
						}
					}
					
					part_b_slots(0);
					
				}
				translate([0,0,GATE_HEIGHT-2.8]) body_bolt_holes(false, true);
				
				translate([0,0,-3]) cylinder(d=36, h=6);
				
				translate([28, -25, -1]) mirror([-1,0]) linear_extrude(2) text(str(SQUIRCLENESS), 5);
				translate([28, 20, -1]) mirror([-1,0]) linear_extrude(2) text(str(STICK_THROW_DEGREES, "°"), 5);
			}
		}

		if (COLLAR_RIDGES)
		{
			difference()
			{
				intersection()
				{
					union() hull()
					{
						for(i = [0:3])
						{
							rotate([0,0,90*i]) translate([BODY_SIZE/2-6, BODY_SIZE/2-6, 0]) cylinder(r=4, h=100);
						}
					}
					
					union()
					{
						for (i = [0:3])
						{
							translate([0,0,BODY_HEIGHT+GATE_HEIGHT]) rotate_extrude() translate([21+i*6,0]) scale([1,1.5]) circle(2.2, $fn=4);
						}
					}
				}

				for (i = [0:3])
				{
					rotate([0,0,90*i]) //hull()
					{
						translate([BODY_BOLT_SPACING,0,0]) cylinder(h=100, d=BODY_HOLE_DIAMETER+10, center=true);
					}
				}
			}
		}
		
		shaft_travel();
	}	
}

if (PART == PART_SWITCH_PLATE2D)
{
	difference()
	{
		union()
		{
			body_2d();
			
			outer_hole_transform() circle(7);
			inner_hole_transform() circle(7);
		}

		difference()
		{
			body_bolt_holes_2d(1.0);
			outer_hole_transform() circle(7);
		}

		switch_bolt_holes_2d(0.5);
		switch_guard_2d();
	}
}

module slots() {
translate([0,0,-1])
	linear_extrude(7) {
		
		square_size = 39;
		
		square(square_size, center=true);
		
		for (i = [0:3]) {
			rotate(90*i) {
				translate([-square_size/2, -100]) square([6, 100]);
			}
		}
	}
}

//cube([18,18.5,100], center=true);
//shaft_travel();
