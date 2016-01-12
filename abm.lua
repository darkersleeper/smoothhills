
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

minetest.register_abm(
   {nodenames = {"default:dirt"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y, z = pos.z})
	  local x1b = minetest.get_node({x = pos.x + 1, y = pos.y - 1, z = pos.z})
	  local x1bd = minetest.registered_nodes[x1b.name]
	        local x2 = minetest.get_node({x = pos.x - 1, y = pos.y, z = pos.z})
			local x2b = minetest.get_node({x = pos.x - 1, y = pos.y - 1, z = pos.z})
			local x2bd = minetest.registered_nodes[x2b.name]
			      local z1 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
				  local z1b = minetest.get_node({x = pos.x, y = pos.y - 1, z = pos.z + 1})
				  local z1bd = minetest.registered_nodes[z1b.name]
				        local z2 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
						local z2b = minetest.get_node({x = pos.x, y = pos.y - 1, z = pos.z - 1})
						local z2bd = minetest.registered_nodes[z2b.name]
						local below = minetest.get_node({x = pos.x, y = pos.y - 1, z = pos.z})
      if x1.name == "air" 
	  	  and below.name ~= "air"
				and x1bd.drawtype == "normal"
				and	x1b.name ~= "air" 
				then
        minetest.set_node({x = pos.x + 1, y = pos.y, z = pos.z}, {name = "smoothhills:panel_dirt_bottom",param2 = 3})
      end
	        if x2.name == "air" 
	  	  and below.name ~= "air"
				and x2bd.drawtype == "normal"
				and	x2b.name ~= "air" 
				then
        minetest.set_node({x = pos.x - 1, y = pos.y, z = pos.z}, {name = "smoothhills:panel_dirt_bottom",param2 = 1})
      end
		if z1.name == "air" 
	  	  and below.name ~= "air"
				and z1bd.drawtype == "normal"
				and	z1b.name ~= "air" 
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z + 1}, {name = "smoothhills:panel_dirt_bottom",param2 = 2})
      end
	        if z2.name == "air" 
	  	  and below.name ~= "air"
				and z2bd.drawtype == "normal"
				and	z2b.name ~= "air" 
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z - 1}, {name = "smoothhills:panel_dirt_bottom",param2 = 0})
      end
   end
})

minetest.register_abm(
   {nodenames = {"default:sand"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y, z = pos.z})
	  local x1b = minetest.get_node({x = pos.x + 1, y = pos.y - 1, z = pos.z})
	  local x1bd = minetest.registered_nodes[x1b.name]
	        local x2 = minetest.get_node({x = pos.x - 1, y = pos.y, z = pos.z})
			local x2b = minetest.get_node({x = pos.x - 1, y = pos.y - 1, z = pos.z})
			local x2bd = minetest.registered_nodes[x2b.name]
			      local z1 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
				  local z1b = minetest.get_node({x = pos.x, y = pos.y - 1, z = pos.z + 1})
				  local z1bd = minetest.registered_nodes[z1b.name]
				        local z2 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
						local z2b = minetest.get_node({x = pos.x, y = pos.y - 1, z = pos.z - 1})
						local z2bd = minetest.registered_nodes[z2b.name]
						
							local below = minetest.get_node({x = pos.x, y = pos.y - 1, z = pos.z})
      if x1.name == "air" 
	  	  and below.name ~= "air"
				and x1bd.drawtype == "normal"
				and	x1b.name ~= "air" 
				then
        minetest.set_node({x = pos.x + 1, y = pos.y, z = pos.z}, {name = "smoothhills:panel_sand_bottom",param2 = 3})
      end
	        if x2.name == "air" 
	  	  and below.name ~= "air"
				and x2bd.drawtype == "normal"
				and	x2b.name ~= "air" 
				then
        minetest.set_node({x = pos.x - 1, y = pos.y, z = pos.z}, {name = "smoothhills:panel_sand_bottom",param2 = 1})
      end
	  
	        if z1.name == "air" 
	  	  and below.name ~= "air"
				and z1bd.drawtype == "normal"
				and	z1b.name ~= "air" 
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z + 1}, {name = "smoothhills:panel_sand_bottom",param2 = 2})
      end
	        if z2.name == "air" 
	  	  and below.name ~= "air"
				and z2bd.drawtype == "normal"
				and	z2b.name ~= "air" 
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z - 1}, {name = "smoothhills:panel_sand_bottom",param2 = 0})
      end
   end
})

minetest.register_abm(
   {nodenames = {"default:dirt_with_grass"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y, z = pos.z})
	  local x1b = minetest.get_node({x = pos.x + 1, y = pos.y - 1, z = pos.z})
	  local x1bd = minetest.registered_nodes[x1b.name]
	        local x2 = minetest.get_node({x = pos.x - 1, y = pos.y, z = pos.z})
			local x2b = minetest.get_node({x = pos.x - 1, y = pos.y - 1, z = pos.z})
			local x2bd = minetest.registered_nodes[x2b.name]
			      local z1 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
				  local z1b = minetest.get_node({x = pos.x, y = pos.y - 1, z = pos.z + 1})
				  local z1bd = minetest.registered_nodes[z1b.name]
				        local z2 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
						local z2b = minetest.get_node({x = pos.x, y = pos.y - 1, z = pos.z - 1})
						local z2bd = minetest.registered_nodes[z2b.name]
						
							local below = minetest.get_node({x = pos.x, y = pos.y - 1, z = pos.z})
      if x1.name == "air" 
	  	  and below.name ~= "air"
				and x1bd.drawtype == "normal"
				and	x1b.name ~= "air" 
				then
        minetest.set_node({x = pos.x + 1, y = pos.y, z = pos.z}, {name = "smoothhills:panel_dirt_with_grass_bottom",param2 = 3})
      end
	        if x2.name == "air" 
	  	  and below.name ~= "air"
				and x2bd.drawtype == "normal"
				and	x2b.name ~= "air" 
				then
        minetest.set_node({x = pos.x - 1, y = pos.y, z = pos.z}, {name = "smoothhills:panel_dirt_with_grass_bottom",param2 = 1})
      end
	  
	        if z1.name == "air" 
	  	  and below.name ~= "air"
				and z1bd.drawtype == "normal"
				and	z1b.name ~= "air" 
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z + 1}, {name = "smoothhills:panel_dirt_with_grass_bottom",param2 = 2})
      end
	        if z2.name == "air" 
	  	  and below.name ~= "air"
				and z2bd.drawtype == "normal"
				and	z2b.name ~= "air" 
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z - 1}, {name = "smoothhills:panel_dirt_with_grass_bottom",param2 = 0})
      end
   end
})

    minetest.register_abm(
   {nodenames = {"smoothhills:panel_sand_bottom","smoothhills:corner_sand"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
			if z1.name == "default:sand"
		   and z2.name == "default:sand"
		    or x1.name == "default:sand"
		   and x2.name == "default:sand"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:panel_sand_slab",param2 = 0})
   end
   end
   })
    minetest.register_abm(
   {nodenames = {"smoothhills:panel_dirt_bottom","smoothhills:corner_dirt"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
			if z1.name == "default:dirt"
		   and z2.name == "default:dirt" 
		    or x1.name == "default:dirt"
		   and x2.name == "default:dirt"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:panel_dirt_with_grass_slab",param2 = 0})
   end
   end
   })
    minetest.register_abm(
   {nodenames = {"smoothhills:panel_dirt_with_grass_bottom","smoothhills:corner_dirt_with_grass"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
			if z1.name == "default:dirt_with_grass"
		   and z2.name == "default:dirt_with_grass" 
		    or x1.name == "default:dirt_with_grass"
		   and x2.name == "default:dirt_with_grass"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:panel_dirt_with_grass_slab",param2 = 0})
   end
   end
   })
    minetest.register_abm(
   {nodenames = {"smoothhills:panel_sand_bottom"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
			if x2.name == "default:sand"
		   and z1.name == "default:sand"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_sand",param2 = 0})
   end
   end
   })
	minetest.register_abm(
   {nodenames = {"smoothhills:panel_sand_bottom"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
			if x1.name == "default:sand"
		   and z1.name == "default:sand"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_sand",param2 = 1})
   end
   end
   })
    minetest.register_abm(
   {nodenames = {"smoothhills:panel_sand_bottom"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
			if x1.name == "default:sand"
		   and z2.name == "default:sand"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_sand",param2 = 2})
   end
   end
   })
   
   	minetest.register_abm(
   {nodenames = {"smoothhills:panel_sand_bottom"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
			if x2.name == "default:sand"
		   and z2.name == "default:sand"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_sand",param2 = 3})
   end
   end
   })
   
    minetest.register_abm(
   {nodenames = {"smoothhills:panel_dirt_bottom"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
			if x2.name == "default:dirt"
		   and z1.name == "default:dirt"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_dirt",param2 = 0})
   end
   end
   })
	minetest.register_abm(
   {nodenames = {"smoothhills:panel_dirt_bottom"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
			if x1.name == "default:dirt"
		   and z1.name == "default:dirt"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_dirt",param2 = 1})
   end
   end
   })
    minetest.register_abm(
   {nodenames = {"smoothhills:panel_dirt_bottom"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
			if x1.name == "default:dirt"
		   and z2.name == "default:dirt"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_dirt",param2 = 2})
   end
   end
   })
   
   	minetest.register_abm(
   {nodenames = {"smoothhills:panel_dirt_bottom"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
			if x2.name == "default:dirt"
		   and z2.name == "default:dirt"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_dirt",param2 = 3})
   end
   end
   })
   
    minetest.register_abm(
   {nodenames = {"smoothhills:panel_dirt_with_grass_bottom"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
			if x2.name == "default:dirt_with_grass"
		   and z1.name == "default:dirt_with_grass"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_dirt_with_grass",param2 = 0})
   end
   end
   })
	minetest.register_abm(
   {nodenames = {"smoothhills:panel_dirt_with_grass_bottom"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
			if x1.name == "default:dirt_with_grass"
		   and z1.name == "default:dirt_with_grass"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_dirt_with_grass",param2 = 1})
   end
   end
   })
    minetest.register_abm(
   {nodenames = {"smoothhills:panel_dirt_with_grass_bottom"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
			if x1.name == "default:dirt_with_grass"
		   and z2.name == "default:dirt_with_grass"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_dirt_with_grass",param2 = 2})
   end
   end
   })
   
   	minetest.register_abm(
   {nodenames = {"smoothhills:panel_dirt_with_grass_bottom"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
			if x2.name == "default:dirt_with_grass"
		   and z2.name == "default:dirt_with_grass"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_dirt_with_grass",param2 = 3})
   end
   end
   })
   
    minetest.register_abm(
   {nodenames = {"smoothhills:corner_sand"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y + 1, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y + 1, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z - 1})
			if x2.name == "smoothhills:panel_sand_bottom"
		   and z1.name == "smoothhills:panel_sand_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_sand_high",param2 = 0})
   end
   end
   })
	minetest.register_abm(
   {nodenames = {"smoothhills:corner_sand"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y + 1, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y + 1, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z - 1})
			if x1.name == "smoothhills:panel_sand_bottom"
		   and z1.name == "smoothhills:panel_sand_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_sand_high",param2 = 1})
   end
   end
   })
    minetest.register_abm(
   {nodenames = {"smoothhills:corner_sand"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y + 1, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y + 1, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z - 1})
			if x1.name == "smoothhills:panel_sand_bottom"
		   and z2.name == "smoothhills:panel_sand_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_sand_high",param2 = 2})
   end
   end
   })
   
   	minetest.register_abm(
   {nodenames = {"smoothhills:corner_sand"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y + 1, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y + 1, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z - 1})
			if x2.name == "smoothhills:panel_sand_bottom"
		   and z2.name == "smoothhills:panel_sand_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_sand_high",param2 = 3})
   end
   end
   })
   
    minetest.register_abm(
   {nodenames = {"smoothhills:corner_dirt"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y + 1, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y + 1, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z - 1})
			if x2.name == "smoothhills:panel_dirt_bottom"
		   and z1.name == "smoothhills:panel_dirt_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_dirt_high",param2 = 0})
   end
   end
   })
	minetest.register_abm(
   {nodenames = {"smoothhills:corner_dirt"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y + 1, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y + 1, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z - 1})
			if x1.name == "smoothhills:panel_dirt_bottom"
		   and z1.name == "smoothhills:panel_dirt_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_dirt_high",param2 = 1})
   end
   end
   })
    minetest.register_abm(
   {nodenames = {"smoothhills:corner_dirt"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y + 1, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y + 1, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z - 1})
			if x1.name == "smoothhills:panel_dirt_bottom"
		   and z2.name == "smoothhills:panel_dirt_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_dirt_high",param2 = 2})
   end
   end
   })
   
   	minetest.register_abm(
   {nodenames = {"smoothhills:corner_dirt"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y + 1, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y + 1, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z - 1})
			if x2.name == "smoothhills:panel_dirt_bottom"
		   and z2.name == "smoothhills:panel_dirt_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_dirt_high",param2 = 3})
   end
   end
   })
   
    minetest.register_abm(
   {nodenames = {"smoothhills:corner_dirt_with_grass"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y + 1, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y + 1, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z - 1})
			if x2.name == "smoothhills:panel_dirt_with_grass_bottom"
		   and z1.name == "smoothhills:panel_dirt_with_grass_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_dirt_with_grass_high",param2 = 0})
   end
   end
   })
	  minetest.register_abm(
   {nodenames = {"smoothhills:corner_dirt_with_grass"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y + 1, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y + 1, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z - 1})
			if x1.name == "smoothhills:panel_dirt_with_grass_bottom"
		   and z1.name == "smoothhills:panel_dirt_with_grass_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_dirt_with_grass_high",param2 = 1})
   end
   end
   })
      minetest.register_abm(
   {nodenames = {"smoothhills:corner_dirt_with_grass"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y + 1, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y + 1, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z - 1})
			if x1.name == "smoothhills:panel_dirt_with_grass_bottom"
		   and z2.name == "smoothhills:panel_dirt_with_grass_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_dirt_with_grass_high",param2 = 2})
   end
   end
   })

   	  minetest.register_abm(
   {nodenames = {"smoothhills:corner_dirt_with_grass"},
   interval = 2,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y + 1, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y + 1, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z - 1})
			if x2.name == "smoothhills:panel_dirt_with_grass_bottom"
		   and z2.name == "smoothhills:panel_dirt_with_grass_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_dirt_with_grass_high",param2 = 3})
   end
   end
   })
   

   
