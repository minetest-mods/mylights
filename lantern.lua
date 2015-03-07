-- GENERATED CODE
-- Node Box Editor, version 0.7 - Iron
-- Namespace: test

minetest.register_node("mylights:lantern", {
	description = "Bat Lantern",
	tiles = {
		"mylights_lanterntb.png",
		"mylights_lanterntb.png",
		"mylights_lanternside.png",
		"mylights_lanternside.png",
		"mylights_lanternside.png",
		"mylights_lanternside.png"
	},
	sunlight_propagates = true,
	walkable = true,
	light_source = 14,
	drawtype = "nodebox",
	paramtype = "light",
	groups = {snappy = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.4375, -0.3125, 0.3125, -0.3125, 0.3125}, -- NodeBox1
			{-0.1875, -0.5, -0.1875, 0.1875, 0.5, 0.1875}, -- NodeBox2
			{-0.3125, -0.375, -0.3125, -0.1875, 0.375, -0.1875}, -- NodeBox3
			{-0.3125, -0.375, 0.1875, -0.1875, 0.375, 0.3125}, -- NodeBox4
			{0.1875, -0.375, 0.1875, 0.3125, 0.375, 0.3125}, -- NodeBox5
			{0.1875, -0.375, -0.3125, 0.3125, 0.375, -0.1875}, -- NodeBox6
			{-0.4375, 0.375, -0.4375, 0.4375, 0.1875, 0.4375}, -- NodeBox7
		}
	}
})
--craft
minetest.register_craft({
		output = "mylights:lantern 1",
		recipe = {
			{'','wool:black',''},
			{'wool:black','wool:white','wool:black'},
			{'','default:torch',''}
			}
	})
