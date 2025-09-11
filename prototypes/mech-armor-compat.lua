if type(mods["mech-armor"]) then

    -- This updates mech armor equipment_grid to be larger than bob's tier 5 power armor
    -- Also re-orders mech armor recipe after mk5 power armor
    data.raw["equipment-grid"]["huge-equipment-grid"].width = 12
    data.raw["equipment-grid"]["huge-equipment-grid"].height = 13
    data.raw["armor"]["mech-armor"].order = "i[mech-armor]"

    if data.raw.technology["mech-armor"] then
        bobmods.lib.tech.add_prerequisite("mech-armor", "bob-god-module"   )
        bobmods.lib.tech.add_prerequisite("mech-armor", "bob-power-armor-5")
        bobmods.lib.tech.add_prerequisite("mech-armor", "bob-robots-3"     )

        bobmods.lib.tech.remove_prerequisite("mech-armor", "power-armor-mk2"                      )
        bobmods.lib.tech.remove_prerequisite("mech-armor", "fission-reactor-equipment"            )
        bobmods.lib.tech.remove_prerequisite("mech-armor", "efficiency-module-3", "speed-module-3")
        bobmods.lib.tech.remove_prerequisite("mech-armor", "speed-module-3"                       )

        bobmods.lib.tech.add_new_science_pack("mech-armor", "bob-science-pack-gold", 1        )
        bobmods.lib.tech.add_new_science_pack("mech-armor", "bob-alien-science-pack", 1       )
        bobmods.lib.tech.add_new_science_pack("mech-armor", "bob-alien-science-pack-red", 1   )
        bobmods.lib.tech.add_new_science_pack("mech-armor", "bob-alien-science-pack-orange", 1)
        bobmods.lib.tech.add_new_science_pack("mech-armor", "bob-alien-science-pack-yellow", 1)
        bobmods.lib.tech.add_new_science_pack("mech-armor", "bob-alien-science-pack-green", 1 )
        bobmods.lib.tech.add_new_science_pack("mech-armor", "bob-alien-science-pack-blue", 1  )
        bobmods.lib.tech.add_new_science_pack("mech-armor", "bob-alien-science-pack-purple", 1)
        bobmods.lib.tech.add_new_science_pack("mech-armor", "space-science-pack", 1           )

        bobmods.lib.tech.remove_science_pack("mech-armor", "automation-science-pack")
        bobmods.lib.tech.remove_science_pack("mech-armor", "logistic-science-pack"  )
        bobmods.lib.tech.remove_science_pack("mech-armor", "chemical-science-pack"  )
        bobmods.lib.tech.remove_science_pack("mech-armor", "military-science-pack"  )
        bobmods.lib.tech.remove_science_pack("mech-armor", "production-science-pack")
        bobmods.lib.tech.remove_science_pack("mech-armor", "utility-science-pack"   )
    end

    if data.raw.recipe["mech-armor"] then
        bobmods.lib.recipe.remove_ingredient("mech-armor", "power-armor-mk2"      )
        bobmods.lib.recipe.remove_ingredient("mech-armor", "flying-robot-frame"   )
        bobmods.lib.recipe.remove_ingredient("mech-armor", "processing-unit"      )
        bobmods.lib.recipe.remove_ingredient("mech-armor", "low-density-structure")
        bobmods.lib.recipe.remove_ingredient("mech-armor", "speed-module-3"       )
        bobmods.lib.recipe.remove_ingredient("mech-armor", "efficiency-module-3"  )

        bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-power-armor-mk5", amount = 1}           )
        bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-flying-robot-frame-4", amount = 100}    )
        bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "processing-unit", amount = 100}             )
        bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-advanced-processing-unit", amount = 100})
        bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-mech-armor-plate", amount = 100}        )
        bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-heat-shield-tile", amount = 100}        )
        bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-god-module", amount = 25}               )
        bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-god-module-productivity", amount = 25}  )
        bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-god-module-quality", amount = 25}       )
        bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-nitinol-alloy", amount = 100}           )
        bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-alien-artifact-red", amount = 100}      )
        bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-alien-artifact-orange", amount = 100}   )
        bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-alien-artifact-yellow", amount = 100}   )
        bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-alien-artifact-green", amount = 100}    )
        bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-alien-artifact-blue", amount = 100}     )
        bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-alien-artifact-purple", amount = 100}   )
    end

    if type(mods["quality"]) then
        bobmods.lib.recipe.update_recycling_recipe({
            "mech-armor"
        })
    end
end