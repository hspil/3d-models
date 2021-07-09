$fn = ($preview)? 20:300;

//American 2x4 lumber leg
top_width = 38;
top_length = 89;
chimney_height = 38;
screw_hole_dia = 3;
height = 32;
bottom_diameter = 115; //4 in diameter tuna can + a bit
wall_thickness = 2;

difference()
{
	union()
	{
		
		hull()
		{
			translate([0, 0, height]) cube([top_width + 2*wall_thickness, top_length + 2*wall_thickness, 1], center=true);
			cylinder(h = 1, d = bottom_diameter + 2*wall_thickness);
		}
		
		//chimney
		translate([0, 0, height + chimney_height/2]) cube([top_width + 2*wall_thickness, top_length + 2*wall_thickness, chimney_height], center = true);
	}
		
	
	//hole through middle
	union()
	{
		hull()
		{
			translate([0, 0, height]) cube([top_width, top_length, 1], center=true);
			cylinder(h = 1, d = bottom_diameter);
		}
		translate([0, 0, height + chimney_height/2]) cube([top_width, top_length, chimney_height], center = true);
	}
	
	//screw holes
	translate([0, 0, height + chimney_height/2]) rotate([0, 90, 0]) cylinder(h = top_width + 2*wall_thickness, d = screw_hole_dia, center = true);
}