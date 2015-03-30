-- to be removed (tutorial stuff)
minetest.register_node("btn:decowood", {
	tiles = {"btn_decowood.png"},
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	stack_max = 64,
})

minetest.register_node("btn:wood_moldy", {
	tiles = {"btn_wood_moldy.png"},
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=6},
	stack_max = 64,
})

minetest.register_node("btn:slime", {
	description = 'slime mold',
	drawtype = 'mesh',
	mesh = 'btn_slime.obj',
	tiles = {"btn_slime.png"},
	groups = {oddly_breakable_by_hand=2},
	walkable = false,
	paramtype = 'light',
	buildable_to = true,
})

-- the actual mod

minetest.register_node("btn:gearbox", {
	description = 'box of gears',
	tiles = {"btn_gearbox.png"},
	groups = {choppy=2, oddly_breakable_by_hand=3, flammable=5},
	stack_max = 64,
})

minetest.register_node("btn:rod", {
	tiles = {"btn_mold.png"},
	description = 'powers things',
	textures = {"unpowered_rod.png", "powered_rod"},
	groups = {choppy=2, oddly_breakable_by_hand=3, flammable=5},
	stack_max = 15,
})

minetest.register_node("btn:windmill", {
	description = 'wind power',
	tiles = {"btn_windmill.png"},
	groups = {choppy=2, oddly_breakable_by_hand=3, flammable=5},
})

minetest.register_node("btn:scaffold", {
	description = 'better building',
	tiles = {"btn_scaffold_top.png", "btn_scaffold_bottom.png", "btn_scaffold_side.png"},
	climbable = true,
	groups = {choppy=2, oddly_breakable_by_hand=5, flammable=5, attached_node=1},
})