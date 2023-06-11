local util = require("data-util");

local pcb_solder_ingredients = {}
local icon = {}
local prereq = {}

if mods.bztin and mods.bzgold then
  pcb_solder_ingredients = {{"tin-plate", 4}, {"bismuth-plate", 6}, {"silver-ore", 1}}
  icon = "__bztin__/graphics/icons/solder.png"
elseif mods.bztin then
  pcb_solder_ingredients = {{"tin-plate", 4}, {"bismuth-plate", 6}}
  icon = "__bztin__/graphics/icons/solder.png"
elseif mods.bzgold then
  pcb_solder_ingredients = {{"steel-plate", 4}, {"bismuth-plate", 6}, {"silver-ore", 1}}
  icon = "__bismuth__/graphics/icons/solder.png"
else
  pcb_solder_ingredients = {{"steel-plate", 4}, {"bismuth-plate", 6}}
  icon = "__bismuth__/graphics/icons/solder.png"
end
data:extend({
{
    type = "item",
    name = "pcb-solder",
    icon = icon,
    icon_size = 128,
    subgroup = "intermediate-product",
    order = "b[pcb-solder]",
    stack_size = util.get_stack_size(100),
},
{
    type = "recipe",
    name = "pcb-solder",
    category = "crafting",
    order = "d[pcb-solder]",
    enabled = true,
    energy_required = 1,
    ingredients = pcb_solder_ingredients, 
    results = {{"pcb-solder", 6}},
},
{
    type = "technology",
    name = "pcb-solder",
    icon = icon,
    icon_size = 128,
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
util.add_prerequisite("logistic-science-pack", "pcb-solder")
util.add_unlock_force("pcb-solder", "pcb-solder")
