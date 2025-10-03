-- Matter recipes for Krastorio2

local util = require("data-util");
if mods["Krastorio2"] or mods["Krastorio2-spaced-out"] then
  local matter = require("__Krastorio2__/prototypes/libraries/matter")
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
          {"kr-matter-tech-card", 1}
        },
        time = 45
      }
    },
  })

  local bismuth_matter =
    {
      material = { type = "item", name = "bismuth-ore", amount = 10 },
      item_name = "bismuth-ore",
      matter_count = 5,
      energy_required = 1,
      need_stabilizer = false,
      unlocked_by_technology = "bismuth-matter-processing"
    }
  matter.make_recipes(bismuth_matter)


  local bismuth_plate_matter =
    {
      material = { type = "item", name = "bismuth-plate", amount = 10 },
      item_name = "bismuth-plate",
      matter_count = 7.5,
      energy_required = 2,
      only_deconversion = true,
      need_stabilizer = true,
      unlocked_by_technology = "bismuth-matter-processing"
    }
  matter.make_recipes(bismuth_plate_matter)

end
