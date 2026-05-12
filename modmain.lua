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
	
	Asset( "IMAGE", "images/map_icons/gramfuel.tex" ),
	Asset( "ATLAS", "images/map_icons/gramfuel.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_gramfuel.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_gramfuel.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_gramfuel.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_gramfuel.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_gramfuel.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_gramfuel.xml" ),
	
	Asset( "IMAGE", "images/names_gold_gramfuel.tex" ),
    Asset( "ATLAS", "images/names_gold_gramfuel.xml" ),

    Asset("SOUNDPACKAGE", "sound/gramfuel.fev"),
	Asset("SOUND", "sound/gramfuel.fsb"),   
}

AddMinimapAtlas("images/map_icons/gramfuel.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

-- The character select screen lines
STRINGS.CHARACTER_TITLES.gramfuel = "The Charcoal Maker"
STRINGS.CHARACTER_NAMES.gramfuel = "Fuel"
STRINGS.CHARACTER_DESCRIPTIONS.gramfuel = "*Knows how to chop and char\n*Raised on Tazmilian Hospitality\n*Slow Healer"
STRINGS.CHARACTER_QUOTES.gramfuel = "\"Well, I'm not all black with soot this time!\""
STRINGS.CHARACTER_SURVIVABILITY.gramfuel = "Slim"

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
        GLOBAL.TimeEvent(.5, function(inst)
            inst.sg:RemoveStateTag("busy")
            inst.sg:RemoveStateTag("pausepredict")
        end),
    },
})

AddStategraphState("wilson", taunt)
AddStategraphState("wilson_client", taunt)
