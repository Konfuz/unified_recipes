local S = minetest.get_translator("unified_recipes")



-- If we can burn cement from chalk and clay we will do that
if (minetest.registered_craftitems["darkage:chalk_powder"] ~= nil) and
	(minetest.registered_craftitems["default:clay_lump"] ~= nil) then
    unified_recipes.purge_recipes({"basic_materials:wet_cement"})
		minetest.register_craftitem("unified_recipes:cement_base", {
			description = S("Cement Base - needs to be burned"),
			inventory_image = "basic_materials_wet_cement.png^[colorize:#5c4b2e:100",
		})
		minetest.register_craftitem("unified_recipes:dry_cement", {
			description = S("Dry Cement"),
			inventory_image = "basic_materials_wet_cement.png^[brighten",
		})
		minetest.register_craft({
			type = "shapeless",
			output = "unified_recipes:cement_base",
			recipe = {
				"default:clay_lump",
				"darkage:chalk_powder",
			},
		})
		minetest.register_craft({
			type = "cooking",
			output = "unified_recipes:dry_cement",
			recipe = "unified_recipes:cement_base",
			cooktime = 5
		})
		minetest.register_craft({
			type = "shapeless",
			output = "basic_materials:wet_cement",
			recipe = {
				"unified_recipes:dry_cement",
				"bucket:bucket_water"
			},
			replacements = {{'bucket:bucket_water', 'bucket:bucket_empty'},},
		})
end
