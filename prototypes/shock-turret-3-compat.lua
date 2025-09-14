if mods["ShockTurret3"] then
    if data.raw.item["adikings-shock-turret"] then
        data.raw["item"]["adikings-shock-turret"].subgroup = "turret"
        data.raw["item"]["adikings-shock-turret"].order = "b[turret]-b[laser-turret-0]"
    end
    
    if data.raw.technology["adikings-shock-turret"] then

        -- Requires Bob's Electronics to be installed
        if data.raw.technology["bob-electronics"] then
            bobmods.lib.tech.add_prerequisite("adikings-shock-turret", "bob-electronics")
        end
    end
end