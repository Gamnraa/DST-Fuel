PrefabFiles = {
	"gramfuel",
	"gramfuel_none",
    "charcoalpile",
    "refurbishedpighouse",
    "refurbishedrabbithouse",
    "bigfuelaxe",
    "charcoalspear",
    "livingcoal",
    "fuelstakes",
    "spearfire_fx",
    "charcoalsmoke_fx",
    "stovesmoke_fx",
    "heatrock_glow_fx",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/gramfuel.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/gramfuel.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/gramfuel.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/gramfuel.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/gramfuel_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/gramfuel_silho.xml" ),

    Asset( "IMAGE", "bigportraits/gramfuel.tex" ),
    Asset( "ATLAS", "bigportraits/gramfuel.xml" ),

    Asset( "IMAGE", "bigportraits/gramfuel_none.tex" ),
    Asset( "ATLAS", "bigportraits/gramfuel_none.xml" ),

    Asset( "IMAGE", "bigportraits/ms_gramfuel_merrymaker.tex" ),
    Asset( "ATLAS", "bigportraits/ms_gramfuel_merrymaker.xml" ),
    
    Asset( "IMAGE", "bigportraits/ms_gramfuel_hallowed.tex" ),
    Asset( "ATLAS", "bigportraits/ms_gramfuel_hallowed.xml" ),
	
	Asset( "IMAGE", "images/map_icons/gramfuel.tex" ),
	Asset( "ATLAS", "images/map_icons/gramfuel.xml" ),

    Asset( "IMAGE", "images/map_icons/charcoal_pile.tex" ),
	Asset( "ATLAS", "images/map_icons/charcoal_pile.xml" ),

    Asset( "IMAGE", "images/map_icons/pighouse_refurbished.tex" ),
	Asset( "ATLAS", "images/map_icons/pighouse_refurbished.xml" ),

    Asset( "IMAGE", "images/map_icons/rabbithouse_refurbished.tex" ),
	Asset( "ATLAS", "images/map_icons/rabbithouse_refurbished.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_gramfuel.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_gramfuel.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_gramfuel.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_gramfuel.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_gramfuel.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_gramfuel.xml" ),

    Asset( "IMAGE", "images/crafting_menu_avatars/avatar_gramfuel.tex" ),
    Asset( "ATLAS", "images/crafting_menu_avatars/avatar_gramfuel.xml" ),
	
	Asset( "IMAGE", "images/names_gold_gramfuel.tex" ),
    Asset( "ATLAS", "images/names_gold_gramfuel.xml" ),

    Asset( "IMAGE", "images/inventoryimages/bigfuelaxe.tex" ),
    Asset( "ATLAS", "images/inventoryimages/bigfuelaxe.xml" ),

	Asset( "IMAGE", "images/inventoryimages/livingcoal.tex" ),
    Asset( "ATLAS", "images/inventoryimages/livingcoal.xml" ),

	Asset( "IMAGE", "images/inventoryimages/livingcoal_spear.tex" ),
    Asset( "ATLAS", "images/inventoryimages/livingcoal_spear.xml" ),

	Asset( "IMAGE", "images/inventoryimages/charcoal_spear.tex" ),
    Asset( "ATLAS", "images/inventoryimages/charcoal_spear.xml" ),

    Asset( "IMAGE", "images/inventoryimages/wood_stakes.tex" ),
	Asset( "ATLAS", "images/inventoryimages/wood_stakes.xml" ),


    Asset("SOUNDPACKAGE", "sound/gramfuel.fev"),
	Asset("SOUND", "sound/gramfuel.fsb"),   
}

AddMinimapAtlas("images/map_icons/gramfuel.xml")
AddMinimapAtlas("images/map_icons/charcoal_pile.xml")
AddMinimapAtlas("images/map_icons/pighouse_refurbished.xml")
AddMinimapAtlas("images/map_icons/rabbithouse_refurbished.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

-- The character select screen lines
STRINGS.CHARACTER_TITLES.gramfuel = "The Charcoal Maker"
STRINGS.CHARACTER_NAMES.gramfuel = "Fuel"
STRINGS.CHARACTER_DESCRIPTIONS.gramfuel = "*Knows how to chop and char\n*Raised on Tazmilian Hospitality\n*Slow Healer"
STRINGS.CHARACTER_QUOTES.gramfuel = "\"Well, I'm not all black and covered with soot this time!\""
STRINGS.CHARACTER_SURVIVABILITY.gramfuel = "Slim"

STRINGS.SKIN_DESCRIPTIONS.gramfuel_none = "Fuel's typical outfit."

STRINGS.SKIN_NAMES.ms_gramfuel_merrymaker = "The Merrymaker"
STRINGS.SKIN_DESCRIPTIONS.ms_gramfuel_merrymaker = "A comfortable Soot Dumpling sweater that would make any charcoal burner relish the spirit of Winters Feast."
STRINGS.SKIN_QUOTES.ms_gramfuel_merrymaker = "\"We never had much, Dad and I. I'll always cherish those moments of treating ourselves with the holidays.\""

STRINGS.SKIN_NAMES.ms_gramfuel_hallowed = "Baked Yammonster Costume"
STRINGS.SKIN_DESCRIPTIONS.ms_gramfuel_hallowed = "A ghoulish and yummy costume, perfect for Hallowed Nights."
STRINGS.SKIN_QUOTES.ms_gramfuel_hallowed = "\"I might be a little too old for this sorta getup.\""

STRINGS.SKIN_NAMES.ms_fuel_winterbg  = "Fuel on a Winter Night"
STRINGS.SKIN_DESCRIPTIONS.ms_fuel_winterbg = "A true charcoal burner knows no rest, not when there's charcoal to be made!"

-- Custom speech strings
STRINGS.CHARACTERS.GRAMFUEL = require "speech_gramfuel"

-- The character's name as appears in-game 
STRINGS.NAMES.GRAMFUEL = "Fuel"
STRINGS.SKIN_NAMES.gramfuel_none = "Fuel"

TUNING.GRAMFUEL_HEALTH = GetModConfigData("GRAMFUEL_HEALTH")
TUNING.GRAMFUEL_HUNGER = GetModConfigData("GRAMFUEL_HUNGER")
TUNING.GRAMFUEL_SANITY = GetModConfigData("GRAMFUEL_SANITY")
TUNING.FUELAXE_DAMAGE = GetModConfigData("FUELAXE_DAMAGE")
TUNING.FUELAXE_USES = GetModConfigData("FUELAXE_USES")
TUNING.FUELSPEAR_DAMAGE = GetModConfigData("FUELSPEAR_DAMAGE")
local speardata = GetModConfigData("FUELSPEAR_CONSUMPTION")
TUNING.FUELSPEAR_FUEL = (speardata == 0 and 800) or (speardata == 1 and 500) or (speardata == 2 and 300)
TUNING.FUELSPEAR_RATE = (speardata == 0 and 2.5) or (speardata == 1 and 4) or (speardata == 2 and 5) --not used by the fueled component, but for how much durability is lost on attacking

TUNING.LIVINGSPEAR_DAMAGE = GetModConfigData("LIVINGSPEAR_DAMAGE")
local speardata = GetModConfigData("LIVINGSPEAR_CONSUMPTION")
TUNING.LIVINGSPEAR_FUEL = (speardata == 0 and 1500) or (speardata == 1 and 1000) or (speardata == 2 and 700)
TUNING.LIVINGSPEAR_RATE = (speardata == 0 and 2.5) or (speardata == 1 and 4) or (speardata == 2 and 5)
TUNING.LIVINGSPEAR_RANGE = 12

RemapSoundEvent( "dontstarve/characters/gramfuel/death_voice", "gramfuel/characters/gramfuel/death_voice" )
RemapSoundEvent( "dontstarve/characters/gramfuel/hurt", "gramfuel/characters/gramfuel/hurt" )
RemapSoundEvent( "dontstarve/characters/gramfuel/emote", "gramfuel/characters/gramfuel/emote" )
RemapSoundEvent( "dontstarve/characters/gramfuel/yawn", "gramfuel/characters/gramfuel/yawn" )
RemapSoundEvent( "dontstarve/characters/gramfuel/pose", "gramfuel/characters/gramfuel/pose" )
RemapSoundEvent( "dontstarve/characters/gramfuel/ghost_LP", "gramfuel/characters/gramfuel/ghost_LP" )
RemapSoundEvent( "dontstarve/characters/gramfuel/talk_LP", "gramfuel/characters/gramfuel/talk_LP" )
RemapSoundEvent( "dontstarve/characters/gramfuel/carol", "gramfuel/characters/gramfuel/carol" )
RemapSoundEvent( "dontstarve/characters/gramfuel/eye_rub_vo", "gramfuel/characters/gramfuel/eye_rub_vo" )
RemapSoundEvent( "dontstarve/characters/gramfuel/sinking", "gramfuel/characters//gramfuel/sinking" )

-- The skins shown in the cycle view window on the character select screen.
-- A good place to see what you can put in here is in skinutils.lua, in the function GetSkinModes
local skin_modes = {
    { 
        type = "ghost_skin",
        anim_bank = "ghost",
        idle_anim = "idle", 
        scale = 0.75, 
        offset = { 0, -25 } 
    },
}

RegisterInventoryItemAtlas(GLOBAL.resolvefilepath("images/inventoryimages/bigfuelaxe.xml"), "bigfuelaxe.tex")
RegisterInventoryItemAtlas(GLOBAL.resolvefilepath("images/inventoryimages/charcoal_spear.xml"), "charcoal_spear.tex")
RegisterInventoryItemAtlas(GLOBAL.resolvefilepath("images/inventoryimages/livingcoal.xml"), "livingcoal.tex")
RegisterInventoryItemAtlas(GLOBAL.resolvefilepath("images/inventoryimages/livingcoal_spear.xml"), "livingcoal_spear.tex")
RegisterInventoryItemAtlas(GLOBAL.resolvefilepath("images/inventoryimages/wood_stakes.xml"), "wood_stakes.tex")

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("gramfuel", "MALE", skin_modes)

modimport("scripts/main/postinit")
modimport("scripts/main/containerwidgets")
modimport("scripts/main/actions")
modimport("scripts/main/recipes")
modimport("scripts/main/strings")

local State = GLOBAL.State
local FRAMES = GLOBAL.FRAMES
local taunt = State({
    name = "fueltaunt",
    tags = {"busy", "pausepredict"},
    onenter = function(inst, data)
        inst:ClearBufferedAction()
        inst.components.locomotor:Stop()
        
        inst.AnimState:PlayAnimation("emote_pre_sit1")
        inst.AnimState:PushAnimation("emote_loop_sit1")

        if inst.components.playercontroller then
            inst.components.playercontroller:RemotePausePrediction()
        end
    end,
    timeline =
    {
        GLOBAL.TimeEvent(.7, function(inst)
            inst.sg:RemoveStateTag("busy")
            inst.sg:RemoveStateTag("pausepredict")
        end),
    },
})

AddStategraphState("wilson", taunt)
AddStategraphState("wilson_client", taunt)


ModdedCurios = {
	ms_fuel_winterbg = {
		type = "loading",
		skin_tags = {"LOADING"},
		rarity = "ModMade",
		assets = {
			Asset("ATLAS", "images/bg_loading_ms_fuel_winterbg.xml"),
			Asset("IMAGE", "images/bg_loading_ms_fuel_winterbg.tex"),
			
			Asset("DYNAMIC_ANIM", "anim/dynamic/ms_fuel_winterbg.zip"),
			Asset("PKGREF", "anim/dynamic/ms_fuel_winterbg.dyn")
		},
	},
}
