local MakePlayerCharacter = require "prefabs/player_common"

local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
}

-- Custom starting inventory
TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.GRAMFUEL = {
	"charcoal",
}

local start_inv = {}
for k, v in pairs(TUNING.GAMEMODE_STARTING_ITEMS) do
    start_inv[string.lower(k)] = v.GRAMFUEL
end
local prefabs = FlattenTree(start_inv, true)


local function ontimerdone(inst, data)
	if data.name == "fuelslowheal" then
		if inst.slowhealtask then inst.slowhealtask:Cancel() end
	end
end

local function ongiveitem(inst, receiver)
	if receiver:HasTag("character") and inst.giftstogive > 0 and math.random(100) < inst.giftstogive * 20 then
		inst.components.talker:Say(GetString(inst, "ANNOUNCE_TAZMILIAN_CHARITY"))
		inst.components.sanity:DoDelta(5)
		inst.giftstogive = inst.giftstogive - 1
	end
end

local function onnewday(inst)
	inst.giftstogive = 5
end

-- When the character is revived from human
local function onbecamehuman(inst)
	-- Set speed when not a ghost (optional)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "gramfuel_speed_mood", 1)
end

local function onbecameghost(inst)
	-- Remove speed modifier when becoming a ghost
   inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "gramfuel_speed_mod")
end

local function onsave(inst, data)
	data.expectedhealth = inst.expectedhealth
	data.giftstogive = inst.giftstogive
end

-- When loading or spawning the character
local function onload(inst, data)
    inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
    inst:ListenForEvent("ms_becameghost", onbecameghost)

    if inst:HasTag("playerghost") then
        onbecameghost(inst)
    else
        onbecamehuman(inst)
    end

	if data then
		inst.giftstogive = data.giftstogive or 5
		inst.expectedhealth = data.expectedhealth
		inst.jumpstart = inst.expectedhealth and inst.expectedhealth ~= inst.components.health.currenthealth
		inst:DoTaskInTime(0, function(inst) inst.components.health:DoDelta(0) end)
	end
end


-- This initializes for both the server and client. Tags can be added here.
local common_postinit = function(inst) 
	-- Minimap icon
	inst.MiniMapEntity:SetIcon( "gramninten.tex" )

	inst:AddTag("slowhealer")
	inst:AddTag("gramfuel")
end

-- This initializes for the server only. Components are added here.
local master_postinit = function(inst)
	-- Set starting inventory
    inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
	
	-- choose which sounds this character will play
	inst.soundsname = "gramfuel"
	
	-- Uncomment if "wathgrithr"(Wigfrid) or "webber" voice is used
    --inst.talker_path_override = "dontstarve_DLC001/characters/"
	
	-- Stats	
	inst.components.health:SetMaxHealth(TUNING.GRAMFUEL_HEALTH)
	inst.components.hunger:SetMax(TUNING.GRAMFUEL_HUNGER)
	inst.components.sanity:SetMax(TUNING.GRAMFUEL_SANITY)
	
	-- Damage multiplier (optional)
    inst.components.combat.damagemultiplier = 1
	
	-- Hunger rate (optional)
	inst.components.hunger.hungerrate = 1 * TUNING.WILSON_HUNGER_RATE
	
	inst.OnSave = onsave
	inst.OnLoad = onload
    inst.OnNewSpawn = function()
		onload(inst)
	end

	inst.healtickrate = 0.5 --measured in seconds

	inst:ListenForEvent("timerdone", ontimerdone)

	inst.components.workmultiplier:AddMultiplier(ACTIONS.CHOP, 1.25, inst)
	if not inst.components.efficientuser then
		inst:AddComponent("efficientuser")
	end
	inst.components.efficientuser:AddMultiplier(ACTIONS.CHOP, .75, inst)

	inst:ListenForEvent("giveitem", ongiveitem)
	inst:WatchWorldState("isday", onnewday)

	
end

return MakePlayerCharacter("gramfuel", prefabs, assets, common_postinit, master_postinit, prefabs)
