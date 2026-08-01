local prefabs = {}
local assets =
{
	Asset( "ANIM", "anim/gramfuel.zip" ),
	Asset( "ANIM", "anim/ms_gramfuel_merrymaker.zip"),
	Asset( "ANIM", "anim/ms_gramfuel_hallowed.zip"),
	Asset( "ANIM", "anim/ghost_gramfuel_build.zip" ),
}

local skins =
{
	normal_skin = "gramfuel",
	ghost_skin = "ghost_gramfuel_build",
}

table.insert(prefabs, CreatePrefabSkin("gramfuel_none",
{
	base_prefab = "gramfuel",
	type = "base",
	assets = assets,
	skins = skins, 
	skin_tags = {"GRAMFUEL", "CHARACTER", "BASE"},
	build_name_override = "gramfuel",
	rarity = "Character",
}))

table.insert(prefabs, CreatePrefabSkin("ms_gramfuel_merrymaker",
{
	base_prefab = "gramfuel",
	type = "base",
	assets = assets,
	skins = {
		normal_skin = "ms_gramfuel_merrymaker",
		ghost_skin = "ghost_gramfuel_build",
	},
	skin_tags = {"GRAMFUEL", "CHARACTER", "BASE", "MERRYMAKER"},
	build_name_override = "ms_gramfuel_merrymaker",
	rarity = "Character",
}))

table.insert(prefabs, CreatePrefabSkin("ms_gramfuel_hallowed",
{
	base_prefab = "gramfuel",
	type = "base",
	assets = assets,
	skins = {
		normal_skin = "ms_gramfuel_hallowed",
		ghost_skin = "ghost_gramfuel_build",
	},
	skin_tags = {"GRAMFUEL", "CHARACTER", "BASE", "HALLOWED"},
	build_name_override = "ms_gramfuel_hallowed",
	rarity = "Character",
}))

return unpack(prefabs)