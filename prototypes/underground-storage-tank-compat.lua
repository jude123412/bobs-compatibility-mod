if mods["underground-storage-tank"] then

    if data.raw.item["underground-storage-tank"] then
        
        -- Requires Bob's Logistics to be installed
        if data.raw["item-subgroup"]["bob-storage-tank"] then
            data.raw["item"]["underground-storage-tank"].subgroup = "bob-storage-tank"
            data.raw["item"]["underground-storage-tank"].order = "b[fluid]-a[storage-tank-4b]"
        end
    end

    if data.raw.technology["underground-storage-tank"] then

        -- Requires Bob's Technology & Bob's Plates
        if mods["bobtech"] or mods["bobplates"] then
            bobmods.lib.tech.add_new_science_pack("underground-storage-tank", "utility-science-pack", 1)
            bobmods.lib.tech.add_new_science_pack("underground-storage-tank", "production-science-pack", 1)

            bobmods.lib.tech.add_prerequisite("underground-storage-tank", "utility-science-pack")
            bobmods.lib.tech.add_prerequisite("underground-storage-tank", "production-science-pack")
        end

        -- Requires Bob's Logistics to be installed
        if data.raw.technology["bob-fluid-handling-4"] then
            bobmods.lib.tech.add_prerequisite("underground-storage-tank", "bob-fluid-handling-4")
        end

        -- Requires Bob's Technology to be installed
        if data.raw.tool["bob-advanced-logistic-science-pack"] then
            bobmods.lib.tech.add_new_science_pack("underground-storage-tank", "bob-advanced-logistic-science-pack", 1)
        end

        -- Requires Bob's Plates to be installed
        if data.raw.technology["bob-tungsten-alloy-processing"] then 
            bobmods.lib.tech.add_prerequisite("underground-storage-tank", "bob-tungsten-alloy-processing")
        end
        if data.raw.technology["bob-ceramics"] then 
            bobmods.lib.tech.add_prerequisite("underground-storage-tank", "bob-ceramics")
        end
        if data.raw.technology["bob-nitinol-processing"] then 
            bobmods.lib.tech.add_prerequisite("underground-storage-tank", "bob-nitinol-processing")
        end
    end

    if data.raw.recipe["underground-storage-tank"] then

        -- Requires Bob's Logistics to be installed
        -- If not add pumps instead
        if data.raw.item["bob-pump-4"] then
            bobmods.lib.recipe.add_ingredient("underground-storage-tank", {type = "item", name = "bob-pump-4", amount = 4})
        else
            bobmods.lib.recipe.add_ingredient("underground-storage-tank", {type = "item", name = "pump", amount = 4})
        end

        -- Requires Bob's Logistics to be installed
        if data.raw.item["bob-storage-tank-all-corners-4"] then
            bobmods.lib.recipe.remove_ingredient("underground-storage-tank", "storage-tank")

            bobmods.lib.recipe.add_ingredient("underground-storage-tank", {type = "item", name = "bob-storage-tank-all-corners-4", amount = 1})
        end

        -- Requires Bob's Logistics to be installed
        if data.raw.item["bob-copper-tungsten-pipe"] then
            bobmods.lib.recipe.remove_ingredient("underground-storage-tank", "pipe")

            bobmods.lib.recipe.add_ingredient("underground-storage-tank", {type = "item", name = "bob-copper-tungsten-pipe", amount = 8})
        end

        -- Requires Bob's Plates to be installed
        if data.raw.item["bob-copper-tungsten-alloy"] then
            bobmods.lib.recipe.remove_ingredient("underground-storage-tank", "explosives")

            bobmods.lib.recipe.add_ingredient("underground-storage-tank", {type = "item", name = "explosives", amount = 50               })
            bobmods.lib.recipe.add_ingredient("underground-storage-tank", {type = "item", name = "bob-copper-tungsten-alloy", amount = 20})
            bobmods.lib.recipe.add_ingredient("underground-storage-tank", {type = "item", name = "bob-nitinol-alloy", amount = 20        })
            bobmods.lib.recipe.add_ingredient("underground-storage-tank", {type = "item", name = "bob-glass", amount = 20                })
            bobmods.lib.recipe.add_ingredient("underground-storage-tank", {type = "item", name = "bob-silicon-nitride", amount = 50      })

        else
            bobmods.lib.recipe.add_ingredient("underground-storage-tank", {type = "item", name = "steel-plate", amount = 20})
        end

        if mods["quality"] then
            bobmods.lib.recipe.update_recycling_recipe({
                "underground-storage-tank"
            })
        end
    end
end