PrefabFiles = {
	"gramfuel_none",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/gramfuel.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/gramfuel.xml" ),

    Asset( "IMAGE", "bigportraits/gramfuel.tex" ),
    Asset( "ATLAS", "bigportraits/gramfuel.xml" ),

    Asset( "IMAGE", "bigportraits/gramfuel_none.tex" ),
    Asset( "ATLAS", "bigportraits/gramfuel_none.xml" ),

    Asset( "IMAGE", "bigportraits/ms_gramfuel_merrymaker.tex" ),
    Asset( "ATLAS", "bigportraits/ms_gramfuel_merrymaker.xml" ),
    
    Asset( "IMAGE", "bigportraits/ms_gramfuel_hallowed.tex" ),
    Asset( "ATLAS", "bigportraits/ms_gramfuel_hallowed.xml" ),
	
}

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

STRINGS.CHARACTER_BIOS.gramfuel = {
 { title = "Birthday", desc = "April 3" },
 { title = "Favorite Food", desc = "Breakfast Skillet" },
 { title = "His past...", desc = "Is yet to be revealed."},
}

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

TUNING.GRAMFUEL_HEALTH = GetModConfigData("GRAMFUEL_HEALTH")
TUNING.GRAMFUEL_HUNGER = GetModConfigData("GRAMFUEL_HUNGER")
TUNING.GRAMFUEL_SANITY = GetModConfigData("GRAMFUEL_SANITY")

AddModCharacter("gramfuel", "MALE", skin_modes)