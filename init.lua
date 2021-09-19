---- normal cabinets

-- file cabinet my beloved

minetest.register_node("cabinet:file_cabinet", {
	description = "File Cabinet",
	tiles = {"cabinet.png"},
	inventory_image = "cabinet_item.png",
	paramtype = "light",
    paramtype2 = "facedir",
	drawtype = "mesh",
	mesh = "cabinet.obj",
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5625, -0.5, -0.5, 0.5625, 1.0625, 0.4375}
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5625, -0.5, -0.4375, 0.5625, 1.0625, 0.4375},
			{-0.4375, 0.3125, -0.5, 0.4375, 0.9375, -0.4375},
			{-0.4375, -0.375, -0.5, 0.4375, 0.25, -0.4375}
		}
	},
	groups = { oddly_breakable_by_hand = 2 },
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		local spos = pos.x .. "," .. pos.y .. "," .. pos.z
		meta:set_string("formspec",
				"size[8,9]" ..
				"list[nodemeta:" .. spos .. ";main;0,0.3;8,4;]" ..
				"list[current_player;main;0,4.85;8,1;]" ..
				"list[current_player;main;0,6.08;8,3;8]" ..
				"listring[nodemeta:" .. spos .. ";main]" ..
				"listring[current_player;main]" ..
				default.get_hotbar_bg(0,4.85))
		meta:set_string("infotext", "File Cabinet")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*4)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
})

-- iron file cabinet my less beloved

minetest.register_node("cabinet:iron_file_cabinet", {
	description = "Iron File Cabinet",
	tiles = {"iron_cabinet.png"},
	inventory_image = "iron_cabinet_item.png",
	paramtype = "light",
    paramtype2 = "facedir",
	drawtype = "mesh",
	mesh = "cabinet.obj",
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5625, -0.5, -0.5, 0.5625, 1.0625, 0.4375}
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5625, -0.5, -0.4375, 0.5625, 1.0625, 0.4375},
			{-0.4375, 0.3125, -0.5, 0.4375, 0.9375, -0.4375},
			{-0.4375, -0.375, -0.5, 0.4375, 0.25, -0.4375}
		}
	},
	groups = { oddly_breakable_by_hand = 1 },
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		local spos = pos.x .. "," .. pos.y .. "," .. pos.z
		meta:set_string("formspec",
				"size[8,11]" ..
				"list[nodemeta:" .. spos .. ";main;0,0.3;8,6;]" ..
				"list[current_player;main;0,6.85;8,1;]" ..
				"list[current_player;main;0,8.08;8,3;8]" ..
				"listring[nodemeta:" .. spos .. ";main]" ..
				"listring[current_player;main]" ..
				default.get_hotbar_bg(0,6.85))
		meta:set_string("infotext", "Iron File Cabinet")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*6)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
})

---- small cabinets

-- small cabinet my beloved

minetest.register_node("cabinet:small_file_cabinet", {
	description = "Small File Cabinet",
	tiles = {"cabinet_small.png"},
	inventory_image = "cabinet_item_small.png",
	paramtype = "light",
    paramtype2 = "facedir",
	drawtype = "mesh",
	mesh = "cabinet_small.obj",
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5625, -0.5, -0.4375, 0.5625, 0.375, 0.4375}
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5625, -0.5, -0.4375, 0.5625, 0.375, 0.4375},
			{-0.4375, -0.375, -0.5, 0.4375, 0.25, -0.4375}
		}
	},
	groups = { oddly_breakable_by_hand = 2 },
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		local spos = pos.x .. "," .. pos.y .. "," .. pos.z
		meta:set_string("formspec",
				"size[8,7]" ..
				"list[nodemeta:" .. spos .. ";main;0,0.3;8,2;]" ..
				"list[current_player;main;0,2.85;8,1;]" ..
				"list[current_player;main;0,4.08;8,3;8]" ..
				"listring[nodemeta:" .. spos .. ";main]" ..
				"listring[current_player;main]" ..
				default.get_hotbar_bg(0,2.85))
		meta:set_string("infotext", "Small File Cabinet")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*2)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
})

-- small iron cabinet my less beloved

minetest.register_node("cabinet:small_iron_file_cabinet", {
	description = "Small Iron File Cabinet",
	tiles = {"iron_cabinet_small.png"},
	inventory_image = "iron_cabinet_item_small.png",
	paramtype = "light",
    paramtype2 = "facedir",
	drawtype = "mesh",
	mesh = "cabinet_small.obj",
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5625, -0.5, -0.4375, 0.5625, 0.375, 0.4375}
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5625, -0.5, -0.4375, 0.5625, 0.375, 0.4375},
			{-0.4375, -0.375, -0.5, 0.4375, 0.25, -0.4375}
		}
	},
	groups = { oddly_breakable_by_hand = 1 },
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		local spos = pos.x .. "," .. pos.y .. "," .. pos.z
		meta:set_string("formspec",
				"size[8,8]" ..
				"list[nodemeta:" .. spos .. ";main;0,0.3;8,3;]" ..
				"list[current_player;main;0,3.85;8,1;]" ..
				"list[current_player;main;0,5.08;8,3;8]" ..
				"listring[nodemeta:" .. spos .. ";main]" ..
				"listring[current_player;main]" ..
				default.get_hotbar_bg(0,3.85))
		meta:set_string("infotext", "Small Iron File Cabinet")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*3)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
})

---- folder that is a mish mash of spaghetti code!!!!!!!!!!!!!!

local inv_folder = minetest.create_detached_inventory("folder", {
	allow_move = function(inv, from_list, from_index, to_list, to_index, count, player)
		return 1
	end,
	allow_put = function(inv, listname, index, stack, player)
		return 1
	end,
	allow_take = function(inv, listname, index, stack, player)
		return 1
	end,
})
inv_folder:set_size("main", 5*1)

local function get_folder_formspec()
	local folder_formspec = [[
		size[8,6]
		list[detached:folder;main;1.5,0.3;8,3;]
		list[current_player;main;0,1.85;8,1;]
		list[current_player;main;0,3.08;8,3;8]
		listring[detached:folder;main]
		listring[current_player;main]
		default.get_hotbar_bg(0,1.85))
	]]
	return folder_formspec
end


minetest.register_craftitem("cabinet:folder", {
	description = "Folder",
	stack_max = 1,
	inventory_image = "folder.png",
	on_use = function(itemstack, user, pointed_thing)
		minetest.show_formspec(user:get_player_name(), "cabinet:file_formspec", get_folder_formspec())
	end,
})

---- crafting

local w = "group:wood"
local c = "default:chest"
local f = "cabinet:file_cabinet"
local s = "cabinet:small_file_cabinet"
local i = "default:steel_ingot"
local p = "default:paper"

--- my beloved file cabinet craft recipe

minetest.register_craft({
    type = "shaped",
    output = "cabinet:file_cabinet",
    recipe = {
        {w, w, w},
        {w, c, w},
        {w, w, w}
    }
})

-- small file cabinet

minetest.register_craft({
    type = "shaped",
    output = "cabinet:small_file_cabinet",
    recipe = {
		{w, w, w},
        {w, c, w}
    }
})

--- my less beloved iron file cabinet craft recipe

minetest.register_craft({
    type = "shaped",
    output = "cabinet:iron_file_cabinet",
    recipe = {
        {i, i, i},
		{i, f, i},
        {i, i, i}
    }
})

-- small iron file cabinet

minetest.register_craft({
    type = "shaped",
    output = "cabinet:small_iron_file_cabinet",
    recipe = {
        {i, i, i},
        {i, s, i}
    }
})

--- crafting recipe for folder that is a mish mash of spaghetti code!!!!!!!!!!!!!!

minetest.register_craft({
    type = "shaped",
    output = "cabinet:folder",
    recipe = {
        {p, p, p},
        {"", p, p}
    }
})