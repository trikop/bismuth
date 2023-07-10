local util = require("__bismuth__.data-util");

util.add_ingredient("bob-rubber","bismuth-plate", 1)
util.add_product("bob-rubber", {type="item", name="bismuth-plate", amount=1, probability=0.4})
util.set_main_product("bob-rubber", "rubber")