minetest.register_node("mylights:sewer_light", {
	description = "Sewer Light",
	tiles = {"mylights_sewer_light.png"},
	drawtype = "nodebox",
	paramtype = "light",
	groups = {snappy=2},
	sunlight_propagates = true,
	light_source = 14,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, 0.125, -0.125, 0.125, 0.5, 0.125}, -- NodeBox1
			{-0.1875, 0.1875, -0.0625, 0.1875, 0.5, 0.0625}, -- NodeBox2
			{-0.0625, 0.1875, -0.1875, 0.0625, 0.5, 0.1875}, -- NodeBox3
		}
	},

})
--[[
--Craft
minetest.register_craft({
	output = "bat_light:sewer_light 9",
	recipe = {
		{'', 'bat_blocks:bat_color_yellow', ''},
		{'', 'default:torch', ''},
		{'', '', ''}
	}
})
--]]
