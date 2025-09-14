if mods["ch-concentrated-solar"] then

    -- Fix Chemical Science Requirement
    if data.raw.technology["chcs-concentrated-solar-energy"] then
        bobmods.lib.tech.add_prerequisite("chcs-concentrated-solar-energy", "chemical-science-pack")
    end


    if data.raw.technology["chcs-concentrated-solar-energy"] then

        -- Requires Thermal Solar Power (Light) & Bob's Power to be installed
        if mods["thermal-solar-power-lite"] or mods["bobpower"] then
            bobmods.lib.tech.remove_recipe_unlock("chcs-concentrated-solar-energy", "heat-exchanger")
            bobmods.lib.tech.remove_recipe_unlock("chcs-concentrated-solar-energy", "heat-pipe")
            bobmods.lib.tech.remove_recipe_unlock("chcs-concentrated-solar-energy", "steam-turbine")
        end

        -- Requires Bob's Power to be installed & Thermal Solar Power (Light) to not be installed
        if mods["bobpower"] and not mods["thermal-solar-power-lite"] then
            bobmods.lib.tech.add_prerequisite("chcs-concentrated-solar-energy", "bob-heat-exchanger-1")
            bobmods.lib.tech.add_prerequisite("chcs-concentrated-solar-energy", "bob-steam-turbine-1")
        end
    end

    

    if data.raw.recipe["chcs-heliostat-mirror"] then

        -- Requires Bob's Plates to be installed
        if data.raw.item["bob-glass"] then
            bobmods.lib.recipe.add_ingredient("chcs-heliostat-mirror", {type = "item", name = "bob-glass", amount = 5})
        end
        -- Requires Bob's Plates to be installed
        if data.raw.item["bob-silver-plate"] then
            bobmods.lib.recipe.add_ingredient("chcs-heliostat-mirror", {type = "item", name = "bob-silver-plate", amount = 2})
        end
    end

    if data.raw.recipe["chcs-solar-laser-tower"] then

        -- Requires Bob's Plates to be installed
        if data.raw.item["bob-glass"] then
            bobmods.lib.recipe.add_ingredient("chcs-solar-laser-tower", {type = "item", name = "bob-glass", amount = 100})
        end
        -- Requires Bob's Plates to be installed
        if data.raw.item["bob-silver-plate"] then
            bobmods.lib.recipe.add_ingredient("chcs-solar-laser-tower", {type = "item", name = "bob-silver-plate", amount = 25})
        end
    end

    -- Requires Quality to be installed
    if mods["quality"] then
        bobmods.lib.recipe.update_recycling_recipe({
            "chcs-heliostat-mirror",
            "chcs-solar-laser-tower"
        })
    end


    if data.raw.technology["chcs-concentrated-solar-energy"] then

        -- Requires Thermal Solar Power (Light) to be installed
        if data.raw.technology["tspl-thermal-solar-power"] then
            bobmods.lib.tech.add_prerequisite("chcs-concentrated-solar-energy", "tspl-thermal-solar-power")
        end
    end

    if data.raw.recipe["chcs-solar-power-tower"] then

        -- Requires Thermal Solar Power (Light) to be installed
        if data.raw.item["tspl-basic-heat-pipe"] then
            bobmods.lib.recipe.add_ingredient("chcs-solar-power-tower", {type = "item", name = "tspl-basic-heat-pipe", amount = 100})
        else
            bobmods.lib.recipe.add_ingredient("chcs-solar-power-tower", {type = "item", name = "heat-pipe", amount = 100})
        end
    end

    -- Requires Thermal Solar Power (Light) & Quality to be installed
    if mods["quality"] then
        bobmods.lib.recipe.update_recycling_recipe({
            "chcs-solar-power-tower"
        })
    end
end