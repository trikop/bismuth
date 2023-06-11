local util = require("__bismuth__.data-util");

util.add_ingredient("low-density-structure", "bismuth-glass", 4)
util.add_ingredient("satellite", "bismuth-glass", 100)
util.remove_ingredient("satellite", "glass")

if mods.bzcarbon then
    util.add_ingredient("low-density-structure-nanotubes", "bismuth-glass", 4)
end

if mods["space-exploration"] then
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