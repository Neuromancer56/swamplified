------------------------------------------------------------------------
-------------------MAPGENS
------------------------------------------------------------------------


--[[
minetest.register_decoration({
    deco_type = "simple",
        place_on = {"default:water_source", "swamp:swamp_water_source"},
    sidelen = 16,
    fill_ratio = 0.15,
   biomes = {"swamp", "swamp_ocean"},
decoration = "flowers:waterlily_waving",
})
]]

		minetest.register_decoration({
		name = "swamplified:mang_1_1_Dying",
		deco_type = "schematic",
		place_on = {"swamp:dirt_with_swamp_grass", "swamp:mud", "swamp:root_with_mud"},
		sidelen = 16,
		noise_params = {
			offset = 0.015,
			scale = 0.001,
			spread = {x = 250, y = 250, z = 250},
			seed = 201,
			octaves = 1,
			persist = 0.11
		},
		biomes = {"swamp"},
		y_max = -1,
		y_min = -1,
		schematic = minetest.get_modpath("swamplified") .. "/schematics/mang_1_1_Dying.mts",
		flags = "place_center_x, place_center_z, force_placement",
		rotation = "random"
	})

local function register_mgv6_waterlily()
	minetest.register_decoration({
		name = "flowers:waterlily",
		deco_type = "simple",
		place_on = {"swamp:mud", "swamp:dirt_with_swamp_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.12,
			scale = 0.3,
			spread = {x = 100, y = 100, z = 100},
			seed = 33,
			octaves = 3,
			persist = 0.7
		},
		y_max = 0,
		y_min = 0,
		decoration = "flowers:waterlily_waving",
		param2 = 0,
		param2_max = 3,
		place_offset_y = 1,
	})
end

local function register_waterlily()
    minetest.register_decoration({
        name = "swamplified:waterlily",
        deco_type = "simple",
        place_on = {"swamp:mud", "swamp:dirt_with_swamp_grass", "default:water_source"},
		 --place_on = {"swamp:root_with_mud", "swamp:mud", "swamp:dirt_with_swamp_grass", "default:water_source"},
        sidelen = 16,
        noise_params = {
            offset = -0.12,
            scale = 0.5,
            spread = {x = 200, y = 200, z = 200},
            seed = 33,
            octaves = 3,
            persist = 0.9
        },
       biomes = {"swamp", "swamp_ocean"},
        y_max = 0,
        y_min = 0,
        decoration = "flowers:waterlily_waving",
        param2 = 0,
        param2_max = 3,
        place_offset_y = 1,
    })


end
register_waterlily()
