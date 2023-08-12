local util = require("data-util");

local glass_ingredients = {}
local icon = "__bismuth__/graphics/icons/glass.png"
local prereq = {}
-- add lime from calcium

if mods["aai-industry"] and mods.bzsilicon and mods.calcium then
  glass_ingredients = {{"sand", 6}, {"silica", 4}, {"bismuth-plate", 2}, {"calcium-plate", 1}}
elseif mods["aai-industry"] and mods.bzsilicon then
  glass_ingredients = {{"sand", 6}, {"silica", 4}, {"bismuth-plate", 2}}
elseif mods["aai-industries"] then
  glass_ingredients = {{"sand", 10}, {"bismuth-plate", 2}}
else
  glass_ingredients = {{"stone", 5}, {"bismuth-plate", 2}}
end
data:extend({
{
    type = "item",
    name = "bismuth-glass",
    icon = icon,
    icon_size = 128,
    subgroup = "intermediate-product",
    order = "b[bismuth-glass]",
    stack_size = util.get_stack_size(100),
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
util.remove_ingredient("satellite", "glass")

if mods.bzcarbon then
  util.add_ingredient("low-density-structure-nanotubes", "bismuth-glass", 4)
end

if mods["space-exploration"] then
  if mods.bzsilicon and mods.calcium then
    glass_ingredients = {{"sand", 22}, {"silica", 4}, {"bismuth-plate", 2}, {"calcium-plate", 1}}
  elseif mods.bzsilicon then
    glass_ingredients = {{"sand", 22}, {"silica", 4}, {"bismuth-plate", 2}}
  else
    glass_ingredients = {{"sand", 26}, {"bismuth-plate", 2}}
  end
  data:extend({
  {
      type = "recipe",
      name = "se-bismuth-glass",
      category = "crafting",
      order = "d[bismuth-glass]",
      enabled = false,
      energy_required = 1,
      ingredients = glass_ingredients, 
      results = {{type = "item", name = "bismuth-glass", amount = 7}},
      icons =
      {
        { icon = icon, icon_size = 128},
        { icon = "__space-exploration-graphics__/graphics/icons/fluid/pyroflux.png", icon_size = 64, scale=0.25, shift= {-10, -10}},
      },
  },
  })
  util.add_effect("se-pyroflux-smelting", {type = "unlock-recipe", recipe= "se-bismuth-glass"})
  util.add_ingredient("se-bismuth-glass", {type = "fluid", name = "se-pyroflux", amount = 10})

  util.add_ingredient("se-low-density-structure-beryllium", "bismuth-glass", 2)
  util.remove_ingredient("se-low-density-structure-beryllium", "glass")
  util.add_ingredient("se-spaceship-console", "bismuth-glass", 20)
  util.remove_ingredient("se-spaceship-console", "glass")
  util.add_ingredient("se-space-laser-laboratory", "bismuth-glass", 80)
  util.remove_ingredient("se-space-laser-laboratory", "glass")
  util.add_ingredient("se-space-radiation-laboratory", "bismuth-glass", 80)
  util.remove_ingredient("se-space-radiation-laboratory", "glass")
  util.add_ingredient("se-space-telescope", "bismuth-glass", 40)
  util.remove_ingredient("se-space-telescope", "glass")
  util.add_ingredient("se-space-telescope-microwave", "bismuth-glass", 80)
  util.remove_ingredient("se-space-telescope-microwave", "glass")
end

if mods.bzfoundry and data.raw.item["foundry"] then
  util.set_to_founding("bismuth-glass", {force=true})
  util.set_to_founding("se-bismuth-glass", {force=true})
end