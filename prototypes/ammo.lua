local damagemagazine = {}
local namefirearm
if mods.Krastorio2 then
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
    stack_size = 200
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
    stack_size = 200
  },
})
if mods.Krastorio2 then
  data:extend({
    {
      type = "ammo",
      name = "rifle-magazine-bismuth",
      icon = kr_items_with_variations_icons_path .. "ammo/rifle-ammo-1.png",
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
      stack_size = 200
    },
  })
end

local magazine = {}
local shotgun = {}
local k2pistol = {}
local k2rifle = {}

if mods.BrassTacks then
  magazine = {{"bismuth-plate", 3}, {"brass-plate", 1}}
else
  magazine = {{"bismuth-plate", 3}, {"iron-plate", 1}}
end

if mods.BrassTacks and mods.bzchlorine then
  shotgun = {{"stone", 1}, {"bismuth-plate", 2}, {"brass-plate", 1}, {"salt", 1}}
elseif mods.BrassTacks then
  shotgun = {{"stone", 1}, {"bismuth-plate", 2}, {"brass-plate", 1}}
else
  shotgun = {{"stone", 1}, {"bismuth-plate", 2}, {"iron-plate", 1}}
end

if mods.BrassTacks then
  k2pistol = {{"coal", 1}, {"bismuth-plate", 1}, {"brass-plate", 1}}
else
  k2pistol = {{"coal", 1}, {"bismuth-plate", 1}}
end

if mods.BrassTacks then
  k2rifle = {{"coal", 1}, {"bismuth-plate", 2}, {"brass-plate", 1}}
else
  k2rifle = {{"coal", 1}, {"bismuth-plate", 2},{"copper-plate", 1}}
end

if not mods.Krastorio2 then
  data:extend({
    {
      type = "recipe",
      name = "firearm-magazine-bismuth",
      category = "crafting",
      order = "a[basic-clips]-a[firearm-magazine]",
      energy_required = 1,
      ingredients = magazine,
      result = "firearm-magazine-bismuth",
      result_count = 1,
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
      result = "shotgun-shell-bismuth",
      result_count = 1,
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
      result = "pistol-magazine-bismuth",
      result_count = 1,
      enabled = true,
      icons = {
        { icon = kr_items_with_variations_icons_path .. "ammo/pistol-ammo-1.png", icon_size = 64},
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
      result = "rifle-magazine-bismuth",
      result_count = 1,
      enabled = false,
      icons = {
        { icon = kr_items_with_variations_icons_path .. "ammo/rifle-ammo-1.png", icon_size = 64},
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
      result = "shotgun-shell-bismuth",
      result_count = 1,
      enabled = false,
      icons = {
        { icon = "__base__/graphics/icons/shotgun-shell.png", icon_size = 64},
        { icon = "__bismuth__/graphics/icons/bismuth-plate.png",
          icon_size = 64, icon_mipmaps = 3, scale=0.25, shift= {-8, -6}}
      }
    }
})
end