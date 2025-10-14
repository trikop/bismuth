local util = require("__bismuth__.data-util");

if mods.bzfoundry then
    util.add_prerequisite("pcb-solder", "foundry")
end

util.add_ingredient("assembling-machine-2","pcb-solder", 5)
util.remove_ingredient("assembling-machine-2","solder")
util.add_ingredient("assembling-machine-3","pcb-solder", 8)
util.add_ingredient("inserter","solder", 1)
util.add_ingredient("long-handed-inserter","solder", 1)
util.add_ingredient("fast-inserter","pcb-solder", 2)
util.add_ingredient("bulk-inserter","pcb-solder", 2)
util.add_ingredient("fast-transport-belt","pcb-solder", 1)
util.add_ingredient("express-transport-belt","pcb-solder", 1)
util.add_ingredient("fast-splitter","pcb-solder", 2)
util.add_ingredient("express-splitter","pcb-solder", 4)
util.add_ingredient("beacon","pcb-solder", 20)

util.add_ingredient("productivity-module","pcb-solder", 7)
util.add_ingredient("productivity-module-2","pcb-solder", 13)
util.add_ingredient("productivity-module-3","pcb-solder", 15)
util.add_ingredient("speed-module","pcb-solder", 12)
util.add_ingredient("speed-module-2","pcb-solder", 10)
util.add_ingredient("speed-module-3","pcb-solder", 10)
util.add_ingredient("effectivity-module","pcb-solder", 10)
util.add_ingredient("effectivity-module-2","pcb-solder", 7)
util.add_ingredient("effectivity-module-3","pcb-solder", 7)
if util.me.get_setting("bismuth-reduce-pcb-solder") == "Default (reccomended)" then
    util.add_ingredient("modular-armor","pcb-solder", 30)
    util.add_ingredient("power-armor","pcb-solder", 40)
    util.add_ingredient("power-armor-mk2","pcb-solder", 50)

    util.add_ingredient("laser-turret","pcb-solder", 20)

    util.add_ingredient("construction-robot","pcb-solder", 2)
    util.add_ingredient("train-stop","pcb-solder", 5)
    util.add_ingredient("rail-signal","pcb-solder", 1)
    util.add_ingredient("rail-chain-signal","pcb-solder", 2)
    util.add_ingredient("locomotive","pcb-solder", 10)
    util.add_ingredient("roboport","pcb-solder", 50)

    util.add_ingredient("arithmetic-combinator","pcb-solder", 5)
    util.add_ingredient("decider-combinator","pcb-solder", 5)
    util.add_ingredient("constant-combinator","pcb-solder", 2)
    util.add_ingredient("programmable-speaker","pcb-solder", 4)

    util.add_ingredient("personal-battery","pcb-solder", 1)
    util.add_ingredient("solar-panel-equipment","pcb-solder", 2)
    util.add_ingredient("fission-reactor-equipment","pcb-solder", 50)
    util.add_ingredient("night-vision-equipment","pcb-solder", 2)
    util.add_ingredient("energy-shield-equipment","pcb-solder", 5)
    util.add_ingredient("defender-capsule","pcb-solder", 3)
    util.add_ingredient("distractor-capsule","pcb-solder", 3)
    util.add_ingredient("rocket","pcb-solder", 1)
    util.add_ingredient("rocket-launcher","pcb-solder", 5)
    util.add_ingredient("artillery-turret","pcb-solder", 20)
    util.add_ingredient("tank","pcb-solder", 10)


    util.add_ingredient("logistic-chest-passive-provider","pcb-solder", 4)
    util.add_ingredient("logistic-chest-active-provider","pcb-solder", 4)
    util.add_ingredient("logistic-chest-storage","pcb-solder", 4)
    util.add_ingredient("logistic-chest-buffer","pcb-solder", 4)
    util.add_ingredient("logistic-chest-requester","pcb-solder", 4)

    util.add_ingredient("rocket-control-unit","pcb-solder", 5)
    util.add_ingredient("satellite","pcb-solder", 50)
end

if util.k2() then

    util.add_prerequisite("pcb-solder", "steam-power")
    util.add_ingredient("ai-core","pcb-solder", 2)
    util.add_ingredient("kr-advanced-assembling-machine","pcb-solder", 5)
    util.add_ingredient("kr-superior-inserter","pcb-solder", 1)
    util.add_ingredient("kr-superior-long-inserter","pcb-solder", 1)
    if util.me.get_setting("bismuth-reduce-pcb-solder") == "Default (reccomended)" then
        util.add_ingredient("kr-advanced-radar","pcb-solder", 5)

        util.add_ingredient("power-armor-mk3","pcb-solder", 50)
        util.add_ingredient("power-armor-mk4","pcb-solder", 55)
        util.add_ingredient("imersite-night-vision-equipment","pcb-solder", 2)
        util.add_ingredient("imersite-solar-panel-equipment","pcb-solder", 1)
        util.add_ingredient("battery-mk2-equipment","pcb-solder", 1)
        util.add_ingredient("big-battery-mk2-equipment","pcb-solder", 2)
        util.add_ingredient("battery-mk3-equipment","pcb-solder", 1)
        util.add_ingredient("big-battery-mk3-equipment","pcb-solder", 2)
        util.add_ingredient("kr-nuclear-locomotive","pcb-solder", 20)

        util.add_ingredient("kr-medium-passive-provider-container","pcb-solder", 8)
        util.add_ingredient("kr-medium-active-provider-container","pcb-solder", 8)
        util.add_ingredient("kr-medium-storage-container","pcb-solder", 8)
        util.add_ingredient("kr-medium-buffer-container","pcb-solder", 8)
        util.add_ingredient("kr-medium-requester-container","pcb-solder", 8)
        util.add_ingredient("kr-big-passive-provider-container","pcb-solder", 40)
        util.add_ingredient("kr-big-active-provider-container","pcb-solder", 40)
        util.add_ingredient("kr-big-storage-container","pcb-solder", 40)
        util.add_ingredient("kr-big-buffer-container","pcb-solder", 40)
        util.add_ingredient("kr-big-requester-container","pcb-solder", 40)

        util.add_ingredient("biusart-lab","pcb-solder", 10)
    end
    if mods["space-exploration"] then
        util.set_tech_recipe("pcb-solder", {{"kr-basic-tech-card", 1},{"automation-science-pack", 1}})
    end
end

if mods["aai-containers"] then
    if util.me.get_setting("bismuth-reduce-pcb-solder") == "Default (reccomended)" then
        util.add_ingredient("aai-strongbox-passive-provider","pcb-solder",8)
        util.add_ingredient("aai-strongbox-active-provider","pcb-solder", 8)
        util.add_ingredient("aai-strongbox-storage","pcb-solder", 8)
        util.add_ingredient("aai-strongbox-buffer","pcb-solder", 8)
        util.add_ingredient("aai-strongbox-requester","pcb-solder", 8)
        util.add_ingredient("aai-storehouse-passive-provider","pcb-solder",20)
        util.add_ingredient("aai-storehouse-active-provider","pcb-solder", 20)
        util.add_ingredient("aai-storehouse-storage","pcb-solder", 20)
        util.add_ingredient("aai-storehouse-buffer","pcb-solder", 20)
        util.add_ingredient("aai-storehouse-requester","pcb-solder", 20)
        util.add_ingredient("aai-warehouse-passive-provider","pcb-solder",40)
        util.add_ingredient("aai-warehouse-active-provider","pcb-solder", 40)
        util.add_ingredient("aai-warehouse-storage","pcb-solder", 40)
        util.add_ingredient("aai-warehouse-buffer","pcb-solder", 40)
        util.add_ingredient("aai-warehouse-requester","pcb-solder", 40)
    end
end

if mods.bztin then
    util.remove_ingredient("processing-unit", "solder")
    util.remove_ingredient("advanced-circuit", "solder")
    util.add_ingredient("advanced-circuit","pcb-solder", 4)
else
    util.add_ingredient("advanced-circuit","pcb-solder", 3)
end

if mods.bzchlorine then
    util.add_ingredient("assembling-machine-3", "pcb", 1)
end

if mods.bzsilicon then
    util.add_ingredient("solar-cell", "pcb-solder", 2)
end

if mods.bzgold then
    util.add_ingredient("cpu", "pcb-solder", 10)
    util.add_ingredient("mainboard", "pcb-solder", 20)
    util.add_ingredient("cpu-holmium", "pcb-solder", 20)
    util.add_ingredient("mainboard-holmium", "pcb-solder", 20)
    util.add_ingredient("processing-unit","pcb-solder", 1)
else
    util.add_ingredient("processing-unit","pcb-solder", 23)
end

if mods.MDbobelectronics or mods.MDbobelectronics2 then
    util.add_ingredient("advanced-processing-unit", "pcb-solder", 4)
    util.remove_ingredient("advanced-processing-unit", "solder")
    util.add_ingredient("BOBMD-electronics-components", "pcb-solder", 2)
    util.add_ingredient("integrated-electronics", "pcb-solder", 4)
    util.add_ingredient("processing-electronics", "pcb-solder", 6)

    util.add_or_add_to_ingredient("processing-unit", "pcb-solder", 5)
end