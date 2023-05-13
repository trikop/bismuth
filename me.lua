local me = {}

me.name = "bismuth"
me.bismuth_ore = "bismuth-ore"
me.bismuth_plate = "bismuth-plate"
me.recipes = {me.bismuth_plate, "enriched-bismuth-plate", "enriched-bismuth", "bismuth-smelting-vulcanite", "molten-bismuth", "enriched-bismuth-smelting-vulcanite",
              "pcb-solder"}

function me.get_setting(name)
  if settings.startup[name] == nil then
    return nil
  end
  return settings.startup[name].value
end

me.bypass = {}
if me.get_setting(me.name.."-recipe-bypass") then 
  for recipe in string.gmatch(me.get_setting(me.name.."-recipe-bypass"), '[^",%s]+') do
    me.bypass[recipe] = true
  end
end

function me.add_modified(name) 
  if me.get_setting(me.name.."-list") then 
    table.insert(me.list, name)
  end
end


return me

