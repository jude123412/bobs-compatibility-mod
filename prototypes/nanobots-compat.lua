if type(mods["Nanobots2"]) then
    if data.raw.technology["nanobots"] then
        bobmods.lib.tech.add_prerequisite("nanobots", "bob-electronics")
    end

    if data.raw.recipe["equipment-bot-chip-feeder"] then
        bobmods.lib.recipe.replace_ingredient("equipment-bot-chip-feeder", "processing-unit", "electronic-circuit")
    end

    if data.raw.recipe["equipment-bot-chip-items"] then
        bobmods.lib.recipe.replace_ingredient("equipment-bot-chip-items", "processing-unit", "electronic-circuit")
    end

    if data.raw.recipe["equipment-bot-chip-launcher"] then
        bobmods.lib.recipe.replace_ingredient("equipment-bot-chip-launcher", "processing-unit", "electronic-circuit")
    end

    if data.raw.recipe["equipment-bot-chip-nanointerface"] then
        bobmods.lib.recipe.replace_ingredient("equipment-bot-chip-nanointerface", "processing-unit", "electronic-circuit")
    end

    if data.raw.recipe["equipment-bot-chip-trees"] then
        bobmods.lib.recipe.replace_ingredient("equipment-bot-chip-trees", "processing-unit", "electronic-circuit")
    end

        if type(mods["quality"]) then
        bobmods.lib.recipe.update_recycling_recipe({
            "equipment-bot-chip-feeder",
            "equipment-bot-chip-items",
            "equipment-bot-chip-launcher",
            "equipment-bot-chip-nanointerface",
            "equipment-bot-chip-trees"
        })
    end
end