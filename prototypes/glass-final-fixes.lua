local util = require("data-util");

util.add_ingredient("chemical-science-pack", "bismuth-glass", 10)
util.add_ingredient("military-science-pack", "bismuth-glass", 1)
util.remove_ingredient("chemical-science-pack", util.k2() and "kr-glass" or "glass")
