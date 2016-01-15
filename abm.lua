-- delete pseudo blocks if no parent nearby
	minetest.register_abm(
   {nodenames = {"smoothhills:panel_dirt_bottom", "smoothhills:corner_dirt", "smoothhills:panel_dirt_slab", "smoothhills:corner_dirt_high"},
   interval = 5,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y, z = pos.z})
		local x2 = minetest.get_node({x = pos.x - 1, y = pos.y, z = pos.z})
			local z1 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
				local z2 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
      if x1.name ~= "default:dirt"
	  and x2.name ~= "default:dirt"
	  and z1.name ~= "default:dirt"
	  and z2.name ~= "default:dirt"
				then
        minetest.set_node(pos, {name="air"})
      end
	     end
})
	minetest.register_abm(
   {nodenames = {"smoothhills:panel_dirt_with_grass_bottom", "smoothhills:corner_dirt_with_grass", "smoothhills:panel_dirt_with_grass_slab", "smoothhills:corner_dirt_with_grass_high"},
   interval = 5,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y, z = pos.z})
		local x2 = minetest.get_node({x = pos.x - 1, y = pos.y, z = pos.z})
			local z1 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
				local z2 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
      if x1.name ~= "default:dirt_with_grass"
	  and x2.name ~= "default:dirt_with_grass"
	  and z1.name ~= "default:dirt_with_grass"
	  and z2.name ~= "default:dirt_with_grass"
				then
        minetest.set_node(pos, {name="air"})
      end
	     end
})
	minetest.register_abm(
   {nodenames = {"smoothhills:panel_sand_bottom", "smoothhills:corner_sand", "smoothhills:panel_sand_slab", "smoothhills:corner_sand_high"},
   interval = 5,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y, z = pos.z})
		local x2 = minetest.get_node({x = pos.x - 1, y = pos.y, z = pos.z})
			local z1 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
				local z2 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
      if x1.name ~= "default:sand"
	  and x2.name ~= "default:sand"
	  and z1.name ~= "default:sand"
	  and z2.name ~= "default:sand"
				then
        minetest.set_node(pos, {name="air"})
      end
	     end
})
	minetest.register_abm(
   {nodenames = {"smoothhills:panel_desert_sand_bottom", "smoothhills:corner_desert_sand", "smoothhills:panel_desert_sand_slab", "smoothhills:corner_desert_sand_high"},
   interval = 5,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y, z = pos.z})
		local x2 = minetest.get_node({x = pos.x - 1, y = pos.y, z = pos.z})
			local z1 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
				local z2 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
      if x1.name ~= "default:desert_sand"
	  and x2.name ~= "default:desert_sand"
	  and z1.name ~= "default:desert_sand"
	  and z2.name ~= "default:desert_sand"
				then
        minetest.set_node(pos, {name="air"})
      end
	     end
})
	minetest.register_abm(
   {nodenames = {"smoothhills:panel_gravel_bottom", "smoothhills:corner_gravel", "smoothhills:panel_gravel_slab", "smoothhills:corner_gravel_high"},
   interval = 5,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y, z = pos.z})
		local x2 = minetest.get_node({x = pos.x - 1, y = pos.y, z = pos.z})
			local z1 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
				local z2 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
      if x1.name ~= "default:gravel"
	  and x2.name ~= "default:gravel"
	  and z1.name ~= "default:gravel"
	  and z2.name ~= "default:gravel"
				then
        minetest.set_node(pos, {name="air"})
      end
	     end
})
	-- Dirt
	minetest.register_abm(
   {nodenames = {"default:dirt"},
   interval = 10,
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
   {nodenames = {"smoothhills:panel_dirt_bottom"},
   interval = 10,
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
			if x1.name == "default:dirt"
		   and z1.name == "default:dirt"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_dirt",param2 = 1})
   end
			if x1.name == "default:dirt"
		   and z2.name == "default:dirt"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_dirt",param2 = 2})
   end
			if x2.name == "default:dirt"
		   and z2.name == "default:dirt"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_dirt",param2 = 3})
   end
   end
   })
    minetest.register_abm(
   {nodenames = {"smoothhills:panel_dirt_bottom","smoothhills:corner_dirt"},
   interval = 10,
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
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:panel_dirt_slab",param2 = 0})
   end
   end
   })
    minetest.register_abm(
   {nodenames = {"smoothhills:corner_dirt"},
   interval = 10,
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
			if x1.name == "smoothhills:panel_dirt_bottom"
		   and z1.name == "smoothhills:panel_dirt_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_dirt_high",param2 = 1})
   end
			if x1.name == "smoothhills:panel_dirt_bottom"
		   and z2.name == "smoothhills:panel_dirt_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_dirt_high",param2 = 2})
   end
			if x2.name == "smoothhills:panel_dirt_bottom"
		   and z2.name == "smoothhills:panel_dirt_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_dirt_high",param2 = 3})
   end
   end
   })

	-- Dirt with Grass
	minetest.register_abm(
   {nodenames = {"default:dirt_with_grass"},
   interval = 10,
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
   {nodenames = {"smoothhills:panel_dirt_with_grass_bottom"},
   interval = 10,
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
			if x1.name == "default:dirt_with_grass"
		   and z1.name == "default:dirt_with_grass"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_dirt_with_grass",param2 = 1})
   end
			if x1.name == "default:dirt_with_grass"
		   and z2.name == "default:dirt_with_grass"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_dirt_with_grass",param2 = 2})
   end
			if x2.name == "default:dirt_with_grass"
		   and z2.name == "default:dirt_with_grass"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_dirt_with_grass",param2 = 3})
   end
   end
   })
    minetest.register_abm(
   {nodenames = {"smoothhills:panel_dirt_with_grass_bottom","smoothhills:corner_dirt_with_grass"},
   interval = 10,
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
   {nodenames = {"smoothhills:corner_dirt_with_grass"},
   interval = 10,
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
			if x1.name == "smoothhills:panel_dirt_with_grass_bottom"
		   and z1.name == "smoothhills:panel_dirt_with_grass_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_dirt_with_grass_high",param2 = 1})
   end
			if x1.name == "smoothhills:panel_dirt_with_grass_bottom"
		   and z2.name == "smoothhills:panel_dirt_with_grass_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_dirt_with_grass_high",param2 = 2})
   end
			if x2.name == "smoothhills:panel_dirt_with_grass_bottom"
		   and z2.name == "smoothhills:panel_dirt_with_grass_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_dirt_with_grass_high",param2 = 3})
   end
   end
   })

	-- Sand
	minetest.register_abm(
   {nodenames = {"default:sand"},
   interval = 10,
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
   {nodenames = {"smoothhills:panel_sand_bottom"},
   interval = 10,
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
			if x1.name == "default:sand"
		   and z1.name == "default:sand"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_sand",param2 = 1})
   end
			if x1.name == "default:sand"
		   and z2.name == "default:sand"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_sand",param2 = 2})
   end
			if x2.name == "default:sand"
		   and z2.name == "default:sand"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_sand",param2 = 3})
   end
   end
   })
    minetest.register_abm(
   {nodenames = {"smoothhills:panel_sand_bottom","smoothhills:corner_sand"},
   interval = 10,
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
   {nodenames = {"smoothhills:corner_sand"},
   interval = 10,
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
			if x1.name == "smoothhills:panel_sand_bottom"
		   and z1.name == "smoothhills:panel_sand_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_sand_high",param2 = 1})
   end
			if x1.name == "smoothhills:panel_sand_bottom"
		   and z2.name == "smoothhills:panel_sand_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_sand_high",param2 = 2})
   end
			if x2.name == "smoothhills:panel_sand_bottom"
		   and z2.name == "smoothhills:panel_sand_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_sand_high",param2 = 3})
   end
   end
   })

	-- Desert Sand
	minetest.register_abm(
   {nodenames = {"default:desert_sand"},
   interval = 10,
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
        minetest.set_node({x = pos.x + 1, y = pos.y, z = pos.z}, {name = "smoothhills:panel_desert_sand_bottom",param2 = 3})
      end
	        if x2.name == "air" 
	  	  and below.name ~= "air"
				and x2bd.drawtype == "normal"
				and	x2b.name ~= "air" 
				then
        minetest.set_node({x = pos.x - 1, y = pos.y, z = pos.z}, {name = "smoothhills:panel_desert_sand_bottom",param2 = 1})
      end
		if z1.name == "air" 
	  	  and below.name ~= "air"
				and z1bd.drawtype == "normal"
				and	z1b.name ~= "air" 
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z + 1}, {name = "smoothhills:panel_desert_sand_bottom",param2 = 2})
      end
	        if z2.name == "air" 
	  	  and below.name ~= "air"
				and z2bd.drawtype == "normal"
				and	z2b.name ~= "air" 
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z - 1}, {name = "smoothhills:panel_desert_sand_bottom",param2 = 0})
      end
   end
})
    minetest.register_abm(
   {nodenames = {"smoothhills:panel_desert_sand_bottom"},
   interval = 10,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
			if x2.name == "default:desert_sand"
		   and z1.name == "default:desert_sand"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_desert_sand",param2 = 0})
   end
			if x1.name == "default:desert_sand"
		   and z1.name == "default:desert_sand"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_desert_sand",param2 = 1})
   end
			if x1.name == "default:desert_sand"
		   and z2.name == "default:desert_sand"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_desert_sand",param2 = 2})
   end
			if x2.name == "default:desert_sand"
		   and z2.name == "default:desert_sand"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_desert_sand",param2 = 3})
   end
   end
   })
    minetest.register_abm(
   {nodenames = {"smoothhills:panel_desert_sand_bottom","smoothhills:corner_desert_sand"},
   interval = 10,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
			if z1.name == "default:desert_sand"
		   and z2.name == "default:desert_sand"
		    or x1.name == "default:desert_sand"
		   and x2.name == "default:desert_sand"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:panel_desert_sand_slab",param2 = 0})
   end
   end
   })
    minetest.register_abm(
   {nodenames = {"smoothhills:corner_desert_sand"},
   interval = 10,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y + 1, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y + 1, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z - 1})
			if x2.name == "smoothhills:panel_desert_sand_bottom"
		   and z1.name == "smoothhills:panel_desert_sand_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_desert_sand_high",param2 = 0})
   end
			if x1.name == "smoothhills:panel_desert_sand_bottom"
		   and z1.name == "smoothhills:panel_desert_sand_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_desert_sand_high",param2 = 1})
   end
			if x1.name == "smoothhills:panel_desert_sand_bottom"
		   and z2.name == "smoothhills:panel_desert_sand_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_desert_sand_high",param2 = 2})
   end
			if x2.name == "smoothhills:panel_desert_sand_bottom"
		   and z2.name == "smoothhills:panel_desert_sand_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_desert_sand_high",param2 = 3})
   end
   end
   })

	-- Gravel
	minetest.register_abm(
   {nodenames = {"default:gravel"},
   interval = 10,
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
        minetest.set_node({x = pos.x + 1, y = pos.y, z = pos.z}, {name = "smoothhills:panel_gravel_bottom",param2 = 3})
      end
	        if x2.name == "air" 
	  	  and below.name ~= "air"
				and x2bd.drawtype == "normal"
				and	x2b.name ~= "air" 
				then
        minetest.set_node({x = pos.x - 1, y = pos.y, z = pos.z}, {name = "smoothhills:panel_gravel_bottom",param2 = 1})
      end
		if z1.name == "air" 
	  	  and below.name ~= "air"
				and z1bd.drawtype == "normal"
				and	z1b.name ~= "air" 
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z + 1}, {name = "smoothhills:panel_gravel_bottom",param2 = 2})
      end
	        if z2.name == "air" 
	  	  and below.name ~= "air"
				and z2bd.drawtype == "normal"
				and	z2b.name ~= "air" 
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z - 1}, {name = "smoothhills:panel_gravel_bottom",param2 = 0})
      end
   end
})
    minetest.register_abm(
   {nodenames = {"smoothhills:panel_gravel_bottom"},
   interval = 10,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
			if x2.name == "default:gravel"
		   and z1.name == "default:gravel"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_gravel",param2 = 0})
   end
			if x1.name == "default:gravel"
		   and z1.name == "default:gravel"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_gravel",param2 = 1})
   end
			if x1.name == "default:gravel"
		   and z2.name == "default:gravel"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_gravel",param2 = 2})
   end
			if x2.name == "default:gravel"
		   and z2.name == "default:gravel"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_gravel",param2 = 3})
   end
   end
   })
    minetest.register_abm(
   {nodenames = {"smoothhills:panel_gravel_bottom","smoothhills:corner_gravel"},
   interval = 10,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y, z = pos.z - 1})
			if z1.name == "default:gravel"
		   and z2.name == "default:gravel"
		    or x1.name == "default:gravel"
		   and x2.name == "default:gravel"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:panel_gravel_slab",param2 = 0})
   end
   end
   })
    minetest.register_abm(
   {nodenames = {"smoothhills:corner_gravel"},
   interval = 10,
   chance = 1,
   action = function(pos)
      local x1 = minetest.get_node({x = pos.x + 1, y = pos.y + 1, z = pos.z})
	  local x2 = minetest.get_node({x = pos.x - 1, y = pos.y + 1, z = pos.z})
	  local z1 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z + 1})
	  local z2 = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z - 1})
			if x2.name == "smoothhills:panel_gravel_bottom"
		   and z1.name == "smoothhills:panel_gravel_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_gravel_high",param2 = 0})
   end
			if x1.name == "smoothhills:panel_gravel_bottom"
		   and z1.name == "smoothhills:panel_gravel_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_gravel_high",param2 = 1})
   end
			if x1.name == "smoothhills:panel_gravel_bottom"
		   and z2.name == "smoothhills:panel_gravel_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_gravel_high",param2 = 2})
   end
			if x2.name == "smoothhills:panel_gravel_bottom"
		   and z2.name == "smoothhills:panel_gravel_bottom"
				then
        minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "smoothhills:corner_gravel_high",param2 = 3})
   end
   end
   })





   





