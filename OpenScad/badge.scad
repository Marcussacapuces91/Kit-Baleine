module CI() {
    color("DarkGreen") cube([36,25,1.7],center=true);
    color("DarkGreen") translate([-2.6/2,0,0]) cube([38.6,6.8,1.7],center=true);
    color("Silver") translate([-8,0,4.4/2+1.7/2]) cube([15.3,21.3,4.4],center=true);
    color("DimGray") translate([8,0,5.0/2+1.7/2]) cube([6,6,5],center=true);
}

module baleine() {
    intersection() {
// Image baleine
        translate([0,0,5]) scale([0.15,0.15,1]) scale([2,2,1]) surface(file="contour_2.png",center=true,invert=true);
// Tranche de 1.5 mm d'épaisseur
        translate([0,0,0]) cube([100,80,1.5],center=true);
    }
// Support    
    translate([0,-30,0]) hull() {
        cube([50,2.5,1],center=true);
        translate([0,-5.4,-10]) rotate([90,0,90]) cylinder(d=1,h=50,center=true,$fn=8);
    }
}

baleine();

translate([14.5,-12,-6]) rotate([0,0,90]) {
//    translate([3.5,0,0]) CI();
    translate([-1.3+2.5,0,2.2-0.25]) difference() {
// Bloc externe
        cube([38.6+1-5,25+3,6.1+2.5],center=true);
// Bloc interne
        translate([2,0,0]) cube([38.6+2-5,25+1,6.1+0.5],center=true);
// Ouverture supérieure
       translate([2,0,-4.5])  cube([38.6+2-5,25-2,4],center=true);
// Fente arrière
       translate([-16.5,0,-4])  cube([5,7.5,6.1],center=true);
    }
}





