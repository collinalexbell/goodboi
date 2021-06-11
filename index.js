const fs = require("fs");
const { cube, sphere, cylinder, hull, difference, union, translate, mirror_z, mirror_x, mirror_y } = require("scad-js");

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
        slot(length),
        cube([length+1, plexi_hole_width, 7]).translate([0,0,5.5]).rotate([-90, 0 , 0])
    );
}

function double_slot_full(length) {
    return difference(
        slot(length),
        cube([length+10, plexi_hole_width, 7]).translate([-5,0,5.5]).rotate([-90, 0 , 0])
    );
}

const corner2 = (x, y) => union(
    slot(x-plexi_hole_width/2).translate([10+plexi_hole_width/4,0,0]),
    slot(y-plexi_hole_width/2).rotate([0,0,90]).translate([0, 10+plexi_hole_width/4, 0]),
    cube([slot_dims.width/2+plexi_hole_width/2+0.1, slot_dims.width/2+plexi_hole_width/2+0.1, slot_dims.depth]).translate([-plexi_hole_width+0.05, - plexi_hole_width+0.05, 0])
);

const corner2_internal = (x, y) => union(
    double_slot_full(x-plexi_hole_width/2).translate([10+plexi_hole_width/4,0,0]).rotate([-90,0,0]),
    slot(y-plexi_hole_width/2).rotate([0,0,90]).translate([0, 10+plexi_hole_width/4, 0]).rotate([0,90,0]),
    cube([slot_dims.width/2+plexi_hole_width/2+0.1, slot_dims.width/2-plexi_hole_width/2+0.1, slot_dims.depth]).translate([-plexi_hole_width+0.05, -4.45, 0])
);



const corner3 = (x, y, z) => union(
    double_slot(x-plexi_hole_width/2).translate([x/2+plexi_hole_width/4,0,0]),
    double_slot(y-plexi_hole_width/2).rotate([90,0,90]).translate([0, y/2+plexi_hole_width/4, 0]),
    cube([slot_dims.width/2+plexi_hole_width/2+0.1, slot_dims.width/2+plexi_hole_width/2+0.1, slot_dims.depth]).translate([-plexi_hole_width+0.05, - plexi_hole_width+0.05, 0]),
    double_slot(z-plexi_hole_width/2).rotate([0,90,0]).translate([0,0,z/2 + plexi_hole_width/4])
);

const bottom = {
    width: 300,
    depth: 400,
    render: function() {
        return union(

            corner3(
                this.depth/2,
                this.width/2,
                50
            ).rotate([0,0,180]).translate([this.depth/2, this.width/2, 0]),

            corner3(
                this.width/2,
                this.depth/2,
                120
            ).rotate([0,0,-90]).translate([-this.depth/2, this.width/2, 0]),

            corner3(
                this.width/2,
                this.depth/2,
                50
            ).rotate([0,0,90]).translate([this.depth/2, -this.width/2, 0]),

            corner3(
                this.depth/2,
                this.width/2,
                120
            ).rotate([0,0,0]).translate([-this.depth/2, -this.width/2, 0])
        );
    }
};

const slant_corner =  union(
    double_slot(12),
    corner2_internal(20,20,20).rotate([0,130,0]).translate([-5, 0,-3])
);


const control_surface = {
    width: 300,
    depth: 100,
    render: function() {
        return union(
            corner3(
                this.width/2,
                this.depth,
                20
            ).translate([-this.width/2, -this.depth, 0]),
            corner3(
                this.depth,
                this.width/2,
                20
            ).rotate([0,0,90]).translate([this.width/2, -this.depth, 0]),
            slant_corner.rotate([0,0,-90]).translate([-this.width/2, 6, 0]),
            slant_corner.rotate([0,0,-90]).mirror_x().translate([this.width/2, 6, 0]),
        ).mirror_z();
    }
};


const screen_frame = union(
    slot(200).rotate([180,50,0]).translate([bottom.depth/2 - control_surface.depth - (1/2 * 200 + 20) * Math.cos(50 * Math.PI/180)-slot_dims.depth/2-3.5, control_surface.width/2, 70 + (1/2 * 200 + 20) * Math.sin(50 * Math.PI/180)+3]),
    slot(200).rotate([180,50,0]).translate([bottom.depth/2 - control_surface.depth - (1/2 * 200 + 20) * Math.cos(50 * Math.PI/180)-slot_dims.depth/2-3.5, control_surface.width/2, 70 + (1/2 * 200 + 20) * Math.sin(50 * Math.PI/180)+3]).mirror_y()
);

const full_printable = union(
    bottom.render(),
    control_surface.render().rotate([0,0,90]).translate([bottom.depth/2-100,0,70]),
    screen_frame
)

fs.writeFileSync(
    'scad/slant_corner.scad',
    slant_corner.serialize()
);

fs.writeFileSync(
    'scad/bottom.scad',
    bottom.render().serialize({ $fn: 20 })
);

fs.writeFileSync(
    'scad/control_surface.scad',
    control_surface.render().serialize({ $fn: 20 })
);

fs.writeFileSync(
    'scad/full_printable.scad',
    full_printable.serialize({ $fn: 20 })
);

