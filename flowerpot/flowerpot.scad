// flowerpot

// some random values

corners_start = floor(rands(3,10,1)[0]);
corners_end = floor(rands(3,10,1)[0]);
radius_start = floor(rands(10,15,1)[0]);
radius_end = floor(rands(10,15,1)[0]);
hight = floor(rands(15,20,1)[0]);

echo("id ", corners_start, corners_end, radius_start, radius_end, hight);

color("#ffffff")
difference(){
    hull(){
        cylinder(r = radius_start, h=0.1, $fn = corners_start);
        translate([0,0,hight])
            cylinder(r = radius_end, h=0.1, $fn = corners_end);
    };
    translate([0,0,1])
        hull(){
            cylinder(r = radius_start-2, h=0.1, $fn = corners_start);
            translate([0,0,hight-1])
                cylinder(r = radius_end-2, h=0.1, $fn = corners_end);
            translate([0,0,hight-1.5])
                cylinder(r = radius_end-2, h=1, $fn = corners_end);
        };
};

color("#ff0000")
difference(){
    translate([0,0,1])
        hull(){
            cylinder(r = radius_start-2, h=0.1, $fn = corners_start);
            translate([0,0,hight-1])
                cylinder(r = radius_end-2, h=0.1, $fn = corners_end);
            translate([0,0,hight-1.5])
                cylinder(r = radius_end-2, h=1, $fn = corners_end);
        };
   translate([0,0,hight-2]) cylinder(r = radius_end, h=3, $fn = corners_end);
};
