-- bismuth smelting

local util = require("__bismuth__.data-util");

if (not mods["pyrawores"] and not mods["bobplates"] and not mods["angelssmelting"] and not mods["IndustrialRevolution"]) then
data:extend({
  {
    type = "recipe",
    name = util.me.bismuth_plate,
    category = "smelting",
    order = "d[bismuth-plate]",
    icons = (mods["Krastorio2"] and
        {
          { icon = "__bismuth__/graphics/icons/bismuth-plate.png", icon_size = 64, icon_mipmaps = 3, },
          { icon = "__bismuth__/graphics/icons/bismuth-ore.png", icon_size = 64, icon_mipmaps = 3, scale=0.25, shift= {-8, -8}},
        } or {
          { icon = "__bismuth__/graphics/icons/bismuth-plate.png", icon_size = 64, icon_mipmaps = 3, },
        }
),
    normal = (mods["Krastorio2"] and
        {
          main_product = util.me.bismuth_plate,
          enabled = true,
          energy_required = 9,
          ingredients = {{type="item", name="bismuth-ore", amount=10}},
          results = {
            {type="item", name = util.me.bismuth_plate, amount=10},
          },
        } or
        {
          main_product = util.me.bismuth_plate,
          enabled = true,
          energy_required = 0.9,
          ingredients = {{type="item", name="bismuth-ore", amount=1}},
          results = {
            {type="item", name = util.me.bismuth_plate, amount=1},
          },
        }),
    expensive =
    {
      main_product = util.me.bismuth_plate,
      enabled = true,
      energy_required = 12.8,
      ingredients = {{type="item", name="bismuth-ore", amount=4}},
      results = {
        {type="item", name = util.me.bismuth_plate, amount=2},
      },
    }
  },
  {
    type = "item",
    name = util.me.bismuth_plate,
    icon = "__bismuth__/graphics/icons/bismuth-plate.png",
    icon_size = 64, icon_mipmaps = 3,
    subgroup = "raw-material",
    order = "b[bismuth-plate]",
    stack_size = 100
  },
  mods["TheBigFurnace"] and {
    type = "recipe",
    name = "big-bismuth-plate",
    icons = { { icon = "__bismuth__/graphics/icons/bismuth-plate.png", icon_size = 64 }, },
    subgroup = "raw-material",
    category = "big-smelting",
    order = "d[bismuth-plate]",
    normal =
    {
      enabled = true,
      energy_required = 5,
      ingredients = {{type="item", name="bismuth-ore", amount=100}},
      results = {
        {type="item", name = util.me.bismuth_plate, amount=100},
      }
    },
    expensive =
    {
      enabled = true,
      energy_required = 10,
      ingredients = {{type="item", name="bismuth-ore", amount=100}},
      results = {
        {type="item", name = util.me.bismuth_plate, amount=50},
      }
    }
  } or nil,
})
end