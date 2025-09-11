if type(mods["Electric Furnaces"]) then
    if data.raw.recipe["electric-steel-furnace"] then
        bobmods.lib.tech.add_prerequisite("advanced-material-processing", "bob-electronics")
    end

    if data.raw.recipe["electric-stone-furnace"] then
        bobmods.lib.recipe.remove_ingredient("electric-stone-furnace", "electronic-circuit")

        bobmods.lib.recipe.add_ingredient("electric-stone-furnace", {type = "item", name = 'bob-basic-circuit-board', amount = 1})
    end

    if type(mods["quality"]) then
        bobmods.lib.recipe.update_recycling_recipe({
            "electric-stone-furnace"
        })
    end
end