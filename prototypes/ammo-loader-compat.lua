if mods["ammo-loader"] then

    if data.raw.technology["ammo-loader-tech-loader-chest"] then
        
        -- Requires Bob's Electronics to be installed
        if mods["bobelectronics"] then
            bobmods.lib.tech.add_prerequisite("ammo-loader-tech-loader-chest", "bob-electronics")
        end
    end
end