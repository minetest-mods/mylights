local ceiling_lights = {   --color , Description 
	{ "white" , "White"},
	{ "yellow" , "Yellow"},	
	{ "blue" , "Blue"},
}

for i in ipairs(ceiling_lights) do
	local color = ceiling_lights[i][1]
	local desc = ceiling_lights[i][2]
	local item = ceiling_lights[i][3]

minetest.register_node("mylights:ceiling_light_30_"..color, {
	description = desc.."Ceiling Light 30w",
	tiles = {"mylights_ceiling_"..color..".png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 5,
	groups = {snappy = 1, not_in_creative_inventory=0},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.375, -0.375, 0.4375, -0.5, 0.375}, 
			{-0.375, -0.375, -0.4375, 0.375, -0.5, 0.4375}, 
		}
	},
	on_place = minetest.rotate_node,
})
minetest.register_craft({
		output = "mylights:ceiling_light_30_"..color.." 1",
		recipe = {
			{'','mylights:lightbulb30',''},
			{'','xpanes:pane',''},
			{'','dye:'..color,''}
			}
})
minetest.register_node("mylights:ceiling_light_60_"..color, {
	description = desc.."Ceiling Light 60w",
	tiles = {"mylights_ceiling_"..color..".png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 8,
	groups = {snappy = 1, not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.375, -0.375, 0.4375, -0.5, 0.375}, 
			{-0.375, -0.375, -0.4375, 0.375, -0.5, 0.4375}, 
		}
	},
	on_place = minetest.rotate_node,
})
minetest.register_craft({
		output = "mylights:ceiling_light_60_"..color.." 1",
		recipe = {
			{'','mylights:lightbulb60',''},
			{'','xpanes:pane',''},
			{'','dye:'..color,''}
			}
})
minetest.register_node("mylights:ceiling_light_90_"..color, {
	description = desc.."Ceiling Light 90w",
	tiles = {"mylights_ceiling_"..color..".png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 11,
	groups = {snappy = 1, not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.375, -0.375, 0.4375, -0.5, 0.375}, 
			{-0.375, -0.375, -0.4375, 0.375, -0.5, 0.4375}, 
		}
	},
	on_place = minetest.rotate_node,
})
minetest.register_craft({
		output = "mylights:ceiling_light_90_"..color.." 1",
		recipe = {
			{'','mylights:lightbulb90',''},
			{'','xpanes:pane',''},
			{'','dye:'..color,''}
			}
})
minetest.register_node("mylights:ceiling_light_120_"..color, {
	description = desc.."Ceiling Light 120w",
	tiles = {"mylights_ceiling_"..color..".png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 14,
	groups = {snappy = 1, not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.375, -0.375, 0.4375, -0.5, 0.375}, 
			{-0.375, -0.375, -0.4375, 0.375, -0.5, 0.4375}, 
		}
	},
	on_place = minetest.rotate_node,
})
minetest.register_craft({
		output = "mylights:ceiling_light_120_"..color.." 1",
		recipe = {
			{'','mylights:lightbulb120',''},
			{'','xpanes:pane',''},
			{'','dye:'..color,''}
			}
})

-----------------------------------------------------------------------------------
minetest.register_node("mylights:ceiling_light_lg_30_"..color, {
	description = desc.."Larger Ceiling Light 30w",
	tiles = {"mylights_ceiling_"..color..".png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 5,
	groups = {snappy = 1, not_in_creative_inventory=0},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.375, -0.375, 0.4375, -0.5, 0.375}, 
			{-0.375, -0.375, -0.4375, 0.375, -0.5, 0.4375}, 
			{-0.375, -0.25, -0.3125, 0.375, -0.5, 0.3125}, 
			{-0.3125, -0.25, -0.375, 0.3125, -0.5, 0.375}, 
			{-0.3125, -0.125, -0.25, 0.3125, -0.5, 0.25}, 
			{-0.25, -0.125, -0.3125, 0.25, -0.5, 0.3125}, 
		}
	},
	on_place = minetest.rotate_node,
})
minetest.register_craft({
		output = "mylights:ceiling_light_lg_30_"..color.." 1",
		recipe = {
			{'xpanes:pane','mylights:lightbulb30','xpanes:pane'},
			{'','xpanes:pane',''},
			{'','dye:'..color,''}
			}
})
minetest.register_node("mylights:ceiling_light_lg_60_"..color, {
	description = desc.."Larger Ceiling Light 60w",
	tiles = {"mylights_ceiling_"..color..".png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 8,
	groups = {snappy = 1, not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.375, -0.375, 0.4375, -0.5, 0.375}, 
			{-0.375, -0.375, -0.4375, 0.375, -0.5, 0.4375}, 
			{-0.375, -0.25, -0.3125, 0.375, -0.5, 0.3125}, 
			{-0.3125, -0.25, -0.375, 0.3125, -0.5, 0.375}, 
			{-0.3125, -0.125, -0.25, 0.3125, -0.5, 0.25}, 
			{-0.25, -0.125, -0.3125, 0.25, -0.5, 0.3125}, 
		}
	},
	on_place = minetest.rotate_node,
})
minetest.register_craft({
		output = "mylights:ceiling_light_lg_60_"..color.." 1",
		recipe = {
			{'xpanes:pane','mylights:lightbulb60','xpanes:pane'},
			{'','xpanes:pane',''},
			{'','dye:'..color,''}
			}
})
minetest.register_node("mylights:ceiling_light_lg_90_"..color, {
	description = desc.."Larger Ceiling Light 90w",
	tiles = {"mylights_ceiling_"..color..".png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 11,
	groups = {snappy = 1, not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.375, -0.375, 0.4375, -0.5, 0.375}, 
			{-0.375, -0.375, -0.4375, 0.375, -0.5, 0.4375}, 
			{-0.375, -0.25, -0.3125, 0.375, -0.5, 0.3125}, 
			{-0.3125, -0.25, -0.375, 0.3125, -0.5, 0.375}, 
			{-0.3125, -0.125, -0.25, 0.3125, -0.5, 0.25}, 
			{-0.25, -0.125, -0.3125, 0.25, -0.5, 0.3125}, 
		}
	},
	on_place = minetest.rotate_node,
})
minetest.register_craft({
		output = "mylights:ceiling_light_lg_90_"..color.." 1",
		recipe = {
			{'xpanes:pane','mylights:lightbulb90','xpanes:pane'},
			{'','xpanes:pane',''},
			{'','dye:'..color,''}
			}
})
minetest.register_node("mylights:ceiling_light_lg_120_"..color, {
	description = desc.."Larger Ceiling Light 120w",
	tiles = {"mylights_ceiling_"..color..".png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 14,
	groups = {snappy = 1, not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.375, -0.375, 0.4375, -0.5, 0.375}, 
			{-0.375, -0.375, -0.4375, 0.375, -0.5, 0.4375}, 
			{-0.375, -0.25, -0.3125, 0.375, -0.5, 0.3125}, 
			{-0.3125, -0.25, -0.375, 0.3125, -0.5, 0.375}, 
			{-0.3125, -0.125, -0.25, 0.3125, -0.5, 0.25}, 
			{-0.25, -0.125, -0.3125, 0.25, -0.5, 0.3125}, 
		}
	},
	on_place = minetest.rotate_node,
})
minetest.register_craft({
		output = "mylights:ceiling_light_lg_120_"..color.." 1",
		recipe = {
			{'xpanes:pane','mylights:lightbulb120','xpanes:pane'},
			{'','xpanes:pane',''},
			{'','dye:'..color,''}
			}
})

end

--Round Ceiling Light
minetest.register_node("mylights:ceiling_light_round_30", {
	description = "Larger Round Ceiling Light 30w",
	tiles = {"mylights_white.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 5,
	groups = {snappy = 1, not_in_creative_inventory=0},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.5, 0.25, 0.5, 0.3125, -0.25},
			{-0.4375, 0.3125, -0.3125, 0.4375, 0.5, 0.3125},
			{-0.375, 0.3125, -0.375, 0.375, 0.5, 0.375},
			{-0.3125, 0.3125, -0.4375, 0.3125, 0.5, 0.4375},
			{-0.25, 0.3125, -0.5, 0.25, 0.5, 0.5}, 
		}
	},
})
minetest.register_craft({
		output = "mylights:ceiling_light_round_30 1",
		recipe = {
			{'','default:glass',''},
			{'default:glass','mylights:lightbulb30','default:glass'},
			{'','default:glass',''}
			}
})
minetest.register_node("mylights:ceiling_light_round_60", {
	description = "Larger Round Ceiling Light 60w",
	tiles = {"mylights_white.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 8,
	groups = {snappy = 1, not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.5, 0.25, 0.5, 0.3125, -0.25},
			{-0.4375, 0.3125, -0.3125, 0.4375, 0.5, 0.3125},
			{-0.375, 0.3125, -0.375, 0.375, 0.5, 0.375},
			{-0.3125, 0.3125, -0.4375, 0.3125, 0.5, 0.4375},
			{-0.25, 0.3125, -0.5, 0.25, 0.5, 0.5},  
		}
	},
})
minetest.register_craft({
		output = "mylights:ceiling_light_round_60 1",
		recipe = {
			{'','default:glass',''},
			{'default:glass','mylights:lightbulb60','default:glass'},
			{'','default:glass',''}
			}
})
minetest.register_node("mylights:ceiling_light_round_90", {
	description = "Larger Round Ceiling Light 90w",
	tiles = {"mylights_white.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 11,
	groups = {snappy = 1, not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.5, 0.25, 0.5, 0.3125, -0.25},
			{-0.4375, 0.3125, -0.3125, 0.4375, 0.5, 0.3125},
			{-0.375, 0.3125, -0.375, 0.375, 0.5, 0.375},
			{-0.3125, 0.3125, -0.4375, 0.3125, 0.5, 0.4375},
			{-0.25, 0.3125, -0.5, 0.25, 0.5, 0.5},  
		}
	},
})
minetest.register_craft({
		output = "mylights:ceiling_light_round_90 1",
		recipe = {
			{'','default:glass',''},
			{'default:glass','mylights:lightbulb90','default:glass'},
			{'','default:glass',''}
			}
})
minetest.register_node("mylights:ceiling_light_round_120", {
	description = "Larger Round Ceiling Light 120w",
	tiles = {"mylights_white.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 14,
	groups = {snappy = 1, not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.5, 0.25, 0.5, 0.3125, -0.25},
			{-0.4375, 0.3125, -0.3125, 0.4375, 0.5, 0.3125},
			{-0.375, 0.3125, -0.375, 0.375, 0.5, 0.375},
			{-0.3125, 0.3125, -0.4375, 0.3125, 0.5, 0.4375},
			{-0.25, 0.3125, -0.5, 0.25, 0.5, 0.5},  
		}
	},
})
minetest.register_craft({
		output = "mylights:ceiling_light_round_120 1",
		recipe = {
			{'','default:glass',''},
			{'default:glass','mylights:lightbulb120','default:glass'},
			{'','default:glass',''}
			}
})

--Fluorescent Light
minetest.register_node("mylights:ceiling_light_fluorescent_30", {
	description = "Fluorescent Ceiling Light 30w",
	tiles = {
			"mylights_greybg.png",
			"mylights_fluorescent_sides.png",
			"mylights_fluorescent_sides.png^[transformR90",
			"mylights_fluorescent_sides.png^[transformR90",
			"mylights_white.png",
			"mylights_white.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 5,
	groups = {snappy = 1, not_in_creative_inventory=0},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, 0.375, -0.5, 0.1875, 0.5, 0.5}, 
		}
	},
})
minetest.register_craft({
		output = "mylights:ceiling_light_fluorescent_30 1",
		recipe = {
			{'','',''},
			{'default:glass','mylights:lightbulb30','default:glass'},
			{'','',''}
			}
})
minetest.register_node("mylights:ceiling_light_fluorescent_60", {
	description = "Fluorescent Ceiling Light 60w",
	tiles = {
			"mylights_greybg.png",
			"mylights_fluorescent_sides.png",
			"mylights_fluorescent_sides.png",
			"mylights_fluorescent_sides.png",
			"mylights_white.png",
			"mylights_white.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 8,
	groups = {snappy = 1, not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, 0.375, -0.5, 0.1875, 0.5, 0.5},  
		}
	},
})
minetest.register_craft({
		output = "mylights:ceiling_light_fluorescent_60 1",
		recipe = {
			{'','',''},
			{'default:glass','mylights:lightbulb60','default:glass'},
			{'','',''}
			}
})
minetest.register_node("mylights:ceiling_light_fluorescent_90", {
	description = "Fluorescent Ceiling Light 90w",
	tiles = {
			"mylights_greybg.png",
			"mylights_fluorescent_sides.png",
			"mylights_fluorescent_sides.png",
			"mylights_fluorescent_sides.png",
			"mylights_white.png",
			"mylights_white.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 11,
	groups = {snappy = 1, not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, 0.375, -0.5, 0.1875, 0.5, 0.5},  
		}
	},
})
minetest.register_craft({
		output = "mylights:ceiling_light_fluorescent_90 1",
		recipe = {
			{'','',''},
			{'default:glass','mylights:lightbulb90','default:glass'},
			{'','',''}
			}
})
minetest.register_node("mylights:ceiling_light_fluorescent_120", {
	description = "Fluorescent Ceiling Light 120w",
	tiles = {
			"mylights_greybg.png",
			"mylights_fluorescent_sides.png",
			"mylights_fluorescent_sides.png",
			"mylights_fluorescent_sides.png",
			"mylights_white.png",
			"mylights_white.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 14,
	groups = {snappy = 1, not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, 0.375, -0.5, 0.1875, 0.5, 0.5},  
		}
	},
})
minetest.register_craft({
		output = "mylights:ceiling_light_fluorescent_120 1",
		recipe = {
			{'','',''},
			{'default:glass','mylights:lightbulb120','default:glass'},
			{'','',''}
			}
})


--Hanging Light
minetest.register_node("mylights:ceiling_light_hanging_30", {
	description = "Hanging Ceiling Light 30w",
	tiles = {
			"mylights_white.png",
			"mylights_white.png",
			"mylights_hanging_light_sides.png",
			"mylights_hanging_light_sides.png",
			"mylights_hanging_light_sides.png",
			"mylights_hanging_light_sides.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 5,
	groups = {snappy = 1, not_in_creative_inventory=0},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, 0.4375, -0.125, 0.125, 0.5, 0.125},
			{-0.0625, -0.0625, -0.0625, 0.0625, 0.4375, 0.0625},
			{-0.0625, -0.3125, -0.125, 0.0625, -0.0625, 0.125},
			{-0.125, -0.3125, -0.0625, 0.125, -0.0625, 0.0625}, 
		}
	},
})
minetest.register_craft({
		output = "mylights:ceiling_light_hanging_30 1",
		recipe = {
			{'','default:copper_ingot',''},
			{'','default:glass',''},
			{'','mylights:lightbulb30',''}
			}
})
minetest.register_node("mylights:ceiling_light_hanging_60", {
	description = "Hanging Ceiling Light 60w",
	tiles = {
			"mylights_white.png",
			"mylights_white.png",
			"mylights_hanging_light_sides.png",
			"mylights_hanging_light_sides.png",
			"mylights_hanging_light_sides.png",
			"mylights_hanging_light_sides.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 8,
	groups = {snappy = 1, not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, 0.4375, -0.125, 0.125, 0.5, 0.125},
			{-0.0625, -0.0625, -0.0625, 0.0625, 0.4375, 0.0625},
			{-0.0625, -0.3125, -0.125, 0.0625, -0.0625, 0.125},
			{-0.125, -0.3125, -0.0625, 0.125, -0.0625, 0.0625},   
		}
	},
})
minetest.register_craft({
		output = "mylights:ceiling_light_hanging_60 1",
		recipe = {
			{'','default:cooper_ingot',''},
			{'','default:glass',''},
			{'','mylights:lightbulb60',''}
			}
})
minetest.register_node("mylights:ceiling_light_hanging_90", {
	description = "Hanging Ceiling Light 90w",
	tiles = {
			"mylights_white.png",
			"mylights_white.png",
			"mylights_hanging_light_sides.png",
			"mylights_hanging_light_sides.png",
			"mylights_hanging_light_sides.png",
			"mylights_hanging_light_sides.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 11,
	groups = {snappy = 1, not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, 0.4375, -0.125, 0.125, 0.5, 0.125},
			{-0.0625, -0.0625, -0.0625, 0.0625, 0.4375, 0.0625},
			{-0.0625, -0.3125, -0.125, 0.0625, -0.0625, 0.125},
			{-0.125, -0.3125, -0.0625, 0.125, -0.0625, 0.0625},  
		}
	},
})
minetest.register_craft({
		output = "mylights:ceiling_light_hanging_90 1",
		recipe = {
			{'','default:copper_ingot',''},
			{'','default:glass',''},
			{'','mylights:lightbulb90',''}
			}
})
minetest.register_node("mylights:ceiling_light_hanging_120", {
	description = "Hanging Ceiling Light 120w",
	tiles = {
			"mylights_white.png",
			"mylights_white.png",
			"mylights_hanging_light_sides.png",
			"mylights_hanging_light_sides.png",
			"mylights_hanging_light_sides.png",
			"mylights_hanging_light_sides.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 14,
	groups = {snappy = 1, not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, 0.4375, -0.125, 0.125, 0.5, 0.125},
			{-0.0625, -0.0625, -0.0625, 0.0625, 0.4375, 0.0625},
			{-0.0625, -0.3125, -0.125, 0.0625, -0.0625, 0.125},
			{-0.125, -0.3125, -0.0625, 0.125, -0.0625, 0.0625},  
		}
	},
})
minetest.register_craft({
		output = "mylights:ceiling_light_hanging_120 1",
		recipe = {
			{'','default:copper_ingot',''},
			{'','default:glass',''},
			{'','mylights:lightbulb120',''}
			}
})

--Cube Light
minetest.register_node("mylights:ceiling_light_cube_30", {
	description = "Cube Light 30w",
	tiles = {
			"mylights_cube_light_top.png",
			"mylights_cube_light_top.png",
			"mylights_cube_light_sides.png",
			"mylights_cube_light_sides.png",
			"mylights_cube_light_sides.png",
			"mylights_cube_light_sides.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 5,
	groups = {snappy = 1, not_in_creative_inventory=0},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.375, 0.375, 0.25, 0.375}, 
		}
	},
	on_place = minetest.rotate_node,
})
minetest.register_craft({
		output = "mylights:ceiling_light_cube_30 1",
		recipe = {
			{'default:glass','','default:glass'},
			{'','mylights:lightbulb30',''},
			{'default:glass','','default:glass'}
			}
})
minetest.register_node("mylights:ceiling_light_cube_60", {
	description = "Cube Light 60w",
	tiles = {
			"mylights_cube_light_top.png",
			"mylights_cube_light_top.png",
			"mylights_cube_light_sides.png",
			"mylights_cube_light_sides.png",
			"mylights_cube_light_sides.png",
			"mylights_cube_light_sides.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 8,
	groups = {snappy = 1, not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.375, 0.375, 0.25, 0.375},   
		}
	},
	on_place = minetest.rotate_node,
})
minetest.register_craft({
		output = "mylights:ceiling_light_cube_60 1",
		recipe = {
			{'default:glass','','default:glass'},
			{'','mylights:lightbulb60',''},
			{'default:glass','','default:glass'}
			}
})
minetest.register_node("mylights:ceiling_light_cube_90", {
	description = "Cube Light 90w",
	tiles = {
			"mylights_cube_light_top.png",
			"mylights_cube_light_top.png",
			"mylights_cube_light_sides.png",
			"mylights_cube_light_sides.png",
			"mylights_cube_light_sides.png",
			"mylights_cube_light_sides.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 11,
	groups = {snappy = 1, not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.375, 0.375, 0.25, 0.375}, 
		}
	},
	on_place = minetest.rotate_node,
})
minetest.register_craft({
		output = "mylights:ceiling_light_cube_90 1",
		recipe = {
			{'default:glass','','default:glass'},
			{'','mylights:lightbulb90',''},
			{'default:glass','','default:glass'}
			}
})
minetest.register_node("mylights:ceiling_light_cube_120", {
	description = "Cube Light 120w",
	tiles = {
			"mylights_cube_light_top.png",
			"mylights_cube_light_top.png",
			"mylights_cube_light_sides.png",
			"mylights_cube_light_sides.png",
			"mylights_cube_light_sides.png",
			"mylights_cube_light_sides.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 14,
	groups = {snappy = 1, not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.375, 0.375, 0.25, 0.375},  
		}
	},
	on_place = minetest.rotate_node,
})
minetest.register_craft({
		output = "mylights:ceiling_light_cube_120 1",
		recipe = {
			{'default:glass','','default:glass'},
			{'','mylights:lightbulb120',''},
			{'default:glass','','default:glass'}
			}
})
