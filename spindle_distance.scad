$fn=60;
d = 58;
h = 70;

module spindle_distance(d,h)
{
    r=d/2;
    
    translate([0,0,10])
        difference()
        {
            union()
            {
                cylinder(h=h/2,r1=r,r2=r-1);
                
                difference()
                {
                    union()
                    {
                        cylinder(h=h,r1=r/2,r2=r/2-1);
                    }
                    
                    translate([-d/2,-1,0])
                        cube([d,d,h]);
                }
                translate([0,0,-5])
                    cylinder(h=5,r1=r+10,r2=r);

                translate([0,0,-10])
                    cylinder(h=5,r=r+10);
            }

            difference()
            {
                cylinder(h=h/2,r=d/4);
                    
                translate([-d/2,-d-1,0])
                    cube([d,d,h]);
            }
            translate([0,0,-10])
                cylinder(r=5,h=80);
        }
}

spindle_distance(d,h);

//translate([0,0,75])
//rotate([0,180,180])
//spindle();

