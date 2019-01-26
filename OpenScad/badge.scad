module CI() {
    color("DarkGreen") cube([36,25,1.7],center=true);
    color("DarkGreen") translate([-2.6/2,0,0]) cube([38.6,6.8,1.7],center=true);
    color("Silver") translate([-8,0,4.4/2+1.7/2]) cube([15.3,21.3,4.4],center=true);
    color("DimGray") translate([8,0,5.0/2+1.7/2]) cube([6,6,5],center=true);
}

module baleine() {
    intersection() {
        translate([0,0,5]) scale([0.15,0.15,1]) scale([2,2,1]) // minkowski() {
            surface(file="contour_2.png",center=true,invert=true);
//          sphere(r=0.5,center=true,$fn=8);
//        }
        translate([0,0,0]) cube([100,80,1.5],center=true);
    }
}

baleine();

translate([14.5,-12,-6]) rotate([0,0,90]) {
//    CI();
    translate([-1.3+2.5,0,2.2]) difference() {
// Bloc externe
        cube([38.6+1-5,25+4,6.1+2],center=true);
// Bloc interne
        translate([2,0,0])  cube([38.6+2-5,25+1,6.1],center=true);
// Ouverture supérieure
       translate([3,0,-5])  cube([38.6+2-5,25-2,6.1],center=true);
    }
}





