local util = require("data-util");

local glass_ingredients = {}
local icon = {}
local prereq = {}
-- add lime from calcium

if mods["aai-industries"] and mods.bzsilicon then
  glass_ingredients = {{"silicon", 3}, {"bismuth-plate", 6}, {"silver-ore", 1}}
  icon = "__bztin__/graphics/icons/glass.png"
elseif mods.bztin and mods.bzgold then
  glass_ingredients = {{"tin-plate", 4}, {"bismuth-plate", 6}, {"silver-ore", 1}}
  icon = "__bismuth__/graphics/icons/glass.png"
else
  glass_ingredients = {{"steel-plate", 4}, {"bismuth-plate", 6}}
  icon = "__bismuth__/graphics/icons/glass.png"
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
    enabled = true,
    energy_required = 1,
    ingredients = glass_ingredients, 
    results = {{"bismuth-glass", 6}},
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
    ingredients = {{"automation-science-pack", 1}},
    },
    prerequisites = {"automation"},
},
})
util.add_prerequisite("logistic-science-pack", "bismuth-glass")
util.add_unlock_force("bismuth-glass", "bismuth-glass")
