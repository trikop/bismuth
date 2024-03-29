local util = require("data-util");

local pcb_solder_ingredients = {}
local pcb_solder_results = {}
local icon = {}
local category = {}

-- if mods.bzfoundry then
--   category = "founding"
-- else
--   category = "crafting"
-- end

if mods.bztin and mods.bzgold then
  pcb_solder_ingredients = {{"tin-plate", 4}, {"bismuth-plate", 6}, {type = "item", name = "silver-ore", amount = 1, catalyst_amount = 1}}
  pcb_solder_results = {{"pcb-solder", 6}, {type = "item", name = "silver-ore", amount = 1, catalyst_amount = 1, probability = 0.8}}
  icon = "__bztin__/graphics/icons/solder.png"
elseif mods.bztin then
  pcb_solder_ingredients = {{"tin-plate", 4}, {"bismuth-plate", 6}}
  pcb_solder_results = {{"pcb-solder", 6}}
  icon = "__bztin__/graphics/icons/solder.png"
elseif mods.bzgold then
  pcb_solder_ingredients = {{"steel-plate", 4}, {"bismuth-plate", 6}, {"silver-ore", 1}}
  pcb_solder_results = {{"pcb-solder", 6}, {type = "item", name = "silver-ore", amount = 1, catalyst_amount = 1, probability = 0.8}}
  icon = "__bismuth__/graphics/icons/solder.png"
else
  pcb_solder_ingredients = {{"steel-plate", 4}, {"bismuth-plate", 6}}
  pcb_solder_results = {{"pcb-solder", 6}}
  icon = "__bismuth__/graphics/icons/solder.png"
end

data:extend({
{
    type = "item",
    name = "pcb-solder",
    icons = {
      {icon = icon, icon_size = 128},
      {icon = icon, icon_size = 128, tint = {r = 0.7, g = 0.5, b = 0.9, a = 1}},
      {icon = icon, icon_size = 128, tint = {r = 0.36, g = 0.32, b = 0.26, a = 0.4}},
    },
    subgroup = "intermediate-product",
    order = "b[pcb-solder]",
    stack_size = util.get_stack_size(100),
},
{
    type = "recipe",
    name = "pcb-solder",
    icons = {
      {icon = icon, icon_size = 128},
      {icon = icon, icon_size = 128, tint = {r = 0.7, g = 0.5, b = 0.9, a = 1}},
      {icon = icon, icon_size = 128, tint = {r = 0.36, g = 0.32, b = 0.26, a = 0.4}},
      {icon = "__bismuth__/graphics/icons/bismuth-plate.png", icon_size = 64, icon_mipmaps = 3, scale=0.25, shift= {-8, -8}},
    },
    category = "crafting",
    order = "d[pcb-solder]",
    enabled = false,
    energy_required = 1.6,
    ingredients = pcb_solder_ingredients, 
    results = pcb_solder_results,
},
{
    type = "technology",
    name = "pcb-solder",
    icons = {
      {icon = icon, icon_size = 128},
      {icon = icon, icon_size = 128, tint = {r = 0.7, g = 0.5, b = 0.9, a = 1}},
      {icon = icon, icon_size = 128, tint = {r = 0.36, g = 0.32, b = 0.026, a = 0.4}},
    },
    effects = {
    { type = "unlock-recipe", recipe = "pcb-solder" },
    },
    unit = {
    count = 60, time = 10,
    ingredients = {{"automation-science-pack", 1}},
    },
    prerequisites = {"automation"},
},
})

if mods.bzfoundry and data.raw.item["foundry"] then
  util.set_to_founding("pcb-solder", {force=true})
end

util.set_main_product("pcb-solder", "pcb-solder")
util.add_prerequisite("logistic-science-pack", "pcb-solder")
util.add_unlock_force("pcb-solder", "pcb-solder")
