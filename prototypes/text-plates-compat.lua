if mods["textplates"] then

        -- Requires Bob's Plates to be installed
        if data.raw.technology["textplates-gold"] then
                if data.raw.technology["bob-gold-processing"] then
                bobmods.lib.tech.remove_prerequisite("textplates-gold", "sulfur-processing")
                bobmods.lib.tech.add_prerequisite("textplates-gold", "bob-gold-processing")
                end
        end

        -- Requires Bob's Plates to be installed
        if data.raw.recipe["textplate-small-gold"] then
                if data.raw.item["bob-gold-plate"] then
                        bobmods.lib.recipe.remove_ingredient("textplate-small-gold", "sulfur")
                        bobmods.lib.recipe.add_ingredient("textplate-small-gold", {type = "item", name = "bob-gold-plate", amount = 1})
                end
        end

        -- Requires Bob's Plates to be installed
        if data.raw.recipe["textplate-large-gold"] then
                if data.raw.item["bob-gold-plate"] then
                bobmods.lib.recipe.remove_ingredient("textplate-large-gold", "sulfur")
                bobmods.lib.recipe.add_ingredient("textplate-large-gold", {type = "item", name = "bob-gold-plate", amount = 4})
                end
        end
end