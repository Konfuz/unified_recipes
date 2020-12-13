if minetest.registered_nodes["darkage:chalk"] and
minetest.registered_items["darkage:chalk_powder"] then
  minetest.register_craft({
    type = "shapeless",
    output = "darkage:chalk",
    recipe = {
      "darkage:chalk_powder", "darkage:chalk_powder"
    },
  })
end
