$fn = 10;

width = 25;
length = 45;
lip = 2;
height = 15;
wall = 5;
hole_d = 2.5;
hole_h = 8;

difference() {
    union() {
        cube([width, length, height], false);
    }
    translate([wall, wall, 3])
        cube([width - 2 * wall, length - 2 * wall, height], false);
    translate([lip, lip, height - lip])
        cube([width - 2 * lip, length - 2 * lip, lip], false);
    // vents
    for (i = [0 : 3]) {
        translate([wall + 2, (length / 2 - 8) + i * 5, 0])
            cube([width - 2 * wall - 4, 2, 3], false);
    }
    // holes
    translate([3, 3, height - hole_h])
        cylinder(hole_h, hole_d / 2, hole_d / 2, false);
    translate([width - 3, 3, height - hole_h])
        cylinder(hole_h, hole_d / 2, hole_d / 2, false);
    translate([3, length - 3, height - hole_h])
        cylinder(hole_h, hole_d / 2, hole_d / 2, false);
    translate([width - 3, length - 3, height - hole_h])
        cylinder(hole_h, hole_d / 2, hole_d / 2, false);
}
