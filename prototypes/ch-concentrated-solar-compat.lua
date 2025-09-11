if type(mods["ch-concentrated-solar"]) then
    if data.raw.technology["chcs-concentrated-solar-energy"] then
            bobmods.lib.tech.add_prerequisite("chcs-concentrated-solar-energy", "chemical-science-pack")
    end

    if data.raw.technology["chcs-concentrated-solar-energy"] then
        bobmods.lib.tech.remove_recipe_unlock("chcs-concentrated-solar-energy", "heat-exchanger")
        bobmods.lib.tech.remove_recipe_unlock("chcs-concentrated-solar-energy", "heat-pipe")
        bobmods.lib.tech.remove_recipe_unlock("chcs-concentrated-solar-energy", "steam-turbine")
    end

    if data.raw.recipe["chcs-heliostat-mirror"] then
        bobmods.lib.recipe.add_ingredient("chcs-heliostat-mirror", {type = "item", name = "bob-glass", amount = 5})
        bobmods.lib.recipe.add_ingredient("chcs-heliostat-mirror", {type = "item", name = "bob-silver-plate", amount = 2})
    end

    if data.raw.recipe["chcs-solar-laser-tower"] then
        bobmods.lib.recipe.add_ingredient("chcs-solar-laser-tower", {type = "item", name = "bob-glass", amount = 100})
        bobmods.lib.recipe.add_ingredient("chcs-solar-laser-tower", {type = "item", name = "bob-silver-plate", amount = 25})
    end

    if type(mods["thermal-solar-power-lite"]) then
        if data.raw.technology["chcs-concentrated-solar-energy"] then
            bobmods.lib.tech.add_prerequisite("chcs-concentrated-solar-energy", "tspl-thermal-solar-power")
        end

        if data.raw.recipe["chcs-solar-power-tower"] then
            bobmods.lib.recipe.add_ingredient("chcs-solar-power-tower", {type = "item", name = "tspl-basic-heat-pipe", amount = 100})
        end

        if type(mods["quality"]) then
            bobmods.lib.recipe.update_recycling_recipe({
                "chcs-solar-power-tower"
            })
        end
    end

    if type(mods["quality"]) then
        bobmods.lib.recipe.update_recycling_recipe({
            "chcs-heliostat-mirror",
            "chcs-solar-laser-tower"
        })
    end
end