translate([0,0,12]){
	difference(){
		scale([.25, .25, 20]){
			surface(file = "/Users/jsp265/Desktop/wp_myst1.dat", center=true, convexity = 5); 
		}
		translate([0,0,-21]){
			cube([150,150,20], center=true);
		}
	}
}