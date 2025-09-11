if type(mods["ammo-loader"]) then
    if data.raw.technology["ammo-loader-tech-loader-chest"] then
        bobmods.lib.tech.add_prerequisite("ammo-loader-tech-loader-chest", "bob-electronics")
    end
end