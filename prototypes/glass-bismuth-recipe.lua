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
    results = {{type = "item", name = "bismuth-glass", amount = 1, probability = 0.6}},
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

if mods.bzfoundry and data.raw.item["foundry"] then
  util.set_to_founding("bismuth-glass", {force=true})
end

util.add_prerequisite("bismuth-glass", "silica-processing")
util.add_prerequisite("military-science-pack", "pcb-solder")
util.add_prerequisite("chemical-science-pack", "bismuth-glass")
util.add_unlock_force("bismuth-glass", "bismuth-glass")
