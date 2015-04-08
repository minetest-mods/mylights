local material = {}
local make_ok = {}
local anzahl = {}
local lbanzahl = {}
minetest.register_node("mylights:machine_cubes", {
	description = "Light Box and Cube Machine",
	tiles = {
		"mylights_cube_orange.png",
		"mylights_cube_orange.png",

		"mylights_cube_orange.png",
		"mylights_cube_orange.png",

		"mylights_cube_orange.png",
		"mylights_cube_orange.png",
		},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 11,
	groups = {cracky=2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.5, -0.3125, 0.3125, -0.375, 0.3125}, 
			{-0.125, -0.5, -0.125, 0.125, -0.0625, 0.125}, 
			{-0.3125, -0.0625, -0.3125, 0.3125, 0.5, 0.3125}, 

		}
	},


	after_place_node = function(pos, placer)
	local meta = minetest.env:get_meta(pos);
			meta:set_string("owner",  (placer:get_player_name() or ""));
			meta:set_string("infotext",  "Light Box and Cube Machine (owned by " .. (placer:get_player_name() or "") .. ")");
		end,

can_dig = function(pos,player)
	local meta = minetest.env:get_meta(pos);
	local inv = meta:get_inventory()
	if not inv:is_empty("ingot") then
		return false
	elseif not inv:is_empty("res") then
		return false
	end
	return true
end,

on_construct = function(pos)
	local meta = minetest.env:get_meta(pos)
	meta:set_string("formspec", "invsize[9,10;]"..
		"background[-0.15,-0.25;9.40,10.75;mylights_background.png]"..
		"label[0,0;Light Box and Cubes:]"..
		"label[3,1;Wool]"..
		"list[current_name;ingot1;2,1;1,1;]"..
		"label[3,2;Light Bulb]"..
		"list[current_name;ingot2;2,2;1,1;]"..
		"label[3,3;Obsidian]"..
		"list[current_name;ingot3;2,3;1,1;]"..
		"list[current_name;res1;2,4.5;1,1;]"..
		"button[1,4.5;1,1;make;Make]"..

		"label[5,1;Wool]"..
		"list[current_name;ingot4;6,1;1,1;]"..
		"label[4.5,2;Light Bulb]"..
		"list[current_name;ingot5;6,2;1,1;]"..
		"list[current_name;res2;6,4.5;1,1;]"..
		"button[5,4.5;1,1;make2;Make]"..


		"list[current_player;main;0.5,6;8,4;]")
	meta:set_string("infotext", "Light Box and Cubes Machine")
	local inv = meta:get_inventory()
	inv:set_size("ingot1", 1)
	inv:set_size("ingot2", 1)
	inv:set_size("ingot3", 1)
	inv:set_size("ingot4", 1)
	inv:set_size("ingot5", 1)
	inv:set_size("res1", 1)
	inv:set_size("res2", 1)
end,

on_receive_fields = function(pos, formname, fields, sender)
	local meta = minetest.env:get_meta(pos)
	local inv = meta:get_inventory()

if fields["make"] or fields["make2"] 
then

	if fields["make"] then
		make_ok = "0"
		anzahl = "1"
		if inv:is_empty("ingot1") then
			return
		end
	end


	if fields["make2"] then
		make_ok = "0"
		lbanzahl = "1"
		if inv:is_empty("ingot4") or
		   inv:is_empty("ingot5") then
			return
		end
	end



		local ingotstack1 = inv:get_stack("ingot1", 1)
		local ingotstack2 = inv:get_stack("ingot2", 1)
		local ingotstack3 = inv:get_stack("ingot3", 1)

		local ingotstack4 = inv:get_stack("ingot4", 1)
		local ingotstack5 = inv:get_stack("ingot5", 1)

		local resstack1 = inv:get_stack("res1", 1)
		local resstack2 = inv:get_stack("res2", 1)
----------------------------------------------------------------------------------
--register nodes
----------------------------------------------------------------------------------
local box_tab = {
		{"wool:white" , "mylights:lightbulb30" , "mylights:lightbox30_white"},
		{"wool:white" , "mylights:lightbulb60" , "mylights:lightbox60_white"},
		{"wool:white" , "mylights:lightbulb90" , "mylights:lightbox90_white"},
		{"wool:white" , "mylights:lightbulb120" , "mylights:lightbox120_white"},

		{"wool:green" , "mylights:lightbulb30" , "mylights:lightbox30_green"},
		{"wool:green" , "mylights:lightbulb60" , "mylights:lightbox60_green"},
		{"wool:green" , "mylights:lightbulb90" , "mylights:lightbox90_green"},
		{"wool:green" , "mylights:lightbulb120" , "mylights:lightbox120_green"},

		{"wool:red" , "mylights:lightbulb30" , "mylights:lightbox30_red"},
		{"wool:red" , "mylights:lightbulb60" , "mylights:lightbox60_red"},
		{"wool:red" , "mylights:lightbulb90" , "mylights:lightbox90_red"},
		{"wool:red" , "mylights:lightbulb120" , "mylights:lightbox120_red"},

		{"wool:blue" , "mylights:lightbulb30" , "mylights:lightbox30_blue"},
		{"wool:blue" , "mylights:lightbulb60" , "mylights:lightbox60_blue"},
		{"wool:blue" , "mylights:lightbulb90" , "mylights:lightbox90_blue"},
		{"wool:blue" , "mylights:lightbulb120" , "mylights:lightbox120_blue"},

		{"wool:orange" , "mylights:lightbulb30" , "mylights:lightbox30_orange"},
		{"wool:orange" , "mylights:lightbulb60" , "mylights:lightbox60_orange"},
		{"wool:orange" , "mylights:lightbulb90" , "mylights:lightbox90_orange"},
		{"wool:orange" , "mylights:lightbulb120" , "mylights:lightbox120_orange"},

		{"wool:yellow" , "mylights:lightbulb30" , "mylights:lightbox30_yellow"},
		{"wool:yellow" , "mylights:lightbulb60" , "mylights:lightbox60_yellow"},
		{"wool:yellow" , "mylights:lightbulb90" , "mylights:lightbox90_yellow"},
		{"wool:yellow" , "mylights:lightbulb120" , "mylights:lightbox120_yellow"},
	}
for i in ipairs (box_tab) do
	local woolcol = box_tab[i][1]
	local watt = box_tab[i][2]
	local thebox = box_tab[i][3]


		if ingotstack1:get_name()== woolcol and
		   ingotstack2:get_name()== watt and
		   ingotstack3:get_name()=="default:obsidian" then
				material = thebox
				make_ok = "1"
		end

end
local cube_tab = {
		{"wool:white" , "mylights:lightbulb30" , "mylights:light_cube_30__white"},
		{"wool:white" , "mylights:lightbulb60" , "mylights:light_cube_60__white"},
		{"wool:white" , "mylights:lightbulb90" , "mylights:light_cube_90__white"},
		{"wool:white" , "mylights:lightbulb120" , "mylights:light_cube_120__white"},

		{"wool:green" , "mylights:lightbulb30" , "mylights:light_cube_30__green"},
		{"wool:green" , "mylights:lightbulb60" , "mylights:light_cube_60_green"},
		{"wool:green" , "mylights:lightbulb90" , "mylights:light_cube_90_green"},
		{"wool:green" , "mylights:lightbulb120" , "mylights:light_cube_120_green"},

		{"wool:red" , "mylights:lightbulb30" , "mylights:light_cube_30_red"},
		{"wool:red" , "mylights:lightbulb60" , "mylights:light_cube_60_red"},
		{"wool:red" , "mylights:lightbulb90" , "mylights:light_cube_90_red"},
		{"wool:red" , "mylights:lightbulb120" , "mylights:light_cube_120_red"},

		{"wool:blue" , "mylights:lightbulb30" , "mylights:light_cube_30_blue"},
		{"wool:blue" , "mylights:lightbulb60" , "mylights:light_cube_60_blue"},
		{"wool:blue" , "mylights:lightbulb90" , "mylights:light_cube_90_blue"},
		{"wool:blue" , "mylights:lightbulb120" , "mylights:light_cube_120_blue"},

		{"wool:orange" , "mylights:lightbulb30" , "mylights:light_cube_30_orange"},
		{"wool:orange" , "mylights:lightbulb60" , "mylights:light_cube_60_orange"},
		{"wool:orange" , "mylights:lightbulb90" , "mylights:light_cube_90_orange"},
		{"wool:orange" , "mylights:lightbulb120" , "mylights:light_cube_120_orange"},

		{"wool:yellow" , "mylights:lightbulb30" , "mylights:light_cube_30_yellow"},
		{"wool:yellow" , "mylights:lightbulb60" , "mylights:light_cube_60_yellow"},
		{"wool:yellow" , "mylights:lightbulb90" , "mylights:light_cube_90_yellow"},
		{"wool:yellow" , "mylights:lightbulb120" , "mylights:light_cube_120_yellow"},
	}
for i in ipairs (cube_tab) do
	local woolcol = cube_tab[i][1]
	local watt = cube_tab[i][2]
	local thecube = cube_tab[i][3]


		if ingotstack4:get_name()== woolcol and
		   ingotstack5:get_name()== watt then
				material = thecube
				make_ok = "2"
		end

end
----------------------------------------------------------------------

		if make_ok == "1" then
			local give = {}
			for i = 0, anzahl-1 do
				give[i+1]=inv:add_item("res1",material)
			end
			ingotstack1:take_item()
			inv:set_stack("ingot1",1,ingotstack1)
			ingotstack2:take_item()
			inv:set_stack("ingot2",1,ingotstack2)
			ingotstack3:take_item()
			inv:set_stack("ingot3",1,ingotstack3)
		end 

		if make_ok == "2" then
			local give = {}
			for j = 0, lbanzahl-1 do
				give[j+1]=inv:add_item("res2",material)
			end
			ingotstack4:take_item()
			inv:set_stack("ingot4",1,ingotstack4)
			ingotstack5:take_item()
			inv:set_stack("ingot5",1,ingotstack5)
		end 
end
end


})

--Craft

minetest.register_craft({
		output = 'mylights:machine',
		recipe = {
			{'default:glass', 'default:copper_ingot', 'default:glass'},
			{'default:glass', 'default:torch', 'default:glass'},
			{'default:glass', "default:glass", 'default:glass'},		
		},
})












