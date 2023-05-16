local resource_autoplace = require("resource-autoplace");
local noise = require('noise');
local util = require("__bismuth__.data-util");
local fluid = {}

local bismuth_contain_bismuth = util.me.get_setting("bismuth-contain-bismuth") / 10000
local bismuth_contain_sulfur = util.me.get_setting("bismuth-contain-sulfur") / 10000

  if mods.Krastorio2 or mods.bzchlorine then
    fluid = "chlorine"
  else
    fluid = "water"
  end
    data:extend({
      {
        type = "autoplace-control",
        category = "resource",
        name = "bismuth-ore",
        richness = true,
        order = "b-e"
      },
      {
        type = "noise-layer",
        name = "bismuth-ore"
      },
      {
        type = "item",
        name = "bismuth-ore",
        icon_size = 64,
        icon_mipmaps = 4,
        icon = "__bismuth__/graphics/icons/bismuth-ore.png",
        pictures = {
          {filename="__bismuth__/graphics/icons/bismuth-ore.png", size=64, scale=0.125},
          {filename="__bismuth__/graphics/icons/bismuth-ore-1.png", size=64, scale=0.125},
          {filename="__bismuth__/graphics/icons/bismuth-ore-2.png", size=64, scale=0.125},
          {filename="__bismuth__/graphics/icons/bismuth-ore-3.png", size=64, scale=0.125},
        },
        subgroup = "raw-resource",
        order = "t-c-a",
        stack_size = util.get_stack_size(50)
      },
    })
    if util.me.get_setting("bismuth-disable-bismuthinite-ore") == false then
      data:extend({
        {
          type = "resource",
          name = "bismuth-ore",
          icon = "__bismuth__/graphics/icons/bismuth-ore.png",
          icon_size = 64,
          flags = {"placeable-neutral"},
          order="a-b-a",
          map_color = {r=0.5, g=0.33, b=0.16},
          tree_removal_probability = 0.7,
          tree_removal_max_distance = 32 * 32,
          minable =
          {
            hardness = 2.25,
            mining_particle = "iron-ore-particle",
            mining_time = 0.45,
            fluid_amount = 3,
            required_fluid = fluid,
            results = 
            {
              {type="item", name="bismuth-ore", amount=1, probability=bismuth_contain_bismuth},
              {type="item", name="sulfur", amount=1, probability=bismuth_contain_sulfur},
            }
          },
          collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
          selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},

          autoplace = resource_autoplace.resource_autoplace_settings{
            name = "bismuth-ore",
            order = "b-z",
            base_density = 4,
            base_spots_per_km2 = 1,
            has_starting_area_placement = false,
            regular_rq_factor_multiplier = 1,
            starting_rq_factor_multiplier = 1,
          },

          stage_counts = {15000, 10000, 5000, 3000, 1500, 500, 150, 80},
              stages =
              {
                sheet =
                {
            filename = "__bismuth__/graphics/ores/bismuthinite.png",
            priority = "extra-high",
            size = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version =
            {
            filename = "__bismuth__/graphics/ores/hr-bismuthinite.png",
              priority = "extra-high",
              size = 128,
              frame_count = 8,
              variation_count = 8,
              scale = 0.5
            }
                }
          },
        },
      })
    end