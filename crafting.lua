-- to be removed (crafting references)

minetest.register_craft({
	output = 'tutorial:decowood 2',
	recipe = {
		{'default:wood', 'default:wood', ''},
		{'default:wood', 'default:wood', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	type = "cooking",
	recipe = "btn:decowood",
	output = "default:wood 2",
})

minetest.register_craft({
	type = "fuel",
	recipe = "btn:decowood",
	burntime = 7,
})

-- the actual recipes