$fn=60;

module spindle_distance()
{
    translate([0,0,10])
    difference()
    {
        union()
        {
            difference()
            {
                union()
                {
                    cylinder(h=30,r=30);
                    cylinder(h=54,r=19);
                }
                
                translate([-30,-1,0])
                    cube([60,60,60]);
            }

            difference()
            {
                cylinder(h=20,r=30);
                cylinder(h=60,r=20);
                
                translate([-30,-62,0])
                    cube([60,60,60]);
            }

            translate([0,0,-5])
                cylinder(h=5,r1=40,r2=30);

            translate([0,0,-10])
                cylinder(h=5,r=40);
        }
        translate([0,0,-10])
            cylinder(r=5,h=80);
    }
}

spindle_distance();

//translate([0,0,75])
//rotate([0,180,180])
//spindle();

