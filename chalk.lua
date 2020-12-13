if minetest.registered_nodes["darkage:chalk"] and
minetest.registered_items["darkage:chalk_powder"] then

  -- allow making chalk blocks from the powder again
  minetest.register_craft({
    type = "shapeless",
    output = "darkage:chalk",
    recipe = {
      "darkage:chalk_powder", "darkage:chalk_powder"
    },
  })

  -- allow making white dye from chalk_powder
  if minetest.registered_items["dye:white"] then
    minetest.register_craft({
      type = 'shapeless',
      output = 'dye:white',
      recipe = {"darkage:chalk_powder"}
    })
  end
end
