
if minetest.registered_nodes["luxury_decor:solid_oil"] then
  -- luxury_decor's texture is too black to be seen. This one is better.
  minetest.registered_nodes["luxury_decor:solid_oil"]["tiles"] = {"ur_solid_oil.png"}
end
