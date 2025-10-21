local util = require("data-util");

local glass_name = util.k2() and "kr-glass" or "glass"
local glass_ingredients = {}
local icon = "__bismuth__/graphics/icons/glass.png"
local prereq = {}
-- add lime from calcium

if data.raw.item[mods["Krastorio2"] and "kr-sand" or "sand"] and data.raw.item["silica"] and data.raw.item["calcium-plate"] then
  glass_ingredients = {{type="item", name=mods["Krastorio2"] and "kr-sand" or "sand", amount=6}, {type="item", name="silica", amount=4}, {type="item", name="bismuth-plate", amount=2}, {type="item", name="calcium-plate", amount=1}}
elseif data.raw.item[mods["Krastorio2"] and "kr-sand" or "sand"] and data.raw.item["silica"] then
  glass_ingredients = {{type="item", name=mods["Krastorio2"] and "kr-sand" or "sand", amount=6}, {type="item", name="silica", amount=4}, {type="item", name="bismuth-plate", amount=2}}
elseif data.raw.item[mods["Krastorio2"] and "kr-sand" or "sand"] then
  glass_ingredients = {{type="item", name=mods["Krastorio2"] and "kr-sand" or "sand",amount= 10}, {type="item", name="bismuth-plate", amount=2}}
else
  glass_ingredients = {{type="item", name="stone", amount=5}, {type="item", name="bismuth-plate", amount=2}}
end
data:extend({
{
    type = "item",
    name = "bismuth-glass",
    icon = icon,
    icon_size = 128,
    subgroup = "intermediate-product",
    order = "b[bismuth-glass]",
    stack_size = 100,
},
{
    type = "recipe",
    name = "bismuth-glass",
    category = "crafting",
    order = "d[bismuth-glass]",
    enabled = false,
    energy_required = 1,
    ingredients = glass_ingredients, 
    results = {{type = "item", name = "bismuth-glass", amount = 2}},
},
{
    type = "technology",
    name = "bismuth-glass",
    icon = icon,
    icon_size = 128,
    effects = {
    { type = "unlock-recipe", recipe = "bismuth-glass" },
    },
    unit = {
    count = 60, time = 10,
    ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
    },
    prerequisites = {"automation"},
},
})

util.add_prerequisite("bismuth-glass", "silica-processing")
util.add_prerequisite("military-science-pack", "bismuth-glass")
util.add_prerequisite("chemical-science-pack", "bismuth-glass")
util.add_unlock_force("bismuth-glass", "bismuth-glass")

util.add_ingredient("low-density-structure", "bismuth-glass", 4)
util.add_ingredient("satellite", "bismuth-glass", 100)
util.remove_ingredient("satellite", glass_name)

if (mods["bzcarbon"] or mods["bzcarbon2"]) then
  util.add_ingredient("low-density-structure-nanotubes", "bismuth-glass", 4)
end

if mods["space-exploration"] then
  data:extend({
  {
      type = "recipe",
      name = "se-bismuth-glass",
      category = "crafting",
      order = "d[bismuth-glass]",
      enabled = false,
      energy_required = 1,
      ingredients = {{type="item", name="bismuth-plate", amount=2}},
      results = {{type = "item", name = "bismuth-glass", amount = 7}},
      icons =
      {
        { icon = icon, icon_size = 128},
        { icon = "__space-exploration-graphics__/graphics/icons/fluid/pyroflux.png", icon_size = 64, scale=0.25, shift= {-10, -10}},
      },

  },
  })
  if util.k2() then
    util.add_or_add_to_ingredient("se-bismuth-glass", "kr-sand", 22)
  else
    util.add_or_add_to_ingredient("se-bismuth-glass", "sand", 22)
  end
  if data.raw.item["silica"] then
    util.add_or_add_to_ingredient("se-bismuth-glass", "silica", 4)
  elseif util.k2() then
    util.add_or_add_to_ingredient("se-bismuth-glass", "kr-sand", 4)
  else
    util.add_or_add_to_ingredient("se-bismuth-glass", "sand", 4)
  end
  if data.raw.item["calcium-plate"] then
    util.add_or_add_to_ingredient("se-bismuth-glass", "calcium-plate", 1)
  end
  
  util.add_effect("se-pyroflux-smelting", {type = "unlock-recipe", recipe= "se-bismuth-glass"})
  util.add_ingredient("se-bismuth-glass", {type = "fluid", name = "se-pyroflux", amount = 10})

  util.add_ingredient("se-low-density-structure-beryllium", "bismuth-glass", 2)
  util.remove_ingredient("se-low-density-structure-beryllium", glass_name)
  util.add_ingredient("se-spaceship-console", "bismuth-glass", 20)
  util.remove_ingredient("se-spaceship-console", glass_name)
  util.add_ingredient("se-space-laser-laboratory", "bismuth-glass", 80)
  util.remove_ingredient("se-space-laser-laboratory", glass_name)
  util.add_ingredient("se-space-radiation-laboratory", "bismuth-glass", 80)
  util.remove_ingredient("se-space-radiation-laboratory", glass_name)
  util.add_ingredient("se-space-telescope", "bismuth-glass", 40)
  util.remove_ingredient("se-space-telescope", glass_name)
  util.add_ingredient("se-space-telescope-microwave", "bismuth-glass", 80)
  util.remove_ingredient("se-space-telescope-microwave", glass_name)
end

if mods.bzfoundry2 and data.raw.item["foundry"] then
  util.set_to_founding("bismuth-glass", {force=true})
  util.set_to_founding("se-bismuth-glass", {force=true})
end