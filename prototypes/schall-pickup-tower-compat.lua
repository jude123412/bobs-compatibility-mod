if mods["SchallPickupTower"] then

    if data.raw.technology["Schall-pickup-tower-1"] then
        bobmods.lib.tech.add_prerequisite("Schall-pickup-tower-1", "radar")
        bobmods.lib.tech.add_prerequisite("Schall-pickup-tower-1", "steel-processing")
    end

    if data.raw.technology["Schall-pickup-tower-2"] then

        -- Requires Bob"s Warfare to be installed
        if data.raw.technology["bob-radar-2"] then
            bobmods.lib.tech.add_prerequisite("Schall-pickup-tower-2", "bob-radar-2")
        end

        -- Requires Bob"s Plates to be installed
        if data.raw.technology["bob-aluminium-processing"] then
            bobmods.lib.tech.add_prerequisite("Schall-pickup-tower-2", "bob-aluminium-processing")
        end
    end

    if data.raw.technology["Schall-pickup-tower-3"] then

        -- Requires Bob"s Warfare to be installed
        if data.raw.technology["bob-radar-3"] then
            bobmods.lib.tech.add_prerequisite("Schall-pickup-tower-3", "bob-radar-3")
        end
        -- Requires Bob"s Plates to be installed
        if data.raw.technology["bob-titanium-processing"] then
            bobmods.lib.tech.add_prerequisite("Schall-pickup-tower-3", "bob-titanium-processing")
        end

        bobmods.lib.tech.add_prerequisite("Schall-pickup-tower-3", "processing-unit")
    end

    if data.raw.technology["Schall-pickup-tower-4"] then
        -- Requires Bob"s Warfare to be installed
        if data.raw.technology["bob-radar-4"] then
            bobmods.lib.tech.add_prerequisite("Schall-pickup-tower-4", "bob-radar-4")
        end

        -- Requires Bob"s Plates to be installed
        if data.raw.technology["bob-tungsten-alloy-processing"] then
            bobmods.lib.tech.add_prerequisite("Schall-pickup-tower-4", "bob-tungsten-alloy-processing")
        end

        -- Requires Bob"s Electronics to be installed
        if data.raw.technology["bob-advanced-processing-unit"] then
            bobmods.lib.tech.add_prerequisite("Schall-pickup-tower-4", "bob-advanced-processing-unit")
        end
    end

    if data.raw.recipe["Schall-pickup-tower-R32"] then
        bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R32", {type = "item", name = "steel-plate", amount = 20})
        bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R32", {type = "item", name = "electronic-circuit", amount = 10})
    end

    if data.raw.recipe["Schall-pickup-tower-R64"] then
        bobmods.lib.recipe.remove_ingredient("Schall-pickup-tower-R64", "Schall-pickup-tower-R32")
        bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R64", {type = "item", name = "Schall-pickup-tower-R32", amount = 1})
        bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R64", {type = "item", name = "advanced-circuit", amount = 10})

        -- Requires Bob"s Plates to be installed
        if data.raw.item["bob-aluminium-plate"] then
            bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R64", {type = "item", name = "bob-aluminium-plate", amount = 20})
        else
            bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R64", {type = "item", name = "steel-plate", amount = 20})
        end

        -- Requires Bob"s Warfare to be installed
        if data.raw.item["bob-radar-2"] then
            bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R64", {type = "item", name = "bob-radar-2", amount = 1})
        else
            bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R64", {type = "item", name = "radar", amount = 1})
        end
    end

    if data.raw.recipe["Schall-pickup-tower-R96"] then
        bobmods.lib.recipe.remove_ingredient("Schall-pickup-tower-R96", "Schall-pickup-tower-R64")
        bobmods.lib.recipe.remove_ingredient("Schall-pickup-tower-R96", "advanced-circuit")
        bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R96", {type = "item", name = "Schall-pickup-tower-R64", amount = 1})
        bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R96", {type = "item", name = "processing-unit", amount = 10})

        -- Requires Bob"s Plates to be installed
        if data.raw.item["bob-titanium-plate"] then
            bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R96", {type = "item", name = "bob-titanium-plate", amount = 20})
        else
            bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R96", {type = "item", name = "steel-plate", amount = 20})
        end

        -- Requires Bob"s Warfare to be installed
        if data.raw.item["bob-radar-3"] then
            bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R96", {type = "item", name = "bob-radar-3", amount = 1})
        else
            bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R96", {type = "item", name = "radar", amount = 1})
        end
    end

    if data.raw.recipe["Schall-pickup-tower-R128"] then
        bobmods.lib.recipe.remove_ingredient("Schall-pickup-tower-R128", "Schall-pickup-tower-R96")
        bobmods.lib.recipe.remove_ingredient("Schall-pickup-tower-R128", "processing-unit")
        bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R128", {type = "item", name = "Schall-pickup-tower-R96", amount = 1})

        -- Requires Bob"s Electronics to be installed
        if data.raw.item["bob-advanced-processing-unit"] then
            bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R128", {type = "item", name = "bob-advanced-processing-unit", amount = 10})
        else
            bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R128", {type = "item", name = "processing-unit", amount = 10})
        end

        -- Requires Bob"s Plates to be installed
        if data.raw.item["bob-copper-tungsten-alloy"] then
            bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R128", {type = "item", name = "bob-copper-tungsten-alloy", amount = 20})
        else
            bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R128", {type = "item", name = "steel-plate", amount = 20})
        end

        -- Requires Bob"s Warfare to be installed
        if data.raw.item["bob-radar-4"] then
            bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R128", {type = "item", name = "bob-radar-4", amount = 1})
        else
            bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R128", {type = "item", name = "radar", amount = 1})
        end
    end

    if type(mods["quality"]) then
        bobmods.lib.recipe.update_recycling_recipe({
            "Schall-pickup-tower-R32",
            "Schall-pickup-tower-R64",
            "Schall-pickup-tower-R96",
            "Schall-pickup-tower-R128"
        })
    end
end