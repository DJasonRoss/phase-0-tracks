

var colors = ["Brown", "White", "Black", "Tan"]

var names = ["Chuck", "Randy", "Mac", "Filo"]

var horses = {};

for (i = 0; i < names.length; i++) {
	horses[names[i]] = colors[i];
}

console.log(horses);




function Carmaker(make, model, color) {

	this.make = make;
	this.model = model;
	this.color = color;
	console.log("Assembly complete.");
	this.honk = function(){ console.log ("HONK HONK!")};
}

theford = new Carmaker("Ford", "Mustang", "Black");
theford.honk();

thebmw = new Carmaker("BMW", "M5", "Blue");
thebmw.honk()



