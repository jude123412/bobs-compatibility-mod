if type(mods["Repair_Turret"]) then
    if data.raw.technology["repair-turret"] then
        bobmods.lib.tech.add_prerequisite("repair-turret", "bob-electronics" )
        bobmods.lib.tech.add_prerequisite("repair-turret", "steel-processing")
    end
 
    if data.raw.technology["repair-turret-construction"] then
        bobmods.lib.tech.add_prerequisite("repair-turret-construction", "chemical-science-pack")
    end

    if data.raw.technology["repair-turret-power-2"] then
        bobmods.lib.tech.add_prerequisite("repair-turret-power-2", "chemical-science-pack")
    end

    if data.raw.technology["repair-turret-power-3"] then
        bobmods.lib.tech.add_prerequisite("repair-turret-power-3", "utility-science-pack")
    end

    if data.raw.technology["repair-turret-efficiency-2"] then
        bobmods.lib.tech.add_prerequisite("repair-turret-efficiency-2", "chemical-science-pack")
    end

    if data.raw.technology["repair-turret-efficiency-3"] then
        bobmods.lib.tech.add_prerequisite("repair-turret-efficiency-3", "utility-science-pack")
    end
end