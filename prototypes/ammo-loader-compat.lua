if mods["ammo-loader"] then

    if data.raw.technology["ammo-loader-tech-loader-chest"] then
        
        -- Requires Bob's Electronics to be installed
        if mods["bobelectronics"] then
            bobmods.lib.tech.add_prerequisite("ammo-loader-tech-loader-chest", "bob-electronics")
        end
    end

    if data.raw.technology["ammo-loader-tech-artillery"] then
        bobmods.lib.tech.add_prerequisite("ammo-loader-tech-artillery", "utility-science-pack")
    end
end