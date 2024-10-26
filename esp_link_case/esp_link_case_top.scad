$fn = 20;

ceiling = 2;
width = 25;
length = 44;
lip = 1.9;
height = 15;
wall = 4;
hole_d = 2.5;
hole_h = 8;
hole_off = 2.5;

difference() {
    cube([width, length, height], false);
    translate([wall, wall, ceiling])
        cube([width - 2 * wall, length - 2 * wall, height], false);
    translate([lip, lip, height - lip])
        cube([width - 2 * lip, length - 2 * lip, lip], false);
    // vents
    for (i = [0 : 3]) {
        translate([wall + 2, (length / 2 - 8) + i * 5, 0])
            cube([width - 2 * wall - 4, 2, 3], false);
    }
    // holes
    translate([hole_off, hole_off, height - hole_h])
        cylinder(hole_h, hole_d / 2, hole_d / 2, false);
    translate([width - hole_off, hole_off, height - hole_h])
        cylinder(hole_h, hole_d / 2, hole_d / 2, false);
    translate([hole_off, length - hole_off, height - hole_h])
        cylinder(hole_h, hole_d / 2, hole_d / 2, false);
    translate([width - hole_off, length - hole_off, height - hole_h])
        cylinder(hole_h, hole_d / 2, hole_d / 2, false);
}
