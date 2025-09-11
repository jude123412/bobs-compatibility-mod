if type(mods["underground-storage-tank"]) then

    if data.raw.item["underground-storage-tank"] then
        data.raw["item"]["underground-storage-tank"].subgroup = "bob-storage-tank"
        data.raw["item"]["underground-storage-tank"].order = "b[fluid]-a[storage-tank-4b]"
    end

    if data.raw.technology["underground-storage-tank"] then
        bobmods.lib.tech.remove_prerequisite("underground-storage-tank", "chemical-science-pack")

        bobmods.lib.tech.add_prerequisite("underground-storage-tank", "bob-fluid-handling-4")
        bobmods.lib.tech.add_prerequisite("underground-storage-tank", "production-science-pack")
        bobmods.lib.tech.add_prerequisite("underground-storage-tank", "utility-science-pack")

        bobmods.lib.tech.add_new_science_pack("underground-storage-tank", "production-science-pack", 1)
        bobmods.lib.tech.add_new_science_pack("underground-storage-tank", "utility-science-pack", 1)
        bobmods.lib.tech.add_new_science_pack("underground-storage-tank", "bob-advanced-logistic-science-pack", 1)

        bobmods.lib.tech.set_science_pack_count("underground-storage-tank", 100)
    end

    if data.raw.recipe["underground-storage-tank"] then
        bobmods.lib.recipe.remove_ingredient("underground-storage-tank", "explosives")
        bobmods.lib.recipe.remove_ingredient("underground-storage-tank", "storage-tank")
        bobmods.lib.recipe.remove_ingredient("underground-storage-tank", "pipe")

        bobmods.lib.recipe.add_ingredient("underground-storage-tank", {type = "item", name = "bob-pump-4", amount = 4})
        bobmods.lib.recipe.add_ingredient("underground-storage-tank", {type = "item", name = "bob-copper-tungsten-pipe", amount = 8})
        bobmods.lib.recipe.add_ingredient("underground-storage-tank", {type = "item", name = "bob-copper-tungsten-alloy", amount = 20})
        bobmods.lib.recipe.add_ingredient("underground-storage-tank", {type = "item", name = "bob-nitinol-alloy", amount = 20})
        bobmods.lib.recipe.add_ingredient("underground-storage-tank", {type = "item", name = "bob-glass", amount = 20})
        bobmods.lib.recipe.add_ingredient("underground-storage-tank", {type = "item", name = "bob-storage-tank-all-corners-4", amount = 1})
        bobmods.lib.recipe.add_ingredient("underground-storage-tank", {type = "item", name = "bob-silicon-nitride", amount = 50})
        bobmods.lib.recipe.add_ingredient("underground-storage-tank", {type = "item", name = "explosives", amount = 50})

        if type(mods["quality"]) then
            bobmods.lib.recipe.update_recycling_recipe({
                "underground-storage-tank"
            })
        end
    end
end