
--[[
    Copyright (C) 2016  Skyduskguy <doubleduskgames@gmail.com>

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
--]]

		minetest.register_node("smoothhills:panel_dirt_with_grass_bottom", {
		description = description,
		drawtype = "nodebox",
		tiles = {"default_grass.png", "default_dirt.png", "default_dirt.png^default_grass_side.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		pointable = true,
		buildable_to = true,
		is_ground_content = false,
		sunlight_propagates = sunlight,
		groups = {dig_immediate=3, crumbly=3, falling_node=1, dirt_with_grass=1},
		sounds = default.node_sound_dirt_defaults(),
		drop = "",
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0.5, 0, 0.5},
		},
	})
	
	minetest.register_node("smoothhills:panel_sand_bottom", {
		description = description,
		drawtype = "nodebox",
		tiles = {"default_sand.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		pointable = true,
		buildable_to = true,
		is_ground_content = false,
		sunlight_propagates = sunlight,
		groups = {dig_immediate=3, crumbly=3, falling_node=1, sand=1},
		sounds = default.node_sound_sand_defaults(),
		drop = "",
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0.5, 0, 0.5},
		},
	})
	
	minetest.register_node("smoothhills:panel_sand_slab", {
		description = description,
		drawtype = "nodebox",
		tiles = {"default_sand.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		pointable = true,
		buildable_to = true,
		is_ground_content = false,
		sunlight_propagates = sunlight,
		groups = {dig_immediate=3, crumbly=3, falling_node=1, sand=1},
		sounds = default.node_sound_sand_defaults(),
		drop = "",
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
	})
	minetest.register_node("smoothhills:panel_dirt_slab", {
		description = description,
		drawtype = "nodebox",
		tiles = {"default_dirt.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		pointable = true,
		buildable_to = true,
		is_ground_content = false,
		sunlight_propagates = sunlight,
		groups = {dig_immediate=3, crumbly=3, falling_node=1, dirt=1},
		sounds = default.node_sound_dirt_defaults(),
		drop = "",
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
	})
	minetest.register_node("smoothhills:panel_dirt_with_grass_slab", {
		description = description,
		drawtype = "nodebox",
		tiles = {"default_grass.png", "default_dirt.png", "default_dirt.png^default_grass_side.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		pointable = true,
		buildable_to = true,
		is_ground_content = false,
		sunlight_propagates = sunlight,
		groups = {dig_immediate=3, crumbly=3, falling_node=1, dirt=1},
		sounds = default.node_sound_dirt_defaults(),
		drop = "",
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
	})

	minetest.register_node("smoothhills:corner_sand", {
		description = description,
		drawtype = "nodebox",
		tiles = {"default_sand.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		pointable = true,
		buildable_to = true,
		is_ground_content = false,
		sunlight_propagates = sunlight,
		groups = {dig_immediate=3, crumbly=3, falling_node=1, sand=1},
		sounds = default.node_sound_sand_defaults(),
		drop = "",
		node_box = {
			type = "fixed",
			fixed = {
			{-0.5, -0.5, 0, 0.5, 0, 0.5},
			{-0.5, -0.5, -0.5, 0, 0, 0},
		},
	}})
	
		minetest.register_node("smoothhills:corner_sand_high", {
		description = description,
		drawtype = "nodebox",
		tiles = {"default_sand.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		pointable = true,
		buildable_to = true,
		is_ground_content = false,
		sunlight_propagates = sunlight,
		groups = {dig_immediate=3, crumbly=3, falling_node=1, sand=1},
		sounds = default.node_sound_sand_defaults(),
		drop = "",
		node_box = {
			type = "fixed",
			fixed = {
			{-0.5, -0.5, -0.5, 0, 0, 0.0625},
			{-0.0625, -0.5, 0, 0.5, 0, 0.5},
			{-0.5, -0.5, 0, 0, 0.5, 0.5},
		},
	}})
	
		minetest.register_node("smoothhills:corner_dirt_high", {
		description = description,
		drawtype = "nodebox",
		tiles = {"default_dirt.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		pointable = true,
		buildable_to = true,
		is_ground_content = false,
		sunlight_propagates = sunlight,
		groups = {dig_immediate=3, crumbly=3, falling_node=1, dirt=1},
		sounds = default.node_sound_dirt_defaults(),
		drop = "",
		node_box = {
			type = "fixed",
			fixed = {
			{-0.5, -0.5, -0.5, 0, 0, 0.0625},
			{-0.0625, -0.5, 0, 0.5, 0, 0.5},
			{-0.5, -0.5, 0, 0, 0.5, 0.5},
		},
	}})
	
	minetest.register_node("smoothhills:corner_dirt", {
		description = description,
		drawtype = "nodebox",
		tiles = {"default_dirt.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		pointable = true,
		buildable_to = true,
		is_ground_content = false,
		sunlight_propagates = sunlight,
		groups = {dig_immediate=3, crumbly=3, falling_node=1, dirt=1},
		sounds = default.node_sound_dirt_defaults(),
		drop = "",
		node_box = {
			type = "fixed",
			fixed = {
			{-0.5, -0.5, 0, 0.5, 0, 0.5},
			{-0.5, -0.5, -0.5, 0, 0, 0},
		},
	}})
	
	minetest.register_node("smoothhills:corner_dirt_with_grass", {
		description = description,
		drawtype = "nodebox",
		tiles = {"default_grass.png", "default_dirt.png", "default_dirt.png^default_grass_side.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		pointable = true,
		buildable_to = true,
		is_ground_content = false,
		sunlight_propagates = sunlight,
		groups = {dig_immediate=3, crumbly=3, falling_node=1, dirt=1},
		sounds = default.node_sound_dirt_defaults(),
		drop = "",
		node_box = {
			type = "fixed",
			fixed = {
			{-0.5, -0.5, 0, 0.5, 0, 0.5},
			{-0.5, -0.5, -0.5, 0, 0, 0},
		},
	}})
	
		minetest.register_node("smoothhills:corner_dirt_with_grass_high", {
		description = description,
		drawtype = "nodebox",
		tiles = {"default_grass.png", "default_dirt.png", "default_dirt.png^default_grass_side.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		pointable = true,
		buildable_to = true,
		is_ground_content = false,
		sunlight_propagates = sunlight,
		groups = {dig_immediate=3, crumbly=3, falling_node=1, dirt=1},
		sounds = default.node_sound_dirt_defaults(),
		drop = "",
		node_box = {
			type = "fixed",
			fixed = {
			{-0.5, -0.5, -0.5, 0, 0, 0.0625},
			{-0.0625, -0.5, 0, 0.5, 0, 0.5},
			{-0.5, -0.5, 0, 0, 0.5, 0.5},
		},
	}})
	




	minetest.register_node("smoothhills:panel_dirt_bottom", {
		description = description,
		drawtype = "nodebox",
		tiles = {"default_dirt.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		pointable = true,
		buildable_to = true,
		is_ground_content = false,
		sunlight_propagates = sunlight,
		groups = {dig_immediate=3, crumbly=3, falling_node=1, dirt=1},
		sounds = default.node_sound_dirt_defaults(),
		drop = "",
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0.5, 0, 0.5},
		},
	})
