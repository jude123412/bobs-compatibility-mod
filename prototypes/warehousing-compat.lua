if mods["Warehousing"] then
    if data.raw.technology["warehouse-logistics-research-1"] then
        bobmods.lib.tech.add_prerequisite("warehouse-logistics-research-1", "construction-robotics")
        bobmods.lib.tech.add_prerequisite("warehouse-logistics-research-1", "logistic-robotics"    )
    end
end