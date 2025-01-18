local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)
local S = minetest.get_translator()
local F = minetest.formspec_escape
local C = minetest.colorize

minetest.register_node("mcl_moreblocks:fancycobblebricks", {
	description = S("Fancy Cobblestone Bricks"),
	tiles = {"cobblestone_bricks_fancy.png"},
	is_ground_content = false,
	groups = {pickaxey=1, flammable=1, quartz_block=1, building_block=1, material_stone=1, fire_encouragement=5, fire_flammability=5},
	sounds = mcl_sounds.node_sound_stone_defaults(),
	_mcl_blast_resistance = 4,
	_mcl_hardness = 3,
})
minetest.register_craft({
	output = "mcl_moreblocks:fancycobblebricks",
	recipe = {
		{"mcl_core:stone", "mcl_core:cobble"},
	}
})
minetest.register_craft({
	output = "mcl_moreblocks:fancycobblebricks",
	recipe = {
		{"mcl_core:stone", "mcl_core:cobble"},
	}
})
mcl_stairs.register_stair_and_slab_simple("fancycobblebricks", "mcl_moreblocks:fancycobblebricks", S("Fancy Cobblestone Brick Stair"), S("Fancy Cobblestone Brick Slab"), S("Double Fancy Cobblestone Brick Slab"))


-------------------separate-------------
minetest.register_node("mcl_moreblocks:smooth_spruce_planks", {
	description = S("Smooth Spruce Planks"),
	tiles = {"smooth_spruce_planks.png"},
	is_ground_content = false,
	groups = {pickaxey=1, flammable=2, quartz_block=1, building_block=1, material_stone=1, fire_encouragement=5, fire_flammability=5},
	sounds = mcl_sounds.node_sound_stone_defaults(),
	_mcl_blast_resistance = 4,
	_mcl_hardness = 3,
})
minetest.register_craft({
	output = "mcl_moreblocks:smooth_spruce_planks",
	recipe = {
		{"mcl_core:obsidian", "mcl_core:cobble_stone"},
	}
})
minetest.register_craft({
	output = "mcl_moreblocks:fancycobblebricks",
	recipe = {
		{"mcl_core:stone", "mcl_core:cobble_stone"},
	}
})
mcl_stairs.register_stair_and_slab_simple("fancycobblebricks", "mcl_moreblocks:fancycobblebricks", S("Fancy Cobblestone Brick Stair"), S("Fancy Cobblestone Brick Slab"), S("Double Fancy Cobblestone Brick Slab"))

-----------------------separate--------------
mcl_fences.register_fence_def("albino_fence", {
    description = S("Albino Planks Fence"),
    tiles = { "albino_planks.png" },
    groups = { pickaxey = 1, fence_nether_brick = 1 },
    connects_to = { "group:albino_planks", "group:solid" },
    sounds = mcl_sounds.node_sound_stone_defaults(),
    _mcl_blast_resistance = 6,
    _mcl_hardness = 1,
    _mcl_fences_baseitem = "mcl_moreblocks:albino_fence",
    _mcl_fences_stickreplacer = "mcl_nether:netherbrick",
    _mcl_fences_output_amount = 6
})
----------------------------------------------------------------
	---mcl_fences.register_fence_and_fence_gate_def("mcl_moreblocks:albino_fence", {
		--groups = groups,}
		--sounds = mcl_sounds.node_sound_wood_defaults(),
		--tiles = "mcl_moreblocks:albino_fence.png".tiles,
		--_mcl_blast_resistance = basedefs._mcl_blast_resistance,
		--_mcl_hardness = basedefs._mcl_hardness,
		--_mcl_burntime = basedefs._mcl_burntime,
		--_mcl_fences_baseitem = "mcl_moreblocks:albino_planks"..wood
	--}, {
		--description = S("Albino Fence", defs.readable_name),
		--connects_to = { "group:fence_wood", "group:solid" },
		---_mcl_fences_output_amount = 6
	--}, {
		--description = S("Albino Fence Gate", defs.readable_name),
		--_mcl_fences_output_amount = 6
	--})
---------------------------------------------------------------------
minetest.register_node("mcl_moreblocks:albino_planks", {
	description = S("Albino Planks"),
	tiles = {"albino_planks.png"},
	is_ground_content = false,
	groups = {pickaxey=1, flammable=2, quartz_block=1, building_block=1, material_stone=1, fire_encouragement=5, fire_flammability=5},
	sounds = mcl_sounds.node_sound_stone_defaults(),
	_mcl_blast_resistance = 4,
	_mcl_hardness = 3,
})
--minetest.register_craft({
	--output = "mcl_moreblocks:smooth_spruce_planks",
	--recipe = {
		--{"mcl_core:obsidian", "mcl_core:cobble_stone"},
	--}
--})
--minetest.register_craft({
	--output = "mcl_moreblocks:fancycobblebricks",
	--recipe = {
		--{"mcl_core:stone", "mcl_core:cobble_stone"},
	--}
--})
mcl_stairs.register_stair_and_slab_simple("albinoplanks", "mcl_moreblocks:albino_planks", S("Albino Planks Stair"), S("Albino Planks Slab"), S("Double Albino Planks Slab"))

----------------------------------------Plant 1
minetest.register_node("mcl_moreblocks:plant1", {
	description = S("Plant One"),
	tiles = {"plant1.png"},
	use_texture_alpha = "clip",
	drawtype = "mesh",
	mesh = "mcl_moreblocks_plant1.obj",
	--paramtype = "light",
	stack_max = 16,
	selection_box = {
		type = "fixed",
		fixed = {-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125},
	},
	collision_box = {
		type = "fixed",
		fixed = {-0.3125, -0.5, -0.3125, 0.3125, 0.5, 0.3125},
	},
	is_ground_content = false,
	--light_source = minetest.LIGHT_MAX,
	groups = {handy=1, axey=1, attached_node=1, deco_block=1, flammable=-1},
	sounds = mcl_sounds.node_sound_wood_defaults(),
	_mcl_blast_resistance = 0.9,
	_mcl_hardness = 0.9,
})
--minetest.register_craft({
	--output = "mcl_moreblocks:plant1",
	--recipe = {
		--{"group:wool", "group:wool", "group:wool"},
		--{"group:wool", "mcl_torches:torch", "group:wool"},
		--{"mcl_core:cobble", "mcl_core:cobble", "mcl_core:cobble"}
	--}
--})

