local registered_nodes = minetest.registered_nodes

function unified_recipes.get_existing_node_names(possible_node_names)
  local existing_node_names = {}
  for i, node in ipairs(possible_node_names) do
    if registered_nodes[node] ~= nil then
      existing_node_names[#existing_node_names + 1] = node
    end
  end
  return existing_node_names
end

function unified_recipes.purge_recipes(node_names)
  for i, node in ipairs(node_names) do
    while minetest.clear_craft({output=node, recipe={}}) do end
  end
end

function unified_recipes.register_recipes(node_names, base_recipe)
  local recipe = base_recipe
  -- register the base crafting recipe
  -- using the first element as output
  recipe['output'] = node_names[1]
  minetest.register_craft(recipe)

  -- register all other elements as output of their predecessor
  recipe['type'] = 'shapeless'
  for i=2, #node_names do
    recipe['output'] = node_names[i]
    recipe['recipe'] = {node_names[i-1]}
    minetest.register_craft(recipe)
  end
  -- make it loop by registering the first element as output of the last
  recipe['output'] = node_names[1]
  recipe['recipe'] = {node_names[#node_names]}
  minetest.register_craft(recipe)
end
