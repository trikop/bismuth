local util = require("__bismuth__.data-util");

if mods["space-exploration"] then
    util.replace_ingredient("se-space-accumulator", "solder", "pcb-solder")
    util.add_ingredient("assembling-machine-1","solder", 2)


    util.add_ingredient("se-empty-data","pcb-solder", 3)
    util.add_ingredient("se-empty-data-gold","pcb-solder", 3)
    util.add_ingredient("se-machine-learning-data","pcb-solder", 2)
    util.add_ingredient("se-conductivity-data","pcb-solder", 2)
    util.add_ingredient("se-neural-anomaly-data","pcb-solder", 1)
    util.add_ingredient("se-space-assembling-machine","pcb-solder", 8)
    util.add_ingredient("se-compact-beacon","pcb-solder", 15)
    util.add_ingredient("se-wide-beacon","pcb-solder", 30)
    util.add_ingredient("se-space-science-lab","pcb-solder", 100)
    util.add_ingredient("se-holmium-solenoid","pcb-solder", 2)
    util.remove_ingredient("se-holmium-solenoid","solder")
    util.add_ingredient("se-quantum-processor","pcb-solder", 4)

    util.add_ingredient("productivity-module-4","pcb-solder", 1)
    util.add_ingredient("productivity-module-5","pcb-solder", 1)
    util.add_ingredient("productivity-module-6","pcb-solder", 2)
    util.add_ingredient("productivity-module-7","pcb-solder", 4)
    util.add_ingredient("productivity-module-8","pcb-solder", 8)
    util.add_ingredient("productivity-module-9","pcb-solder", 10)
    util.add_ingredient("speed-module-4","pcb-solder", 1)
    util.add_ingredient("speed-module-5","pcb-solder", 1)
    util.add_ingredient("speed-module-6","pcb-solder", 2)
    util.add_ingredient("speed-module-7","pcb-solder", 4)
    util.add_ingredient("speed-module-8","pcb-solder", 8)
    util.add_ingredient("speed-module-9","pcb-solder", 10)
    util.add_ingredient("effectivity-module-4","pcb-solder", 1)
    util.add_ingredient("effectivity-module-5","pcb-solder", 1)
    util.add_ingredient("effectivity-module-6","pcb-solder", 2)
    util.add_ingredient("effectivity-module-7","pcb-solder", 4)
    util.add_ingredient("effectivity-module-8","pcb-solder", 8)
    util.add_ingredient("effectivity-module-9","pcb-solder", 10)
    if util.me.get_setting("bismuth-reduce-pcb-solder") == "Default (reccomended)" then
        util.add_ingredient("se-space-transport-belt","pcb-solder", 1)
        util.add_ingredient("se-meteor-point-defence","pcb-solder", 20)
        util.add_ingredient("se-meteor-defence-ammo","pcb-solder", 20)
        util.add_ingredient("se-meteor-defence","pcb-solder", 200)
        util.add_ingredient("jetpack-1","pcb-solder", 10)
        util.add_ingredient("jetpack-2","pcb-solder", 20)
        util.add_ingredient("jetpack-3","pcb-solder", 30)
        util.add_ingredient("jetpack-4","pcb-solder", 40)
        util.add_ingredient("se-adaptive-armour-equipment-1","pcb-solder", 10)
        util.add_ingredient("se-adaptive-armour-equipment-2","pcb-solder", 10)
        util.add_ingredient("se-adaptive-armour-equipment-3","pcb-solder", 10)
        util.add_ingredient("se-adaptive-armour-equipment-4","pcb-solder", 20)
        util.add_ingredient("se-adaptive-armour-equipment-5","pcb-solder", 20)
        util.add_ingredient("se-thruster-suit-2","pcb-solder", 50)
        util.add_ingredient("se-thruster-suit-3","pcb-solder", 100)
        util.add_ingredient("se-thruster-suit-4","pcb-solder", 200)
        util.add_ingredient("se-rtg-equipment","pcb-solder", 50)
        util.add_ingredient("se-rtg-equipment-2","pcb-solder", 50)
    end
end

if mods.Krastorio2 then
    util.add_ingredient("logistic-science-pack","pcb-solder", 5)
    util.add_ingredient("chemical-science-pack","pcb-solder", 5)
    util.add_ingredient("military-science-pack","pcb-solder", 5)

    util.add_ingredient("optimization-tech-card","pcb-solder", 5)
    util.add_ingredient("advanced-tech-card","pcb-solder", 5)
    util.add_ingredient("kr-advanced-transport-belt","pcb-solder", 1)
    util.add_ingredient("kr-superior-transport-belt","pcb-solder", 1)
    util.add_ingredient("kr-advanced-splitter","pcb-solder", 1)
    util.add_ingredient("kr-superior-splitter","pcb-solder", 1)
end

if mods.Krastorio2 and mods["space-exploration"] then
    util.add_ingredient("se-rocket-science-pack","pcb-solder", 8)
    util.add_ingredient("space-research-data","pcb-solder", 3)
end