--30 watt Light bulb
--------------------------------------------------------------------------------
minetest.register_craftitem("mylights:lightbulb30", {
	description = "30 watt Light Bulb",
	inventory_image = "mylights_lightbulb30.png",

})
--Craft
minetest.register_craft({
	output = "mylights:lightbulb30 9",
	recipe = {
		{"", "default:steel_ingot",""},
		{"default:glass", "default:torch","default:glass"},
		{"", "default:glass",""},
	}
})
--60 watt Light bulb
--------------------------------------------------------------------------------
minetest.register_craftitem("mylights:lightbulb60", {
	description = "60 watt Light Bulb",
	inventory_image = "mylights_lightbulb60.png",

})
--Craft
minetest.register_craft({
	output = "mylights:lightbulb60 1",
	recipe = {
		{"mylights:lightbulb30", "mylights:lightbulb30"}
	}
})
--90 watt Light bulb
--------------------------------------------------------------------------------
minetest.register_craftitem("mylights:lightbulb90", {
	description = "90 watt Light Bulb",
	inventory_image = "mylights_lightbulb90.png",

})
--Craft
minetest.register_craft({
	output = "mylights:lightbulb90 1",
	recipe = {
		{"mylights:lightbulb60", "mylights:lightbulb30"}
	}
})
minetest.register_craft({
	output = "mylights:lightbulb90 1",
	recipe = {
		{"mylights:lightbulb30", "mylights:lightbulb60"}
	}
})
--120 watt Light bulb
--------------------------------------------------------------------------------
minetest.register_craftitem("mylights:lightbulb120", {
	description = "120 watt Light Bulb",
	inventory_image = "mylights_lightbulb120.png",

})
--Craft
minetest.register_craft({
	output = "mylights:lightbulb120",
	recipe = {
		{"mylights:lightbulb60", "mylights:lightbulb60"},
	}
})
minetest.register_craft({
	output = "mylights:lightbulb120",
	recipe = {
		{"mylights:lightbulb30", "mylights:lightbulb30"},
		{"mylights:lightbulb30", "mylights:lightbulb30"},
	}
})
minetest.register_craft({
	output = "mylights:lightbulb120",
	recipe = {
		{"mylights:lightbulb30", "mylights:lightbulb60",""},
		{"mylights:lightbulb30","",""},
		{"","",""},
	}
})
minetest.register_craft({
	output = "mylights:lightbulb120",
	recipe = {
		{"mylights:lightbulb90", "mylights:lightbulb30"},
	}
})



