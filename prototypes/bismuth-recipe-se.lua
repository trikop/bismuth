-- Additional recipes if Space Exploration mod is enabled
local util = require("data-util");

if mods["space-exploration"] then
  se_delivery_cannon_recipes[util.me.bismuth_ore] = {name= "bismuth_ore"}
  se_delivery_cannon_recipes[util.me.bismuth_plate] = {name= util.me.bismuth_plate}
  util.se_landfill({ore="bismuth-ore"})

if util.se6() then
  util.se_matter({ore="bismuth-ore", energy_required=1, quant_out=10, stream_out=60})
  data:extend({
  {
    type = "item-subgroup",
    name = "bismuth",
    group = "resources",
    order = "a-h-z-a",
  }
  })
  util.set_item_subgroup("bismuth-plate", "bismuth")
  data:extend({
  {
    type = "item",
    name = "bismuth-ingot",
    icons = {{icon = "__bismuth__/graphics/icons/bismuth-ingot.png", icon_size = 128}},
    order = "b-b",
    stack_size = 50,
    subgroup = "bismuth",
  },
  {
    type = "fluid",
    name = "molten-bismuth",
    default_temperature = 600,
    max_temperature = 600,
    base_color = {r=121, g=80, b=80},
    flow_color = {r=121, g=80, b=80},
    icons = {{icon = "__bismuth__/graphics/icons/molten-bismuth.png", icon_size = 128}},
    order = "a[molten]-a",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    auto_barrel = false,
    subgroup = "fluid",
  },
  {
    type = "recipe",
    category = "smelting",
    name = "molten-bismuth",
    main_product = "molten-bismuth",
    subgroup = "bismuth",
    results = {
      {type = "fluid", name = "molten-bismuth", amount = mods.Krastorio2 and 750 or 900},
    },
    energy_required = 60,
    ingredients = {
      {type= "item", name = util.k2() and "enriched-bismuth" or "bismuth-ore", amount = 24},
      {type = "fluid", name = "se-pyroflux", amount = 10},
    },
    enabled = false,
    always_show_made_in = true,
    allow_as_intermediate = false,
    order = "a-a"
  },
  {
    type = "recipe",
    name = "bismuth-ingot",
    category = "casting",
    results = {{type="item", name="bismuth-ingot", amount=1}},
    energy_required = 25,
    ingredients = {
      {type = "fluid", name = "molten-bismuth", amount = 250},
    },
    enabled = false,
    always_show_made_in = true,
    allow_as_intermediate = false,
  },
  {
    type = "recipe",
    category = "crafting",
    name = "bismuth-ingot-to-plate",

    icons = {
      {icon = "__bismuth__/graphics/icons/bismuth-plate.png", icon_size = 64, icon_mipmaps = 3},
      {icon = "__bismuth__/graphics/icons/bismuth-ingot.png", icon_size = 128, scale = 0.125, shift = {-8, -8}},
    },
    results = {
      {type = "item", name = "bismuth-plate", amount = 10},
    },
    energy_required = 5,
    ingredients = {
      {type = "item", name = "bismuth-ingot", amount = 1}
    },
    enabled = false,
    always_show_made_in = true,
    allow_decomposition = false,
    order = "a-c-b"
  },
  })
  util.add_effect("se-pyroflux-smelting", {type = "unlock-recipe", recipe= "molten-bismuth"})
  util.add_effect("se-pyroflux-smelting", {type = "unlock-recipe", recipe= "bismuth-ingot"})
  util.add_effect("se-pyroflux-smelting", {type = "unlock-recipe", recipe= "bismuth-ingot-to-plate"})
  util.add_effect("se-vulcanite-smelting", {type = "unlock-recipe", recipe= "molten-bismuth"})
  util.add_effect("se-vulcanite-smelting", {type = "unlock-recipe", recipe= "bismuth-ingot"})
  util.add_effect("se-vulcanite-smelting", {type = "unlock-recipe", recipe= "bismuth-ingot-to-plate"})
  if mods["Krastorio2"] then
    util.set_item_subgroup("enriched-bismuth", "bismuth")
    data.raw.recipe["enriched-bismuth-plate"].order= "d[bismuth-plate]"
    se_delivery_cannon_recipes["enriched-bismuth"] = {name= "enriched-bismuth"}
  end
  se_delivery_cannon_recipes["bismuth-ingot"] = {name="bismuth-ingot"}
else
  data.raw.item["bismuth-plate"].subgroup = "plates"
  if mods["Krastorio2"] then
    data:extend({
    {
      type = "recipe",
      name = "enriched-bismuth-smelting-vulcanite",
      category = "smelting",
      order = "d[bismuth-plate]",
      energy_required = 24,
      enabled = false,
      always_show_made_in = true,
      allow_as_intermediate = false,
      ingredients = {
        {type = "item", name = "enriched-bismuth", amount = 8},
        {type = "item", name = "se-vulcanite-block", amount = 1},
      },
      results = {
        {type = "item", name = util.me.bismuth_plate, amount = 12},
      },
      icons =
      {
        { icon = "__bismuth__/graphics/icons/bismuth-plate.png", icon_size = 64 },
        { icon = "__space-exploration-graphics__/graphics/icons/vulcanite-block.png", icon_size = 64, scale=0.25, shift= {-10, -10}},
      },
      
    },
    })
    table.insert(data.raw.technology["se-processing-vulcanite"].effects, 
        {type = "unlock-recipe", recipe= "enriched-bismuth-smelting-vulcanite"})
    data.raw.recipe["enriched-bismuth-plate"].order= "d[bismuth-plate]"
    se_delivery_cannon_recipes["enriched-bismuth"] = {name= "enriched-bismuth"}
  else
    data:extend({
    {
      type = "recipe",
      name = "bismuth-smelting-vulcanite",
      category = "smelting",
      subgroup = "plates",
      order = "d[bismuth-plate]",
      energy_required = 24,
      enabled = false,
      always_show_made_in = true,
      allow_as_intermediate = false,
      ingredients = {
        {type = "item", name = "bismuth-ore", amount = 8},
        {type = "item", name = "se-vulcanite-block", amount = 1},
      },
      results = {
        {type = "item", name = util.me.bismuth_plate, amount = 12},
      },
      icons =
      {
        { icon = "__bismuth__/graphics/icons/bismuth-plate.png", icon_size = 64, icon_mipmaps = 3 },
        { icon = "__space-exploration-graphics__/graphics/icons/vulcanite-block.png", icon_size = 64, icon_mipmaps = 3, scale=0.25, shift= {-10, -10}},
      },

      
    },
    })
    table.insert(data.raw.technology["se-processing-vulcanite"].effects, 
        {type = "unlock-recipe", recipe= "bismuth-smelting-vulcanite"})
  end
end
end
