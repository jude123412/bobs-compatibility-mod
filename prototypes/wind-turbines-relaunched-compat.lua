if type(mods["Wind-Turbines-relaunched"]) then
    if data.raw.technology["texugo-wind-turbine3"] then
        bobmods.lib.tech.add_prerequisite("texugo-wind-turbine3", "bob-titanium-processing")
    end

    if data.raw.technology["texugo-wind-turbine4"] then
        bobmods.lib.tech.add_prerequisite("texugo-wind-turbine4", "bob-steam-turbine-1"         )
        bobmods.lib.tech.add_prerequisite("texugo-wind-turbine4", "bob-heat-pipe-1"             )
        bobmods.lib.tech.add_prerequisite("texugo-wind-turbine4", "low-density-structure"       )
        bobmods.lib.tech.add_prerequisite("texugo-wind-turbine4", "bob-advanced-processing-unit")
        bobmods.lib.tech.add_prerequisite("texugo-wind-turbine4", "speed-module"                )
        bobmods.lib.tech.add_prerequisite("texugo-wind-turbine4", "bob-nitinol-processing"      )

        bobmods.lib.tech.remove_prerequisite("texugo-wind-turbine4", "nuclear-power")
    end

    if data.raw.recipe["texugo-wind-turbine"] then
        bobmods.lib.recipe.remove_ingredient("texugo-wind-turbine", "electronic-circuit")

        bobmods.lib.recipe.add_ingredient("texugo-wind-turbine", {type = "item", name = 'bob-basic-circuit-board', amount = 2})
    end

    if data.raw.recipe["texugo-wind-turbine2"] then
        bobmods.lib.recipe.add_ingredient("texugo-wind-turbine2", {type = "item", name = 'bob-steel-bearing',    amount = 10})
        bobmods.lib.recipe.add_ingredient("texugo-wind-turbine2", {type = "item", name = 'bob-steel-gear-wheel', amount = 10})
        bobmods.lib.recipe.add_ingredient("texugo-wind-turbine2", {type = "item", name = 'texugo-wind-turbine',  amount = 1 })
    end

    if data.raw.recipe["texugo-wind-turbine3"] then
        bobmods.lib.recipe.remove_ingredient("texugo-wind-turbine3", "steel-plate")

        bobmods.lib.recipe.add_ingredient("texugo-wind-turbine3", {type = "item", name = 'bob-titanium-bearing',    amount = 40 })
        bobmods.lib.recipe.add_ingredient("texugo-wind-turbine3", {type = "item", name = 'bob-titanium-gear-wheel', amount = 40 })
        bobmods.lib.recipe.add_ingredient("texugo-wind-turbine3", {type = "item", name = 'bob-titanium-plate',      amount = 200})
        bobmods.lib.recipe.add_ingredient("texugo-wind-turbine3", {type = "item", name = 'texugo-wind-turbine2',    amount = 1  })
    end

    if data.raw.recipe["texugo-wind-turbine4"] then
        bobmods.lib.recipe.remove_ingredient("texugo-wind-turbine4", "steel-plate"    )
        bobmods.lib.recipe.remove_ingredient("texugo-wind-turbine4", "processing-unit")

        bobmods.lib.recipe.add_ingredient("texugo-wind-turbine4", {type = "item", name = 'bob-advanced-processing-unit', amount = 70  })
        bobmods.lib.recipe.add_ingredient("texugo-wind-turbine4", {type = "item", name = 'bob-nitinol-bearing',     	 amount = 400 })
        bobmods.lib.recipe.add_ingredient("texugo-wind-turbine4", {type = "item", name = 'bob-nitinol-gear-wheel',  	 amount = 400 })
        bobmods.lib.recipe.add_ingredient("texugo-wind-turbine4", {type = "item", name = 'bob-nitinol-alloy', 	    	 amount = 2000})
        bobmods.lib.recipe.add_ingredient("texugo-wind-turbine4", {type = "item", name = 'texugo-wind-turbine3', 	     amount = 1   })
    end

    if type(mods["quality"]) then
        bobmods.lib.recipe.update_recycling_recipe({
            "texugo-wind-turbine",
            "texugo-wind-turbine2",
            "texugo-wind-turbine3",
            "texugo-wind-turbine4"
        })
    end
end
