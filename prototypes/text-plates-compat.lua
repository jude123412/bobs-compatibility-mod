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
                        bobmods.lib.recipe.replace_ingredient("textplate-small-gold", "sulfur", "bob-gold-plate")
                end
        end

        -- Requires Bob's Plates to be installed
        if data.raw.recipe["textplate-large-gold"] then
                if data.raw.item["bob-gold-plate"] then
                        bobmods.lib.recipe.replace_ingredient("textplate-large-gold", "sulfur", "bob-gold-plate")
                end
        end

        -- Requires Bob's Plates to be installed
        if data.raw.recipe["textplate-small-glass"] then
                if data.raw.item["bob-glass"] then
                        bobmods.lib.recipe.replace_ingredient("textplate-small-glass", "stone", "bob-glass")
                end
        end

        -- Requires Bob's Plates to be installed
        if data.raw.recipe["textplate-large-glass"] then
                if data.raw.item["bob-glass"] then
                        bobmods.lib.recipe.replace_ingredient("textplate-large-glass", "stone", "bob-glass")
                end
        end
end