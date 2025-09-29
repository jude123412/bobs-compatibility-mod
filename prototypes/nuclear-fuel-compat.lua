if mods["Nuclear Fuel"] then

    -- Requires Bob's Plates to be installed
    -- Reorders to better fit with Bobs Mods
    if mods["bobplates"] then
        if data.raw.item["plutonium"] then
            data.raw.item["plutonium"].subgroup = "bob-nuclear"
            data.raw.item["plutonium"].order = "s[bob-plutonium-240]"
        end
        if data.raw.recipe["natural-uranium-processing"] then
            data.raw.recipe["natural-uranium-processing"].subgroup = "bob-nuclear"
            data.raw.recipe["natural-uranium-processing"].order = "a[uranium-processing]-a[natural-uranium-processing]"
        end
        if data.raw.item["depleted-breeder-fuel-cell"] then
            data.raw.item["depleted-breeder-fuel-cell"].subgroup = "bob-fuel-cells"
            data.raw.item["depleted-breeder-fuel-cell"].order = "r[uranium-processing]-d[depleted-breeder-fuel-cell]"
        end
        if data.raw.item["breeder-fuel-cell"] then
            data.raw.item["breeder-fuel-cell"].subgroup = "bob-fuel-cells"
            data.raw.item["breeder-fuel-cell"].order = "r[uranium-processing]-da[breeder-fuel-cell]"
        end
        if data.raw.recipe["mox-fuel-cell"] then
            data.raw.recipe["mox-fuel-cell"].subgroup = "bob-fuel-cells"
            data.raw.recipe["mox-fuel-cell"].order = "r[uranium-processing]-db[mox-fuel-cell]"
        end
        if data.raw.recipe["breeder-fuel-reprocessing"] then
            data.raw.recipe["breeder-fuel-reprocessing"].subgroup = "bob-fuel-cells"
            data.raw.recipe["breeder-fuel-reprocessing"].order = "r[uranium-processing]-dc[mox-fuel-cell]"
        end
        if data.raw.recipe["nuclear-fuel-pu"] then
            data.raw.recipe["nuclear-fuel-pu"].subgroup = "bob-chemical-fuels"
            data.raw.recipe["nuclear-fuel-pu"].order = "f[nuclear-fuel-pu]"
        end
    end

    -- Disable Bobingabout Enrichment Process if 
    -- Nuclear Fuel Disables Kovarex Enrichment Process
    if settings.startup["nuclear-fuel-kovarex-enabled"].value == false and data.raw.technology["bobingabout-enrichment-process"] then
        bobmods.lib.tech.hide("bobingabout-enrichment-process")
        bobmods.lib.recipe.hide("bob-plutonium-nucleosynthesis")
        bobmods.lib.recipe.hide("bobingabout-enrichment-process")
    end


    if data.raw.technology["plutonium-breeding"] and mods["reskins-bobs"] and mods["bobplates"] then
        bobmods.lib.tech.add_prerequisite("plutonium-breeding", "production-science-pack")
        data.raw.technology["plutonium-breeding"].icon = "__bobcompat__/graphics/nuclear-fuel/technology/breeder-fuel-reprocessing-technology.png"
    end


    if data.raw.technology["mox-fuel"] then 
        bobmods.lib.tech.add_prerequisite("mox-fuel", "production-science-pack")
        if mods["reskins-bobs"] then
            data.raw.technology["mox-fuel"].icon = "__bobcompat__/graphics/nuclear-fuel/technology/mox-fuel-cell-technology.png"
        end
    end

    -- Revert to 10 Cells instead of 15
    if data.raw.recipe["nuclear-fuel-reprocessing"] then
        if data.raw.item["depleted-uranium-fuel-cell"] then
            bobmods.lib.recipe.remove_ingredient("nuclear-fuel-reprocessing", "depleted-uranium-fuel-cell")
            bobmods.lib.recipe.add_ingredient("nuclear-fuel-reprocessing", {type = "item", name = "depleted-uranium-fuel-cell", amount = 10})
        end
        -- Force 10% change for balance with Bobs Plates
        if mods["bobplates"] then
            bobmods.lib.recipe.remove_result("nuclear-fuel-reprocessing", "plutonium")
            bobmods.lib.recipe.add_result("nuclear-fuel-reprocessing", {type = "item", name = "plutonium", amount = 1, probability = 0.10})
        end
    end

    -- Requires Bob's Plates to be installed
    if data.raw.recipe["mox-fuel-cell"] then
        data.raw.recipe["mox-fuel-cell"].icon = "__bobcompat__/graphics/nuclear-fuel/recipe/mox-fuel-cell-recipe.png"
        if data.raw.item["depleted-uranium-fuel-cell"] then
            bobmods.lib.recipe.replace_ingredient("mox-fuel-cell", "iron-plate", "bob-empty-nuclear-fuel-cell")
        end
    end

    if data.raw.recipe["breeder-fuel-cell"] then
        bobmods.lib.recipe.remove_ingredient("breeder-fuel-cell", "uranium-238")
        bobmods.lib.recipe.remove_ingredient("breeder-fuel-cell", "plutonium")
        bobmods.lib.recipe.add_ingredient("breeder-fuel-cell", {type = "item", name = "uranium-238", amount = 17})
        bobmods.lib.recipe.add_ingredient("breeder-fuel-cell", {type = "item", name = "plutonium", amount = 3})
        if data.raw.item["depleted-uranium-fuel-cell"] then
            bobmods.lib.recipe.replace_ingredient("breeder-fuel-cell", "iron-plate", "bob-empty-nuclear-fuel-cell")
        end
    end

    if data.raw.recipe["breeder-fuel-reprocessing"] then
        bobmods.lib.recipe.add_result("breeder-fuel-reprocessing", {type = "item", name = "bob-plutonium-239", amount = 4})
        bobmods.lib.recipe.add_result("breeder-fuel-reprocessing", {type = "item", name = "bob-fusion-catalyst", amount = 1})
        if mods["reskins-bobs"] and mods["bobplates"] then
            data.raw.recipe["breeder-fuel-reprocessing"].icon = "__bobcompat__/graphics/nuclear-fuel/recipe/breeder-fuel-reprocessing-recipe.png"
        end
        if data.raw.item["depleted-uranium-fuel-cell"] then
            bobmods.lib.recipe.add_result("breeder-fuel-reprocessing", {type = "item", name = "bob-empty-nuclear-fuel-cell", amount = 10})
        end
    end
end