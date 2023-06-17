-- recipe & tech changes
--
local util = require("__bismuth__.data-util");

if mods.Krastorio2 then
  util.add_effect("military", {type = "unlock-recipe", recipe = "rifle-magazine-bismuth"})
else
  util.add_effect("military", {type = "unlock-recipe", recipe = "firearm-magazine-bismuth"})
  util.add_effect("military", {type = "unlock-recipe", recipe = "shotgun-shell-bismuth"})
end

util.add_ingredient("pipe-to-ground", "bismuth-plate", 2)
util.add_ingredient("pipe-to-ground", "lead-plate", 1)
util.add_ingredient("pipe-to-ground", "tin-plate", 1)
util.remove_ingredient("pipe-to-ground", "solder")

if mods.Krastorio2 then
  util.add_effect("kr-basic-fluid-handling", {type = "unlock-recipe", recipe = "bismuth-plate"})
  util.add_unlock_force("kr-basic-fluid-handling", "bismuth-plate")
else
  util.add_effect("automation", {type = "unlock-recipe", recipe = "bismuth-plate"})
  util.add_unlock_force("automation", "bismuth-plate")
end

if (not mods["pyrawores"] and not mods["bobplates"] and not mods["angelssmelting"] and not mods["IndustrialRevolution"]) then
end

if mods.Krastorio2 then
  util.add_ingredient("kr-steel-pipe-to-ground", "bismuth-plate", 2)
  util.add_ingredient("kr-steel-pipe-to-ground", "lead-plate", 1)
  util.add_ingredient("kr-steel-pipe-to-ground", "tin-plate", 1)
  util.remove_ingredient("kr-steel-pipe-to-ground", "solder")
end

if mods["space-exploration"] then
  util.add_ingredient("se-material-testing-pack", "bismuth-plate", 1)
  util.add_product("se-scrap-recycling", {name="bismuth-ore", amount=1, probability=0.1})
  util.add_ingredient("se-space-pipe-to-ground", "bismuth-plate", 2)
  util.add_ingredient("se-space-pipe-to-ground", "lead-plate", 1)
  util.add_ingredient("se-space-pipe-to-ground", "tin-plate", 1)
  data.raw.item["se-space-thermodynamics-laboratory"].ingredient_count = 24, --made it 24, so it won't conflict with another mod hopefully xD
  util.add_ingredient("se-experimental-alloys-data","bismuth-plate", 1)
end

if mods.FluidMustFlow then
  util.add_ingredient("duct-t-junction", "bismuth-plate", 2)
  util.add_ingredient("duct-t-junction", "lead-plate", 1)
  util.add_ingredient("duct-t-junction", "tin-plate", 1)
  util.add_ingredient("duct-curve", "bismuth-plate", 2)
  util.add_ingredient("duct-curve", "lead-plate", 1)
  util.add_ingredient("duct-curve", "tin-plate", 1)
  util.add_ingredient("duct-cross", "bismuth-plate", 2)
  util.add_ingredient("duct-cross", "lead-plate", 1)
  util.add_ingredient("duct-cross", "tin-plate", 1)
  util.add_ingredient("duct-underground", "bismuth-plate", 2)
  util.add_ingredient("duct-underground", "lead-plate", 1)
  util.add_ingredient("duct-underground", "tin-plate", 1)
end