$fn = 100;

wheel_d = 60;
notch_depth = 2;
notch_width = 1;
wall = 1;
hole_d = 1.9;

rotate_extrude(angle = 360) {
    polygon(points=[
        [hole_d / 2, 0],
        [wheel_d / 2, 0],
        [wheel_d / 2, wall],
        [wheel_d / 2 - notch_depth, wall * 2],
        [wheel_d / 2 - notch_depth, wall * 2 + notch_width],
        [hole_d / 2, wall * 2 + notch_width]
    ]);
}
