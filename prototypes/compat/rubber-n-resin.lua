local util = require("__bismuth__.data-util");

util.add_ingredient("relic-rubber","bismuth-plate", 1)
util.add_product("relic-rubber", {type="item", name="bismuth-plate", amount=1, probability=0.8})
util.set_main_product("relic-rubber", "rubber")

-- util.add_ingredient("synthetic-rubber","bismuth-plate", 1) -- Something here is wrong lmao
-- util.add_product("synthetic-rubber", {type="item", name="bismuth-plate", amount=1, probability=0.8})
-- util.set_main_product("synthetic-rubber", "rubber")