-- GENERATED CODE
-- Node Box Editor, version 0.7 - Iron
-- Namespace: test

minetest.register_node("mylights:ws", {
	description = "Wall Sconce",
	tiles = {
		"mylights_ws_top.png",
		"mylights_ws_top.png",
		"mylights_ws_right.png",
		"mylights_ws_left.png",
		"mylights_ws_front.png",
		"mylights_ws_front.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=1,snappy = 1,oddly_breakable_by_hand=1},
	light_source = 11,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.4375, 0.4375, 0.25, 0.125, 0.5}, -- NodeBox1
			{-0.0625, -0.375, 0.3125, 0.0625, -0.25, 0.5}, -- NodeBox2
			{-0.0625, -0.3125, 0.25, 0.0625, -0.1875, 0.375}, -- NodeBox3
			{-0.0625, -0.25, 0.1875, 0.0625, -0.125, 0.3125}, -- NodeBox4
			{-0.0625, -0.1875, 0.125, 0.0625, -0.0625, 0.25}, -- NodeBox5
			{-0.0625, -0.125, -0.0625, 0.0625, 0, 0.1875}, -- NodeBox6
			{-0.0625, -0.0625, -0.125, 0.0625, 0.0625, 0}, -- NodeBox7
			{-0.1875, 0.0625, -0.125, 0.1875, 0.1875, 0}, -- NodeBox8
			{-0.0625, 0.0625, -0.25, 0.0625, 0.1875, 0.125}, -- NodeBox9
			{-0.0625, 0.125, 0.125, 0.0625, 0.3125, 0.1875}, -- NodeBox10
			{-0.0625, 0.125, -0.3125, 0.0625, 0.3125, -0.25}, -- NodeBox11
			{-0.25, 0.125, -0.125, -0.1875, 0.3125, 0}, -- NodeBox12
			{0.1875, 0.125, -0.125, 0.25, 0.3125, 0}, -- NodeBox13
			{-0.125, 0.125, -0.1875, 0.125, 0.4375, 0.0625}, -- NodeBox14
			{-0.0625, 0.125, -0.25, 0.0625, 0.4375, 0.125}, -- NodeBox15
			{-0.1875, 0.125, -0.125, 0.1875, 0.4375, 0}, -- NodeBox16
			{-0.0625, 0.125, -0.125, 0.0625, 0.5, 0}, -- NodeBox17
		}
	}
})

