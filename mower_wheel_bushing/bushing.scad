$fn = ($preview)? 20:300;

//all dimensions in inches

//lower bit
difference()
{
	union()
	{
		cylinder(h = 0.375, d = 1.109375);
		cylinder(h = 0.0625, d = 1.21875); //lip
	}
	cylinder(h = 0.375, d = 0.96875);
}

//central cylinder
difference()
{
	union()
	{
		cylinder(h = 0.6875, d = 0.6875);
		translate([0, 0, 0.0625]) cylinder(h = 0.125, d = 0.96875);
	}
	cylinder(h = 0.6875, d = 0.515625);
}