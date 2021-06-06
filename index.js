const fs = require("fs");
const { cube, sphere, cylinder, hull, difference, union, translate  } = require("scad-js");

const plexi_hole_width = 3;


const slot_dims = {
    width: 15,
    depth: 15
}
function slot(length) {
    return difference(
        cube([length, slot_dims.width, slot_dims.depth]),
        cube([length+1, plexi_hole_width, 7]).translate([0,0,5.5])
    );
}

function double_slot(length) {
    return difference(
        slot(20),
        cube([length+1, plexi_hole_width, 7]).translate([0,0,5.5]).rotate([-90, 0 , 0])
    )
}

const corner2 = union(
    slot(20).translate([10+plexi_hole_width/2,0,0]),
    slot(20).rotate([0,0,90]).translate([0, 10+plexi_hole_width/2, 0]),
    cube([slot_dims.width/2+plexi_hole_width/2+0.1, slot_dims.width/2+plexi_hole_width/2+0.1, slot_dims.depth]).translate([-plexi_hole_width+0.05, - plexi_hole_width+0.05, 0])
)

const corner3 = union(
    double_slot(20).translate([10+plexi_hole_width/2,0,0]),
    double_slot(20).rotate([90,0,90]).translate([0, 10+plexi_hole_width/2, 0]),
    cube([slot_dims.width/2+plexi_hole_width/2+0.1, slot_dims.width/2+plexi_hole_width/2+0.1, slot_dims.depth]).translate([-plexi_hole_width+0.05, - plexi_hole_width+0.05, 0]),
    double_slot(20).rotate([0,90,0]).translate([0,0,20/2 + plexi_hole_width/2])
)

fs.writeFileSync(
    'scad/cube-test.scad',
    corner3.serialize({ $fn: 20 })
);
