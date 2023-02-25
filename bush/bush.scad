difference(){
color("#006600")translate([0,0,-2]) hull()
for([0:15])
    rotate([rands(5,35,1)[0],0,rands(0,360,1)[0]]){
        hight = rands(8,16,1)[0];
        translate([0,0,hight/2])
            cube([0.1,0.1,hight], center = true);
    };
    translate([0,0,-10])cylinder(h = 10, r = 10, center = false);
    
}