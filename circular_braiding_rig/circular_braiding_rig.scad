$fn = ($preview)? 20:300;

outer_radius = 5;
inner_radius = 1;
height = 2;

lip_width = 1;
trough_width = 1;
trough_height = 1;

slit_count = 24;
slit_width = 0.25;
slit_depth = 1.5;

difference()
{
	rotate_extrude()
	{
		polygon([[inner_radius, 0],
		         [inner_radius, height],
		         [outer_radius, height],
		         [outer_radius, 0],
		         [inner_radius + lip_width + trough_width, 0],
		         [inner_radius + lip_width + trough_width, trough_height],
				 [inner_radius + lip_width, trough_height],
		         [inner_radius + lip_width, 0]]
		);
	}

	for(i = [0: 360/slit_count: 360])
		rotate([0, 0, i]) translate([-slit_width/2, 0, 0])
			cube([slit_width, inner_radius + slit_depth, height]);
}