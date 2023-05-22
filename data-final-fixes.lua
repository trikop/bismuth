require("prototypes/bismuth-recipe-modules")
require("prototypes/recipe-changes")
require("prototypes/solder-recipe-final-fixes")




local util = require("__bismuth__.data-util");
if util.me.get_setting("bismuth-disable-bismuth-as-smelting-byproduct") == false then
    if mods.Krastorio2 then
        util.add_product("copper-plate", {type="item", name="bismuth-plate", amount=1, probability=0.2})
        util.add_product("enriched-copper", {type="item", name="bismuth-ore", amount=1, probability=0.33})
        util.add_or_add_to_ingredient("copper-plate", "copper-ore", 2)
        util.add_or_add_to_ingredient("enriched-copper", "copper-ore", 2)
        util.set_main_product("copper-plate", "copper-plate")
        if mods.bzlead then
            util.add_product("lead-plate", {type="item", name="bismuth-plate", amount=1, probability=0.16})
            util.add_product("enriched-lead", {type="item", name="bismuth-ore", amount=1, probability=0.2})
            util.add_or_add_to_ingredient("lead-plate", "lead-ore", 2)
            util.add_or_add_to_ingredient("enriched-lead", "lead-ore", 2)
        end
        if mods.bztin then
            util.add_product("tin-plate", {type="item", name="bismuth-plate", amount=1, probability=0.09})
            util.add_product("enriched-tin", {type="item", name="bismuth-ore", amount=1, probability=0.1})
            util.add_or_add_to_ingredient("tin-plate", "tin-ore", 2)
            util.add_or_add_to_ingredient("enriched-tin", "tin-ore", 2)
        end
        if mods.bzgold then
            util.add_or_add_to_ingredient("silver-plate", "silver-ore", 2)
            util.add_or_add_to_ingredient("enriched-silver", "silver-ore", 2)
            util.add_product("silver-plate", {type="item", name="bismuth-plate", amount=1, probability=0.08})
            util.set_main_product("silver-plate", "silver-plate")
            util.add_product("enriched-silver", {type="item", name="bismuth-ore", amount=1, probability=0.03})
            util.add_or_add_to_ingredient("gold-plate", "gold-ore", 2)
            util.add_or_add_to_ingredient("enriched-gold", "gold-ore", 2)
            util.add_product("gold-ingot", {type="item", name="bismuth-ore", amount=1, probability=0.1})
            util.add_product("enriched-gold", {type="item", name="bismuth-ore", amount=1, probability=0.265})
        end
        if mods.BrassTacks then
            util.add_product("zinc-plate", {type="item", name="bismuth-plate", amount=1, probability=0.06})
            util.set_main_product("zinc-plate", "zinc-plate")
            util.add_product("enriched-zinc", {type="item", name="bismuth-ore", amount=1, probability=0.09})
            util.add_or_add_to_ingredient("zinc-plate", "zinc-ore", 1)
            util.add_or_add_to_ingredient("enriched-zinc", "zinc-ore", 1)
        end
    else
        util.add_product("copper-plate", {type="item", name="bismuth-plate", amount=1, probability=0.02})
        util.set_main_product("copper-plate", "copper-plate")
        if mods.bzlead then
            util.add_product("lead-plate", {type="item", name="bismuth-plate", amount=1, probability=0.013})
        end
        if mods.bztin then
            util.add_product("tin-plate", {type="item", name="bismuth-plate", amount=1, probability=0.009})
        end
        if mods.bzgold then
            util.add_product("silver-plate", {type="item", name="bismuth-plate", amount=1, probability=0.008})
            util.set_main_product("silver-plate", "silver-plate")
            util.add_product("gold-ingot", {type="item", name="bismuth-ore", amount=1, probability=0.01})
        end
        if mods.BrassTacks then
            util.add_product("zinc-plate", {type="item", name="bismuth-plate", amount=1, probability=0.006})
            util.set_main_product("zinc-plate", "zinc-plate")
        end
    end

    if mods["space-exploration"] then 
        util.add_to_product("se-core-fragment-omni", "bismuth-ore", -2)
        util.remove_product("se-core-fragment-omni", "sulfur")

    end
end