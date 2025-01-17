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
		{"mcl_core:stone", "mcl_core:cobble_stone"},
	}
})
minetest.register_craft({
	output = "mcl_moreblocks:fancycobblebricks",
	recipe = {
		{"mcl_core:stone", "mcl_core:cobble_stone"},
	}
})
mcl_stairs.register_stair_and_slab_simple("fancycobblebricks", "mcl_moreblocks:fancycobblebricks", S("Fancy Cobblestone Brick Stair"), S("Fancy Cobblestone Brick Slab"), S("Double Fancy Cobblestone Brick Slab"))
