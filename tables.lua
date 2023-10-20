local wood_table_names = {'xdecor:table', 'cottages:table',
  'luxury_decor:kitchen_wooden_table', 'luxury_decor:round_luxury_table',
  'luxury_decor:simple_wooden_table',
}
local tables = unified_recipes.get_existing_node_names(wood_table_names)
local base_recipe = {
  output = nil, -- filled by register_recipes
  recipe = {
    {'group:wood', 'group:wood', 'group:wood'},
    {'group:stick', '', 'group:stick'},
    {'group:stick', '', 'group:stick'},
  }

}
unified_recipes.purge_recipes(tables)
unified_recipes.register_recipes(tables, base_recipe)
