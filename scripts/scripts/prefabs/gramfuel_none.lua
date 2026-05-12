local assets =
{
	Asset( "ANIM", "anim/gramfuel.zip" ),
	Asset( "ANIM", "anim/ghost_gramninten.zip" ),
}

local skins =
{
	normal_skin = "gramfuel",
	ghost_skin = "ghost_gramninten",
}

return CreatePrefabSkin("gramfuel_none",
{
	base_prefab = "gramfuel",
	type = "base",
	assets = assets,
	skins = skins, 
	skin_tags = {"GRAMFUEL", "CHARACTER", "BASE"},
	build_name_override = "gramfuel",
	rarity = "Character",
})