Move.destroy_all
Pokemon.destroy_all
Bond.destroy_all

moves = Move.create([
	{ name: "Vine Whip", damage: 7, dps: 10.8, poke_type: "Grass", quick_move: true },
	{ name: "Power Whip", damage: 70, dps: 25, poke_type: "Grass", quick_move: false },
	{ name: "Solar Beam", damage: 120, dps: 25.1, poke_type: "Grass", quick_move: false },
	{ name: "Scratch", damage: 6, dps: 12, poke_type: "Normal", quick_move: true },
	{ name: "Flamethrower", damage: 55, dps: 19.4, poke_type: "Fire", quick_move: false },
	{ name: "Wing Attack", damage: 9, dps: 12, poke_type: "Flying", quick_move: true },
	{ name: "Fire Blast", damage: 100, dps: 25, poke_type: "Fire", quick_move: false },
	{ name: "Bubble", damage: 25, dps: 10.9, poke_type: "Water", quick_move: true },
	{ name: "Aqua Tail", damage: 45, dps: 19.6, poke_type: "Water", quick_move: false },
	{ name: "Water Gun", damage: 6, dps: 12, poke_type: "Water", quick_move: true },
	{ name: "Hydro Pump", damage: 90, dps: 24.3, poke_type: "Water", quick_move: false }
])

pokemons = Pokemon.create([
	{ name: "Bulbasaur", cp: 1071, description: "Bulbasaur can be seen napping in bright sunlight. There is a seed on its back. By soaking up the sun's rays, the seed grows progressively larger.", poke_type: "Grass", :moves => Move.where(:name => ['Vine Whip', 'Power Whip'])},
	{ name: "Ivysaur", cp: 1632, description: "There is a bud on this Pokémon's back. To support its weight, Ivysaur's legs and trunk grow thick and strong. If it starts spending more time lying in the sunlight, it's a sign that the bud will bloom into a large flower soon.", poke_type: "Grass", :moves => Move.where(:name => ['Vine Whip', 'Solar Beam'])},
	{ name: "Venusaur", cp: 2580, description: "There is a large flower on Venusaur's back. The flower is said to take on vivid colors if it gets plenty of nutrition and sunlight. The flower's aroma soothes the emotions of people.", poke_type: "Grass", :moves => Move.where(:name => ['Vine Whip', 'Solar Beam'])},
	{ name: "Charmander", cp: 955, description: "The flame that burns at the tip of its tail is an indication of its emotions. The flame wavers when Charmander is enjoying itself. If the Pokémon becomes enraged, the flame burns fiercely.", poke_type: "Fire", :moves => Move.where(:name => ['Scratch', 'Flamethrower'])},
	{ name: "Charmeleon", cp: 1557, description: "Charmeleon mercilessly destroys its foes using its sharp claws. If it encounters a strong foe, it turns aggressive. In this excited state, the flame at the tip of its tail flares with a bluish white color.", poke_type: "Fire", :moves => Move.where(:name => ['Scratch', 'Flamethrower'])},
	{ name: "Charizard", cp: 2602, description: "Charizard flies around the sky in search of powerful opponents. It breathes fire of such great heat that it melts anything. However, it never turns its fiery breath on any opponent weaker than itself.", poke_type: "Fire", :moves => Move.where(:name => ['Wing Attack', 'Fire Blast'])},
	{ name: "Squirtle", cp: 1008, description: "Squirtle's shell is not merely used for protection. The shell's rounded shape and the grooves on its surface help minimize resistance in water, enabling this Pokémon to swim at high speeds.", poke_type: "Water", :moves => Move.where(:name => ['Bubble', 'Aqua Tail'])},
	{ name: "Wartortle", cp: 1582, description: "Its tail is large and covered with a rich, thick fur. The tail becomes increasingly deeper in color as Wartortle ages. The scratches on its shell are evidence of this Pokémon's toughness as a battler.", poke_type: "Water", :moves => Move.where(:name => ['Water Gun', 'Hydro Pump'])},
	{ name: "Blastoise", cp: 2542, description: "Blastoise has water spouts that protrude from its shell. The water spouts are very accurate. They can shoot bullets of water with enough accuracy to strike empty cans from a distance of over 160 feet.", poke_type: "Water", :moves => Move.where(:name => ['Water Gun', 'Hydro Pump'])}
])