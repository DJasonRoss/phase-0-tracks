flat_file = {
	drawer_1: {
		mondo: {
			tyler_stout: 'The Thing',
			martin_ansin: 'Bride Of Frankenstein',
			jay_ryan: 'Ferris Buellers Day Off' 
			},
		scott_campbell: {
			great_showdowns01: 'Sling Blade',
			great_showdowns02: 'Fargo'
		 },
		 obey: {
		 	obey_01: 'They Live',
		 	obey_02: 'Andre Face'
		 },
	},
	drawer_2: {
		banksy: 'Pulp Fiction',
		invader: 'Aladdin Sane',
		geddes: 'Adrift'
		},
	drawer_3: [
		"Smalls",
		"Stickers",
		"handbills"
	]
}


p flat_file
p ""
p flat_file[:mondo][:jay_ryan]
p ""
p flat_file[obey][2]