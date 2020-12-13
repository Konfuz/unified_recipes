if minetest.registered_nodes['wool:white'] and
  minetest.registered_items['farming:cotton'] then

  minetest.register_craft({
    type = "shapeless",
    output = "farming:cotton 4",
    recipe = {
      "wool:white"
    },
  })
end
