PrefabFiles = {
	"gramfuel",
	"gramfuel_none",
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
}

AddMinimapAtlas("images/map_icons/gramfuel.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

-- The character select screen lines
STRINGS.CHARACTER_TITLES.gramfuel = "The Sunshine Charcoal Burner"
STRINGS.CHARACTER_NAMES.gramfuel = "Fuel"
STRINGS.CHARACTER_DESCRIPTIONS.gramfuel = "*Lumberjack at Heart\n*Raised on Tazmilian Hospitality\n*Slow Healer"
STRINGS.CHARACTER_QUOTES.gramfuel = "\"Well, I'm not all black with soot this time!\""
STRINGS.CHARACTER_SURVIVABILITY.gramfuel = "Slim"

-- Custom speech strings
STRINGS.CHARACTERS.GRAMFUEL = require "speech_gramfuel"

-- The character's name as appears in-game 
STRINGS.NAMES.GRAMFUEL = "Fuel"
STRINGS.SKIN_NAMES.gramfuel_none = "Fuel"

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
modimport("scripts/main/recipes")
