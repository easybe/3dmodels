$fn = 10;

width = 25;
length = 45;
lip = 2;
height = 10;
wall = 5;
hole_d = 3.2;
hole_h = height + lip;

difference() {
    union() {
        cube([width, length, height], false);
        translate([lip, lip, height])
            cube([width - 2 * lip , length - 2 * lip, lip], false);
    }
    translate([wall + 2.5, wall + 4, 3])
        cube([10, 31, height], false);
    translate([wall, wall, 3 + 2])
        cube([width - 2 * wall, length - 2 * wall, height], false);
    // USB
    translate([wall + 1.5, 0, 3 + 2])
        cube([12, wall, 5 + lip], false);
    // reset
    translate([width - wall, 11, 3 + 2])
        cube([2, 5, height], false);
    // pins
    translate([wall + 2.5 + 10, wall, 3])
        cube([2.5, 13, height], false);
    translate([wall, wall, 3])
        cube([2.5, 5, height], false);
    // holes
    translate([3, 3, 0])
        cylinder(hole_h, hole_d / 2, hole_d / 2, false);
    translate([width - 3, 3, 0])
        cylinder(hole_h, hole_d / 2, hole_d / 2, false);
    translate([3, length - 3, 0])
        cylinder(hole_h, hole_d / 2, hole_d / 2, false);
    translate([width - 3, length - 3, 0])
        cylinder(hole_h, hole_d / 2, hole_d / 2, false);
}
