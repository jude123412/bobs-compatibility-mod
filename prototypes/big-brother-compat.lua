if data.raw.technology["surveillance"] then
    bobmods.lib.tech.add_prerequisite("surveillance", "radar"          )
    bobmods.lib.tech.add_prerequisite("surveillance", "processing-unit")
end