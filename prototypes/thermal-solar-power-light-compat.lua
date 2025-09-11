if type(mods["thermal-solar-power-lite"]) then
    if data.raw.recipe["tspl-thermal-solar-panel"] then
        bobmods.lib.recipe.remove_ingredient("tspl-thermal-solar-panel", "copper-plate")
        bobmods.lib.recipe.remove_ingredient("tspl-thermal-solar-panel", "iron-plate"  )

        bobmods.lib.recipe.add_ingredient("tspl-thermal-solar-panel", {type = "item", name = 'copper-plate',     amount = 9})
        bobmods.lib.recipe.add_ingredient("tspl-thermal-solar-panel", {type = "item", name = 'iron-plate',       amount = 9})
        bobmods.lib.recipe.add_ingredient("tspl-thermal-solar-panel", {type = "item", name = "bob-glass",        amount = 9})
        bobmods.lib.recipe.add_ingredient("tspl-thermal-solar-panel", {type = "item", name = "bob-silver-plate", amount = 4})
    end

    if data.raw.recipe["tspl-basic-heat-exchanger"] then
        bobmods.lib.recipe.remove_ingredient("tspl-basic-heat-exchanger", "copper-plate")
        bobmods.lib.recipe.remove_ingredient("tspl-basic-heat-exchanger", "iron-plate"  )
        bobmods.lib.recipe.remove_ingredient("tspl-basic-heat-exchanger", "pipe"        )

        bobmods.lib.recipe.add_ingredient("tspl-basic-heat-exchanger", {type = "item", name = 'tspl-basic-heat-pipe', amount = 4})
        bobmods.lib.recipe.add_ingredient("tspl-basic-heat-exchanger", {type = "item", name = 'boiler',               amount = 1})
    end

    if data.raw.recipe["tspl-basic-heat-pipe"] then
        bobmods.lib.recipe.remove_ingredient("tspl-basic-heat-pipe", "copper-plate")

        bobmods.lib.recipe.add_ingredient("tspl-basic-heat-pipe", {type = "item", name = 'copper-plate', amount = 10})
    end

    if type(mods["quality"]) then
        bobmods.lib.recipe.update_recycling_recipe({
            "tspl-thermal-solar-panel",
            "tspl-basic-heat-exchanger",
            "tspl-basic-heat-pipe"
        })
    end
end