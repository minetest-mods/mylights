local ceiling_lights = {   --color , Description , Image , Item
	{ "white" , "White" , "default:wood"},
	{ "yellow" , "Yellow" , "default:pinewood"},	
	{ "blue" , "Blue" , "default:junglewood"},
}

for i in ipairs(ceiling_lights) do
	local color = ceiling_lights[i][1]
	local desc = ceiling_lights[i][2]
	local item = ceiling_lights[i][3]

minetest.register_node("mylights:ceiling_light_"..color, {
	description = desc.."Ceiling light",
	tiles = {"mylights_ceiling_"..color..".png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 14,
	groups = {snappy = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, 0.375, -0.375, 0.4375, 0.5, 0.375}, -- NodeBox1
			{-0.375, 0.375, -0.4375, 0.375, 0.5, 0.4375}, -- NodeBox2
		}
	}
})

minetest.register_node("mylights:ceiling_light_lg_"..color, {
	description = desc.."Larger Ceiling light",
	tiles = {"mylights_ceiling_"..color..".png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 14,
	groups = {snappy = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, 0.375, -0.375, 0.4375, 0.5, 0.375}, -- NodeBox1
			{-0.375, 0.375, -0.4375, 0.375, 0.5, 0.4375}, -- NodeBox2
			{-0.375, 0.25, -0.3125, 0.375, 0.5, 0.3125}, -- NodeBox3
			{-0.3125, 0.25, -0.375, 0.3125, 0.5, 0.375}, -- NodeBox4
			{-0.3125, 0.125, -0.25, 0.3125, 0.5, 0.25}, -- NodeBox5
			{-0.25, 0.125, -0.3125, 0.25, 0.5, 0.3125}, -- NodeBox6
		}
	}
})
end
