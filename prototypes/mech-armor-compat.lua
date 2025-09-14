if mods["mech-armor"] then

    if data.raw.armor["mech-armor"] then

        -- Requires Bob's Warfare to be installed
        if data.raw.armor["bob-power-armor-mk5"] then
            data.raw["equipment-grid"]["huge-equipment-grid"].width = 12
            data.raw["equipment-grid"]["huge-equipment-grid"].height = 13
            data.raw["armor"]["mech-armor"].order = "i[mech-armor]"
        end
    end

    if data.raw.technology["mech-armor"] then

        -- Requires Bob's Modules to be installed
        if data.raw.technology["bob-efficiency-module-5"]then
            bobmods.lib.tech.add_prerequisite("mech-armor", "bob-efficiency-module-5")

            bobmods.lib.tech.remove_prerequisite("mech-armor", "efficiency-module-3")
        end

        -- Requires Bob's Modules to be installed
        if data.raw.technology["bob-speed-module-5"] then
            bobmods.lib.tech.add_prerequisite("mech-armor", "bob-speed-module-5")

            bobmods.lib.tech.remove_prerequisite("mech-armor", "speed-module-3")
        end

        -- Requires Bob's Warfare to be installed
        if data.raw.technology["bob-power-armor-5"] then
            bobmods.lib.tech.add_prerequisite("mech-armor", "bob-power-armor-5")

            bobmods.lib.tech.add_new_science_pack("mech-armor", "space-science-pack", 1)

            bobmods.lib.tech.remove_prerequisite("mech-armor", "power-armor-mk2"          )
            bobmods.lib.tech.remove_prerequisite("mech-armor", "fission-reactor-equipment")
        end

        -- Requires Bob's Enemies & Bob's Technology to be installed
        if data.raw.tool["bob-science-pack-gold"] then
            bobmods.lib.tech.remove_science_pack("mech-armor", "automation-science-pack")
            bobmods.lib.tech.remove_science_pack("mech-armor", "logistic-science-pack"  )
            bobmods.lib.tech.remove_science_pack("mech-armor", "chemical-science-pack"  )
            bobmods.lib.tech.remove_science_pack("mech-armor", "military-science-pack"  )
            bobmods.lib.tech.remove_science_pack("mech-armor", "production-science-pack")
            bobmods.lib.tech.remove_science_pack("mech-armor", "utility-science-pack"   )

            bobmods.lib.tech.add_new_science_pack("mech-armor", "bob-science-pack-gold", 1        )
            bobmods.lib.tech.add_new_science_pack("mech-armor", "bob-alien-science-pack", 1       )
            bobmods.lib.tech.add_new_science_pack("mech-armor", "bob-alien-science-pack-red", 1   )
            bobmods.lib.tech.add_new_science_pack("mech-armor", "bob-alien-science-pack-orange", 1)
            bobmods.lib.tech.add_new_science_pack("mech-armor", "bob-alien-science-pack-yellow", 1)
            bobmods.lib.tech.add_new_science_pack("mech-armor", "bob-alien-science-pack-green", 1 )
            bobmods.lib.tech.add_new_science_pack("mech-armor", "bob-alien-science-pack-blue", 1  )
            bobmods.lib.tech.add_new_science_pack("mech-armor", "bob-alien-science-pack-purple", 1)
        end

        -- Requires Bob's logistics to be installed
        if data.raw.technology["bob-robotics-4"] then
            bobmods.lib.tech.add_prerequisite("mech-armor", "bob-robotics-4")
        end
    end

    if data.raw.recipe["mech-armor"] then

        -- Requires Bob's Warfare to be installed
        if data.raw.armor["bob-power-armor-mk5"] then
            bobmods.lib.recipe.remove_ingredient("mech-armor", "power-armor-mk2")
            
            bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-power-armor-mk5", amount = 1})
        end
        
        -- Requires Bob's Warfare to be installed
        if data.raw.item["bob-mech-armor-plate"] then
            bobmods.lib.recipe.remove_ingredient("mech-armor", "low-density-structure")
            
            bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-mech-armor-plate", amount = 100})
        end

        -- Requires Bob's logistics to be installed
        if data.raw.item["bob-flying-robot-frame-4"] then
            bobmods.lib.recipe.remove_ingredient("mech-armor", "flying-robot-frame")

            bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-flying-robot-frame-4", amount = 100})
        end

        -- Requires Bob's Speed Module 5 from Bob's Modules
        if data.raw.module["bob-speed-module-5"] then 
            bobmods.lib.recipe.remove_ingredient("mech-armor", "speed-module-3")

            bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-speed-module-5", amount = 25})
        end

        -- Requires Bob's Efficiency Module 5 from Bob's Modules
        if data.raw.module["bob-efficiency-module-5"] then 
            bobmods.lib.recipe.remove_ingredient("mech-armor", "efficiency-module-3")
            
            bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-efficiency-module-5", amount = 25})
        end

        -- Requires Bob's Productivity Module 5 from Bob's Modules
        if data.raw.module["bob-productivity-module-5"] then 
            bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-productivity-module-5", amount = 25})
        end

        -- Requires Bob's Electronics to be installed
        if data.raw.item["bob-advanced-processing-unit"] then 
            bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-advanced-processing-unit", amount = 100})
        end

        -- Requires Bob's Revamp to be installed
        if data.raw.item["bob-heat-shield-tile"] then
            bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-heat-shield-tile", amount = 100}        )
        end
    
        -- Requires Bob's Plates to be installed
        if data.raw.item["bob-nitinol-alloy"] then
            bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-nitinol-alloy", amount = 100}           )
        end

        -- Requires Bob's Enemies to be installed
        if data.raw.item["bob-alien-artifact-red"] then
            bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-alien-artifact-red", amount = 100}      )
            bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-alien-artifact-orange", amount = 100}   )
            bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-alien-artifact-yellow", amount = 100}   )
            bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-alien-artifact-green", amount = 100}    )
            bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-alien-artifact-blue", amount = 100}     )
            bobmods.lib.recipe.add_ingredient("mech-armor", {type = "item", name = "bob-alien-artifact-purple", amount = 100}   )
        end
    end

    if mods["quality"] then
        bobmods.lib.recipe.update_recycling_recipe({
            "mech-armor"
        })
    end
end