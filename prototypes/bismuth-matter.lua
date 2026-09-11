-- Matter recipes for Krastorio2
local util = require("data-util")
if util.k2() then

data:extend(
{
  {
    type = "technology",
    name = "bismuth-matter-processing",
    icons =
    {
      {
        icon = util.k2assets().."/technologies/backgrounds/matter.png",
        icon_size = 256,
      },
      {
        icon = "__bismuth__/graphics/icons/bismuth-ore.png",
        icon_size = 64, icon_mipmaps = 3,
        scale = 1,
      }
    },
    effects = {},
    prerequisites = {"kr-matter-processing"},
    unit =
  	{
      count = 350,
      ingredients =
      {
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"kr-matter-tech-card", 1}
      },
      time = 45
    }
  },
})

util.k2matter({
	k2matter = {
    material = {
      name = "bismuth-ore",
      type = "item",
      amount = 10,
    },
    matter_count = 5,
    energy_required = 1,
    needs_stabilizer = false,
    allow_productivity = true,
    unlocked_by = "bismuth-matter-processing"
	}
})

if mods["space-exploration"] then
    util.add_ingredient("kr-matter-to-bismuth-ore", "se-kr-charged-basic-stabilizer", 1, {force = true})
    util.add_product("kr-matter-to-bismuth-ore", { type = "item", name = "se-kr-charged-basic-stabilizer", amount = 1, probability = 0.199 }, {force = true})
    util.add_product("kr-matter-to-bismuth-ore", { type = "item", name = "se-kr-basic-stabilizer", amount = 1, probability = 0.8 }, {force = true})
end

util.k2matter({
	k2matter = {
    material = {
      name = "bismuth-plate",
      type = "item",
      amount = 10,
    },
    matter_count = 7.5,
    energy_required = 2,
    needs_stabilizer = true,
    allow_productivity = true,
    only_deconversion = true,
    unlocked_by = "bismuth-matter-processing"
	}
})

end
