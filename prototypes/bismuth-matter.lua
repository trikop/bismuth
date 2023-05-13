-- Matter recipes for Krastorio2
if mods["Krastorio2"] then
local util = require("__bismuth__.data-util");
local matter = require("__Krastorio2__/lib/public/data-stages/matter-util")

data:extend(
{
  {
    type = "technology",
    name = "bismuth-matter-processing",
    icons =
    {
      {
        icon = util.k2assets().."/technologies/matter-stone.png",
        icon_size = 256,
      },
      {
        icon = "__bismuth__/graphics/icons/bismuth-ore.png",
        icon_size = 64, icon_mipmaps = 3,
        scale = 1.25,
      }
    },
    prerequisites = {"kr-matter-processing"},
    unit =
  	{
      count = 350,
      ingredients =
      {
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"matter-tech-card", 1}
      },
      time = 45
    }
  },
})

local bismuth_matter = 
	{
    item_name = "bismuth-ore",
    minimum_conversion_quantity = 10,
    matter_value = 5,
    energy_required = 1,
    need_stabilizer = false,
    unlocked_by_technology = "bismuth-matter-processing"
	}
matter.createMatterRecipe(bismuth_matter)


local bismuth_plate_matter = 
	{
    item_name = "bismuth-plate",
    minimum_conversion_quantity = 10,
    matter_value = 7.5,
    energy_required = 2,
    only_deconversion = true,
    need_stabilizer = true,
    unlocked_by_technology = "bismuth-matter-processing"
	}
matter.createMatterRecipe(bismuth_plate_matter)

end
