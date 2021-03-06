--[[
****
More Stuff 
by SegFault22 
v0.1 
****
--]]

--
-- STEEL LADDER
minetest.register_node("morestuff_nextgen:steel_ladder", {
	description = "Steel Ladder",
	drawtype = "signlike",
	tiles = {"morestuff_nextgen_steelladder.png"},
	inventory_image = "morestuff_nextgen_steelladder.png",
	wield_image = "morestuff_nextgen_steelladder.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	is_ground_content = true,
	walkable = false,
	climbable = true,
	selection_box = {
		type = "wallmounted",
		--wall_top = = <default>
		--wall_bottom = = <default>
		--wall_side = = <default>
	},
	groups = {bendy=2,cracky=2,oddly_breakable_by_hand=2,},
	legacy_wallmounted = true,
})

minetest.register_craft({
	output = '"morestuff_nextgen:steel_ladder" 1',
	recipe = {
		{'"default:steel_ingot"','','"default:steel_ingot"'},
		{'"default:steel_ingot"','"default:steel_ingot"','"default:steel_ingot"'},
		{'"default:steel_ingot"','','"default:steel_ingot"'},
	}
})

-- NAQUEDA REACTOR

minetest.register_node("morestuff_nextgen:naqueda_reactor", 
		       {visual_scale = 1,
			tile_images = {"morestuff_nextgen_naqueda_reactor.png"},{"morestuff_nextgen_naqueda_reactor.png"},{"morestuff_nextgen_naqueda_reactor.png"},{"morestuff_nextgen_naqueda_reactor.png"},{"morestuff_nextgen_naqueda_reactor.png"},{"morestuff_nextgen_naqueda_reactor.png"},
			inventory_image = "morestuff_nextgen_naqueda_reactor.png",
			walkable = true,
			groups = {cracky=2},
			description="Naqueda Reactor",
			mesecons = 
			   {receptor = 
			       {state = mesecon.state.on }}})

minetest.register_craft({
	output = '"morestuff_nextgen:naqueda_reactor" 1',
	recipe = {
		{'"default:steel_ingot"','"default:steel_ingot"','"default:steel_ingot"'},
		{'"default:steel_ingot"','"morestuff_nextgen:naqueda_lump"','"default:steel_ingot"'},
		{'"default:steel_ingot"','"default:steel_ingot"','"default:steel_ingot"'},
	}
})

--
-- Blocks

minetest.register_node( "morestuff_nextgen:mineral_green_magicite", {
	description = "Green Magicite",
	tile_images = { "default_stone.png^morestuff_nextgen_mineral_green_magicite.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = 'craft "morestuff_nextgen:green_magicite" 1',
})

minetest.register_node( "morestuff_nextgen:mineral_blue_magicite", {
	description = "Blue Magicite",
	tile_images = { "default_stone.png^morestuff_nextgen_mineral_blue_magicite.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = 'craft "morestuff_nextgen:blue_magicite" 1',
})

minetest.register_node( "morestuff_nextgen:mineral_red_magicite", {
	description = "Red Magicite",
	tile_images = { "default_stone.png^morestuff_nextgen_mineral_red_magicite.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = 'craft "morestuff_nextgen:red_magicite" 1',
})

minetest.register_node( "morestuff_nextgen:mineral_white_magicite", {
	description = "White Magicite",
	tile_images = { "default_stone.png^morestuff_nextgen_mineral_white_magicite.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = 'craft "morestuff_nextgen:white_magicite" 1',
})

minetest.register_node( "morestuff_nextgen:mineral_naqueda", {
	description = "Naqueda",
	tile_images = { "default_stone.png^morestuff_nextgen_mineral_naqueda.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = 'craft "morestuff_nextgen:naqueda_lump" 1',
})

minetest.register_node( "morestuff_nextgen:mineral_xoron", {
	description = "Xoron Ore",
	tile_images = { "default_stone.png^morestuff_nextgen_mineral_xoron.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = 'craft "morestuff_nextgen:xoron_lump" 1',
})

minetest.register_node( "morestuff_nextgen:mineral_zeron", {
	description = "Zeron Ore",
	tile_images = { "default_stone.png^morestuff_nextgen_mineral_zeron.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = 'craft "morestuff_nextgen:zeron_lump" 1',
})


-- Items

minetest.register_tool("morestuff_nextgen:steel_battle_axe", {
	description = "Steel Battle Axe",
	inventory_image = "morestuff_nextgen_battleaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.10,
		max_drop_level=3,
		groupcaps={
			fleshy={times={[2]=0.75, [3]=0.50}, uses=500, maxlevel=1},
			snappy={times={[2]=0.75, [3]=0.50}, uses=500, maxlevel=1},
			choppy={times={[2]=0.75, [3]=0.75}, uses=500, maxlevel=1}
		}
	}
})

minetest.register_tool("morestuff_nextgen:mese_battle_axe", {
	description = "MESE Battle Axe",
	inventory_image = "morestuff_nextgen_mese_battleaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.90,
		max_drop_level=3,
		groupcaps={
			fleshy={times={[2]=0.4, [3]=0.2}, uses=750, maxlevel=5},
			snappy={times={[2]=0.4, [3]=0.2}, uses=750, maxlevel=5},
			choppy={times={[2]=0.4, [3]=0.2}, uses=750, maxlevel=5}
		}
	}
})

minetest.register_craftitem( "morestuff_nextgen:steel_longsword_blade", {
	description = "Steel Longsword Blade",
	inventory_image = "morestuff_nextgen_longsword_blade.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "morestuff_nextgen:green_magicite", {
	description = "Green Magicite",
	inventory_image = "morestuff_nextgen_green_magicite.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "morestuff_nextgen:blue_magicite", {
	description = "Blue Magicite",
	inventory_image = "morestuff_nextgen_blue_magicite.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "morestuff_nextgen:red_magicite", {
	description = "Red Magicite",
	inventory_image = "morestuff_nextgen_red_magicite.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "morestuff_nextgen:white_magicite", {
	description = "White Magicite",
	inventory_image = "morestuff_nextgen_white_magicite.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "morestuff_nextgen:naqueda_lump", {
	description = "Naqueda",
	inventory_image = "morestuff_nextgen_naqueda_lump.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "morestuff_nextgen:nuclear_waste", {
	description = "Nuclear Waste",
	inventory_image = "morestuff_nextgen_nuclear_waste.png",
	on_use = minetest.item_eat(-19),
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "morestuff_nextgen:gopper_ingot", {
	description = "Gopper ingot",
	inventory_image = "morestuff_nextgen_gopper_ingot.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "morestuff_nextgen:zeron_lump", {
	description = "Lump of Zeron",
	inventory_image = "morestuff_nextgen_zeron_lump.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "morestuff_nextgen:zeron_ingot", {
	description = "Zeron ingot",
	inventory_image = "morestuff_nextgen_zeron_ingot.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "morestuff_nextgen:xoron_lump", {
	description = "Lump of Xoron",
	inventory_image = "morestuff_nextgen_xoron_lump.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "morestuff_nextgen:xoron_ingot", {
	description = "Xoron ingot",
	inventory_image = "morestuff_nextgen_xoron_ingot.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_tool("morestuff_nextgen:sword_earthsword", {
	description = "Earth Sword",
	inventory_image = "morestuff_nextgen_tool_earthsword.png",
	tool_capabilities = {
		full_punch_interval = 0.45,
		max_drop_level=3,
		groupcaps={
			fleshy={times={[2]=1.00, [3]=0.50}, uses=5000, maxlevel=5},
			crumbly={times={[2]=0.10, [3]=0.50}, uses=5000, maxlevel=5},
			snappy={times={[2]=1.00, [3]=0.50}, uses=5000, maxlevel=5},
			choppy={times={[3]=0.65}, uses=5000, maxlevel=5}
		}
	}
})

minetest.register_tool("morestuff_nextgen:sword_watersword", {
	description = "Water Sword",
	inventory_image = "morestuff_nextgen_tool_watersword.png",
	tool_capabilities = {
		full_punch_interval = 0.45,
		max_drop_level=3,
		groupcaps={
			fleshy={times={[2]=1.00, [3]=0.50}, uses=5000, maxlevel=5},
			snappy={times={[2]=1.00, [3]=0.50}, uses=5000, maxlevel=5},
			choppy={times={[3]=0.50}, uses=5000, maxlevel=5}
		}
	}
})

minetest.register_tool("morestuff_nextgen:sword_firesword", {
	description = "Fire Sword",
	inventory_image = "morestuff_nextgen_tool_firesword.png",
	tool_capabilities = {
		full_punch_interval = 0.45,
		max_drop_level=3,
		groupcaps={
			fleshy={times={[2]=1.00, [3]=0.50}, uses=5000, maxlevel=5},
			snappy={times={[2]=1.00, [3]=0.50}, uses=5000, maxlevel=5},
			choppy={times={[3]=0.50}, uses=5000, maxlevel=5}
		}
	}
})

minetest.register_tool("morestuff_nextgen:sword_icesword", {
	description = "Ice Sword",
	inventory_image = "morestuff_nextgen_tool_icesword.png",
	tool_capabilities = {
		full_punch_interval = 0.45,
		max_drop_level=3,
		groupcaps={
			fleshy={times={[2]=1.00, [3]=0.50}, uses=5000, maxlevel=5},
			snappy={times={[2]=1.00, [3]=0.50}, uses=5000, maxlevel=5},
			choppy={times={[3]=0.5}, uses=5000, maxlevel=5}
		}
	}
})

minetest.register_tool("morestuff_nextgen:sword_steel_longsword", {
	description = "Steel Longsword",
	inventory_image = "morestuff_nextgen_tool_longsword.png",
	tool_capabilities = {
		full_punch_interval = 0.65,
		max_drop_level=3,
		groupcaps={
			fleshy={times={[2]=0.80, [3]=0.40}, uses=500, maxlevel=2},
			snappy={times={[2]=0.80, [3]=0.40}, uses=500, maxlevel=2},
			choppy={times={[3]=0.40}, uses=500, maxlevel=2}
		}
	}
})

minetest.register_tool("morestuff_nextgen:sword_bloodsword", {
	description = "Blood Sword",
	inventory_image = "morestuff_nextgen_tool_bloodsword.png",
	tool_capabilities = {
		full_punch_interval = 0.45,
		max_drop_level=3,
		groupcaps={
			fleshy={times={[2]=1.5, [3]=1.00}, uses=5000, maxlevel=3},
			snappy={times={[2]=1.5, [3]=1.00}, uses=5000, maxlevel=3},
			choppy={times={[3]=1.0}, uses=5000, maxlevel=3}
		}
	}
})

minetest.register_tool("morestuff_nextgen:sword_excalibur", {
	description = "Excalibur",
	inventory_image = "morestuff_nextgen_tool_excalibur.png",
	tool_capabilities = {
		full_punch_interval = 0.35,
		max_drop_level=3,
		groupcaps={
			fleshy={times={[2]=0.70, [3]=0.20}, uses=400, maxlevel=10},
			snappy={times={[2]=0.70, [3]=0.20}, uses=400, maxlevel=10},
			choppy={times={[3]=0.70}, uses=400, maxlevel=10}
		}
	}
})

minetest.register_tool("morestuff_nextgen:sword_xcalibur", {
	description = "Xcalibur",
	inventory_image = "morestuff_nextgen_tool_xcalibur.png",
	tool_capabilities = {
		full_punch_interval = 0.25,
		max_drop_level=3,
		groupcaps={
			fleshy={times={[2]=0.70, [3]=0.25}, uses=500, maxlevel=15},
			snappy={times={[2]=0.70, [3]=0.25}, uses=500, maxlevel=15},
			choppy={times={[3]=0.70}, uses=500, maxlevel=15}
		}
	}
})

-- Crafting

minetest.register_craft( {
	output = 'craft "morestuff_nextgen:sword_earthsword" 1',
	recipe = {
		{ '', 'craft "morestuff_nextgen:green_magicite"', '' },
		{ '', 'craft "morestuff_nextgen:green_magicite"', '' },
		{ '', 'craft "Stick"', '' },
	}
})

minetest.register_craft( {
	output = 'craft "morestuff_nextgen:sword_watersword" 1',
	recipe = {
		{ '', 'craft "morestuff_nextgen:blue_magicite"', '' },
		{ '', 'craft "morestuff_nextgen:blue_magicite"', '' },
		{ '', 'craft "Stick"', '' },
	}
})

minetest.register_craft( {
	output = 'craft "morestuff_nextgen:sword_firesword" 1',
	recipe = {
		{ '', 'craft "morestuff_nextgen:red_magicite"', '' },
		{ '', 'craft "morestuff_nextgen:red_magicite"', '' },
		{ '', 'craft "Stick"', '' },
	}
})

minetest.register_craft( {
	output = 'craft "morestuff_nextgen:sword_icesword" 1',
	recipe = {
		{ '', 'craft "morestuff_nextgen:white_magicite"', '' },
		{ '', 'craft "morestuff_nextgen:white_magicite"', '' },
		{ '', 'craft "Stick"', '' },
	}
})

minetest.register_craft( {
	output = 'craft "morestuff_nextgen:steel_battle_axe" 1',
	recipe = {
		{ 'craft "default:steel_ingot"', 'craft "default:steel_ingot"', 'craft "default:steel_ingot"' },
		{ 'craft "default:steel_ingot"', 'craft "default:stick"', 'craft "default:steel_ingot"' },
		{ '', 'craft default:stick', '' },
	}
})

minetest.register_craft( {
	output = 'craft "morestuff_nextgen:mese_battle_axe" 1',
	recipe = {
		{ 'craft "default:mese"', 'craft "default:mese"', 'craft "default:mese"' },
		{ 'craft "default:mese"', 'craft "default:stick"', 'craft "default:mese"' },
		{ '', 'craft default:stick', '' },
	}
})

minetest.register_craft( {
	output = 'craft "morestuff_nextgen:steel_longsword_blade" 1',
	recipe = {
		{ '', '', '' },
		{ 'craft "default:steel_ingot"', 'craft "default:steel_ingot"', 'craft "default:steel_ingot"' },
		{ '', '', '' },
	}
})

minetest.register_craft( {
	output = 'craft "morestuff_nextgen:sword_steel_longsword" 1',
	recipe = {
		{ '', 'craft "morestuff_nextgen:steel_longsword_blade"', '' },
		{ '', 'craft "default:stick"', '' },
		{ '', '', '' },
	}
})

minetest.register_craft( {
	output = 'craft "morestuff_nextgen:sword_bloodsword" 1',
	recipe = {
		{ '', 'craft "morestuff_nextgen:gopper_ingot"', '' },
		{ '', 'craft "morestuff_nextgen:gopper_ingot"', '' },
		{ '', 'craft "Stick"', '' },
	}
})

minetest.register_craft( {
	output = 'craft "morestuff_nextgen:sword_excalibur" 1',
	recipe = {
		{ '', 'craft "morestuff_nextgen:xoron_ingot"', '' },
		{ '', 'craft "morestuff_nextgen:xoron_ingot"', '' },
		{ '', 'craft "Stick"', '' },
	}
})

minetest.register_craft( {
	output = 'craft "morestuff_nextgen:sword_xcalibur" 1',
	recipe = {
		{ '', 'craft "morestuff_nextgen:zeron_ingot"', '' },
		{ '', 'craft "morestuff_nextgen:zeron_ingot"', '' },
		{ '', 'craft "Stick"', '' },
	}
})

minetest.register_craft( {
	output = 'craft "morestuff_nextgen:gopper_ingot"',
	recipe = {
		{ 'craft "morestuff_nextgen:xoron_ingot"'},
		{ 'craft "morestuff_nextgen:zeron_ingot"'},
	}
})

-- Smelting

minetest.register_craft({
    type = "cooking",
    output = "morestuff_nextgen:nuclear_waste",
    recipe = "morestuff_nextgen:naqueda_lump",
})

minetest.register_craft({
    type = "cooking",
    output = "morestuff_nextgen:xoron_ingot",
    recipe = "morestuff_nextgen:xoron_lump",
})

minetest.register_craft({
    type = "cooking",
    output = "morestuff_nextgen:zeron_ingot",
    recipe = "morestuff_nextgen:zeron_lump",
})

-- Ore generation

local function generate_ore(name, wherein, minp, maxp, seed, chunks_per_volume, ore_per_chunk, height_min, height_max)
	if maxp.y < height_min or minp.y > height_max then
		return
	end
	local y_min = math.max(minp.y, height_min)
	local y_max = math.min(maxp.y, height_max)
	local volume = (maxp.x-minp.x+1)*(y_max-y_min+1)*(maxp.z-minp.z+1)
	local pr = PseudoRandom(seed)
	local num_chunks = math.floor(chunks_per_volume * volume)
	local chunk_size = 3
	if ore_per_chunk <= 4 then
		chunk_size = 2
	end
	local inverse_chance = math.floor(chunk_size*chunk_size*chunk_size / ore_per_chunk)
	--print("generate_ore num_chunks: "..dump(num_chunks))
	for i=1,num_chunks do
		local y0 = pr:next(y_min, y_max-chunk_size+1)
		if y0 >= height_min and y0 <= height_max then
			local x0 = pr:next(minp.x, maxp.x-chunk_size+1)
			local z0 = pr:next(minp.z, maxp.z-chunk_size+1)
			local p0 = {x=x0, y=y0, z=z0}
			for x1=0,chunk_size-1 do
			for y1=0,chunk_size-1 do
			for z1=0,chunk_size-1 do
				if pr:next(1,inverse_chance) == 1 then
					local x2 = x0+x1
					local y2 = y0+y1
					local z2 = z0+z1
					local p2 = {x=x2, y=y2, z=z2}
					if minetest.env:get_node(p2).name == wherein then
						minetest.env:set_node(p2, {name=name})
					end
				end
			end
			end
			end
		end
	end
	--print("generate_ore done")
end

minetest.register_on_generated(function(minp, maxp, seed)
generate_ore("morestuff_nextgen:mineral_xoron", "default:stone", minp, maxp, seed+21,   1/10/10/10,    8, -31000,  -1000)
generate_ore("morestuff_nextgen:mineral_zeron", "default:stone", minp, maxp, seed+22,   1/15/15/15,    8, -31000,  -2000)
generate_ore("morestuff_nextgen:mineral_naqueda", "default:stone", minp, maxp, seed+23,   1/4/4/4,    8, -31000,  -500)
generate_ore("morestuff_nextgen:mineral_white_magicite", "default:stone", minp, maxp, seed+24,   1/20/20/20,    8, -31000,  -250)
generate_ore("morestuff_nextgen:mineral_red_magicite", "default:stone", minp, maxp, seed+25,   1/20/20/20,    8, -31000,  -250)
generate_ore("morestuff_nextgen:mineral_blue_magicite", "default:stone", minp, maxp, seed+26,   1/20/20/20,    8, -31000,  -250)
generate_ore("morestuff_nextgen:mineral_green_magicite", "default:stone", minp, maxp, seed+27,   1/20/20/20,    8, -31000,  -250)
end)
