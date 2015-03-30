-- to be removed (tutorial stuff)
minetest.register_abm({
	nodenames = {"btn:decowood"},
	neighbors = {"btn:mold"},
	interval = 5,
	chance = 2,
	action = function(pos, node)
		if minetest.find_node_near(pos, 2, "default:water_source", "default:water_flowing") then
			minetest.add_node(pos, {name="btn:wood_moldy"})
		end
	end,
})

-- the actual functions