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
-- Build scaffolding upward from bottom, stops when obstructed by solid blocks. Scaffold is ignored.
		on_punch = function(pos, node, puncher, pointed_thing)
		if puncher:get_wielded_item():get_name() == "btn:scaffold" then
			local itemstack = puncher:get_wielded_item() --set local variable that tells game 'itemstack' is the currently held stack in hotbar
			local node = minetest.get_node(pos)
			while node.name == "btn:scaffold" do --performs an upward search through scaffold to find node that does not match scaffold
				pos.y = pos.y+1
				node = minetest.get_node(pos)
			end
			minetest.place_node(pos, {name="btn:scaffold"}) --places node at 'pos' as if player was placing it, preventing non-buildable_to nodes from being destroyed
			node = minetest.get_node(pos)			--update the node variable to reflect the last position it attemped "place_node"
			--if the last position "place_node" attempted results in a scaffold, then update player's itemstack
			if node.name == "btn:scaffold" then
				itemstack:take_item() --simulates 'remove 1 item' from what is currently the itemstack without updating
				puncher:set_wielded_item(itemstack) --updates the stack of the selected item in hotbar with result of previous simulation
			end
		end
	end,
	groups = {choppy=2, oddly_breakable_by_hand=3, flammable=5, attached_node=1},
})