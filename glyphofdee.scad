// Outer circle
difference(){
	linear_extrude(height = 1, center = true, convexity = 10, twist = -2, slices = 20, scale = 1.0) { circle(10); }
	linear_extrude(height = 2, center = true, convexity = 10, twist = -2, slices = 20, scale = 1.0) { circle(8); }
}

// Inner circle
linear_extrude(height = 1, center = true, convexity = 10, twist = -2, slices = 20, scale = 1.0) { circle(2); }

// Beams
rotate([90,0,0]){ cube([1, 1, 20], center=true); }
translate([0,13,0]){
	rotate([90,0,90]){ cube([1, 1, 20], center=true); }
}
translate([0,10,0]){
	rotate([90,0,0]){ cube([1, 1, 30], center=true);}
}

// Arc definition
module arc() {
	rotate([0,0,180]){
		difference(){
			difference(){
				linear_extrude(height = 1, center = true, convexity = 10, twist = -2, slices = 20, scale = 1.0) { circle(10); }
				linear_extrude(height = 2, center = true, convexity = 10, twist = -2, slices = 20, scale = 1.0) { circle(8); }
		}
		translate([-15,0,0]){
		linear_extrude(height = 3, center = true, convexity = 10, twist = -2, slices = 20, scale = 1.0) { square([30,10]); }
			}
		}
	}
}

// Top arc
translate([0,-14,0]){
	arc();
}

// Bottom arcs
translate([5,25,0]){
	scale([0.5, 0.5, 1]){
		rotate([0,0,180]){
			arc();
		}	
	}
}
translate([-5,25,0]){
	scale([0.5, 0.5, 1]){
		rotate([0,0,180]){
			arc();
		}	
	}
}

