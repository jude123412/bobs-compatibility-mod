if type(mods["SchallPickupTower"]) then
    if data.raw.technology["Schall-pickup-tower-1"] then
        bobmods.lib.tech.add_prerequisite("Schall-pickup-tower-1", "radar"           )
        bobmods.lib.tech.add_prerequisite("Schall-pickup-tower-1", "steel-processing")
    end

    if data.raw.technology["Schall-pickup-tower-2"] then
        bobmods.lib.tech.add_prerequisite("Schall-pickup-tower-2", "bob-radar-2"             )
        bobmods.lib.tech.add_prerequisite("Schall-pickup-tower-2", "bob-aluminium-processing")
    end

    if data.raw.technology["Schall-pickup-tower-3"] then
        bobmods.lib.tech.add_prerequisite("Schall-pickup-tower-3", "bob-radar-3"            )
        bobmods.lib.tech.add_prerequisite("Schall-pickup-tower-3", "bob-titanium-processing")
        bobmods.lib.tech.add_prerequisite("Schall-pickup-tower-3", "processing-unit"        )
    end

    if data.raw.technology["Schall-pickup-tower-4"] then
        bobmods.lib.tech.add_prerequisite("Schall-pickup-tower-4", "bob-radar-4"                  )
        bobmods.lib.tech.add_prerequisite("Schall-pickup-tower-4", "bob-tungsten-alloy-processing")
        bobmods.lib.tech.add_prerequisite("Schall-pickup-tower-4", "bob-advanced-processing-unit" )
    end

    if data.raw.recipe["Schall-pickup-tower-R32"] then
        bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R32", {type = "item", name = 'steel-plate', amount = 20})
    end

    if data.raw.recipe["Schall-pickup-tower-R64"] then
        bobmods.lib.recipe.remove_ingredient("Schall-pickup-tower-R64", "Schall-pickup-tower-R32")

        bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R64", {type = "item", name = 'Schall-pickup-tower-R32', amount = 1})
        bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R64", {type = "item", name = 'bob-aluminium-plate', amount = 20   })
        bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R64", {type = "item", name = 'bob-radar-2', amount = 1            })
    end

    if data.raw.recipe["Schall-pickup-tower-R96"] then
        bobmods.lib.recipe.remove_ingredient("Schall-pickup-tower-R96", "Schall-pickup-tower-R64")
        bobmods.lib.recipe.remove_ingredient("Schall-pickup-tower-R96", "advanced-circuit"       )


        bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R96", {type = "item", name = 'Schall-pickup-tower-R64', amount = 1})
        bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R96", {type = "item", name = 'processing-unit', amount = 10       })
        bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R96", {type = "item", name = 'bob-titanium-plate', amount = 20    })
        bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R96", {type = "item", name = 'bob-radar-3', amount = 1            })
    end

    if data.raw.recipe["Schall-pickup-tower-R128"] then
        bobmods.lib.recipe.remove_ingredient("Schall-pickup-tower-R128", "Schall-pickup-tower-R96")
        bobmods.lib.recipe.remove_ingredient("Schall-pickup-tower-R128", "processing-unit"        )

        bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R128", {type = "item", name = 'bob-advanced-processing-unit', amount = 10})
        bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R128", {type = "item", name = 'Schall-pickup-tower-R96', amount = 1      })
        bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R128", {type = "item", name = 'bob-copper-tungsten-alloy', amount = 20   })
        bobmods.lib.recipe.add_ingredient("Schall-pickup-tower-R128", {type = "item", name = 'bob-radar-4', amount = 1                  })
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