local util = require("data-util");

local damagemagazine = {}
local namefirearm = {}

if util.k2() then
  namefirearm = "pistol-magazine-bismuth"
  damagemagazine = { amount = 7, type = "physical"}
else
  namefirearm = "firearm-magazine-bismuth"
  damagemagazine = { amount = 3, type = "physical"}
end
data:extend({
  {
    type = "ammo",
    name = namefirearm,
    icon = "__base__/graphics/icons/firearm-magazine.png",
    icon_size = 64, icon_mipmaps = 4,
    ammo_type =
    {
      category = "bullet",
      action =
      {
        {
          type = "direct",
          action_delivery =
          {
            {
              type = "instant",
              source_effects =
              {
                {
                  type = "create-explosion",
                  entity_name = "explosion-gunshot"
                }
              },
              target_effects =
              {
                {
                  type = "create-entity",
                  entity_name = "explosion-hit",
                  offsets = {{0, 1}},
                  offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
                },
                {
                  type = "damage",
                  damage = damagemagazine
                }
              }
            }
          }
        }
      }
    },
    magazine_size = 10,
    subgroup = "ammo",
    order = "a[basic-clips]-a[firearm-magazine]",
    stack_size = 200,
    ammo_category = "bullet"
  },
  {
    type = "ammo",
    name = "shotgun-shell-bismuth",
    icon = "__base__/graphics/icons/shotgun-shell.png",
    icon_size = 64, icon_mipmaps = 4,
    ammo_type =
    {
      category = "shotgun-shell",
      target_type = "direction",
      clamp_position = true,
      action =
      {
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            source_effects =
            {
              {
                type = "create-explosion",
                entity_name = "explosion-gunshot"
              }
            }
          }
        },
        {
          type = "direct",
          repeat_count = 10,
          action_delivery =
          {
            type = "projectile",
            projectile = "shotgun-pellet",
            starting_speed = 1,
            starting_speed_deviation = 0.1,
            direction_deviation = 0.3,
            range_deviation = 0.3,
            max_range = 15
          }
        }
      }
    },
    magazine_size = 10,
    subgroup = "ammo",
    order = "b[shotgun]-a[basic]",
    stack_size = 200,
    ammo_category = "bullet"
  },
})
if util.k2() then
  data:extend({
    {
      type = "ammo",
      name = "rifle-magazine-bismuth",
      icon = "__Krastorio2Assets__/icons/ammo/rifle-magazine.png",
      icon_size = 64, icon_mipmaps = 4,
      ammo_type =
      {
        category = "bullet",
        action =
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "instant",
                source_effects =
                {
                  {
                    type = "create-explosion",
                    entity_name = "explosion-gunshot"
                  }
                },
                target_effects =
                {
                  {
                    type = "create-entity",
                    entity_name = "explosion-hit",
                    offsets = {{0, 1}},
                    offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
                  },
                  {
                    type = "damage",
                    damage = { amount = 9 , type = "physical"}
                  }
                }
              }
            }
          }
        }
      },
      magazine_size = 10,
      subgroup = "ammo",
      order = "a[basic-clips]-a[firearm-magazine]",
      stack_size = 200,
      ammo_category = "bullet"
    },
  })
end

local magazine = {}
local shotgun = {}
local k2pistol = {}
local k2rifle = {}

if mods["BrassTacks-Updated"] then
  magazine = {{type="item", name="bismuth-plate", amount=3}, {type="item", name="brass-plate", amount=1}}
else
  magazine = {{type="item", name="bismuth-plate", amount=3}, {type="item", name="iron-plate", amount=1}}
end

if mods["BrassTacks-Updated"] and mods.bzchlorine2 then
  shotgun = {{type="item", name="stone", amount=1}, {type="item", name="bismuth-plate", amount=2}, {type="item", name="brass-plate", amount=1}, {type="item", name="salt", amount=1}}
elseif mods["BrassTacks-Updated"] then
  shotgun = {{type="item", name="stone", amount=1}, {type="item", name="bismuth-plate", amount=2}, {type="item", name="brass-plate", amount=1}}
else
  shotgun = {{type="item", name="stone", amount=1}, {type="item", name="bismuth-plate", amount=2}, {type="item", name="iron-plate", amount=1}}
end

if mods["BrassTacks-Updated"] then
  k2pistol = {{type="item", name="coal", amount=1}, {type="item", name="bismuth-plate", amount=1}, {type="item", name="brass-plate", amount=1}}
else
  k2pistol = {{type="item", name="coal", amount=1}, {type="item", name="bismuth-plate", amount=1}}
end

if mods["BrassTacks-Updated"] then
  k2rifle = {{type="item", name="coal", amount=1}, {type="item", name="bismuth-plate", amount=2}, {type="item", name="brass-plate", amount=1}}
else
  k2rifle = {{type="item", name="coal", amount=1}, {type="item", name="bismuth-plate", amount=2},{type="item", name="copper-plate", amount=1}}
end

if not util.k2() then
  data:extend({
    {
      type = "recipe",
      name = "firearm-magazine-bismuth",
      category = "crafting",
      order = "a[basic-clips]-a[firearm-magazine]",
      energy_required = 1,
      ingredients = magazine,
      results = {{type="item", name="firearm-magazine-bismuth", amount=1}},
      enabled = false,
      icons = {
        { icon = "__base__/graphics/icons/firearm-magazine.png", icon_size = 64},
        { icon = "__bismuth__/graphics/icons/bismuth-plate.png",
          icon_size = 64, icon_mipmaps = 3, scale=0.25, shift= {-8, -6}},
      },
    },
    {
      type = "recipe",
      name = "shotgun-shell-bismuth",
      category = "crafting",
      order = "a[shotgun]-a[basic]",
      energy_required = 1,
      ingredients = shotgun,
      results = {{type="item", name="shotgun-shell-bismuth", amount=1}},
      enabled = false,
      icons = {
        { icon = "__base__/graphics/icons/shotgun-shell.png", icon_size = 64},
        { icon = "__bismuth__/graphics/icons/bismuth-plate.png",
          icon_size = 64, icon_mipmaps = 3, scale=0.25, shift= {-8, -6}}
      }
    }
})
else
  data:extend({
    {
      type = "recipe",
      name = "pistol-magazine-bismuth",
      category = "crafting",
      order = "a[basic-clips]-a[pistol-magazine]",
      energy_required = 1,
      ingredients = k2pistol,
      results = {{type="item", name="pistol-magazine-bismuth", amount=1}},
      enabled = true,
      icons = {
        { icon = "__base__/graphics/icons/firearm-magazine.png", icon_size = 64},
        { icon = "__bismuth__/graphics/icons/bismuth-plate.png",
          icon_size = 64, icon_mipmaps = 3, scale=0.25, shift= {-8, -6}},
      },
    },
    {
      type = "recipe",
      name = "rifle-magazine-bismuth",
      category = "crafting",
      order = "a[basic-clips]-a[rifle-magazine]",
      energy_required = 1,
      ingredients = k2rifle,
      results = {{type="item", name="rifle-magazine-bismuth", amount=1}},
      enabled = false,
      icons = {
        { icon = "__Krastorio2Assets__/icons/ammo/rifle-magazine.png", icon_size = 64},
        { icon = "__bismuth__/graphics/icons/bismuth-plate.png",
          icon_size = 64, icon_mipmaps = 3, scale=0.25, shift= {-8, -6}},
      },
    },
    {
      type = "recipe",
      name = "shotgun-shell-bismuth",
      category = "crafting",
      order = "a[shotgun]-a[basic]",
      energy_required = 1,
      ingredients = shotgun,
      results = {{type="item", name="shotgun-shell-bismuth", amount=1}},
      enabled = false,
      icons = {
        { icon = "__base__/graphics/icons/shotgun-shell.png", icon_size = 64},
        { icon = "__bismuth__/graphics/icons/bismuth-plate.png",
          icon_size = 64, icon_mipmaps = 3, scale=0.25, shift= {-8, -6}}
      }
    }
})
end