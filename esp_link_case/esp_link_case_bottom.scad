$fn = 20;

floor = 2;
width = 25;
length = 44;
lip = 2.1;
height = 10;
wall = 4;
hole_d = 3.2;
hole_h = height + lip;
hole_off = 2.5;
usb = 13;

difference() {
    union() {
        cube([width, length, height], false);
        translate([lip, lip, height])
            cube([width - 2 * lip , length - 2 * lip, lip], false);
    }
    translate([width / 2 - 5, wall + 4, floor])
        cube([10, length - 2 * wall - 4, height], false);
    translate([wall, wall, 3 + 2])
        cube([width - 2 * wall, length - 2 * wall, height], false);
    // USB
    translate([width / 2 - usb / 2, 0, 3 + 2])
        cube([usb, wall, 5 + lip], false);
    // reset
    translate([width - wall, 12, 3 + 2])
        cube([2, 8, height], false);
    // pins
    translate([wall, wall, floor])
        cube([3.5, 5, height], false);
    translate([wall + 3.5 + 10, wall, floor])
        cube([3.5, 16, height], false);
    // holes
    translate([hole_off, hole_off, 0])
        cylinder(hole_h, hole_d / 2, hole_d / 2, false);
    translate([width - hole_off, hole_off, 0])
        cylinder(hole_h, hole_d / 2, hole_d / 2, false);
    translate([hole_off, length - hole_off, 0])
        cylinder(hole_h, hole_d / 2, hole_d / 2, false);
    translate([width - hole_off, length - hole_off, 0])
        cylinder(hole_h, hole_d / 2, hole_d / 2, false);
}
