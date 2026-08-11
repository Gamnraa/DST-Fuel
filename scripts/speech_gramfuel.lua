
-----------------------------------
-- This file is the template for other speech files. Once a new string is added here, simply run PropagateSpeech.bat
-- If you are adding strings that are character specific, or not required by all characters, you will still need to add the strings to speech_wilson.lua,
-- and then add the context string to speech_from_generic.lua. Once you run the PropagateSpeech.bat, you can go into your character's speech file and simply uncomment the new lines.
--
-- There are some caveats about maintaining sane formatting in this file.
--      -No single line lua tables
--      -Opening and closing brackets should be on their own line
--      -If wilson's speech has X unnamed strings in a table, then all other speech files must have at least X unnamed strings in that context too (example, CHESSPIECE_MOOSEGOOSE has 1 string in wilson, but 2 in wortox), this requirement could be relaxed if required by motifying po_vault.lua)

return {
	ACTIONFAIL =
	{
        GENERIC =
        {
            ITEMMIMIC = "What in tarnation!",
        },

		ACTIVATE =
		{
			LOCKED_GATE = "Locked real tight.",
            HOSTBUSY = "I ain't one to be a bother.",
            CARNIVAL_HOST_HERE = "He's already here, I'd bet.",
            NOCARNIVAL = "Long gone.",
			EMPTY_CATCOONDEN = "Nuthin.'",
			KITCOON_HIDEANDSEEK_NOT_ENOUGH_HIDERS = "I should find more friends to play with.",
			KITCOON_HIDEANDSEEK_NOT_ENOUGH_HIDING_SPOTS = "Nuh-uh, there's no good hiding spots around here.",
			KITCOON_HIDEANDSEEK_ONE_GAME_PER_DAY = "I should really get back to work.",
            MANNEQUIN_EQUIPSWAPFAILED = "I'm not lookin' to play dress up!",
            PILLOWFIGHT_NO_HANDPILLOW = "Using my fists sound neat, but probably unfair.",
            NOTMYBERNIE = "Mine got burned up with the ol' home.",
            NOTMERM = "I'd rather not mess with the fish smelling guys.",
            NOKELP = "only_used_by_wurt",
            HASMERMLEADER = "only_used_by_wurt",
			NOTAROBOT = "Ask Claus 'bout it.",									   
		},
        APPLYELIXIR =
        {
            TOO_SUPER = "That's way too much dosage!",
            NO_ELIXIRABLE = "only_used_by_wendy",
        },
        APPLYMODULE =
        {
            COOLDOWN = "only_used_by_wx78",
            NOTENOUGHSLOTS = "only_used_by_wx78",
        },
        APPRAISE =
        {
            NOTNOW = "I ain't one to be a bother.",
        },
        ATTUNE =
        {
            NOHEALTH = "That wouldn't be so good of an idea now.",
        },
        BATHBOMB =
        {
            GLASSED = "Nuthin' to bomb.",
            ALREADY_BOMBED = "That would be overkill!",
        },
        BEDAZZLE =
        {
            BURNING = "only_used_by_webber",
            BURNT = "only_used_by_webber",
            FROZEN = "only_used_by_webber",
            ALREADY_BEDAZZLED = "only_used_by_webber",
        },
        BEGIN_QUEST =
        {
            ONEGHOST = "only_used_by_wendy",
        },
        BUILD =
        {
            MOUNTED = "Let me get down first.",
            HASPET = "I got my own pal already.",
			TICOON = "That wouldn't be fair to my own Ticoon.",
            BUSY_STATION = "Guess I'll wait my turn.",
        },
        CARNIVALGAME_FEED =
        {
            TOO_LATE = "Darn it! Too slow.",
        },
		CAST_POCKETWATCH =
		{
			GENERIC = "only_used_by_wanda",
			REVIVE_FAILED = "only_used_by_wanda",
			WARP_NO_POINTS_LEFT = "only_used_by_wanda",
			SHARD_UNAVAILABLE = "only_used_by_wanda",
			NO_TELEPORT_ZONE = "only_used_by_wanda",
		},
		CAST_SPELLBOOK =
		{
			NO_TOPHAT = "only_used_by_waxwell",
		},
		CASTAOE =
		{
			NO_MAX_SANITY = "only_used_by_waxwell",
            NOT_ENOUGH_EMBERS = "only_used_by_willow",
            NO_TARGETS = "only_used_by_willow",
            CANT_SPELL_MOUNTED = "only_used_by_willow",
            SPELL_ON_COOLDOWN = "only_used_by_willow",
			NO_BATTERY = "only_used_by_winona",
			NO_CATAPULTS = "only_used_by_winona",
		},
        CASTSPELL =
        {
            TERRAFORM_TOO_SOON = "only_used_by_wurt",
        },
        CHANGEIN =
        {
            GENERIC = "I never been into dressing up.",
            BURNING = "I know the name's Fuel, but come on!",
            INUSE = "It's occupied.",
            NOTENOUGHHAIR = "I got nothing to work with!",
            NOOCCUPANT = "Gotta hitch 'em up first.",
        },
        CHARGE_FROM =
        {
            NOT_ENOUGH_CHARGE = "only_used_by_wx78",
            CHARGE_FULL = "only_used_by_wx78",
        },
		COMPARE_WEIGHABLE =
		{
            FISH_TOO_SMALL = "Pft, it's not worth weighing.",
            OVERSIZEDVEGGIES_TOO_SMALL = "I wouldn't even bother.",
		},
        CONSTRUCT =
        {
            INUSE = "I trust 'em too get it done.",
            NOTALLOWED = "That ain't right.",
            EMPTY = "I need tools!",
            MISMATCH = "I screwed that one up.",
            NOTREADY = "Now's not the time.",
        },
        COOK =
        {
            GENERIC = "Sorry, too busy.",
            INUSE = "They'll handle it.",
            TOOFAR = "I can't reach it!",
        },
        DEPLOY = {
            HERMITCRAB_RELOCATE = "Nuthin' here.",
        },
        DIRECTCOURIER_MAP =
        {
            NOTARGET = "only_used_by_walter",
        },
		DISMANTLE =
		{
			COOKING = "Patience.",
			INUSE = "I'd just get in the way.",
			NOTEMPTY = "First, let's clean up.",
        },
        DISMANTLE_POCKETWATCH =
        {
            ONCOOLDOWN = "only_used_by_wanda",
        },
        DRAW =
        {
            NOIMAGE = "I'm not an artist: I need a reference!",
        },
        ENTER_GYM =
        {
            NOWEIGHT = "only_used_by_wolfang",
            UNBALANCED = "only_used_by_wolfang",
            ONFIRE = "only_used_by_wolfang",
            SMOULDER = "only_used_by_wolfang",
            HUNGRY = "only_used_by_wolfang",
            FULL = "only_used_by_wolfang",
        },
        FILL_OCEAN =
        {
            UNSUITABLE_FOR_PLANTS = "Salt water's no good.",
        },
        FISH_OCEAN =
		{
			TOODEEP = "It won't handle well in open waters.",
		},
        GIVE =
        {
            GENERIC = "That ain't right.",
            DEAD = "I'm sure the sentiment's appreciated, but it'd be much more useful to living folk.",
            SLEEPING = "They look too comfy to bother.",
            BUSY = "I got only two arms, you know!",
            ABIGAILHEART = "Guess that'd be too easy.",
            GHOSTHEART = "...If he ain't so friendly in death, do I want his company in living form?",
            NOTGEM = "It... it's not a good idea.",
            WRONGGEM = "I got the wrong one.",
			NOGENERATORSKILL = "Dad hates it when I mess with things I shouldn't.",
            NOTSTAFF = "I think I got the wrong staff.",
            MUSHROOMFARM_NEEDSSHROOM = "Reckon a mushroom would do the job.",
            MUSHROOMFARM_NEEDSLOG = "I ought to replace the log.",
            MUSHROOMFARM_NOMOONALLOWED = "They don't seem to grow in it.",
            SLOTFULL = "It's full.",
            FOODFULL = "I'll find another spot for it.",
            NOTDISH = "That's not food!",
            DUPLICATE = "Going in circles, now.",
            NOTSCULPTABLE = "No way, man.",
            NOTATRIUMKEY = "And I thought I was being clever.",
            CANTSHADOWREVIVE = "Something's wrong.",
            WRONGSHADOWFORM = "I don't think that's right.",
            NOMOON = "Need the moon to out for that.",
			PIGKINGGAME_MESSY = "We should clean things up a bit first.",
			PIGKINGGAME_DANGER = "Now would not be a good time!",
			PIGKINGGAME_TOOLATE = "Everyone's turned in for the night.",
			CARNIVALGAME_INVALID_ITEM = "It takes tokens?",
			CARNIVALGAME_ALREADY_PLAYING = "I'll wait for my turn.'",
            SPIDERNOHAT = "No can do!",
            TERRARIUM_REFUSE = "It's not doing anything.",
            TERRARIUM_COOLDOWN = "It's empty now.",
            NOTAMONKEY = "Not sure what I can do for ya!",
            QUEENBUSY = "I'll be patient.",
        },
        GIVE_TACKLESKETCH =
		{
			DUPLICATE = "Got that all memorized already!",
        },
        GIVETOPLAYER =
        {
            FULL = "I think you got enough on your hands.",
            DEAD = "Sorry for ya, but I guess it'd be better if I hold on to it.",
            SLEEPING = "I'll let 'em rest up.",
            BUSY = "I'd rather not bother 'em.",
        },
        GIVEALLTOPLAYER =
        {
            FULL = "I think you got enough on your hands.",
            DEAD = "Sorry for ya, but I guess it'd be better if I hold on to it.",
            SLEEPING = "I'll let 'em rest up.",
            BUSY = "I'd rather not bother 'em.",
        },
        HARVEST =
        {
            DOER_ISNT_MODULE_OWNER = "I'll leave it be.",
        },
        HEAL =
        {
            NOT_MERM = "It won't be much use to them.",
        },
        HERD_FOLLOWERS =
        {
            WEBBERONLY = "They don't care 'bout what I gotta say.",
        },
        HITCHUP =
        {
            NEEDBEEF = "I need a pet first!",
            NEEDBEEF_CLOSER = "Where's my pal?",
            BEEF_HITCHED = "Already ready to go!",
            INMOOD = "...Not now.",
        },
		LOOKAT = --fail strings for close inspection
		{
			-- Winona specific
			ROSEGLASSES_INVALID = "only_used_by_winona",
			ROSEGLASSES_COOLDOWN = "only_used_by_winona",
            ROSEGLASSES_DISMISS = "only_used_by_winona",
            ROSEGLASSES_STUMPED = "only_used_by_winona",
			--
		},
        LOWER_SAIL_FAIL =
        {
            "Dangit!",
            "Now I've done it!",
            "A little help?!",
        },
        MARK =
        {
            ALREADY_MARKED = "I've already made my pick.",
            NOT_PARTICIPANT = "I've got no steak in this contest.",
        },
        MOUNT =
        {
            TARGETINCOMBAT = "That's asking to get trampled.",
            INUSE = "Alright, alright, you have it.",
			SLEEPING = "Up and at 'em!",
        },
        OCEAN_FISHING_POND =
		{
			WRONGGEAR = "It'd be much more fitting to use at sea.",
		},
		OPEN_CRAFTING =
		{
            PROFESSIONALCHEF = "My family may be charcoal burners, but we're no cooks.",
			SHADOWMAGIC = "I don't have any crazy powers like the Twins do.",
		},
        PICK =
        {
            NOTHING_INSIDE = "There's nothing left.",
			STUCK = "It ain't budging.",
        },
        PICKUP =
        {
			RESTRICTION = "I don't know what I'm doing with it.",
			INUSE = "I'll wait.",
            NOTMINE_SPIDER = "only_used_by_webber",
            NOTMINE_YOTC =
            {
                "You're not my carrat.",
                "OW, it bit me!",
            },
			NO_HEAVY_LIFTING = "only_used_by_wanda",
            FULL_OF_CURSES = "I'm no dull kid. That's asking for trouble.",
        },
        PLANTREGISTRY_RESEARCH_FAIL =
        {
            GENERIC = "I got everything there is to know.",
            FERTILIZER = "Nothing more I could learn from it.",
        },
        POUR_WATER =
        {
            OUT_OF_WATER = "I'm plum out of water.",
        },
        POUR_WATER_GROUNDTILE =
        {
            OUT_OF_WATER = "Plum out! I'll be needing a refill.",
        },
        --wickerbottom specific action
        READ =
        {
            GENERIC = "only_used_by_waxwell_and_wicker",
            NOBIRDS = "only_used_by_waxwell_and_wicker",
            NOWATERNEARBY = "only_used_by_waxwell_and_wicker",
            TOOMANYBIRDS = "only_used_by_waxwell_and_wicker",
            WAYTOOMANYBIRDS = "only_used_by_waxwell_and_wicker",
            BIRDSBLOCKED = "only_used_by_waxwell_and_wicker",
            NOFIRES =       "only_used_by_waxwell_and_wicker",
            NOSILVICULTURE = "only_used_by_waxwell_and_wicker",
            NOHORTICULTURE = "only_used_by_waxwell_and_wicker",
            NOTENTACLEGROUND = "only_used_by_waxwell_and_wicker",
            NOSLEEPTARGETS = "only_used_by_waxwell_and_wicker",
            TOOMANYBEES = "only_used_by_waxwell_and_wicker",
            NOMOONINCAVES = "only_used_by_waxwell_and_wicker",
            ALREADYFULLMOON = "only_used_by_waxwell_and_wicker",
            -- rifts5.1
            DEADBIRDS = "only_used_by_waxwell_and_wicker",
        },
		REMOTE_TELEPORT =
		{
			NOSKILL = "only_used_by_winona",
			NODEST = "only_used_by_winona",
		},
        REMOVEMODULES =
        {
            NO_MODULES = "only_used_by_wx78",
        },
        REPAIR =
        {
            WRONGPIECE = "Nah, that's wrong.",
        },
        REPLATE =
        {
            MISMATCH = "That's the wrong dish.",
            SAMEDISH = "I only need to use one dish.",
        },
        ROW_FAIL =
        {
            BAD_TIMING0 = "Oops!",
            BAD_TIMING1 = "Bad form!",
            BAD_TIMING2 = "That was off.",
        },
		RUMMAGE =
		{
			GENERIC = "Not right now.",
			INUSE = "We'd just get in the way of each other.",
            NOTMASTERCHEF = "My specialty is cooking charcoal, nothin' more.",
            NOTAMERM = "I'll leave them be.",
            NOTSOULJARHANDLER = "I'd best not mess with it.",
            RESTRICTED = "I wouldn't be any use.",
			NOTAROBOT = "Ask Claus 'bout it.",
		},
        SADDLE =
        {
            TARGETINCOMBAT = "That's asking to get trampled.",
        },
		SHAVE =
		{
			AWAKEBEEFALO = "I don't think that'd be smart right now.",
			GENERIC = "Not happening!",
			NOBITS = "Already shaved clean!",
            REFUSE = "only_used_by_woodie",
            SOMEONEELSESBEEFALO = "It's a funny prank, but maybe not under the circumstances.",
		},
        SING_FAIL =
        {
            SAMESONG = "only_used_by_wathgrithr",
        },
        SLAUGHTER =
        {
            TOOFAR = "You win this time, prey!",
        },
        START_CARRAT_RACE =
        {
            NO_RACERS = "I think I'm missing something here.",
        },
		STORE =
		{
			GENERIC = "No room.",
			NOTALLOWED = "It's not gonna fit.",
			INUSE = "We'd just get in the way of each other.",
            NOTMASTERCHEF = "My specialty is cooking charcoal, nothin' more.",
            NOTSOULJARHANDLER = "I'll leave it be.",
            RESTRICTED = "I wouldn't be any use.",

		},
        TEACH =
        {
            --Recipes/Teacher
            KNOWN = "Done and learnt.",
            CANTLEARN = "I can't be bothered.",

            --MapRecorder/MapExplorer
            WRONGWORLD = "It doesn't work here.",

			--MapSpotRevealer/messagebottle
			MESSAGEBOTTLEMANAGER_NOT_FOUND = "It's blank...",--Likely trying to read messagebottle treasure map in caves

            STASH_MAP_NOT_FOUND = "I can't make heads or tails of this dang map.",-- Likely trying to read stash map  in world without stash                  
        },
		TELLSTORY =
		{
			GENERIC = "only_used_by_walter",
			NOT_NIGHT = "only_used_by_walter",
			NO_FIRE = "only_used_by_walter",
		},
		UNLOCK =
        {
            WRONGKEY = "It won't fit.",
        },
        UPGRADE =
        {
            BEDAZZLED = "only_used_by_webber",
        },
        USEITEMON =
        {
            --GENERIC = "I can't use this on that!",

            --construction is PREFABNAME_REASON
            BEEF_BELL_INVALID_TARGET = "Not gonna work!",
            BEEF_BELL_ALREADY_USED = "You have an owner already, huh?",
            BEEF_BELL_HAS_BEEF_ALREADY = "Two's a crowd!",

			NOT_MINE = "You have an already, huh?",

			CANNOT_FIX_DRONE = "There's no saving it.",
        },
		USEKLAUSSACKKEY =
        {
            WRONGKEY = "It broke?",
            KLAUS = "Priorities!",
			QUAGMIRE_WRONGKEY = "I'll just have to find another key.",
        },
        WRAPBUNDLE =
        {
            EMPTY = "I got nothing to wrap up.",
        },
        WRITE =
        {
            GENERIC = "Maybe later.",
            INUSE = "They can handle it.",
        },
        YOTB_STARTCONTEST =
        {
            DOESNTWORK = "I guess they don't support the arts here.",
            ALREADYACTIVE = "He must be busy with another contest somewhere.",
            NORESPONSE = "He must have wandered off.",
            RIGHTTHERE = "He's busy.",
        },
        YOTB_UNLOCKSKIN =
        {
            ALREADYKNOWN = "I'm seeing a familiar pattern... I've learned this already!",
        },
		CARVEPUMPKIN =
		{
			INUSE = "I'll have to find my own pumpkin.",
			BURNING = "Reminds me of baked yams.",
		},
		DECORATESNOWMAN =
		{
			INUSE = "I'd just get in the way.",
			HASHAT = "It's perfect as it is.",
			STACKEDTOOHIGH = "I'm too short for that!",
			MELTING = "It won't last much longer anyways.",
		},
        MUTATE = 
        {
            NOGHOST = "only_used_by_wendy",
            NONEWMOON = "only_used_by_wendy",
            NOFULLMOON = "only_used_by_wendy",
            NOTNIGHT = "only_used_by_wendy",
            CAVE = "only_used_by_wendy",
        },
		MODSLINGSHOT =
		{
			NOSLINGSHOT = "only_used_by_walter",
		},
		POUNCECAPTURE =
		{
			MISSED = "Too slow.",
		},
        DIVEGRAB =
        {
            MISSED = "Too slow.",
        },
		-- Winter 2025
		SOAKIN =
		{
			NOSPACE = "Ain't gonna fit.",--there's someone in that space. there's no room there.
        }
    },

	ANNOUNCE_CANNOT_BUILD =
	{
		NO_INGREDIENTS = "I'm a little short of supplies.",
		NO_TECH = "I don't got the gumption for that.",
		NO_STATION = "I need a proper workstation for that.",
	},

	ACTIONFAIL_GENERIC = "Ain't happening.",
	ANNOUNCE_BOAT_LEAK = "That's probably bad news.",
	ANNOUNCE_BOAT_SINK = "Someone! Heeeelp!!",
    ANNOUNCE_PREFALLINVOID = "Oh no.",
	ANNOUNCE_DIG_DISEASE_WARNING = "It looks better already.", --removed
	ANNOUNCE_PICK_DISEASE_WARNING = "Uh, is it supposed to smell like that?", --removed
	ANNOUNCE_ADVENTUREFAIL = "Ouch. Maybe I should be more careful.",
    ANNOUNCE_MOUNT_LOWHEALTH = "My mount is in bad shape!",

    --waxwell and wickerbottom specific strings
    ANNOUNCE_TOOMANYBIRDS = "only_used_by_waxwell_and_wicker",
    ANNOUNCE_WAYTOOMANYBIRDS = "only_used_by_waxwell_and_wicker",
    ANNOUNCE_NOWATERNEARBY = "only_used_by_waxwell_and_wicker",

	--waxwell specific
	ANNOUNCE_SHADOWLEVEL_ITEM = "only_used_by_waxwell",
	ANNOUNCE_EQUIP_SHADOWLEVEL_T1 = "only_used_by_waxwell",
	ANNOUNCE_EQUIP_SHADOWLEVEL_T2 = "only_used_by_waxwell",
	ANNOUNCE_EQUIP_SHADOWLEVEL_T3 = "only_used_by_waxwell",
	ANNOUNCE_EQUIP_SHADOWLEVEL_T4 = "only_used_by_waxwell",

    --wolfgang specific
    ANNOUNCE_NORMALTOMIGHTY = "only_used_by_wolfang",
    ANNOUNCE_NORMALTOWIMPY = "only_used_by_wolfang",
    ANNOUNCE_WIMPYTONORMAL = "only_used_by_wolfang",
    ANNOUNCE_MIGHTYTONORMAL = "only_used_by_wolfang",
    ANNOUNCE_EXITGYM = {
        MIGHTY = "only_used_by_wolfang",
        NORMAL = "only_used_by_wolfang",
        WIMPY = "only_used_by_wolfang",
    },

	ANNOUNCE_BEES = "Run for it!",
	ANNOUNCE_BOOMERANG = "Ow! Dumb boomerang!",
	ANNOUNCE_CHARLIE = "Please don't hurt me!",
	ANNOUNCE_CHARLIE_ATTACK = "Please... I just... want... to see Dad again...",
	ANNOUNCE_CHARLIE_MISSED = "only_used_by_winona", --winona specific
	ANNOUNCE_COLD = "A-a-and I-I thought W-winters, in Sunshine F-f-forest were bad..!",
	ANNOUNCE_HOT = "I might just become charcoal myself at this rate!",
	ANNOUNCE_CRAFTING_FAIL = "Somethin's missing.",
	ANNOUNCE_DEERCLOPS = "We're being stalked, by something big.",
	ANNOUNCE_CAVEIN = "Watch your footing! Earthquake!",
	ANNOUNCE_ANTLION_SINKHOLE =
	{
		"Someone's angryyyy!",
		"Whoa! Watch out!",
		"That can't be good!",
	},
	ANNOUNCE_ANTLION_TRIBUTE =
	{
        "No problem at all!",
        "Yer just a little hungry, huh?",
        "Don't mention it!",
	},
	ANNOUNCE_SACREDCHEST_YES = "I did it?",
	ANNOUNCE_SACREDCHEST_NO = "Hm.",
    ANNOUNCE_DUSK = "Turning in for the day sounds about good now.",

    --wx-78 specific
    ANNOUNCE_CHARGE = "only_used_by_wx78",
	ANNOUNCE_DISCHARGE = "only_used_by_wx78",

    -- Winona specific
    ANNOUNCE_ROSEGLASSES = 
    {
        "only_used_by_winona",
        "only_used_by_winona",
        "only_used_by_winona",
    },
    ANNOUNCE_CHARLIESAVE = 
    {
        "only_used_by_winona",
    },
	ANNOUNCE_ENGINEERING_CAN_UPGRADE = "only_used_by_winona",
	ANNOUNCE_ENGINEERING_CAN_DOWNGRADE = "only_used_by_winona",
	ANNOUNCE_ENGINEERING_CAN_SIDEGRADE = "only_used_by_winona",

	ANNOUNCE_EAT =
	{
		GENERIC = "Fills me up!",
		PAINFUL = "I shouldn't have eaten that...",
		SPOILED = "I'm going to be throwing that up later.",
		STALE = "Better to eat it now before it goes bad.",
		INVALID = "I don't think that's food.",
        YUCKY = "Dad said don't be a picky eater, but come on now!",

        --Warly specific ANNOUNCE_EAT strings
		COOKED = "only_used_by_warly",
		DRIED = "only_used_by_warly",
        PREPARED = "only_used_by_warly",
        RAW = "only_used_by_warly",
		SAME_OLD_1 = "only_used_by_warly",
		SAME_OLD_2 = "only_used_by_warly",
		SAME_OLD_3 = "only_used_by_warly",
		SAME_OLD_4 = "only_used_by_warly",
        SAME_OLD_5 = "only_used_by_warly",
		TASTY = "only_used_by_warly",
    },

	ANNOUNCE_FOODMEMORY = "only_used_by_warly",

    ANNOUNCE_ENCUMBERED =
    {
        "Don't worry... I've carried... heavier!",
        "Just another day... in the Forest!",
        "I'm... stronger... than I look!",
        "I got it, I... got it!",
        "Just take your time, Fuel..!",
        "How long do I... have to carry this?",
        "Almost there... I'm sure of it!",
        "No time to rest..!",
        "One step closer..!",
    },
    ANNOUNCE_ATRIUM_DESTABILIZING =
    {
		"Did I do something wrong?",
		"Guys? W-wait for me!!",
		"Run for it!!",
	},
    ANNOUNCE_RUINS_RESET = "All that hard work, and now there's more to be done. Well, let's to it.",
    ANNOUNCE_SNARED = "A little help, please!",
    ANNOUNCE_SNARED_IVY = "Ouch! That's not very nice!",
    ANNOUNCE_REPELLED = "I can't seem to touch it with that shield!",
	ANNOUNCE_ENTER_DARK = "It's not the dark that scares me,",
	ANNOUNCE_ENTER_LIGHT = "...It's what lives in it.",
	ANNOUNCE_FREEDOM = "Nothin' keeps Fuel down forever! Nuthin.'", --Intentional diff spellings, 'Nuthin' is just him putting more emphasis on first syllable
	ANNOUNCE_HIGHRESEARCH = "Readin,' 'Ritin,' 'Rithmitic!",
	ANNOUNCE_HOUNDS = "We're not alone in these forests.",
	ANNOUNCE_WORMS = "There's danger brewing.",
    ANNOUNCE_WORMS_BOSS = "That can't be good.",
    ANNOUNCE_ACIDBATS = "We're in big trouble, aren't we?",
	ANNOUNCE_HUNGRY = "I really need to find somethin' to eat.",
	ANNOUNCE_HUNT_BEAST_NEARBY = "Fresh.",
	ANNOUNCE_HUNT_LOST_TRAIL = "Nah, nothin' more to follow.",
	ANNOUNCE_HUNT_LOST_TRAIL_SPRING = "It's a waste of time to track somethin' in all this rain.",
    ANNOUNCE_HUNT_START_FORK = "Looks like I'm not the only one huntin' ya.",
    ANNOUNCE_HUNT_SUCCESSFUL_FORK = "I'm hot on your trail!",
    ANNOUNCE_HUNT_WRONG_FORK = "Perhaps I'm not the hunter.",
    ANNOUNCE_HUNT_AVOID_FORK = "Just you me and again.",
	ANNOUNCE_INV_FULL = "Sorry, I'm no pack mule.",
	ANNOUNCE_KNOCKEDOUT = "Anyone else feeling sleepy?",
	ANNOUNCE_LOWRESEARCH = "That was a bust.",
	ANNOUNCE_MOSQUITOS = "Pests!",
    ANNOUNCE_NOWARDROBEONFIRE = "Not again!!",
    ANNOUNCE_NODANGERGIFT = "It'd be rude of me to ignore my 'vistors.'",
    ANNOUNCE_NOMOUNTEDGIFT = "I couldn't possibly from up here.",
	ANNOUNCE_NODANGERSLEEP = "Now is not the time!",
	ANNOUNCE_NODAYSLEEP = "The sun is bright and there's work to be done.",
	ANNOUNCE_NODAYSLEEP_CAVE = "I'm too busy to sleep.",
	ANNOUNCE_NOHUNGERSLEEP = "A snack before bed sounds nice.",
	ANNOUNCE_NOSLEEPONFIRE = "Yeah, the real name's Fuel. No, don't ask me why.",
    ANNOUNCE_NOSLEEPHASPERMANENTLIGHT = "only_used_by_wx78",
	ANNOUNCE_NODANGERSIESTA = "Now's not the time.",
	ANNOUNCE_NONIGHTSIESTA = "I'm not really in a relaxing mood.",
	ANNOUNCE_NONIGHTSIESTA_CAVE = "I'm not really in a relaxing mood.",
	ANNOUNCE_NOHUNGERSIESTA = "A snack first, now that sounds great with a little relaxation!",
	ANNOUNCE_NO_TRAP = "You can't fool me!",
	ANNOUNCE_PECKED = "Hey! That hurts!",
	ANNOUNCE_QUAKE = "Earthquake! Keep calm!",
	ANNOUNCE_RESEARCH = "Awesome!",
	ANNOUNCE_SHELTER = "Ah, that's better.",
	ANNOUNCE_THORNS = "Ouch.",
	ANNOUNCE_BURNT = "I'm a little too familiar with the feeling.",
	ANNOUNCE_TORCH_OUT = "My light's out!",
	ANNOUNCE_THURIBLE_OUT = "Out of... yeah, it's out.",
	ANNOUNCE_FAN_OUT = "It broke...",
    ANNOUNCE_COMPASS_OUT = "Busted.",
	ANNOUNCE_TRAP_WENT_OFF = "I shouldn't have done that, huh?",
	ANNOUNCE_UNIMPLEMENTED = "OW! I don't think it's ready yet.",
	ANNOUNCE_WORMHOLE = "Yikes. Hopefully I don't get used to that.",
    ANNOUNCE_WORMHOLE_SAMESPOT = "only_used_by_winona",
	ANNOUNCE_TOWNPORTALTELEPORT = "I feel different.",
	ANNOUNCE_CANFIX = "\nLeave it to me!",
	ANNOUNCE_ACCOMPLISHMENT = "Nicely done!",
	ANNOUNCE_ACCOMPLISHMENT_DONE = "Time to celebrate!.",
	ANNOUNCE_INSUFFICIENTFERTILIZER = "Needs more.",
	ANNOUNCE_TOOL_SLIP = "Slipped right outta my hands!",
	ANNOUNCE_LIGHTNING_DAMAGE_AVOIDED = "Too close!",
	ANNOUNCE_TOADESCAPING = "Hey, where ya going?",
	ANNOUNCE_TOADESCAPED = "Oh well.",


	ANNOUNCE_DAMP = "This rain won't be good if I don't find protection.",
	ANNOUNCE_WET = "I'm getting all wet!",
	ANNOUNCE_WETTER = "I'm absolutely soaked!",
	ANNOUNCE_SOAKED = "Hopefully I don't catch a cold...",

	ANNOUNCE_WASHED_ASHORE = "Ughhhh... How did Lucas go through all this?",

    ANNOUNCE_DESPAWN = "Guess I'm needed elsewhere, y'all.",
	ANNOUNCE_BECOMEGHOST = "oOooOooo!!",
	ANNOUNCE_GHOSTDRAIN = "It's about time I leave this realm.",
	ANNOUNCE_PETRIFED_TREES = "Huh? Did anyone else hear screaming?",
	ANNOUNCE_KLAUS_ENRAGE = "Ohhhh, he did NOT like that!",
	ANNOUNCE_KLAUS_UNCHAINED = "Oh, man, he just doesn't give up!",
	ANNOUNCE_KLAUS_CALLFORHELP = "He's got backup!",

	ANNOUNCE_MOONALTAR_MINE =
	{
		GLASS_MED = "There's somethin' in the rock!",
		GLASS_LOW = "Almost...",
		GLASS_REVEAL = "What... is that?",
		IDOL_MED = "There's somethin' in the rock!",
		IDOL_LOW = "Almost...",
		IDOL_REVEAL = "What... is that?",
		SEED_MED = "There's somethin' in the rock!",
		SEED_LOW = "Almost...",
		SEED_REVEAL = "What is that?",
	},

    --hallowed nights
    ANNOUNCE_SPOOKED = "Ah!! You're never know whose you're knockin' on.",
	ANNOUNCE_BRAVERY_POTION = "Knock knock!",
	ANNOUNCE_MOONPOTION_FAILED = "I feel the same.",

	--winter's feast
	ANNOUNCE_EATING_NOT_FEASTING = "I've never eaten at the Sanctuary Festival without Dad. I'd hate to be alone here, too.",
	ANNOUNCE_WINTERS_FEAST_BUFF = "I couldn't be in higher spirits than right now!",
	ANNOUNCE_IS_FEASTING = "Y'all are my family away from family. Thank you.",
	ANNOUNCE_WINTERS_FEAST_BUFF_OVER = "Good times never last.",

    --lavaarena event
    ANNOUNCE_REVIVING_CORPSE = "Up and at em!'",
    ANNOUNCE_REVIVED_OTHER_CORPSE = "Show 'em who they're messing with!",
    ANNOUNCE_REVIVED_FROM_CORPSE = "Well, I'm in one piece, at least. Thanks!",

    ANNOUNCE_FLARE_SEEN = "Huh? Maybe someone needs help!",
    ANNOUNCE_MEGA_FLARE_SEEN = "The whole world must've seen that one!",
    ANNOUNCE_OCEAN_SILHOUETTE_INCOMING = "Wh-what is that?",

    --willow specific
	ANNOUNCE_LIGHTFIRE =
	{
		"only_used_by_willow",
    },

    --winona specific
    ANNOUNCE_HUNGRY_SLOWBUILD =
    {
	    "only_used_by_winona",
    },
    ANNOUNCE_HUNGRY_FASTBUILD =
    {
	    "only_used_by_winona",
    },

    --wormwood specific
    ANNOUNCE_KILLEDPLANT =
    {
        "only_used_by_wormwood",
    },
    ANNOUNCE_GROWPLANT =
    {
        "only_used_by_wormwood",
    },
    ANNOUNCE_BLOOMING =
    {
        "only_used_by_wormwood",
    },

    --wortox specfic
    ANNOUNCE_SOUL_EMPTY =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_EMPTY_NICE =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_EMPTY_NAUGHTY =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_FEW =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_FEW_NICE =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_FEW_NAUGHTY =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_MANY =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_MANY_NICE =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_MANY_NAUGHTY =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_OVERLOAD =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_OVERLOAD_NICE =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_OVERLOAD_NAUGHTY =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_OVERLOAD_WARNING =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_OVERLOAD_AVOIDED =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_PANFLUTE_BUFF_ACTIVE =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_PANFLUTE_BUFF_USED =
    {
        "only_used_by_wortox",
    },

    --walter specfic
	ANNOUNCE_AMMO_SLOT_OVERSTACKED = "only_used_by_walter",
	ANNOUNCE_SLINGHSOT_OUT_OF_AMMO =
	{
		"only_used_by_walter",
		"only_used_by_walter",
	},
	ANNOUNCE_SLINGHSOT_NO_AMMO_SKILL = "only_used_by_walter",
	ANNOUNCE_SLINGHSOT_NO_PARTS_SKILL = "only_used_by_walter",
	ANNOUNCE_STORYTELLING_ABORT_FIREWENTOUT =
	{
        "only_used_by_walter",
	},
	ANNOUNCE_STORYTELLING_ABORT_NOT_NIGHT =
	{
        "only_used_by_walter",
	},
	ANNOUNCE_WOBY_RETURN =
	{
		"only_used_by_walter",
	},
	ANNOUNCE_WOBY_SIT =
	{
		"only_used_by_walter",
	},
	ANNOUNCE_WOBY_FOLLOW =
	{
		"only_used_by_walter",
	},
	ANNOUNCE_WOBY_PRAISE =
	{
		"only_used_by_walter",
	},
	ANNOUNCE_WOBY_FORAGE =
	{
		"only_used_by_walter",
	},
	ANNOUNCE_WOBY_WORK =
	{
		"only_used_by_walter",
	},
	ANNOUNCE_WOBY_COURIER =
	{
		"only_used_by_walter",
	},
	ANNOUNCE_WOBY_REMEMBERCHEST_FAIL =
	{
		"only_used_by_walter",
	},

    -- wx specific
    ANNOUNCE_WX_SCANNER_NEW_FOUND = "only_used_by_wx78",
    ANNOUNCE_WX_SCANNER_FOUND_NO_DATA = "only_used_by_wx78",

    --quagmire event
    QUAGMIRE_ANNOUNCE_NOTRECIPE = "Those ingredients didn't make anything.",
    QUAGMIRE_ANNOUNCE_MEALBURNT = "I left it on too long.",
    QUAGMIRE_ANNOUNCE_LOSE = "I have a bad feeling about this.",
    QUAGMIRE_ANNOUNCE_WIN = "Time to go!",

    ANNOUNCE_ROYALTY =
    {
        "I never met King Osohe.",
        "Uh, hi.",
        "Will that be all?",
    },
    ANNOUNCE_ROYALTY_JOKER =
    {
        "You look funny!",
        "Good one!",
        "I'm busy.",
    },

    ANNOUNCE_ATTACH_BUFF_ELECTRICATTACK    = "I'm brimming with the power of lightning!",
    ANNOUNCE_ATTACH_BUFF_ATTACK            = "Mess with the bull, get the horns!!",
    ANNOUNCE_ATTACH_BUFF_PLAYERABSORPTION  = "I'm tough as nails!",
    ANNOUNCE_ATTACH_BUFF_WORKEFFECTIVENESS = "Dad would love this!",
    ANNOUNCE_ATTACH_BUFF_MOISTUREIMMUNITY  = "Mighty useful for making the most out of a rainy day!",
    ANNOUNCE_ATTACH_BUFF_SLEEPRESISTANCE   = "Fueled up - heh-heh, - and raring to go!",

    ANNOUNCE_DETACH_BUFF_ELECTRICATTACK    = "Aw, man, no more lightning fingers?",
    ANNOUNCE_DETACH_BUFF_ATTACK            = "Er, well, if I had horns, that is...",
    ANNOUNCE_DETACH_BUFF_PLAYERABSORPTION  = "I'm tough, just not nails-tough.",
    ANNOUNCE_DETACH_BUFF_WORKEFFECTIVENESS = "Well, you know what they say about all work and no play...",
    ANNOUNCE_DETACH_BUFF_MOISTUREIMMUNITY  = "Nothing lasts forever.",
    ANNOUNCE_DETACH_BUFF_SLEEPRESISTANCE   = "I need a recharge.",

	ANNOUNCE_OCEANFISHING_LINESNAP = "No! Dang it.",
	ANNOUNCE_OCEANFISHING_LINETOOLOOSE = "I seem to let out too much line.",
	ANNOUNCE_OCEANFISHING_GOTAWAY = "There goes lunch.",
	ANNOUNCE_OCEANFISHING_BADCAST = "My home was mighty far away from the ocean.",
	ANNOUNCE_OCEANFISHING_IDLE_QUOTE =
	{
		"No luck, still.",
		"Hopefully I'm not wastin' time.",
		"Maybe today isn't my day.",
		"Maybe I should find another spot?",
	},

	ANNOUNCE_WEIGHT = "Weight: {weight}",
	ANNOUNCE_WEIGHT_HEAVY  = "Weight: {weight}\nThe big catch!",

	ANNOUNCE_WINCH_CLAW_MISS = "Just a little off.",
	ANNOUNCE_WINCH_CLAW_NO_ITEM = "Nothing? Man.",

    --Wurt announce strings
    ANNOUNCE_KINGCREATED = "only_used_by_wurt",
    ANNOUNCE_KINGDESTROYED = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_THRONE = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_HOUSE = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_WATCHTOWER = "only_used_by_wurt",
    ANNOUNCE_READ_BOOK =
    {
        BOOK_SLEEP = "only_used_by_wurt",
        BOOK_BIRDS = "only_used_by_wurt",
        BOOK_TENTACLES =  "only_used_by_wurt",
        BOOK_BRIMSTONE = "only_used_by_wurt",
        BOOK_GARDENING = "only_used_by_wurt",
		BOOK_SILVICULTURE = "only_used_by_wurt",
		BOOK_HORTICULTURE = "only_used_by_wurt",

        BOOK_FISH = "only_used_by_wurt",
        BOOK_FIRE = "only_used_by_wurt",
        BOOK_WEB = "only_used_by_wurt",
        BOOK_TEMPERATURE = "only_used_by_wurt",
        BOOK_LIGHT = "only_used_by_wurt",
        BOOK_RAIN = "only_used_by_wurt",
        BOOK_MOON = "only_used_by_wurt",
        BOOK_BEES = "only_used_by_wurt",

        BOOK_HORTICULTURE_UPGRADED = "only_used_by_wurt",
        BOOK_RESEARCH_STATION = "only_used_by_wurt",
        BOOK_LIGHT_UPGRADED = "only_used_by_wurt",
    },

    ANNOUNCE_WEAK_RAT = "This carrat is in no shape to be training.",

    ANNOUNCE_CARRAT_START_RACE = "Let the experim- er, race begin!",

    ANNOUNCE_CARRAT_ERROR_WRONG_WAY = {
        "No, no! You're going the wrong way!",
        "Turn around, white eyes!",
    },
    ANNOUNCE_CARRAT_ERROR_FELL_ASLEEP = "Don't you dare! Wake up, we have a race to win!",
    ANNOUNCE_CARRAT_ERROR_WALKING = "Don't walk, RUN!",
    ANNOUNCE_CARRAT_ERROR_STUNNED = "Get up! GO GO!",

    ANNOUNCE_GHOST_QUEST = "only_used_by_wendy",
    ANNOUNCE_GHOST_HINT = "only_used_by_wendy",
    ANNOUNCE_GHOST_TOY_NEAR = {
        "only_used_by_wendy",
    },
	ANNOUNCE_SISTURN_FULL = "only_used_by_wendy",
    ANNOUNCE_SISTURN_FULL_EVIL = "only_used_by_wendy",
    ANNOUNCE_SISTURN_FULL_BLOSSOM = "only_used_by_wendy",
    ANNOUNCE_ABIGAIL_DEATH = "only_used_by_wendy",
    ANNOUNCE_ABIGAIL_RETRIEVE = "only_used_by_wendy",
	ANNOUNCE_ABIGAIL_LOW_HEALTH = "only_used_by_wendy",
    ANNOUNCE_ABIGAIL_SUMMON =
	{
		LEVEL1 = "only_used_by_wendy",
		LEVEL2 = "only_used_by_wendy",
		LEVEL3 = "only_used_by_wendy",
	},

    ANNOUNCE_GHOSTLYBOND_LEVELUP =
	{
		LEVEL2 = "only_used_by_wendy",
		LEVEL3 = "only_used_by_wendy",
	},

    ANNOUNCE_NOINSPIRATION = "only_used_by_wathgrithr",
    ANNOUNCE_NOTSKILLEDENOUGH = "only_used_by_wathgrithr",
    ANNOUNCE_BATTLESONG_INSTANT_TAUNT_BUFF = "only_used_by_wathgrithr",
    ANNOUNCE_BATTLESONG_INSTANT_PANIC_BUFF = "only_used_by_wathgrithr",
    ANNOUNCE_BATTLESONG_INSTANT_REVIVE_BUFF = "only_used_by_wathgrithr",

    ANNOUNCE_WANDA_YOUNGTONORMAL = "only_used_by_wanda",
    ANNOUNCE_WANDA_NORMALTOOLD = "only_used_by_wanda",
    ANNOUNCE_WANDA_OLDTONORMAL = "only_used_by_wanda",
    ANNOUNCE_WANDA_NORMALTOYOUNG = "only_used_by_wanda",

	ANNOUNCE_POCKETWATCH_PORTAL = "My head's all fuzzy.",

	ANNOUNCE_POCKETWATCH_MARK = "only_used_by_wanda",
	ANNOUNCE_POCKETWATCH_RECALL = "only_used_by_wanda",
	ANNOUNCE_POCKETWATCH_OPEN_PORTAL = "only_used_by_wanda",
	ANNOUNCE_POCKETWATCH_OPEN_PORTAL_DIFFERENTSHARD = "only_used_by_wanda",

    ANNOUNCE_ARCHIVE_NEW_KNOWLEDGE = "I feel pretty smart!",
    ANNOUNCE_ARCHIVE_OLD_KNOWLEDGE = "Well that wasn't very helpful.",
    ANNOUNCE_ARCHIVE_NO_POWER = "It ain't workin.'",

    ANNOUNCE_PLANT_RESEARCHED =
    {
        "Always somethin' new to learn.",
    },

    ANNOUNCE_PLANT_RANDOMSEED = "I couldn't tell you what it is.",

    ANNOUNCE_FERTILIZER_RESEARCHED = "Always somethin' new to learn.",

	ANNOUNCE_FIRENETTLE_TOXIN =
	{
		"That was a mistake!",
		"I'm being charred from the inside out!",
	},
	ANNOUNCE_FIRENETTLE_TOXIN_DONE = "Please, never again...",

	ANNOUNCE_TALK_TO_PLANTS =
	{
        "Just needed a little encouragement.",
        "You're doing great!",
		"Howdy, plant!",
        "Hope your day is great!",
        "We all need someone to talk to.",
	},

	ANNOUNCE_KITCOON_HIDEANDSEEK_START = "3, 2, 1... Ready or not, here I come!",
	ANNOUNCE_KITCOON_HIDEANDSEEK_JOIN = "Aww, they're playing hide and seek.",
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND =
	{
		"Found you!",
		"There you are.",
		"I knew you'd be hiding there!",
		"I see you!",
	},
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_ONE_MORE = "Now where's that last one hiding?",
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_LAST_ONE = "I found the last one!",
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_LAST_ONE_TEAM = "{name} found the last one!",
	ANNOUNCE_KITCOON_HIDANDSEEK_TIME_ALMOST_UP = "These little guys must be getting impatient...",
	ANNOUNCE_KITCOON_HIDANDSEEK_LOSEGAME = "I guess they don't want to play any more...",
	ANNOUNCE_KITCOON_HIDANDSEEK_TOOFAR = "They probably wouldn't hide this far away, would they?",
	ANNOUNCE_KITCOON_HIDANDSEEK_TOOFAR_RETURN = "The kitcoons should be nearby.",
	ANNOUNCE_KITCOON_FOUND_IN_THE_WILD = "I knew I saw something hiding over here!",

	ANNOUNCE_TICOON_START_TRACKING	= "He's caught the scent!",
	ANNOUNCE_TICOON_NOTHING_TO_TRACK = "Looks like he couldn't find anything.",
	ANNOUNCE_TICOON_WAITING_FOR_LEADER = "I should follow him!",
	ANNOUNCE_TICOON_GET_LEADER_ATTENTION = "He really wants me to follow him.",
	ANNOUNCE_TICOON_NEAR_KITCOON = "He must have found something!",
	ANNOUNCE_TICOON_LOST_KITCOON = "Looks like someone else found what he was looking for.",
	ANNOUNCE_TICOON_ABANDONED = "I'll find those little guys on my own.",
	ANNOUNCE_TICOON_DEAD = "Poor guy... Now where was he leading me?",

    -- YOTB
    ANNOUNCE_CALL_BEEF = "Come on over!",
    ANNOUNCE_CANTBUILDHERE_YOTB_POST = "The judge won't be able to see my beefalo from here.",
    ANNOUNCE_YOTB_LEARN_NEW_PATTERN =  "My mind has been filled with beefalo styling inspiration!",

    -- AE4AE
    ANNOUNCE_EYEOFTERROR_ARRIVE = "I knew I was being watched!",
    ANNOUNCE_EYEOFTERROR_FLYBACK = "I don't mind dishing out a second serving!",
    ANNOUNCE_EYEOFTERROR_FLYAWAY = "Guess he's all filled up on knuckle sandwiches.",

    -- PIRATES
    ANNOUNCE_CANT_ESCAPE_CURSE = "It really wants to stay with me.",
    ANNOUNCE_MONKEY_CURSE_1 = "I don't feel so good.",
    ANNOUNCE_MONKEY_CURSE_CHANGE = "Huh...?!",
    ANNOUNCE_MONKEY_CURSE_CHANGEBACK = "I think I prefer my human form.",

    ANNOUNCE_PIRATES_ARRIVE = "I'm getting a sense of Deja-Vu.",

    ANNOUNCE_BOOK_MOON_DAYTIME = "only_used_by_waxwell_and_wicker",

    ANNOUNCE_OFF_SCRIPT = "So what if my line is a little off?",

    ANNOUNCE_COZY_SLEEP = "Like being back in bed... before all the ash, of course.",

	--
	ANNOUNCE_TOOL_TOOWEAK = "I need a stronger tool. Or maybe stronger arms. Heh.",

    ANNOUNCE_LUNAR_RIFT_MAX = "I don't like that...",
    ANNOUNCE_SHADOW_RIFT_MAX = "That's trouble brewing...",

    ANNOUNCE_SCRAPBOOK_FULL = "No need.",

    ANNOUNCE_CHAIR_ON_FIRE = "I am ACUTELY. Familiar with this.",

    ANNOUNCE_HEALINGSALVE_ACIDBUFF_DONE = "Is my skin burning, or it just me?",

    ANNOUNCE_COACH = 
    {
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
    },
    ANNOUNCE_WOLFGANG_WIMPY_COACHING = "only_used_by_wolfgang",
    ANNOUNCE_WOLFGANG_MIGHTY_COACHING = "only_used_by_wolfgang",
    ANNOUNCE_WOLFGANG_BEGIN_COACHING = "only_used_by_wolfgang",
    ANNOUNCE_WOLFGANG_END_COACHING = "only_used_by_wolfgang",
    ANNOUNCE_WOLFGANG_NOTEAM = 
    {
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
    },

    ANNOUNCE_YOTD_NOBOATS = "I'd better get my boat closer to the Start Tower.",
    ANNOUNCE_YOTD_NOCHECKPOINTS = "I should set up some checkpoints first.",
    ANNOUNCE_YOTD_NOTENOUGHBOATS = "There isn't enough room for anyone else to join in.",

    ANNOUNCE_OTTERBOAT_OUTOFSHALLOWS = "This isn't stable.",
    ANNOUNCE_OTTERBOAT_DENBROKEN = "Maybe I shouldn't have done that..",

    ANNOUNCE_GATHER_MERM = "Whatever floats your boat.",

    -- rifts 4
    ANNOUNCE_EXIT_GELBLOB = "Yuck... I'd think I'd rather be all covered in soot!",
	ANNOUNCE_SHADOWTHRALL_STEALTH = "Yeah, you better hide for that one!",
    ANNOUNCE_RABBITKING_AGGRESSIVE = "Um, um, um!!",
    ANNOUNCE_RABBITKING_PASSIVE = "Huh? Whad'ya look at.",
    ANNOUNCE_RABBITKING_LUCKY = "It must be lucky.",
    ANNOUNCE_RABBITKING_LUCKYCAUGHT = "Yay! Time for good luck!",
    ANNOUNCE_RABBITKINGHORN_BADSPAWNPOINT = "Hmmmmm. Nothing?",

	-- Hallowed Nights 2024
	ANNOUNCE_NOPUMPKINCARVINGONFIRE = "Outgha be more careful.",

	-- Winter's Feast 2024
	ANNOUNCE_SNOWBALL_TOO_BIG = "It's the perfect size!",
	ANNOUNCE_SNOWBALL_NO_SNOW = "We gotta wait for more snow.",

    -- Meta 5
    ANNOUNCE_WENDY_BABYSITTER_SET = "only_used_by_wendy", 
    ANNOUNCE_WENDY_BABYSITTER_STOP = "only_used_by_wendy",

	ANNOUNCE_WORTOX_REVIVER_FAILTELEPORT = "That all ya got?",

    ANNOUNCE_NO_ABIGAIL_FLOWER = "only_used_by_wendy",

    ANNOUNCE_ELIXIR_BOOSTED = "I feel much better.",
    ANNOUNCE_ELIXIR_GHOSTVISION = "I see dead people.",
    ANNOUNCE_ELIXIR_PLAYER_SPEED = "Lighter than a match, fueled up and ready to go!",

    ANNOUNCE_ELIXIR_TOO_SUPER = "I... shouldn't have done that.",

    -- Rift 5

    ANNOUNCE_LUNARGUARDIAN_INCOMING = "Stubborn. Reminds me of an old friend.",
    ANNOUNCE_FLOATER_HELD = "I'm... I'm okay? I'm okay!",
    ANNOUNCE_FLOATER_LETGO = "Oh no! Heeeelp!",

    -- rifts5.1
    ANNOUNCE_LUNARHAIL_BIRD_SOUNDS = "That doesn't sound right.",
    ANNOUNCE_LUNARHAIL_BIRD_CORPSES = "That's horrible...",
    ANNOUNCE_FLOAT_SWIM_TIRED = "I can't...",
    ANOUNCE_MUTATED_BIRD_ATTACK = "Ah!! Aahhh!!",

    -- Rift 6
    ANNOUNCE_WEAPON_TOOWEAK = "Even with these cannon arms, nuh uh.",
    ANNOUNCE_VAULT_TELEPORTER_DOES_NOTHING = "Technology, useless as always.",

	-- Rift 6.1
	ANNOUNCE_LIGHTSOUT_SHADOWHAND = "Go. Away.",
	-- Hallowed Nights 2025
    ANNOUNCE_MUTATED_BUZZARD_ARRIVAL = "Something's off about these vultures.", -- Mutated buzzards arrive to lurk and circle the player

    -- Winter's Feast 2025
    ANNOUNCE_HERMITCRAB_SHELL_BADTELEPORTPOINT = "It didn't work?",
    ANNOUNCE_HERMITCRAB_SHELL_ARRIVE = "Oh, man, remind to never do that again.",																																					   


	BATTLECRY =
	{
		GENERIC = "Yaaaaaaaah!!",
		PIG = "I'll teach you!",
		PREY = "Lunch time!",
		SPIDER = "Time for some pest control!",
		SPIDER_WARRIOR = "You're not the only one with a sharp edge!",
		DEER = "Take this!",
	},
	COMBAT_QUIT =
	{
		GENERIC = "I've had enough of that!",
		PIG = "I don't think he's learnin' much.",
		PREY = "Guess not.",
		SPIDER = "I might need a professional.",
		SPIDER_WARRIOR = "You win this time!",
	},

	DESCRIBE =
	{
		MULTIPLAYER_PORTAL = "Huh. This place just gets stranger and stranger.",
        MULTIPLAYER_PORTAL_MOONROCK = "It's... well. Different. And yet, so familiar.",
        MOONROCKIDOL = "Reminds me of an offering to the Sanctuary Gods.",
        CONSTRUCTION_PLANS = "Men at work.",

        ANTLION =
        {
            GENERIC = "Ya hungry?",
            VERYHAPPY = "You're very welcome!",
            UNHAPPY = "Someone outta get ya a snack!",
        },
        ANTLIONTRINKET = "I got a little gift for someone!",
        SANDSPIKE = "Yikes.",
        SANDBLOCK = "It's firmer than it looks.",
        GLASSSPIKE = "Fire's a beautiful destructive thing.",
        GLASSBLOCK = "Fire's a beautiful destructive thing.",
        ABIGAIL_FLOWER =
        {
            GENERIC ="That's no normal flower.",
			LEVEL1 = "Ain't lookin' to talk.",
			LEVEL2 = "Well, hello!",
			LEVEL3 = "We can be friends!",

			-- deprecated
            LONG = "It hurts my soul to look at that thing.",
            MEDIUM = "It's giving me the creeps.",
            SOON = "Something is up with that flower!",
            HAUNTED_POCKET = "I don't think I should hang on to this.",
            HAUNTED_GROUND = "I'd die to find out what it does.",
        },

        BALLOONS_EMPTY = "Work's work. Can't question that!",
        BALLOON = "It's asking for a poppin.'",
		BALLOONPARTY = "That's a neat trick.",
		BALLOONSPEED =
        {
            DEFLATED = "Won't be doing much now.",
            GENERIC = "It's makes ya faster.",
        },
		BALLOONVEST = "Well. It gets the job done!",
		BALLOONHAT = "Wear it and zap your friends!",

        BERNIE_INACTIVE =
        {
            BROKEN = "Nothing lasts forever.",
            GENERIC = "Lucky. Mine didn't survive the fire.",
        },

        BERNIE_ACTIVE = "It's alive?",
        BERNIE_BIG = "Huh. That's some interesting magic!",

		BOOKSTATION =
		{
			GENERIC = "Never been much of a reader.",
			BURNT = "My sympathies.",
		},
        BOOK_BIRDS = "I imagine Lucas might like it.",
        BOOK_TENTACLES = "It's not my type of literature.",
        BOOK_GARDENING = "Lotsa good info in that one!",
		BOOK_SILVICULTURE = "Lotsa good info in that one!",
		BOOK_HORTICULTURE = "Lotsa good info in that one!",
        BOOK_SLEEP = "If reading it fails, then using it as blunt force trauma might do the trick!",
        BOOK_BRIMSTONE = "That's a little familiar.",

        BOOK_FISH = "Never been a fisherman myself.",
        BOOK_FIRE = "I think I'm an expert enough on the topic, thank you.",
        BOOK_WEB = "Read up, then use it to squash some pests!",
        BOOK_TEMPERATURE = "Hot is hot. Cold is cold. Saved ya a read.",
        BOOK_LIGHT = "Not a good read for me.",
        BOOK_RAIN = "Science is only so practical to a working man.",
        BOOK_MOON = "Interesting.",
        BOOK_BEES = "Bees are good neighbors.",
        
        BOOK_HORTICULTURE_UPGRADED = "Farmers are your lifeblood. That's a good book to have.",
        BOOK_RESEARCH_STATION = "Too smart for me.",
        BOOK_LIGHT_UPGRADED = "I can't say it excites me.",

        FIREPEN = "Now you're using your noggin!",

        PLAYER =
        {
            GENERIC = "Howdy, %s!",
            ATTACKER = "%s is a poor neighbor.",
            MURDERER = "You're horrible, %s! Horrible!",
            REVIVER = "Appreciate the helping hand, %s!",
            GHOST = "Well, even if my dad's not here, I guess I shouldn't pretend to not see 'em!",
            FIRESTARTER = "Hope that fire is controlled, %s.",
        },
        GRAMFUEL =
        {
            GENERIC = "Must be my long-lost twin.",
            ATTACKER = "I really swing that axe good, huh?",
            MURDERER = "Looks like %s is my evil twin!",
            REVIVER = "Thanks, me!",
            GHOST = "I'd hate to be an only child again.",
            FIRESTARTER = "Hope that fire is controlled, %s.",
        },
        LUCAS = 
        {
            GENERIC = "Hey Luke. Always good saying a familiar face!",
            ATTACKER = "He's much more violent these days.",
            MURDERER = "You've changed, Lucas...",
            REVIVER = "Thanks, Luke. You've always been a good friend.",
            GHOST = "No point in leaving you like that, Luke!",
            FIRESTARTER = "Sheesh, I'd thought you of all people would know better!",
        },
        CLAUS =
        {
            GENERIC = "Claus... is it really you? It's been so long...",
            ATTACKER = "I've never seen him so angry.",
            MURDERER = "Whatever you are, it ain't Claus.",
            REVIVER = "Thanks, Claus. You and your brother always kept me good company.",
            GHOST = "Like it or not, I'm helping you out!",
            FIRESTARTER = "Claus? What's gotten into you?!",
        },
        GRAMNINTEN = 
        {
            GENERIC = "Hey there, Ninten.",
            ATTACKER = "No article of clothing can hide that tacky attitude you got, %s.",
            MURDERER = "You think you're tough, %s? I'll show you a lesson or two!",
            REVIVER = "Helping out for once, huh? Well, I thank ya, %s!",
            GHOST = "Relax some other time, %s, there's work to be done!",
            FIRESTARTER = "Forest fire's no laughing matter, %s."
        },
        GRAMNESS = 
        {
            GENERIC = "Well it ain't the city boy. Howdy, Ness!",
            ATTACKER = "Yknow Ness, 'round from where I come from, we don't look to kindly at that sorta behavior.",
            MURDERER = "You may be strong, Ness, but I can handle a no-gooder like you!",
            REVIVER = "You've got a kind heart, sir!",
            GHOST = "I miss home too. You don't see me crying about it!",
            FIRESTARTER = "Recklessness like that almost cost me my life, Ness."
        },
        WILSON =
        {
            GENERIC = "Howdy, Mr. Wilson!",
            ATTACKER = "Nothin' but trouble.",
            MURDERER = "Something ought to be done about %s!",
            REVIVER = "Thanks %s. Right on time!",
            GHOST = "Another failed experiment, huh. I'll lend a helping hand where I can, %s.",
            FIRESTARTER = "There are much more safer ways to produce charcoal, %s.",
        },
        WOLFGANG =
        {
            GENERIC = "How do ya do, Mr. Wolfgang!",
            ATTACKER = "Roughing people up? That's seems a little harsh.",
            MURDERER = "You've taken things too far, %s!",
            REVIVER = "Aw, I missed you too, %s.",
            GHOST = "Well %s, I'll see what I can do for ya.",
            FIRESTARTER = "%s, I think you should be more mindful of where you leave your torch.",
        },
        WAXWELL =
        {
            GENERIC = "Howdy!",
            ATTACKER = "I'll tell ya one thing: yer name isn't Maxwell. That I'm sure of.",
            MURDERER = "Time to make like your magic tricks and disappear.",
            REVIVER = "Still need me, %s? Well I'll be.",
            GHOST = "Well, even if my dad's not here, I guess I shouldn't pretend to not see 'em!",
            FIRESTARTER = "Wildfires' no game, %s.",
        },
        WX78 =
        {
            GENERIC = "Oh. Hello, %s.",
            ATTACKER = "Can't say I like 'em'.",
            MURDERER = "Yeah, nothin' but trouble.",
            REVIVER = "Hm. Guess you're not totally useless, %s.",
            GHOST = "Well, then.",
            FIRESTARTER = "Bet he makes great kindling...",
        },
        WILLOW =
        {
            GENERIC = "G'day, Ms. Willow!",
            ATTACKER = "%s is up to no good.",
            MURDERER = "That's not very cooperative, %s.",
            REVIVER = "Thanks. I uh, didn't expect that from you, %s.",
            GHOST = "Perhaps you've learned a thing or two about messin' with fire so recklessly.",
            FIRESTARTER = "I lost everything to a fire. I ever tell ya that, %s?",
        },
        WENDY =
        {
            GENERIC = "Well howdy, %s!",
            ATTACKER = "Kids your age shouldn't be acting that way, %s.",
            MURDERER = "Someone's gotta set you right, %s.",
            REVIVER = "Ah, don't like seeing other's in pain? Well, thank you very much %s!",
            GHOST = "I gotta help %s quick!",
            FIRESTARTER = "Fire is no game, %s.",
        },
        WOODIE =
        {
            GENERIC = "Howdy, %s!",
            ATTACKER = "He ain't like Isaac. I'll tell ya that much.",
            MURDERER = "You wouldn't be welcome where I'm from, %s.",
            REVIVER = "Glad I can always count on a fellow lumberjack!",
            GHOST = "It'd be rude to not help out %s!",
            BEAVER = "Ah. You're one of those chimera types!",
            BEAVERGHOST = "Suppose %s needs my help still.",
            MOOSE = "A human-moose chimera?",
            MOOSEGHOST = "Even like that, I gotta help out %s!",
            GOOSE = "%s? Well I'll be... ",
            GOOSEGHOST = "Can't leave %s out dry. And certainly not like THAT!",
            FIRESTARTER = "How 'bout you stick to choppin' and leave the charrin' to the expert, %s.",
        },
        WICKERBOTTOM =
        {
            GENERIC = "A gentle 'how do you do,' Ms. Wickerbottom!",
            ATTACKER = "Yeesh. %s sure doesn't play around.",
            MURDERER = "Didn't think you had it in you, %s. I'll be.",
            REVIVER = "Ah, thanks. Yeah, I'll be more careful next time, %s.",
            GHOST = "Well, even if my dad's not here, I guess I shouldn't pretend to not see 'em!",
            FIRESTARTER = "Miss, I think you shouldn't be so careless with the fire setting.",
        },
        WES =
        {
            GENERIC = "Howdy, Wes!",
            ATTACKER = "Just what sort of act is this, %s?",
            MURDERER = "It's okay, you won't need words where you're going, %s.",
            REVIVER = "Guess you pull your own, too, %s. I owe ya.",
            GHOST = "No need to say anything, %s, I'm on it!",
            FIRESTARTER = "%s... keep the fires to pretend too, would ya?",
        },
        WEBBER =
        {
            GENERIC = "Ah! Well, hey, little guy!",
            ATTACKER = "It's a rather violent chimera.",
            MURDERER = "%s got a taste for human!",
            REVIVER = "You're a helpful fella! Thanks, %s.",
            GHOST = "Well, even if my dad's not here, I guess I shouldn't pretend to not see 'em!",
            FIRESTARTER = "Fire bad, %s! Fire. Bad!",
        },
        WATHGRITHR =
        {
            GENERIC = "Howdy, Ms. Wigfrid!",
            ATTACKER = "Easy, now, missy!",
            MURDERER = "I don't think %s has the fightin' spirit; I think the fightin' spirit has %s!!",
            REVIVER = "Mighty thankful for the assist, %s.",
            GHOST = "A bit too hasty %s. Reminds me of someone I knew.",
            FIRESTARTER = "Maybe our approach should involve less fire, %s.",
        },
        WINONA =
        {
            GENERIC = "Howdy Ms. Winona!",
            ATTACKER = "Watch where you're swinging those tools, %s!",
            MURDERER = "I don't imagine that one was an accident, %s...",
            REVIVER = "Thanks, %s. Dad hates when I slack off.",
            GHOST = "%s needs some help!",
            FIRESTARTER = "Fire's real dangerous in the wrong hands, %s. I'd know.",
        },
        WORTOX =
        {
            GENERIC = "What sorta creature is that?",
            ATTACKER = "%s ain't nothin' but trouble.",
            MURDERER = "I think %s has it out for all of us.",
            REVIVER = "I wouldn't have expected that from you, %s.",
            GHOST = "Well, even if my dad's not here, I guess I shouldn't pretend to not see 'em!",
            FIRESTARTER = "Nothin' but trouble.",
        },
        WORMWOOD =
        {
            GENERIC = "What a strange chimera.",
            ATTACKER = "Not get enough sunlight, %s?",
            MURDERER = "Someone oughta do something about %s!",
            REVIVER = "Much appreciated, %s.",
            GHOST = "I... guese I'll help 'em out.",
            FIRESTARTER = "Now that. That's interesting.",
        },
        WARLY =
        {
            GENERIC = "Howdy Mr. Warly!",
            ATTACKER = "%s needs to practice kitchen safety.",
            MURDERER = "Alright, alright, your cooking's great, %s!",
            REVIVER = "Appreciate it, %s.",
            GHOST = "Guess I gotta help 'em if I wanna eat.",
            FIRESTARTER = "%s is too reckless with that torch.",
        },

        WURT =
        {
            GENERIC = "Plenty of... 'interesting' folk out here, eh, %s?",
            ATTACKER = "Not sure what's gotten into them.",
            MURDERER = "I'm not one to look for trouble, %s.",
            REVIVER = "That's... surprising of you, %s. Thanks.",
            GHOST = "Well, even if my dad's not here, I guess I shouldn't pretend to not see 'em!",
            FIRESTARTER = "You ought to leave the fire business to those in the business, %s!",
        },

        WALTER =
        {
            GENERIC = "Hi there, Walter!",
            ATTACKER = "My dad doesn't tolerate that sort of behavior, %s.",
            MURDERER = "You've gone too far, %s.",
            REVIVER = "Thanks a ton, %s!",
            GHOST = "Don't you worry, I'll help ya out!",
            FIRESTARTER = "Ain't you heard of fire safety, %s?!",
        },

        WANDA =
        {
            GENERIC = "Howdy Ms. Wanda!",
            ATTACKER = "You should go back to a time before you did that.",
            MURDERER = "Time travelers are nothin' but trouble from what I've seen.",
            REVIVER = "Hm. Guess I should thank you, %s.",
            GHOST = "Yeah, yeah, I'll help 'em out.",
            FIRESTARTER = "Forest fire's no joke, %s.",
        },

        WONKEY =
        {
            GENERIC = "Strange, coulda sworn you were someone else...",
            ATTACKER = "It's going bananas!",
            MURDERER = "Someone deal with that monkey!",
            REVIVER = "Oh! Um, thanks.",
            GHOST = "Hah!",
            FIRESTARTER = "You put that torch down right now!",
        },

        MIGRATION_PORTAL =
        {
        --    GENERIC = "If I had any friends, this could take me to them.",
        --    OPEN = "If I step through, will I still be me?",
        --    FULL = "It seems to be popular over there.",
        },
        GLOMMER =
        {
            GENERIC = "Well, no harm in keeping it around.",
            SLEEPING = "Rest well.",
        },
        GLOMMERFLOWER =
        {
            GENERIC = "I never quite seen a flower like this one.",
            DEAD = "It's dead now.",
        },
        GLOMMERWINGS = "Always nice to have a memento.",
        GLOMMERFUEL = "The potency means... *HACK* it's good... stuff!",
        BELL = "Leder was the only one who could reach the one we had back in the village.",
        STATUEGLOMMER =
        {
            GENERIC = "Now who in the world made this?",
            EMPTY = "All busted up.",
        },

        LAVA_POND_ROCK = "All cooled down now.",

		WEBBERSKULL = "Creepy.",
		WORMLIGHT = "I'll eat it!",
		WORMLIGHT_LESSER = "It don't glow as bright.",
		WORM =
		{
		    PLANT = "Ooh, I could use a snack!",
		    DIRT = "Something's down there.",
		    WORM = "Turns out I'm the snack!",
		},
        WORMLIGHT_PLANT = "Ooh, I could use a snack!",
		MOLE =
		{
			HELD = "Howdy!",
			UNDERGROUND = "There's something there.",
			ABOVEGROUND = "Better not take any of my things!",
		},
		MOLEHILL = "A mole lives here.",
		MOLEHAT = "Yeesh. Maybe I don't wanna see in the dark!",

		EEL = "Freshwater eel.",
		EEL_COOKED = "They're mighty tasty. Never got to eat them much, not out in the forest.",
		UNAGI = "Eating fancy wasn't a luxury we could afford, but Dad always treated me when he could.",
		EYETURRET = "Quit yer staring!",
		EYETURRET_ITEM = "Out like a lightbulb.",
		MINOTAURHORN = "I never seen a horn that big before!",
		MINOTAURCHEST = "Bet it's holding something useful!",
		THULECITE_PIECES = "Little orange pebbles.",
		POND_ALGAE = "It's not very tasty, you know.",
		GREENSTAFF = "Maybe I could build a nice little home with it!",
		GIFT = "Someone leave a present lying around?",
        GIFTWRAP = "You'll be needing this when you wanna gift a pretty girl a cool rock you saw.",
		POTTEDFERN = "I reckon it don't like being trapped like that.",
        SUCCULENT_POTTED = "Do plants get uncomfy inside pots?",
		SUCCULENT_PLANT = "I never seen this sorta plant before.",
		SUCCULENT_PICKED = "Smells... planty.",
		SENTRYWARD = "Some sorta gadget. No, more like a gizmo! Or maybe it's a doodad.",
        TOWNPORTAL =
        {
			GENERIC = "It's magic.",
			ACTIVE = "I wonder if the Twins' powers work like it.",
		},
        TOWNPORTALTALISMAN =
        {
			GENERIC = "It's magic.",
			ACTIVE = "I'll come through the other side in one piece, right?",
		},
        WETPAPER = "Paper and water don't get along too well.",
        WETPOUCH = "It's all soggy.",
        MOONROCK_PIECES = "It comes from somewhere real far away.",
        MOONBASE =
        {
            GENERIC = "Looks like it holds somethin.",
            BROKEN = "It's not lookin' too good.",
            STAFFED = "I guess I'll have to wait and see.",
            WRONGSTAFF = "Naw, it doesn't fit quite right.",
            MOONSTAFF = "Whoa. The moon did that?",
        },
        MOONDIAL =
        {
			GENERIC = "The moon has different phases! I wonder how it manages to change shape so easily.",
			NIGHT_NEW = "Ain't no moon there.",
			NIGHT_WAX = "Moon's growing",
			NIGHT_FULL = "Moon's grown up!",
			NIGHT_WANE = "It's shrinking.",
			CAVE = "Now how in the world would I see the moon down here?",
			WEREBEAVER = "only_used_by_woodie", --woodie specific
			GLASSED = "The moon... is alive?",
        },
		THULECITE = "I never seen a rock quite like it.",
		ARMORRUINS = "I'd expect it to be heavier for how sturdy it is!",
		ARMORSKELETON = "Wearin' your ribs on the outside.",
		SKELETONHAT = "I don't like it one bit.",
		RUINS_BAT = "Oh this'll get the job done.",
		RUINSHAT = "Bet the folks that lived up in the castle had somethin' like this!",
		NIGHTMARE_TIMEPIECE =
		{
            CALM = "It's sleeping.",
            WARN = "Something's waking up.",
            WAXING = "Brace yourselves!",
            STEADY = "Just a bit longer...",
            WANING = "It's getting weaker.",
            DAWN = "It's over.",
            NOMAGIC = "Ain't nothin' there.",
		},
		BISHOP_NIGHTMARE = "It's seen better days.",
		ROOK_NIGHTMARE = "How long have you been down here for?",
		KNIGHT_NIGHTMARE = "Time wasn't kind to you.",
		MINOTAUR = "It's gonna crush me the first chance it gets!",
		SPIDER_DROPPER = "Territorial little pest!",
		NIGHTMARELIGHT = "What ever happened to a good old fashioned candle?",
		NIGHTSTICK = "Multi-purpose! That's fancy.",
		GREENGEM = "Green's a pretty color..",
		MULTITOOL_AXE_PICKAXE = "It smashes, it chops, it bashes: a boy's dream come true!",
		ORANGESTAFF = "Now I'm no couch potato... but sometimes walkin' gets boring!",
		YELLOWAMULET = "It's real warm.",
		GREENAMULET = "I wonder if Dad would like something like this for work.",
		SLURPERPELT = "It's all itchy.",

		SLURPER = "Is there even a critter under all that hair??",
		SLURPER_PELT = "It's itchy.",
		ARMORSLURPER = "I feel more full with it on, somehow.",
		ORANGEAMULET = "It'd make Tess' day. Literally!",
		YELLOWSTAFF = "Magic ain't all that bad.",
		YELLOWGEM = "It's full of energy.",
		ORANGEGEM = "Orange is just a less cool red. Sorry Claus!",
        OPALSTAFF = "It's so cold!",
        OPALPRECIOUSGEM = "That's a pretty cool gem.",
        TELEBASE =
		{
			VALID = "Rarin' to go!",
			GEMS = "Outta fuel.",
		},
		GEMSOCKET =
		{
			VALID = "It's holding a gem.",
			GEMS = "Empty.",
		},
		STAFFLIGHT = "It'll burn you good if ya get too close.",
        STAFFCOLDLIGHT = "Colder than a Pigmask's heart.",

        ANCIENT_ALTAR = "Reminds me of those old Osohe folk.",

        ANCIENT_ALTAR_BROKEN = "Looks like it's not seen any use in a real long time.",

        ANCIENT_STATUE = "That thing gives me the creeps.",

        LICHEN = "What a strange growth.",
		CUTLICHEN = "It's... edible.",

		CAVE_BANANA = "Never had banana before.",
		CAVE_BANANA_COOKED = "It's alright.",
		CAVE_BANANA_TREE = "Didn't know plants could grow without sunlight.",
		ROCKY = "Gentle giants.",

		COMPASS =
		{
			GENERIC="Which way am I facing?",
			N = "North.",
			S = "South.",
			E = "East.",
			W = "West.",
			NE = "Northeast.",
			SE = "Southeast.",
			NW = "Northwest.",
			SW = "Southwest.",
		},

        HOUNDSTOOTH = "Imagine getting bit by that bad boy!",
        ARMORSNURTLESHELL = "I can't say I've ever wanted to wear one.",
        BAT = "He's sizin' me up!",
        BATBAT = "Anything's a weapon if you swing hard enough.",
        BATWING = "Mine now!",
        BATWING_COOKED = "Wonder if it tastes like a chicken wing.",
        BATCAVE = "Home to bats.",
        BEDROLL_FURRY = "I'd never wanna get up if I had this back home!",
        BUNNYMAN = "Cuddly fella.",
        FLOWER_CAVE = "It looks like it came straight outta fairytale.",
        GUANO = "Bat shit. Dunno how else to put it.",
        LANTERN = "It's mighty useful out here.",
        LIGHTBULB = "A real bright light!",
        MANRABBIT_TAIL = "Fluffy. How 'bout that.",
        MUSHROOMHAT = "Whatever suits your fancy, I guess.",
        MUSHROOM_LIGHT2 =
        {
            ON = "Ooh, that's fancy.",
            OFF = "Off.",
            BURNT = "Whoops.",
        },
        MUSHROOM_LIGHT =
        {
            ON = "Not bad.",
            OFF = "Not up to a whole lot.",
            BURNT = "Whoops.",
        },
        SLEEPBOMB = "Someone's in for a real sleepy surprise.",
        MUSHROOMBOMB = "Them spores'll kill you good!",
        SHROOM_SKIN = "Ooooh, shiny.",
        TOADSTOOL_CAP =
        {
            EMPTY = "Huh.",
            INGROUND = "Something there?",
            GENERIC = "This shroom's too tough for me to yank out. I'll need to cut it!",
        },
        TOADSTOOL =
        {
            GENERIC = "Guess it didn't like that!",
            RAGE = "Someone's got an attitude!",
        },
        MUSHROOMSPROUT =
        {
            GENERIC = "Ain't that a mushroom.",
            BURNT = "Ain't nothing now.",
        },
        MUSHTREE_TALL =
        {
            GENERIC = "I'll tell you one thing: mushrooms back home never got this big!",
            BLOOM = "They're producing spores.",
            ACIDCOVERED = "It don't look right...",
        },
        MUSHTREE_MEDIUM =
        {
            GENERIC = "It's no normal mushroom.",
            BLOOM = "The air is rank with spores.",
            ACIDCOVERED = "It don't look right...",
        },
        MUSHTREE_SMALL =
        {
            GENERIC = "What in the fantasy?",
            BLOOM = "Spores everywhere.",
            ACIDCOVERED = "It don't look right...",
        },
        MUSHTREE_TALL_WEBBED =
        {
            GENERIC = "Guess them spidey critters really like this one.",
            ACIDCOVERED = "It don't look right...",
        },
        SPORE_TALL =
        {
            GENERIC = "That's a huge spore!",
            HELD = "Got it!",
        },
        SPORE_MEDIUM =
        {
            GENERIC = "Big spore from a big mushroom.",
            HELD = "Got it!",
        },
        SPORE_SMALL =
        {
            GENERIC = "I'll try not to choke on it.",
            HELD = "Got it!",
        },
        RABBITHOUSE =
        {
            GENERIC = "What a unique design for a home!",
            BURNT = "Someone wasn't careful.",
        },
        SLURTLE = "Whoa, cool.",
        SLURTLE_SHELLPIECES = "Remains of a turtle shell.",
        SLURTLEHAT = "Now my brain is safe!",
        SLURTLEHOLE = "Even critters need a home!",
        SLURTLESLIME = "Heheh, get slimed!",
        SNURTLE = "Whoa, cool.",
        SPIDER_HIDER = "Aren't you tricky little spider!",
        SPIDER_SPITTER = "Watch where you're spittin,' vermit!",
        SPIDERHOLE = "Spiders live here.",
        SPIDERHOLE_ROCK = "Spiders live here.",
        STALAGMITE = "Cave rock.",
        STALAGMITE_TALL = "Big 'ol cave rock.",

        TURF_CARPETFLOOR = "Seems like you'd want this indoors instead of out.",
        TURF_CHECKERFLOOR = "Seems like you'd want this inddors instead of out.",
        TURF_DIRT = "Dirt. Real men's flooring.",
        TURF_FOREST = "Makes me feel at home.",
        TURF_GRASS = "Nothin' beats fresh grash.",
        TURF_MARSH = "It's all moist.",
        TURF_METEOR = "It came from space.",
        TURF_PEBBLEBEACH = "Wonder if it's hiding any neat rocks.",
        TURF_ROAD = "Cobblestone.",
        TURF_ROCKY = "Lotsa rocks.",
        TURF_SAVANNA = "Smells like a barn.",
        TURF_WOODFLOOR = "The carpentry needs some work, honestly.",

		TURF_CAVE="Lotsa rocks.",
		TURF_FUNGUS="Jeez that smells!",
		TURF_FUNGUS_MOON = "Yeesh.",
		TURF_ARCHIVE = "Someone was feeling real fancy.",
        TURF_VAULT = "Mine now.",
        TURF_VENT = "Turf.",
		TURF_SINKHOLE= "Rocky.",
		TURF_UNDERROCK= "Rocky.",
		TURF_MUD= "Rainys days and working the charcoal piles would leave ya real muddy.",

		TURF_DECIDUOUS = "Fall has fallen!",
		TURF_SANDY = "Sand'll get places ya don't want it, careful!",
		TURF_BADLANDS = "Coarse.",
		TURF_DESERTDIRT = "Real coarse.",
		TURF_FUNGUS_GREEN = "Shroomy.",
		TURF_FUNGUS_RED = "Shroomy.",
		TURF_DRAGONFLY = "This'll be useful for my charcoal piles!",

        TURF_SHELLBEACH = "Wonder if any cool sea shells are hiding in it.",

		TURF_RUINSBRICK = "Fancy old bricks.",
		TURF_RUINSBRICK_GLOW = "Fancy old bricks.",
		TURF_RUINSTILES = "Fancy old bricks.",
		TURF_RUINSTILES_GLOW = "Fancy old bricks.",
		TURF_RUINSTRIM = "Fancy old bricks.",
		TURF_RUINSTRIM_GLOW = "Fancy old bricks.",

        TURF_MONKEY_GROUND = "Sand can be a real hassle sometimes.",

        TURF_CARPETFLOOR2 = "The elements can't be too kind to it.",
        TURF_MOSAIC_GREY = "The elements can't be too kind to it.",
        TURF_MOSAIC_RED = "The elements can't be too kind to it.",
        TURF_MOSAIC_BLUE = "The elements can't be too kind to it.",

        TURF_BEARD_RUG = "What in the world are we even doing anymore.",

		POWCAKE = "Is that even food?",
        CAVE_ENTRANCE = "There's something under this rock.",
        CAVE_ENTRANCE_RUINS = "There's something under this rock.",

       	CAVE_ENTRANCE_OPEN =
        {
            GENERIC = "Best leave it be.",
            OPEN = "I love caving!",
            FULL = "Too crowded.",
        },
        CAVE_EXIT =
        {
            GENERIC = "I think I'll stay down here.",
            OPEN = "I need some fresh air!",
            FULL = "I can't do that.",
        },

		MAXWELLPHONOGRAPH = "What a silly tune.",--single player
		BOOMERANG = "Ya boom, ya rang! Easy as pie!",
		PIGGUARD = "He ain't too friendly.",
		ABIGAIL =
		{
            LEVEL1 =
            {
                "Aren't ya precious?",
                "Aren't ya precious?",
            },
            LEVEL2 =
            {
                "Aren't ya precious?",
                "Aren't ya precious?",
            },
            LEVEL3 =
            {
                "Aren't ya precious?",
                "Aren't ya precious?",
            },
        },

		ADVENTURE_PORTAL = "A suspicious portal? Count me in!",
		AMULET = "It'll save my life one of these days.",
		ANIMAL_TRACK = "A big critter's footprint",
		ARMORGRASS = "You'd probably be safer buck-naked than in this buncha dried up grass.",
		ARMORMARBLE = "It works, but I can barely move in it.",
		ARMORWOOD = "Splinters are worth it if it keeps me in one piece.",
		ARMOR_SANITY = "It works, but at what cost?",
		ASH =
		{
			GENERIC = "Nothin's left.",
			REMAINS_GLOMMERFLOWER = "It didn't survive that, huh.",
			REMAINS_EYE_BONE = "It didn't survive that, huh.",
			REMAINS_THINGIE = "Guess I should be more careful.",
		},
		AXE = "Axes never do ya wrong!",
		BABYBEEFALO =
		{
			GENERIC = "Hey little fella!",
		    SLEEPING = "Out like a light.",
        },
        BUNDLE = "Now I can take so much more on the go!",
        BUNDLEWRAP = "In case I gotta bundle up some supplies.",
		BACKPACK = "For when my pockets don't got enough pockets.",
		BACONEGGS = "Ain't nothing special, but it's a good start to any day!",
		BANDAGE = "The stinging means a job well done.",
		BASALT = "Naw, not even a dent!", --removed
		BEARDHAIR = "Nasty.",
		BEARGER = "Big guy gets real hungry.",
		BEARGERVEST = "Winter's no problem with this!",
		ICEPACK = "Now my lunch is preserved!",
		BEARGER_FUR = "It's real nice feelin.'",
		BEDROLL_STRAW = "Sleeping under the stars sounds real nice.",
		BEEQUEEN = "That'll do more than sting!",
		BEEQUEENHIVE =
		{
			GENERIC = "It's all drenched in honey.",
			GROWING = "Whoa.",
		},
        BEEQUEENHIVEGROWN = "It'd be best not to upset those bees.",
        BEEGUARD = "Well I'll bee!",
        HIVEHAT = "For bee royalty.",
        MINISIGN =
        {
            GENERIC = "Let's see...",
            UNDRAWN = "An empty slate.",
        },
        MINISIGN_ITEM = "Gotta find somewhere good for it.",
		BEE =
		{
			GENERIC = "A little bee.",
			HELD = "No need to be stinging me, now.",
		},
		BEEBOX =
		{
			READY = "I'm gonna be eating good!",
			FULLHONEY = "I'm gonna be eating good!",
			GENERIC = "Hope y'all like the little setup I gotcha. Now let's get some honey!",
			NOHONEY = "Nothin' to take..",
			SOMEHONEY = "The bees are getting busy!",
			BURNT = "Aw, man...",
		},
		MUSHROOM_FARM =
		{
			STUFFED = "It can't fit anymore mushrooms!",
			LOTS = "They're growing like no tomorrow!",
			SOME = "They're growing!",
			EMPTY = "Now I just something to plant.",
			ROTTEN = "That log's got nothing left to give.",
			BURNT = "Oops.",
			SNOWCOVERED = "It's too cold to grow anything.",
		},
		BEEFALO =
		{
			FOLLOWER = "Come along, now.",
			GENERIC = "A big hairy fella.",
			NAKED = "Not so hairy anymore!",
			SLEEPING = "Sleeping well?",
            --Domesticated states:
            DOMESTICATED = "Much more manageable now!",
            ORNERY = "Built and raised tough. Like me!",
            RIDER = "Fast fella we got!",
            PUDGY = "This guy's too spoiled.",
            MYPARTNER = "My very own mount!",
            DEAD = "Sorry to see ya go.",
            DEAD_MYPARTNER = "You did well, pal.",
		},

		BEEFALOHAT = "It's nice and warm!",
		BEEFALOWOOL = "It's real thick.",
		BEEHAT = "Real useful for all things beekeeping!",
        BEESWAX = "That's neat.",
		BEEHIVE = "Home to busy bees.",
		BEEMINE = "A real nasty surprise is inside.",
		BEEMINE_MAXWELL = "Bottled mosquito rage!",--removed
		BERRIES = "We weren't supposed to eat the berries that looked these back in the forest.",
		BERRIES_COOKED = "Now my fingers are all sticky.",
        BERRIES_JUICY = "Packed with flavor.",
        BERRIES_JUICY_COOKED = "They melt in my mouth!",
		BERRYBUSH =
		{
			BARREN = "It ain't got no nutrients.",
			WITHERED = "This drought's killing the both of us.",
			GENERIC = "Some wild berries.",
			PICKED = "Nothin' but a bush now.",
			DISEASED = "It's sick.",--removed
			DISEASING = "Something's wrong with it.",--removed
			BURNING = "Hope the fire contains itself!",
		},
		BERRYBUSH_JUICY =
		{
			BARREN = "It ain't got no nutrients.",
			WITHERED = "The sun's gone and dried it all up!",
			GENERIC = "I should leave them there until it's time to eat.",
			PICKED = "Betcha could hide a body in there.",
			DISEASED = "It's sick.",--removed
			DISEASING = "Something's wrong with it.",--removed
			BURNING = "Hope the fire contains itself!",
		},
		BIGFOOT = "That is one biiig foot.",--removed
		BIRDCAGE =
		{
			GENERIC = "An empty cage.",
			OCCUPIED = "Howdy.",
			SLEEPING = "Out like a light.",
			HUNGRY = "Hungry, huh?",
			STARVING = "He needs food!",
			DEAD = "He's absolutely dead.",
			SKELETON = "Maybe I should clean that up.",
		},
		BIRDTRAP = "That'll show some bird what-for!",
		CAVE_BANANA_BURNT = "Oops.",
		BIRD_EGG = "An egg.",
		BIRD_EGG_COOKED = "Can't go wrong with a runny egg!",
		BISHOP = "He ain't fond of company.",
		BLOWDART_FIRE = "Sting and burn!",
		BLOWDART_SLEEP = "One poke and you'll be out like a rock!",
		BLOWDART_PIPE = "This'll put someone in a woooorld of hurt.",
		BLOWDART_YELLOW = "Whoa, this'll get the job done for sure!",
		BLUEAMULET = "It'll keep anything cold!",
		BLUEGEM = "It's cold to the touch.",
		BLUEPRINT =
		{
            COMMON = "Some plans?",
            RARE = "Someone's cooking something up!",
        },
        SKETCH = "Some art or somethin.'",
		COOKINGRECIPECARD =
		{
			GENERIC = "I was never that good at readin.'",
		},
		BLUE_CAP = "I'll hold on to it.",
		BLUE_CAP_COOKED = "Smells funky.",
		BLUE_MUSHROOM =
		{
			GENERIC = "Ah, shy little guy only pops up at night!",
			INGROUND = "It's too dug in for me to pick.",
			PICKED = "Maybe something will take its place.",
		},
		BOARDS = "For construction. Or whapping someone on the head real good.",
		BONESHARD = "Small 'lil bones.",
		BONESTEW = "Now that's a proper meal!",
		BUGNET = "It'll catch more than bugs with the right mindset.",
		BUSHHAT = "It's me. I'm the body.",
		BUTTER = "Hey, I thought you came from cows!",
		BUTTERFLY =
		{
			GENERIC = "A winged beast.",
			HELD = "I have tamed it!",
		},
		BUTTERFLYMUFFIN = "The little insecty-bits gives it personality.",
		BUTTERFLYWINGS = "I should collect these.",
		BUZZARD = "Always leeching off others' hard work.",

		SHADOWDIGGER = "Them shadow's not the only thing I see right through.",
        SHADOWDANCER = "It's busting a move!",

		CACTUS =
		{
			GENERIC = "They're no fun to be poked with.",
			PICKED = "Ain't there no more.",
		},
		CACTUS_MEAT_COOKED = "Now it's safe to eat!",
		CACTUS_MEAT = "Watch where you leave it!",
		CACTUS_FLOWER = "Not bad, huh.",

		COLDFIRE =
		{
			EMBERS = "Lost all its strength.",
			GENERIC = "Chilly!",
			HIGH = "Whoa, too much fire!",
			LOW = "It's getting pretty weak.",
			NORMAL = "Chilly!",
			OUT = "Fire's all done.",
		},
		CAMPFIRE =
		{
			EMBERS = "Lost all its strength.",
			GENERIC = "Nothing quite like relaxin' by a campfire.",
			HIGH = "Whoa, too much fire!",
			LOW = "It's getting pretty weak..",
			NORMAL = "Nothing quite like relaxin' by a campfire.",
			OUT = "Nothin' but ashes now.",
		},
		CANE = "Helps ya keep your footing outdoors.",
		CATCOON = "It's got a real attitude.",
		CATCOONDEN =
		{
			GENERIC = "Someone lives here.",
			EMPTY = "Guess they checked out.",
		},
		CATCOONHAT = "Almost like the one I got back home!",
		COONTAIL = "Not bad.",
		CARROT = "They're real good for ya.",
		CARROT_COOKED = "Mmmm.",
		CARROT_PLANTED = "It's a wild carrot!",
		CARROT_SEEDS = "Some seeds I got.",
		CARTOGRAPHYDESK =
		{
			GENERIC = "Smart people stuff.",
			BURNING = "Whoops.",
			BURNT = "Well it's doing anythin' now.",
		},
		WATERMELON_SEEDS = "Some seeds I got.",
		CAVE_FERN = "Planty plant plant mcplant.",
		CHARCOAL = {
            "It'll burn hot enough to melt iron. Where would civilization be without it?",
            "My dad's dad made charcoal, and my son's son will too. It's in our blood!",
            "Take everything from wood until there ain't nothin' but its base element.",
            "Charcoal might look humble, but it's done a lotta work for humans over the years.",
			"Yer lookin' at the foundation of the iron age.",
        },
        CHESSPIECE_PAWN = "Ain't ever had time for that sorta board game.",
        CHESSPIECE_ROOK =
        {
            GENERIC = "Some sorta board game junk.",
            STRUGGLE = "Huh?",
        },
        CHESSPIECE_KNIGHT =
        {
            GENERIC = "Now's not the time for games.",
            STRUGGLE = "Huh?",
        },
        CHESSPIECE_BISHOP =
        {
            GENERIC = "It's a stone bishop.",
            STRUGGLE = "Huh?",
        },
        CHESSPIECE_MUSE = "Some sorta statue.",
        CHESSPIECE_FORMAL = "We never had this sort of decor back home.",
        CHESSPIECE_HORNUCOPIA = "Ain't my type of art.",
        CHESSPIECE_PIPE = "It's a statue.",
        CHESSPIECE_DEERCLOPS = "Naw.",
        CHESSPIECE_BEARGER = "I got better things to do than decorate!",
        CHESSPIECE_MOOSEGOOSE =
        {
            "Nothin' interesting about it.",
        },
        CHESSPIECE_DRAGONFLY = "That son of a gun had it comin.'",
		CHESSPIECE_MINOTAUR = "Some statue.",
        CHESSPIECE_BUTTERFLY = "I got nothing to say about it.",
        CHESSPIECE_ANCHOR = "With some refashioning, it might work as a real anchor.",
        CHESSPIECE_MOON = "I'm not too into decor.",
        CHESSPIECE_CARRAT = "Horrible.",
        CHESSPIECE_MALBATROSS = "Ain't my type of art.",
        CHESSPIECE_CRABKING = "Some sorta statue.",
        CHESSPIECE_TOADSTOOL = "Nothing to really say about it.",
        CHESSPIECE_STALKER = "Weird.",
        CHESSPIECE_KLAUS = "We never had this sort of decor back home.",
        CHESSPIECE_BEEQUEEN = "Yeah, it's a statue.",
        CHESSPIECE_ANTLION = "Naw.",
        CHESSPIECE_BEEFALO = "A statue.",
		CHESSPIECE_KITCOON = "I got better things to do than decorate!",
		CHESSPIECE_CATCOON = "Well I got nothing to say.",
        CHESSPIECE_MANRABBIT = "Ain't much to do with it.",
        CHESSPIECE_GUARDIANPHASE3 = "It's a statue.",
        CHESSPIECE_EYEOFTERROR = "I don't like it one bit.",
        CHESSPIECE_TWINSOFTERROR = "Ain't hurtin' no one.",
        CHESSPIECE_DAYWALKER = "It ain't my type of art.",
        CHESSPIECE_DAYWALKER2 = "It's a statue",
        CHESSPIECE_DEERCLOPS_MUTATED = "We never had this sort decor back home.",
        CHESSPIECE_WARG_MUTATED = "Weird.",
        CHESSPIECE_BEARGER_MUTATED = "I got nothin.'",
        CHESSPIECE_SHARKBOI = "Some statue.",
        CHESSPIECE_WORMBOSS = "I got better things to do than decorate!",
        CHESSPIECE_YOTS = "Well, that's a statue.",
        CHESSPIECE_WAGBOSS_ROBOT = "Horrible.",
        CHESSPIECE_WAGBOSS_LUNAR = "I ain't into it.",

        CHESSJUNK1 = "Buncha junk.",
        CHESSJUNK2 = "Nothing but debris.",
        CHESSJUNK3 = "Some piles of junk.",
		CHESTER = "You wanna hold on to my stuff for me?",
		CHESTER_EYEBONE =
		{
			GENERIC = "Quit starin.'",
			WAITING = "Night night!",
		},
		COOKEDMANDRAKE = "Tastes like sleep.",
		COOKEDMEAT = "Not a bad piece a meat.",
		COOKEDMONSTERMEAT = "It still looks bad to eat.",
		COOKEDSMALLMEAT = "Cooked and ready to eat!",
		COOKPOT =
		{
			COOKING_LONG = "Good cookin' takes time.",
			COOKING_SHORT = "I smell something yummy!",
			DONE = "Just in time!",
			EMPTY = "Ready for the next meal.",
			BURNT = "Well dang it.",
		},
		CORN = "A little corn on the side never hurt no one.",
		CORN_COOKED = "It popped!",
		CORN_SEEDS = "Some seeds I got.",
        CANARY =
		{
			GENERIC = "I'm not bird expert, but it looks like a special one.",
			HELD = "I'll hold onto ya for now.",
		},
        CANARY_POISONED = "You ain't lookin' too good.",

		CRITTERLAB = "Howdy in there!",
        CRITTER_GLOMLING = "Ain't you an adorably ugly little critter!",
        CRITTER_DRAGONLING = "You can stay with me at that size.",
		CRITTER_LAMB = "Wonder if the Twins would like ya.",
        CRITTER_PUPPY = "Cool little guy.",
        CRITTER_KITTEN = "Come along if ya want.",
        CRITTER_PERDLING = "Howdy!",
		CRITTER_LUNARMOTHLING = "So long as you ain't harming none.",
		CRITTER_BULBIN = "It's cute in an ugly way.",

		CROW =
		{
			GENERIC = "A black bird.",
			HELD = "Don't give me that look!",
		},
		CUTGRASS = "Buncha grass I got.",
		CUTREEDS = "It's gotta be something I can do with it.",
		CUTSTONE = "It's less aerodynamic like this.",
		DEADLYFEAST = "A most potent dish.", --unimplemented
		DEER =
		{
			GENERIC = "Can it see?",
			ANTLER = "Nice antler.",
		},
        DEER_ANTLER = "Hey! Ya dropped somethin!'",
        DEER_GEMMED = "I don't think it likes being used like that.",
		DEERCLOPS = "Guuuuhhhh WHAT!!?",
		DEERCLOPS_EYEBALL = "Guess it's mine now.",
		EYEBRELLAHAT =	"Dad did say never complain about the job getting done...",
		DEPLETED_GRASS =
		{
			GENERIC = "Nothing's left.",
		},
        GOGGLESHAT = "They make me look too nerdy.",
        DESERTHAT = "Ain't my thing..",
        ANTLIONHAT = "It'll do.",
		DEVTOOL = "It smells of bacon!",
		DEVTOOL_NODEV = "I'm not strong enough to wield it.",
		DIRTPILE = "It's a pile of dirt... or IS it?",
		DIVININGROD =
		{
			COLD = "The signal is very faint.", --singleplayer
			GENERIC = "It's some kind of homing device.", --singleplayer
			HOT = "This thing's going crazy!", --singleplayer
			WARM = "I'm headed in the right direction.", --singleplayer
			WARMER = "Must be getting pretty close.", --singleplayer
		},
		DIVININGRODBASE =
		{
			GENERIC = "I wonder what it does.", --singleplayer
			READY = "It looks like it needs a large key.", --singleplayer
			UNLOCKED = "Now the machine can work!", --singleplayer
		},
		DIVININGRODSTART = "That rod looks useful!", --singleplayer
		DRAGONFLY = "I'll mind my business if it minds its.",
		ARMORDRAGONFLY = "That's some pretty cool piece of armor!",
		DRAGON_SCALES = "Got its scales!",
		DRAGONFLYCHEST =
		{
			GENERIC = "Now my stuff is even more safe!",
            UPGRADED_STACKSIZE = "I could hide away lots of goodies!",
		},
		DRAGONFLYFURNACE =
		{
			HAMMERED = "I messed something up.",
			GENERIC = "It's a furnace, alright!", --no gems
			NORMAL = "It's a furnace, alright!", --one gem
			HIGH = "It's a furnace, alright!", --two gems
		},

        HUTCH = "Little guy's holding my stuff.",
        HUTCH_FISHBOWL =
        {
            GENERIC = "Ya comfy in there?",
            WAITING = "Just sleeping, I'm sure.",
        },
		LAVASPIT =
		{
			HOT = "Not cool!",
			COOL = "Okay maybe a little cool.",
		},
		LAVA_POND = "That'll burn ya right up.",
		LAVAE = "Back, stay back!",
		LAVAE_COCOON = "I warned ya.",
		LAVAE_PET =
		{
			STARVING = "I'll get ya somethin.",
			HUNGRY = "Ya lke charcoal?",
			CONTENT = "Glad your spirits are up!",
			GENERIC = "Seems more friendly than the others.",
		},
		LAVAE_EGG =
		{
			GENERIC = "It's an egg.",
		},
		LAVAE_EGG_CRACKED =
		{
			COLD = "It needs heat!",
			COMFY = "I never thought I would see a happy egg.",
		},
		LAVAE_TOOTH = "Ya got your egg tooth?",

		DRAGONFRUIT = "I never seena  fruit like this before.",
		DRAGONFRUIT_COOKED = "Is it edible?",
		DRAGONFRUIT_SEEDS = "Some seeds I got.",
		DRAGONPIE = "Mmmm, I'll never turn down some pie.",
		DRUMSTICK = "A nice piece of leg.",
		DRUMSTICK_COOKED = "Eating like a king tonight!",
		DUG_BERRYBUSH = "I should plant it somewhere.",
		DUG_BERRYBUSH_JUICY = "I should plant it somewhere.",
		DUG_GRASS = "I should plant it somewhere",
		DUG_MARSH_BUSH = "I should plant it somewhere.",
		DUG_SAPLING = "I should plant it somewhere.",
		DURIAN = "Yuck.",
		DURIAN_COOKED = "Not even Dad could make me eat this!",
		DURIAN_SEEDS = "Some seeds I got.",
		EARMUFFSHAT = "You wouldn't want frostbite on your ears.",
		EGGPLANT = "What a funny veggie.",
		EGGPLANT_COOKED = "It probably tastes fine..",
		EGGPLANT_SEEDS = "Some seeds I got.",

		ENDTABLE =
		{
			BURNT = "Nothing now.",
			GENERIC = "Decor? Out here?",
			EMPTY = "I guess it could hold somethin.'",
			WILTED = "Dead.",
			FRESHLIGHT = "It's doing something, at least.",
			OLDLIGHT = "The light's going bad.", -- will be wilted soon, light radius will be very small at this point
		},
		DECIDUOUSTREE =
		{
			BURNING = "That's... not how you char wood.",
			BURNT = "What a shame.",
			CHOPPED = "Nothing Fuel couldn't handle!",
			POISON = "AH! It's alive, and it's angry!",
			GENERIC = "It's all leafy. Most of the time.",
		},
		ACORN = "Ready to become a new tree.",
        ACORN_SAPLING = "Grow big and strong!",
		ACORN_COOKED = "Always a nice snack.",
		BIRCHNUTDRAKE = "Back off!",
		EVERGREEN =
		{
			BURNING = "Not again!!",
			BURNT = "What a shame.",
			CHOPPED = "Nothing Fuel couldn't handle!",
			GENERIC = "Fresh lumber.",
		},
		EVERGREEN_SPARSE =
		{
			BURNING = "Not again!!",
			BURNT = "What a shame.",
			CHOPPED = "Nothing Fuel couldn't handle!",
			GENERIC = "Lumber's lumber.",
		},
		TWIGGYTREE =
		{
			BURNING = "That's not great.",
			BURNT = "What a shame.",
			CHOPPED = "Take that, nature!",
			GENERIC = "A skinny tree.",
			DISEASED = "It looks sick. More so than usual.", --unimplemented
		},
		TWIGGY_NUT_SAPLING = "It'll grow up strong.",
        TWIGGY_OLD = "It's looking pretty old.",
		TWIGGY_NUT = "Ready to become a tree!",
		EYEPLANT = "You quit your staring!",
		INSPECTSELF = "Looking alright, Fuel.",
		FARMPLOT =
		{
			GENERIC = "Was never a farm, but I'll give it a shot!",
			GROWING = "Looks like they're growing!",
			NEEDSFERTILIZER = "Ain't getting what they need.",
			BURNT = "Yikes.",
        },
		FEATHERHAT = "It's a little goofy looking.",
		FEATHER_CROW = "Black as night.",
		FEATHER_ROBIN = "Red feather from a red bird.",
		FEATHER_ROBIN_WINTER = "It's easy to lose in all the snow.",
		FEATHER_CANARY = "Yellow as- nevermind.",
		FEATHERPENCIL = "It tickles my nose!",
        COOKBOOK = "Cook book? Real cookin' comes from the heart. That's what Dad says.\n...Dad's not a good cook.",
		FEM_PUPPET = "She's trapped!", --single player
		FIREFLIES =
		{
			GENERIC = "They always make the night feel so special.",
			HELD = "I'll take them with me.",
		},
		FIREHOUND = "It's burning mad!",
		FIREPIT =
		{
			EMBERS = "Lost all its strength.",
			GENERIC = "Nothing quite like relaxin' by a campfire.",
			HIGH = "Hotter than a charcoal pile!",
			LOW = "Not much more strength.",
			NORMAL = "Nothing quite like relaxin' by a campfire.",
			OUT = "Nothin' left.",
		},
		COLDFIREPIT =
		{
			EMBERS = "Lost all its strength.",
			GENERIC = "I'm none the wiser as for how it works, but it works!",
			HIGH = "It's so bright!",
			LOW = "Not much more strength.",
			NORMAL = "I'm none the wiser as for how it works, but it works!",
			OUT = "Imagine if we had this bad boy for lunch breaks at work!",
		},
		FIRESTAFF = "If only I could have had this back home instead of climbing that charcoal pile every single time...",
		FIRESUPPRESSOR =
		{
			ON = "This might have saved my house back in the day!",
			OFF = "Won't be saving any forests like that.",
			LOWFUEL = "It needs fuel. Don't even go there.",
		},

		FISH = "A freshwater fish.",
		FISHINGROD = "Real men use their hands.",
		FISHSTICKS = "What a funny way to serve fish.",
		FISHTACOS = "Well ain't that somethin'.",
		FISH_COOKED = "Fish is real yummy.",
		FLINT = "A family friend.",
		FLOWER =
		{
            GENERIC = "Your usual flower.",
            ROSE = "The thorns are poetic, or some crap.",
        },
        FLOWER_WITHERED = "It's dying.",
		FLOWERHAT = "What if Angie sees me in it? I can't be seen as girly in front of a girl!",
		FLOWER_EVIL = "Some things got a certain somethin' about 'em...",
		FOLIAGE = "Buncha foliage.",
		FOOTBALLHAT = "For when you're gonna be hittin' your head a whole lot.",
        FOSSIL_PIECE = "Buncha bones.",
        FOSSIL_STALKER =
        {
			GENERIC = "It's like a puzzle.",
			FUNNY = "Is it supposed to be so silly?",
			COMPLETE = "Whoa, neat.",
        },
        STALKER = "Whaaaaaat!!",
        STALKER_ATRIUM = "This is what I get for messin' with stuff I got no part in!!",
        STALKER_MINION = "Back, back! Stay back!",
        THURIBLE = "Creepy.",
        ATRIUM_OVERGROWTH = "What in the world have I gotten myself into now...",
		FROG =
		{
			DEAD = "Maybe it's for the best.",
			GENERIC = "These frogs don't like company, seems like.",
			SLEEPING = "Out cold.",
		},
		FROGGLEBUNWICH = "It wouldn't be my first choice.",
		FROGLEGS = "Cool.",
		FROGLEGS_COOKED = "Maybe it tastes like a chicken leg.",
		FRUITMEDLEY = "Needs meat.",
		FURTUFT = "A small buncha fur.",
		GEARS = "Looks like somethin' Bronson would use.",
		GHOST = "I hear Osohe Castle is packed with these fellows.",
		GOLDENAXE = "It ain't the family axe, but it ain't a bad axe.",
		GOLDENPICKAXE = "For making lotsa smaller rocks!",
		GOLDENPITCHFORK = "I'll be needing some turf for my charcoal piles.",
		GOLDENSHOVEL = "I always hated shovel duty.",
		GOLDNUGGET = "That weird guy that tried selling dad them boxes liked this stuff. He smelled!",
		GRASS =
		{
			BARREN = "Won't grow with no nutrients.",
			WITHERED = "The sun ain't being so kind, huh?",
			BURNING = "It's out of control!",
			GENERIC = "Some real tall grass, hiding all sorts of critters I'm sure.",
			PICKED = "Nothing but short grass now!",
			DISEASED = "It looks pretty sick.", --unimplemented
			DISEASING = "Err, something's not right.", --unimplemented
		},
		GRASSGEKKO =
		{
			GENERIC = "A grass critter.",
			DISEASED = "It looks really sick.", --unimplemented
		},
		GREEN_CAP = "Lucas said he tried them before. He didn't say much else, other than I shouldn't.",
		GREEN_CAP_COOKED = "Cooked means it's safe now, I'm sure!",
		GREEN_MUSHROOM =
		{
			GENERIC = "A little evening mushroom.",
			INGROUND = "It's dug in for me to pry out.",
			PICKED = "Justa hole now.",
		},
		GUNPOWDER = "It's super messy, whatever it is.",
		HAMBAT = "Works great if you don't mind a few bites between swings!",
		HAMMER = "No toolbox is complete without one.",
		HEALINGSALVE = "That stings real good. Nothin' better, matter of fact!",
		HEATROCK =
		{
			FROZEN = "Now it'll keep my drinks cold!",
			COLD = "It's keeping me nice and cool.",
			GENERIC = "It's a special rock.",
			WARM = "It's quite warm and cuddly... for a rock!",
			HOT = "Wish I had a rock this useful for the Winters in Sunshine Forest!",
		},
		HOME = "Home.",
		HOMESIGN =
		{
			GENERIC = "It says \"You are here\".",
            UNWRITTEN = "Nothin' to read.",
			BURNT = "\"Don't play with matches.\"",
		},
		ARROWSIGN_POST =
		{
			GENERIC = "It says \"Thataway\".",
            UNWRITTEN = "Nothhin' to read.",
			BURNT = "\"Don't play with matches.\"",
		},
		ARROWSIGN_PANEL =
		{
			GENERIC = "It says \"Thataway\".",
            UNWRITTEN = "The sign is currently blank.",
			BURNT = "\"Don't play with matches.\"",
		},
		HONEY = "Mmmmmm, honey!",
		HONEYCOMB = "Cool lookin.'",
		HONEYHAM = "Is it my birthday?!",
		HONEYNUGGETS = "It's an awesome snack, for the specialist of occasions!",
		HORN = "It's a good hearing aide.",
		HOUND = "Don't make me hurt ya!",
		HOUNDCORPSE =
		{
			GENERIC = "Warned ya!",
			BURNING = "Whoops!!",
			REVIVING = "...What?",
		},
		HOUNDBONE = "Some remains.",
		HOUNDMOUND = "The dog house.",
		ICEBOX = "Now my meat will stay fresh!",
		ICEHAT = "It's... a little heavy!",
		ICEHOUND = "Cold and smelly breath. Talk about a struggle!",
		INSANITYROCK =
		{
			ACTIVE = "That wasn't there before, was it?",
			INACTIVE = "Weird.",
		},
		JAMMYPRESERVES = "Mashed berries. I prepared it myself!",

		KABOBS = "Ya can never go wrong with a kabob!",
		KILLERBEE =
		{
			GENERIC = "I got stung by a bee once. So thanks, but no thanks!",
			HELD = "He's reaaaal mad at me now!",
		},
		KNIGHT = "Goofy robot fella.",
		KOALEFANT_SUMMER = "Well, howdy!",
		KOALEFANT_WINTER = "Ain'tcha cold out here?",
		KOALEFANT_CARCASS = "Someone beat me to ya!",
		KRAMPUS = "Hands off my stuff! H-hey!",
		KRAMPUS_SACK = "Now it's mine, hehehe!",
		LEIF = "Keep it up with the attitude and I'll chop ya just like your tree buddies!",
		LEIF_SPARSE  = "Keep it up with the attitude and I'll chop ya just like your tree buddies!",
		LIGHTER  = "Don't ask.",
		LIGHTNING_ROD =
		{
			CHARGED = "That's awesome.",
			GENERIC = "A big 'ol metal rod.",
		},
		LIGHTNINGGOAT =
		{
			GENERIC = "Howdy!",
			CHARGED = "It looks real mad.",
		},
		LIGHTNINGGOATHORN = "I can feel the energy within it!",
		GOATMILK = "Not bad!",
		LITTLE_WALRUS = "Reminds me of me in a way.",
		LIVINGLOG = "Funny. I can almost make a face out of this log.",
		LOG =
		{
			BURNING = "No, no, no! This is not how we char wood!",
			GENERIC = "Fresh lumber's got all sorts of uses.",
		},
		LUCY = "Well, how about that! An axe with an attitude.",
		LUREPLANT = "That plant's trouble.",
		LUREPLANTBULB = "Maybe I can use it.",
		MALE_PUPPET = "He's trapped!", --single player

		MANDRAKE_ACTIVE = "Moments like these make me glad I don't have a little brother.",
		MANDRAKE_PLANTED = "What sorta plant is that?",
		MANDRAKE = "Looks funny.",

        MANDRAKESOUP = "Tastes funny.",
        MANDRAKE_COOKED = "Smells funny.",
        MAPSCROLL = "A blank piece paper. Maybe I should draw a map!",
        MARBLE = "You won't find much of this back home.",
        MARBLEBEAN = "I'll give it a try.",
        MARBLEBEAN_SAPLING = "There!",
        MARBLESHRUB = "Well I'll be.",
        MARBLEPILLAR = "Looks perfectly salvageable.",
        MARBLETREE = "Well I'll be.",
        MARSH_BUSH =
        {
			BURNT = "Not so thorny now!",
            BURNING = "Hopefully it doesn't spread!",
            GENERIC = "How much for me to hug it?",
            PICKED = "That's gonna leave a mark.",
        },
        BURNT_MARSH_BUSH = "Not so thorny now!",
        MARSH_PLANT = "Planty.",
        MARSH_TREE =
        {
            BURNING = "Hopefully it doesn't spread!",
            BURNT = "That does it.",
            CHOPPED = "Your spines were no match for my axe!",
            GENERIC = "Those some big spikes!",
        },
        MAXWELL = "A gentleman, huh? Yeah. I can see it.",--single player
        MAXWELLHEAD = "I can see into his pores.",--removed
        MAXWELLLIGHT = "I wonder how they work.",--single player
        MAXWELLLOCK = "Looks almost like a key hole.",--single player
        MAXWELLTHRONE = "You'd think a ruler would want a comfy throne...",--single player
        MEAT = "I should get it cooked, first.",
        MEATBALLS = "It'll fill me good.",
        MEATRACK =
        {
            DONE = "It's ready!",
            DRYING = "It's not different from charring wood, in a way.",
            DRYINGINRAIN = "This rain is no help at all!",
            GENERIC = "I could use that to dry and preserve my meat!",
            BURNT = "Man...",
            DONE_NOTMEAT = "Should be good!",
            DRYING_NOTMEAT = "Just gotta remove the moisture.",
            DRYINGINRAIN_NOTMEAT = "That's not gonna remove the moisture!",
        },
        MEAT_DRIED = "I looove jerky.",
        MERM = "Yugh, he smells!",
        MERMHEAD =
        {
            GENERIC = "I'm gonna be sick.",
            BURNT = "Yep, I'm gonna hurl.",
        },
        MERMHOUSE =
        {
            GENERIC = "I'd refurbish it for them, but they're fond of it that way.",
            BURNT = "Nothing to live in, now.",
        },
        MINERHAT = "This my type of practicality.",
        MONKEY = "Whatcha lookin' at like that?",
        MONKEYBARREL = "Trouble's brewing.",
        MONSTERLASAGNA = "Yuck.",
        FLOWERSALAD = "Salad? Maybe as a side: I need a nice steak when we're talkin' the main course!",
        ICECREAM = "I never had it before.",
        WATERMELONICLE = "A perfect Summer snack.",
        TRAILMIX = "Perfect for when you're workin' the charcoal piles.",
        HOTCHILI = "Burns real hot!",
        GUACAMOLE = "I wonder what it tastes like.",
        MONSTERMEAT = "That's not food.",
        MONSTERMEAT_DRIED = "I dried it, and it doesn't like anymore edible.",
        MOOSE = "Oh. Hi.",
        MOOSE_NESTING_GROUND = "That's a big nest!",
        MOOSEEGG = "That's a big egg!",
        MOSSLING = "Well howdy!",
        FEATHERFAN = "A feather this big will keep anything cool!",
        MINIFAN = "Just like being a kid again.",
        GOOSE_FEATHER = "Achoo! Yeesh, that stuff gets all up in my business!",
        STAFF_TORNADO = "It harnesses the power of cool.",
        MOSQUITO =
        {
            GENERIC = "I hate them things.",
            HELD = "I outta blast ya off to space!",
        },
        MOSQUITOSACK = "Nasty.",
        MOUND =
        {
            DUG = "Now why in the world would ya do that?",
            GENERIC = "Rest easy.",
        },
        NIGHTLIGHT = "That light makes my head feel weird.",
        NIGHTMAREFUEL = "I don't like it one bit!",
        NIGHTSWORD = "I don't wanna hold it anymore.",
        NITRE = "I got no idea what kinda rock that is.",
        ONEMANBAND = "Got enough goin' on there?",
        OASISLAKE =
		{
			GENERIC = "Water!",
			EMPTY = "A dry lakebed.",
		},
        PANDORASCHEST = "Something about that chest...",
        PANFLUTE = "Can't be that hard to play.",
        PAPYRUS = "It's paper.",
        WAXPAPER = "Now it's all shiny!",
        PENGUIN = "Well howdy!",
        PERD = "I could go for some fresh turkey...",
        PEROGIES = "Looks tasty.",
        PETALS = "I never been so keen on collecting them.",
        PETALS_EVIL = "They don't seem normal.",
        PHLEGM = "Yucky!",
        PICKAXE = "For smashing rocks, among other crimes.",
        PIGGYBACK = "It's... heavy!",
        PIGHEAD =
        {
            GENERIC = "That's barbaric!",
            BURNT = "Smells... nevermind.",
        },
        PIGHOUSE =
        {
            FULL = "Someone's home!",
            GENERIC = "Not bad. I can do better.",
            LIGHTSOUT = "Guess he's shy.",
            BURNT = "I can relate.",
        },
        PIGKING = "Yeah, that's a pig king alright.",
        PIGMAN =
        {
            DEAD = "Ain't with us no more.",
            FOLLOWER = "I've got employees now, just like Dad!",
            GENERIC = "Howdy!",
            GUARD = "He ain't the friendly type.",
            WEREPIG = "It's on the hunt!",
        },
        PIGSKIN = "Skinned pig.",
        PIGTENT = "A sorta tent",
        PIGTORCH = "That's an interestin' torch.",
        PINECONE = "Trees grow from this.",
        PINECONE_SAPLING = "Grow up strong!",
        LUMPY_SAPLING = "Guess this one doesn't come from a cone.",
        PITCHFORK = "I'll need it for my charcoal makin.'",
        PLANTMEAT = "It kinda feels like meat.",
        PLANTMEAT_COOKED = "Almost tastes like meat.",
        PLANT_NORMAL =
        {
            GENERIC = "A plant.",
            GROWING = "It's doing its best.",
            READY = "Ready!",
            WITHERED = "It's too hot to grow anything.",
        },
        POMEGRANATE = "Never had this fruit before.",
        POMEGRANATE_COOKED = "Mushy.",
        POMEGRANATE_SEEDS = "Some seeds I got.",
        POND = "I wouldn't mind a swim,",
        POOP = "I'm no farmer. I got no use for crap!",
        FERTILIZER = "What am I gonna do with this?",
        PUMPKIN = "A pumpkin? They're pretty tasty!",
        PUMPKINCOOKIE = "Mmmmm, much better than Mike's cookies!",
        PUMPKIN_COOKED = "Time to dig in!",
        PUMPKIN_LANTERN = "Cool!",
        PUMPKIN_SEEDS = "Some seeds I got.",
        PURPLEAMULET = "It's trying to mess with me. I can't let it win.",
        PURPLEGEM = "That gem... Something's about it.",
        RABBIT =
        {
            GENERIC = "A little rabbit fella.",
            HELD = "Howdy!",
        },
        RABBITHOLE =
        {
            GENERIC = "A home for a rabbit.",
            SPRING = "Resting up for the Spring.",
        },
        RAINOMETER =
        {
            GENERIC = "I ain't interested in what it says.",
            BURNT = "What a waste of wood! And fire, for that matter...",
        },
        RAINCOAT = "Now I can work in the worst of rains!",
        RAINHAT = "Sometimes work's gotta get done no matter what nature thinks.",
        RATATOUILLE = "A whole lotta veggies...",
        RAZOR = "Maybe I'll be needing it when I'm a little older.",
        REDGEM = "I like holding it.",
        RED_CAP = "A red mushroom?",
        RED_CAP_COOKED = "Is it safe?",
        RED_MUSHROOM =
        {
            GENERIC = "A little mushroom.",
            INGROUND = "Too dug in to pry out with my hands.",
            PICKED = "Nothin' there now.",
        },
        REEDS =
        {
            BURNING = "Uh oh!",
            GENERIC = "A whole lotta reeds.",
            PICKED = "Nothin' left to take.",
        },
        RELIC = "Dustier than a history book.",
        RUINS_RUBBLE = "Fallin' apart.",
        RUBBLE = "Nothin' left.",
        RESEARCHLAB =
        {
            GENERIC = "Some sort doo-dad gizmotronic-mabob.",
            BURNT = "Ain't nothin' now.",
        },
        RESEARCHLAB2 =
        {
            GENERIC = "Don't look at me, I'm just here.",
            BURNT = "Still couldn't tell ya.",
        },
        RESEARCHLAB3 =
        {
            GENERIC = "Well. It's something!",
            BURNT = "Nothing now.",
        },
        RESEARCHLAB4 =
        {
            GENERIC = "Maybe the Twins know more.",
            BURNT = "Well then!",
        },
        RESURRECTIONSTATUE =
        {
            GENERIC = "Uhhhhh, sure!",
            BURNT = "It was meant to be.",
        },
        RESURRECTIONSTONE = "It's magical.",
        ROBIN =
        {
            GENERIC = "A red bird!",
            HELD = "Hello!",
        },
        ROBIN_WINTER =
        {
            GENERIC = "Enjoying the weather?",
            HELD = "Let's keep each other company.",
        },
        ROBOT_PUPPET = "They're trapped!", --single player
        ROCK_LIGHT =
        {
            GENERIC = "A crusted over lava pit.",--removed
            OUT = "Looks fragile.",--removed
            LOW = "The lava's crusting over.",--removed
            NORMAL = "Nice and comfy.",--removed
        },
        CAVEIN_BOULDER =
        {
            GENERIC = "That coulda crushed me!",
            RAISED = "Whatcha doin' up there?",
        },
        ROCK = "A boulder.",
        PETRIFIED_TREE = "What happened to you?",
        ROCK_PETRIFIED_TREE = "What happened to you?",
        ROCK_PETRIFIED_TREE_OLD = "What happened to you?",
        ROCK_ICE =
        {
            GENERIC = "That's a lot of ice!",
            MELTED = "A puddle.",
        },
        ROCK_ICE_MELTED = "A puddle.",
        ICE = "It'll keep somethin' cold.",
        ROCKS = "For throwing, obviously!",
        ROOK = "It'll stomp me flat given the chance!",
        ROPE = "Rope's real useful!",
        ROTTENEGG = "It's no good now.",
        ROYAL_JELLY = "Mmmm, tasty!",
        JELLYBEAN = "New Pork City had this stuff. I ain't a fan.",
        SADDLE_BASIC = "Needs a mount, of course.",
        SADDLE_RACE = "Lightweight!",
        SADDLE_WAR = "It's intimidating.",
        SADDLEHORN = "It's useful for removing saddles.",
        SALTLICK = "Some critters love it.",
        BRUSH = "Way too big for my hair!",
		SANITYROCK =
		{
			ACTIVE = "Maybe I'm losing my marbles, but I don't think this was here before.",
			INACTIVE = "Nothin' to see. Nothin' pretty.",
		},
		SAPLING =
		{
			BURNING = "Hopefully it doesn't spread.",
			WITHERED = "It's too hot out, I agree, buddy.",
			GENERIC = "It's a little sapling!",
			PICKED = "I got every twig I could.",
			DISEASED = "It looks pretty sick.", --removed
			DISEASING = "Err, something's not right.", --removed
		},
   		SCARECROW =
   		{
			GENERIC = "Now my seeds will rest easy.",
			BURNING = "Oh no!",
			BURNT = "So much for that.",
   		},
   		SCULPTINGTABLE=
   		{
			EMPTY = "What do you mean, 'sculpting?' Listen, unless it's sculpting my muscle, I ain't interested!",
			BLOCK = "A big 'ol block of stone.",
			SCULPTURE = "Some statue.",
			BURNT = "How 'bout we put that lumber to real use next time.",
   		},
        SCULPTURE_KNIGHTHEAD = "It looks like it belongs to somethin' more.",
		SCULPTURE_KNIGHTBODY =
		{
			COVERED = "A real 'artist' made this one, huh.",
			UNCOVERED = "Looks like it's missing somethin.'",
			FINISHED = "Fixed ya.",
			READY = "Wazzat?",
		},
        SCULPTURE_BISHOPHEAD = "How'd ya get all the way out here?",
		SCULPTURE_BISHOPBODY =
		{
			COVERED = "Somethin's about this one.",
			UNCOVERED = "Knew it.",
			FINISHED = "Handyman Fuel does it again!",
			READY = "Wazzat?",
		},
        SCULPTURE_ROOKNOSE = "Looks like it broke off from somethin' else.",
		SCULPTURE_ROOKBODY =
		{
			COVERED = "A buncha marble.",
			UNCOVERED = "There's something about this.",
			FINISHED = "Fixed and fixed!",
			READY = "Wazzat?",
		},
        GARGOYLE_HOUND = "It's very out of place out here.",
        GARGOYLE_WEREPIG = "It doesn't look like any stone I've seen before.",
		SEEDS = "Some seeds I got.",
		SEEDS_COOKED = "They're a good snack when you're workin.'",
		SEWING_KIT = "Do I look like a seamstress to ya?",
		SEWING_TAPE = "Dad loves the stuff.",
		SHOVEL = "A friend to charcoal burners.",
		SILK = "Webbing.",
		SKELETON = "Least ya can rest now.",
		SCORCHED_SKELETON = "Charred to the bone...",
        SKELETON_NOTPLAYER = "I dunno what sorta bones these are.",
		SKULLCHEST = "I'm not sure if I want to open it.", --removed
		SMALLBIRD =
		{
			GENERIC = "A 'lil baby bird.",
			HUNGRY = "Ya hungry?",
			STARVING = "Let's see if we can get ya a bite to eat.",
			SLEEPING = "Out like a light.",
		},
		SMALLMEAT = "Bitsa meat",
		SMALLMEAT_DRIED = "I'll be snacking on that later!",
		SPAT = "Where's the Twins when you need 'em...",
		SPEAR = "For stabbing. And impaling. And thrusting. And-",
		SPEAR_WATHGRITHR = "This one'll get the job done! The job? Just you wait!",
		WATHGRITHRHAT = "It ain't my style, but I won't complain if it keeps my brain inside my skull.",
		SPIDER =
		{
			DEAD = "Squashed good.",
			GENERIC = "No idea them critters got so big.",
			SLEEPING = "Don't pay me any mind.",
		},
		SPIDERDEN = "Spiders live there.",
		SPIDEREGGSACK = "What should I do with 'em?",
		SPIDERGLAND = "Yuck.",
		SPIDERHAT = "Maybe I need a new hair style.",
		SPIDERQUEEN = "I promise I don't taste good! Probably!",
		SPIDER_WARRIOR =
		{
			DEAD = "Ain't doing no one no harm now.",
			GENERIC = "They don't me getting close.",
			SLEEPING = "Pay me no mind.",
		},
		SPOILED_FOOD = "Completely inedible.",
        STAGEHAND =
        {
			AWAKE = "Ah!!",
			HIDING = "Was that always there?",
        },
        STATUE_MARBLE =
        {
            GENERIC = "Some sorta statue.",
            TYPE1 = "Eh.",
            TYPE2 = "Wonder if I can salvage it.",
            TYPE3 = "Ain't doing much.", --bird bath type statue
        },
		STATUEHARP = "It's a statue.",
		STATUEMAXWELL = "I don't think I'd ever want my own statue.",
		STEELWOOL = "It's real rough feelin.'",
		STINGER = "It came from a bee.",
		STRAWHAT = "I look like a bit like a cowboy in it.",
		STUFFEDEGGPLANT = "You put veggies in the veggie.",
		SWEATERVEST = "The scratchyness means it's working.",
		REFLECTIVEVEST = "I'd go shirtless if I didn't sunburn!",
		HAWAIIANSHIRT = "I'd stick out like a sore thumb at work.",
		TAFFY = "Too sweet for me.",
		TALLBIRD = "Guess it's a bird.",
		TALLBIRDEGG = "Ya left your egg!",
		TALLBIRDEGG_COOKED = "Egg, anyone?",
		TALLBIRDEGG_CRACKED =
		{
			COLD = "I ain't sittin' on ya.",
			GENERIC = "Will it hatch?",
			HOT = "You're needy, ya know that?",
			LONG = "Maybe it'll hatch if given time.",
			SHORT = "Any moment now.",
		},
		TALLBIRDNEST =
		{
			GENERIC = "An egg, huh?",
			PICKED = "It's a bird nest.",
		},
		TEENBIRD =
		{
			GENERIC = "An inbetweener.",
			HUNGRY = "Hungry? You and me!",
			STARVING = "Don't look at me like that, if you're so hungry, find somethin' yourself!",
			SLEEPING = "Out like a light.",
		},
		TELEPORTATO_BASE =
		{
			ACTIVE = "With this I can surely pass through space and time!", --single player
			GENERIC = "This appears to be a nexus to another world!", --single player
			LOCKED = "There's still something missing.", --single player
			PARTIAL = "Soon, the invention will be complete!", --single player
		},
		TELEPORTATO_BOX = "This may control the polarity of the whole universe.", --single player
		TELEPORTATO_CRANK = "Tough enough to handle the most intense experiments.", --single player
		TELEPORTATO_POTATO = "This metal potato contains great and fearful power...", --single player
		TELEPORTATO_RING = "A ring that could focus dimensional energies.", --single player
		TELESTAFF = "It's some sorta magical stick.",
		TENT =
		{
			GENERIC = "Some shut-eye might be nice.",
			BURNT = "Dang it.",
		},
		SIESTAHUT =
		{
			GENERIC = "Even I deserve a break once and while. Just don't tell Dad.",
			BURNT = "Looks like my break is over...",
		},
		TENTACLE = "It's flailing like crazy!",
		TENTACLESPIKE = "Pokey.",
		TENTACLESPOTS = "It's all slimy...",
		TENTACLE_PILLAR = "Some things a boy weren't meant to see.",
        TENTACLE_PILLAR_HOLE = "It's gotta lead somewhere... anywhere but here!",
		TENTACLE_PILLAR_ARM = "Hey! Hands off!",
		TENTACLE_GARDEN = "Hey! Hands off!",
		TOPHAT = "I prefer a working man's hat.",
		TORCH = "It'll be handy come night.",
		TRANSISTOR = "A thingie.",
		TRAP = "Now I just need prey.",
		TRAP_TEETH = "It'll cut ya good if you're not careful!",
		TRAP_TEETH_MAXWELL = "I'll want to avoid stepping on that!", --single player
		TREASURECHEST =
		{
			GENERIC = "I'll keep my belongings here.",
			BURNT = "Well that's just great!",
            UPGRADED_STACKSIZE = "Bigger and better.",
		},
		TREASURECHEST_TRAP = "Whatcha hidin'?",
        CHESTUPGRADE_STACKSIZE = "I could put this to good use..", -- Describes the kit upgrade item.
		COLLAPSEDCHEST = "Busted as heck.",
		SACRED_CHEST =
		{
			GENERIC = "It looks like it holds something specific.",
			LOCKED = "What's it doing now?",
		},
		TREECLUMP = "It's almost like someone is trying to prevent me from going somewhere.", --removed

		TRINKET_1 = "Think the Bazaar has some of these.", --Melted Marbles
		TRINKET_2 = "That Nana girl had one, I think.", --Fake Kazoo
		TRINKET_3 = "What a mess!", --Gord's Knot
		TRINKET_4 = "What kinda strange statue are you?", --Gnome
		TRINKET_5 = "A weird ship.", --Toy Rocketship
		TRINKET_6 = "They're fun to chew.", --Frazzled Wires
		TRINKET_7 = "It fits right in with Thomas' stock.", --Ball and Cup
		TRINKET_8 = "The heck am I gonan do with this?", --Rubber Bung
		TRINKET_9 = "Someone lose some buttons?", --Mismatched Buttons
		TRINKET_10 = "Maybe I'll get my own when I get old enough.", --Dentures
		TRINKET_11 = "There ain't a robot out there worth trusting, way I see it.", --Lying Robot
		TRINKET_12 = "Whoa.", --Dessicated Tentacle
		TRINKET_13 = "What kinda strange statue are you?", --Gnomette
		TRINKET_14 = "Someone ought fix this up.", --Leaky Teacup
		TRINKET_15 = "I got no time for chess.", --Pawn
		TRINKET_16 = "I got no time for chess.", --Pawn
		TRINKET_17 = "Want me to unbend it?", --Bent Spork
		TRINKET_18 = "I never had any fancy toys growin' up.", --Trojan Horse
		TRINKET_19 = "It's supposed to spin? The ones Richie and Nichole played with worked just like this one.", --Unbalanced Top
		TRINKET_20 = "Yeah, we had this back home. It's pretty neat.", --Backscratcher
		TRINKET_21 = "I guess a spoon is too much work for some people.", --Egg Beater
		TRINKET_22 = "A buncha stupid yarn.", --Frayed Yarn
		TRINKET_23 = "I wanna smack myself with it.", --Shoehorn
		TRINKET_24 = "A jar.", --Lucky Cat Jar
		TRINKET_25 =  "I hate how it smells.", --Air Unfreshener
		TRINKET_26 = "Huh, guess it works.", --Potato Cup
		TRINKET_27 = "I don't own a coat.", --Coat Hanger
		TRINKET_28 = "I got no time for chess.", --Rook
        TRINKET_29 = "I got no time for chess.", --Rook
        TRINKET_30 = "I got no time for chess.", --Knight
        TRINKET_31 = "I got no time for chess.", --Knight
        TRINKET_32 = "Ain't mine.", --Cubic Zirconia Ball
        TRINKET_33 = "Weird.", --Spider Ring
        TRINKET_34 = "It'll grant any wish? Really?", --Monkey Paw
        TRINKET_35 = "For holding stuff.", --Empty Elixir
        TRINKET_36 = "Now I can stuff like a proper wolf does!", --Faux fangs
        TRINKET_37 = "Busted up.", --Broken Stake
        TRINKET_38 = "Not workin.'", -- Binoculars Griftlands trinket
        TRINKET_39 = "No good without a pair.", -- Lone Glove Griftlands trinket
        TRINKET_40 = "You wanna weigh somethin', ya lift it.", -- Snail Scale Griftlands trinket
        TRINKET_41 = "Weridly interestin.'", -- Goop Canister Hot Lava trinket
        TRINKET_42 = "I never had a toy like this.", -- Toy Cobra Hot Lava trinket
        TRINKET_43= "I never had a toy like this..", -- Crocodile Toy Hot Lava trinket
        TRINKET_44 = "It's all busted.", -- Broken Terrarium ONI trinket
        TRINKET_45 = "I hear something inside.", -- Odd Radio ONI trinket
        TRINKET_46 = "I ain't a girly!", -- Hairdryer ONI trinket

        -- The numbers align with the trinket numbers above.
        LOST_TOY_1  = "Lost but found.",
        LOST_TOY_2  = "Lost but found.",
        LOST_TOY_7  = "Lost but found.",
        LOST_TOY_10 = "Lost but found.",
        LOST_TOY_11 = "Lost but found.",
        LOST_TOY_14 = "Lost but found.",
        LOST_TOY_18 = "Lost but found.",
        LOST_TOY_19 = "Lost but found.",
        LOST_TOY_42 = "Lost but found.",
        LOST_TOY_43 = "Lost but found.",

        HALLOWEENCANDY_1 = "The cavities are probably worth it, right?",
        HALLOWEENCANDY_2 = "What corruption of science grew these?",
        HALLOWEENCANDY_3 = "It's... corn.",
        HALLOWEENCANDY_4 = "They wriggle on the way down.",
        HALLOWEENCANDY_5 = "My teeth are going to have something to say about this tomorrow.",
        HALLOWEENCANDY_6 = "I... don't think I'll be eating those.",
        HALLOWEENCANDY_7 = "Everyone'll be raisin' a fuss over these.",
        HALLOWEENCANDY_8 = "Only a sucker wouldn't love this.",
        HALLOWEENCANDY_9 = "Sticks to your teeth.",
        HALLOWEENCANDY_10 = "Only a sucker wouldn't love this.",
        HALLOWEENCANDY_11 = "Much better tasting than the real thing.",
        HALLOWEENCANDY_12 = "Did that candy just move?", --ONI meal lice candy
        HALLOWEENCANDY_13 = "Oh, my poor jaw.", --Griftlands themed candy
        HALLOWEENCANDY_14 = "I don't do well with spice.", --Hot Lava pepper candy
        CANDYBAG = "It's some sort of delicious pocket dimension for sugary treats.",

		HALLOWEEN_ORNAMENT_1 = "A spectornament I could hang in a tree.",
		HALLOWEEN_ORNAMENT_2 = "Completely batty decoration.",
		HALLOWEEN_ORNAMENT_3 = "This wood look good hanging somewhere.",
		HALLOWEEN_ORNAMENT_4 = "Almost i-tentacle to the real ones.",
		HALLOWEEN_ORNAMENT_5 = "Eight-armed adornment.",
		HALLOWEEN_ORNAMENT_6 = "Everyone's raven about tree decorations these days.",

		HALLOWEENPOTION_DRINKS_WEAK = "I was hoping for something bigger.",
		HALLOWEENPOTION_DRINKS_POTENT = "A potent potion.",
        HALLOWEENPOTION_BRAVERY = "Full of grit.",
		HALLOWEENPOTION_MOON = "Infused with transforming such-and-such.",
		HALLOWEENPOTION_FIRE_FX = "Crystallized inferno.",
		MADSCIENCE_LAB = "Sanity is a small price to pay for science!",
		LIVINGTREE_ROOT = "Something's in there! I'll have to root it out.",
		LIVINGTREE_SAPLING = "It'll grow up big and horrifying.",

        DRAGONHEADHAT = "So who gets to be the head?",
        DRAGONBODYHAT = "I'm middling on this middle piece.",
        DRAGONTAILHAT = "Someone has to bring up the rear.",
        PERDSHRINE =
        {
            GENERIC = "I feel like it wants something.",
            EMPTY = "I've got to plant something there.",
            BURNT = "That won't do at all.",
        },
        REDLANTERN = "This lantern feels more special than the others.",
        LUCKY_GOLDNUGGET = "What a lucky find!",
        FIRECRACKERS = "Filled with explosion science!",
        PERDFAN = "It's inordinately large.",
        REDPOUCH = "Is there something inside?",
        WARGSHRINE =
        {
            GENERIC = "I should make something fun.",
            EMPTY = "I need to put a torch in it.",
            BURNING = "I should make something fun.", --for willow to override
            BURNT = "It burned down.",
        },
        CLAYWARG =
        {
            GENERIC = "A terror cotta monster!",
            STATUE = "Did it just move?",
        },
        CLAYHOUND =
        {
            GENERIC = "It's been unleashed!",
            STATUE = "It looks so real.",
        },
        HOUNDWHISTLE = "This'd stop a dog in its tracks.",
        CHESSPIECE_CLAYHOUND = "That thing's the leashed of my worries.",
        CHESSPIECE_CLAYWARG = "And I didn't even get eaten!",

		PIGSHRINE =
		{
            GENERIC = "More stuff to make.",
            EMPTY = "It's hungry for meat.",
            BURNT = "Burnt out.",
		},
		PIG_TOKEN = "This looks important.",
		PIG_COIN = "This'll pay off in a fight.",
		YOTP_FOOD1 = "A feast fit for me.",
		YOTP_FOOD2 = "A meal only a beast would love.",
		YOTP_FOOD3 = "Nothing fancy.",

		PIGELITE1 = "What are you looking at?", --BLUE
		PIGELITE2 = "He's got gold fever!", --RED
		PIGELITE3 = "Here's mud in your eye!", --WHITE
		PIGELITE4 = "Wouldn't you rather hit someone else?", --GREEN

		PIGELITEFIGHTER1 = "What are you looking at?", --BLUE
		PIGELITEFIGHTER2 = "He's got gold fever!", --RED
		PIGELITEFIGHTER3 = "Here's mud in your eye!", --WHITE
		PIGELITEFIGHTER4 = "Wouldn't you rather hit someone else?", --GREEN

		CARRAT_GHOSTRACER = "That's... disconcerting.",

        YOTC_CARRAT_RACE_START = "It's a good enough place to start.",
        YOTC_CARRAT_RACE_CHECKPOINT = "You've made your point.",
        YOTC_CARRAT_RACE_FINISH =
        {
            GENERIC = "It's really more of a finish circle than a line.",
            BURNT = "It's all gone up in flames!",
            I_WON = "Ha HA! Science prevails!",
            SOMEONE_ELSE_WON = "Sigh... congratulations, {winner}.",
        },

		YOTC_CARRAT_RACE_START_ITEM = "Well, it's a start.",
        YOTC_CARRAT_RACE_CHECKPOINT_ITEM = "That checks out.",
		YOTC_CARRAT_RACE_FINISH_ITEM = "The end's in sight.",

		YOTC_SEEDPACKET = "Looks pretty seedy, if you ask me.",
		YOTC_SEEDPACKET_RARE = "Hey there, fancy-plants!",

		MINIBOATLANTERN = "How illuminating!",

        YOTC_CARRATSHRINE =
        {
            GENERIC = "What to make...",
            EMPTY = "Hm... what does a carrat like to eat?",
            BURNT = "Smells like roasted carrots.",
        },

        YOTC_CARRAT_GYM_DIRECTION =
        {
            GENERIC = "This'll get things moving in the right direction.",
            RAT = "You would make an excellent lab rat.",
            BURNT = "My training regimen crashed and burned.",
        },
        YOTC_CARRAT_GYM_SPEED =
        {
            GENERIC = "I need to get my carrat up to speed.",
            RAT = "Faster... faster!",
            BURNT = "I may have overdone it.",
        },
        YOTC_CARRAT_GYM_REACTION =
        {
            GENERIC = "Let's train those carrat-like reflexes!",
            RAT = "The subject's response time is steadily improving!",
            BURNT = "A small loss to take in the pursuit of science.",
        },
        YOTC_CARRAT_GYM_STAMINA =
        {
            GENERIC = "Getting strong now!",
            RAT = "This carrat... will be unstoppable!!",
            BURNT = "You can't stop progress! But this will delay it...",
        },

        YOTC_CARRAT_GYM_DIRECTION_ITEM = "I'd better get training!",
        YOTC_CARRAT_GYM_SPEED_ITEM = "I'd better get this assembled.",
        YOTC_CARRAT_GYM_STAMINA_ITEM = "This should help improve my carrat's stamina",
        YOTC_CARRAT_GYM_REACTION_ITEM = "This should improve my carrat's reaction time considerably.",

        YOTC_CARRAT_SCALE_ITEM = "This will help car-rate my car-rat.",
        YOTC_CARRAT_SCALE =
        {
            GENERIC = "Hopefully the scales tip in my favor.",
            CARRAT = "I suppose no matter what, it's still just a sentient vegetable.",
            CARRAT_GOOD = "This carrat looks ripe for racing!",
            BURNT = "What a mess.",
        },

        YOTB_BEEFALOSHRINE =
        {
            GENERIC = "What to make...",
            EMPTY = "Hm... what makes a beefalo?",
            BURNT = "Smells like barbeque.",
        },

        BEEFALO_GROOMER =
        {
            GENERIC = "There's no beefalo here to groom.",
            OCCUPIED = "Let's beautify this beefalo!",
            BURNT = "I styled my beefalo in the hottest fashions... and paid the price.",
        },
        BEEFALO_GROOMER_ITEM = "I'd better set this up somewhere.",

        YOTR_RABBITSHRINE =
        {
            GENERIC = "What to make...",
            EMPTY = "That rabbit looks hungry.",
            BURNT = "Smells like veggie barbecue.",
        },

        NIGHTCAPHAT = "No more bedhead for this scientist!",

        YOTR_FOOD1 = "It's made with carrots, so science says it must be healthy.",
        YOTR_FOOD2 = "Blue is the most scientific flavor.",
        YOTR_FOOD3 = "A jiggly treat.",
        YOTR_FOOD4 = "Bunny-hop right into my mouth!",

        YOTR_TOKEN = "I should be careful who I hand this out to.",

        COZY_BUNNYMAN = "They look so cozy.",

        HANDPILLOW_BEEFALOWOOL = "If only it didn't also smell like a beefalo.",
        HANDPILLOW_KELP = "It's soggier than I would like.",
        HANDPILLOW_PETALS = "At least it smells nicer than the beefalo pillow.",
        HANDPILLOW_STEELWOOL = "Who would sleep on this?",

        BODYPILLOW_BEEFALOWOOL = "If only it didn't also smell like a beefalo.",
        BODYPILLOW_KELP = "It's soggier than I would like.",
        BODYPILLOW_PETALS = "At least it smells nicer than the beefalo pillow.",
        BODYPILLOW_STEELWOOL = "Who would sleep on this?",

		BISHOP_CHARGE_HIT = "Ow!",
		TRUNKVEST_SUMMER = "A must for when we work during Winter.",
		TRUNKVEST_WINTER = "It's a little hard to move in.",
		TRUNK_COOKED = "I think I cooked it right.",
		TRUNK_SUMMER = "Mine now.",
		TRUNK_WINTER = "I'll take it as a trophy.",
		TUMBLEWEED = "On without a care in the world.",
		TURKEYDINNER = "You knew it was a special occasion when we had this whipped up!",
		TWIGS = "I'll be needing 'em.",
		UMBRELLA = "I prefer my rain gear. Hands free, you know?",
		GRASS_UMBRELLA = "This ain't gonna do a whole lot.",
		UNIMPLEMENTED = "It doesn't look finished! It could be dangerous.",
		WAFFLES = "Looks yummy.",
		WALL_HAY =
		{
			GENERIC = "Hay is for horses!",
			BURNT = "Oops.",
		},
		WALL_HAY_ITEM = "Maybe it'll provide some shelter.",
		WALL_STONE = "Good 'n sturdy. Like me!",
		WALL_STONE_ITEM = "Some walls might help.",
		WALL_RUINS = "Who knows how old it is.",
		WALL_RUINS_ITEM = "Guess I could put 'em to use.",
		WALL_WOOD =
		{
			GENERIC = "The spikes read 'stay out bad guys.'",
			BURNT = "Well that's that, then.",
		},
		WALL_WOOD_ITEM = "All that lumber's gotta be put to some use!",
		WALL_MOONROCK = "It's no normal wall, that's for sure",
		WALL_MOONROCK_ITEM = "I'll place them somwhere I gotta secure.",
		WALL_DREADSTONE = "Ain't nothin' to worry about, I'm sure.",
		WALL_DREADSTONE_ITEM = "Can't let it go to waste.",
        WALL_SCRAP = "It looks so unnatural.",
        WALL_SCRAP_ITEM = "I don't like it.",
		FENCE = "It'll keep in whatever I need to keep in.",
        FENCE_ITEM = "I built it myself.",
        FENCE_GATE = "Now I can come and go.",
        FENCE_GATE_ITEM = "It's a gate I made. Dad would be proud!",
		WALRUS = "He's eying me like he wants trouble.",
		WALRUSHAT = "It's got a knack to it. Mm. Not bad.",
		WALRUS_CAMP =
		{
			EMPTY = "Someone set up shop here before.",
			GENERIC = "They wouldn't appreciate my visit.",
		},
		WALRUS_TUSK = "Cool.",
		WARDROBE =
		{
			GENERIC = "In case I need a change of clothes.",
            BURNING = "Uh oh!",
			BURNT = "Oops.",
		},
		WARG = "He's big and mean.",
        WARGLET = "He's looking to take a bite out of me!",

		WASPHIVE = "Some territorial bees live there.",
		WATERBALLOON = "Summer and fun times.",
		WATERMELON = "They're yummy.",
		WATERMELON_COOKED = "It makes me happy.",
		WATERMELONHAT = "Dad would get a laugh out of seeing me like this.",
		WAXWELLJOURNAL =
		{
			GENERIC = "Luckily, I ain't the readin' type.",
			NEEDSFUEL = "only_used_by_waxwell",
		},
		WETGOOP = "Yucky.",
        WHIP = "Back, back I say!",
		WINTERHAT = "Keeps the head warm.",
		WINTEROMETER =
		{
			GENERIC = "Now I know how cold it is.",
			BURNT = "Ain't helpin' no one now.",
		},

        WINTER_TREE =
        {
            BURNT = "A real shame, if ya ask me.",
            BURNING = "All that lumber, all to waste!",
            CANDECORATE = "I betcha Dad would loved this holiday",
            YOUNG = "Not much longer.",
        },
		WINTER_TREESTAND =
		{
			GENERIC = "Guess I could plant an evergreen.",
            BURNT = "A real shame, if ya ask me.",
		},
        WINTER_ORNAMENT = "Pretty.",
        WINTER_ORNAMENTLIGHT = "Wow!",
        WINTER_ORNAMENTBOSS = "Cool!",
		WINTER_ORNAMENTFORGE = "Awesome.",
		WINTER_ORNAMENTGORGE = "Neat.",
        WINTER_ORNAMENTPEARL = "Thanks, ma'am!",

        WINTER_FOOD1 = "Oh fine, one cookie ain't killin' no one.", --gingerbread cookie
        WINTER_FOOD2 = "It's yummy!", --sugar cookie
        WINTER_FOOD3 = "Don't mind if I do!", --candy cane
        WINTER_FOOD4 = "Is this even food?", --fruitcake
        WINTER_FOOD5 = "I'll make sure to savor it.", --yule log cake
        WINTER_FOOD6 = "I'm puddin' that straight in my mouth!", --plum pudding
        WINTER_FOOD7 = "Dad says too much sugar will spoil me rotten. But Dad's not here..!", --apple cider
        WINTER_FOOD8 = "Nothing says a good day's done better than enjoying some hot cocoa by the fireplace.", --hot cocoa
        WINTER_FOOD9 = "Ohhhhh, that's good!", --eggnog

		WINTERSFEASTOVEN =
		{
			GENERIC = "I'm no cook, but boy I wish I was right now!",
			COOKING = "Someone's making something yummy!",
			ALMOST_DONE_COOKING = "My tummy can't wait any longer!",
			DISH_READY = "Yes! Time to eat!",
		},
		BERRYSAUCE = "Goes great with anything!",
		BIBINGKA = "It explodes in my mouth with all sorts of yumminess!",
		CABBAGEROLLS = "Don't mind if I do!",
		FESTIVEFISH = "I've never had anything this fancy in my life!",
		GRAVY = "More please!",
		LATKES = "Mmmmm!",
		LUTEFISK = "I'll have some.",
		MULLEDDRINK = "Wash down all the goodness!",
		PANETTONE = "Yummy.",
		PAVLOVA = "Ooo, I'll try!",
		PICKLEDHERRING = "I'm gonna be putting on a few pounds.",
		POLISHCOOKIE = "Yes!",
		PUMPKINPIE = "Hoo hoo hoo, I'm gonna enjoy this!",
		ROASTTURKEY = "I can't stop drooling... ha, hahaha!",
		STUFFING = "Oh man, I could just die! Die!",
		SWEETPOTATO = "Yummy!",
		TAMALES = "It's really good.",
		TOURTIERE = "Let's eat.",

		TABLE_WINTERS_FEAST =
		{
			GENERIC = "Just needs some food.",
			HAS_FOOD = "We never got to really eat fancy back home. I'll make sure to appreciate it as best as I can!",
			WRONG_TYPE = "Only for the specialist of occasions.",
			BURNT = "Man...",
		},

		GINGERBREADWARG = "I'll eat you up!",
		GINGERBREADHOUSE = "It'd be rude to take a bite out of that.",
		GINGERBREADPIG = "Huh? Is he trying to get my attention?",
		CRUMBS = "Someone left this behind.",
		WINTERSFEASTFUEL = "I'll have to tell Dad all about this!",

        KLAUS = "Guess he's not happy about me trying to mess with his stuff!",
        KLAUS_SACK = "What's it hiding?",
		KLAUSSACKKEY = "Finders keepers!",
		WORMHOLE =
		{
			GENERIC = "Just what the heck is that?",
			OPEN = "It wants me to jump in?",
		},
		WORMHOLE_LIMITED = "Is it all right?",
		ACCOMPLISHMENT_SHRINE = "I want to use it, and I want the world to know that I did.", --single player
		LIVINGTREE = "That tree don't seem too right.",
		ICESTAFF = "It bears a great coldness to it.",
		REVIVER = "It holds a new life for someone.",
		SHADOWHEART = "Yeesh. That's... creepy.",
        ATRIUM_RUBBLE =
        {
            LINE_1 = "I don't like what I'm seein.'",
			LINE_2 = "Ain't nothing to make out.",
			LINE_3 = "Why would someone make this?",
			LINE_4 = "Is it a warning?",
			LINE_5 = "It reminds me of New Pork.",
		},
        ATRIUM_STATUE = "That's a real creepy statue.",
        ATRIUM_LIGHT =
        {
			ON = "I don't wanna be down here anymore.",
			OFF = "Some sorta light.",
		},
        ATRIUM_GATE =
        {
			ON = "That thing wanted it off. Maybe it was right.",
			OFF = "What is that supposed to be?",
			CHARGING = "It's doin' somethin.'",
			DESTABILIZING = "That doesn't look too good!",
			COOLDOWN = "It's outta juice.",
        },
        ATRIUM_KEY = "This must go somewhere special.",
		LIFEINJECTOR = "It'll help in a pinch.",
		SKELETON_PLAYER =
		{
			MALE = "Looks like ya didn't walk that one off, %s.",
			FEMALE = "Looks like ya didn't walk that one off, %s.",
			ROBOT = "Looks like ya didn't walk that one off, %s.",
			DEFAULT = "Looks like ya didn't walk that one off, %s.",
		},
		HUMANMEAT = "I would never eat this!",
		HUMANMEAT_COOKED = "I'm really not hungry. Really.",
		HUMANMEAT_DRIED = "I'm really not hungry. Really.",
		ROCK_MOON = "It's not from these parts.",
		MOONROCKNUGGET = "A chunka space rock.",
		MOONROCKCRATER = "Looks like it holds something.",
		MOONROCKSEED = "It ain't ordinary, that's for sure.",

        REDMOONEYE = "It shines real bright!",
        PURPLEMOONEYE = "I could use it for marking something important.",
        GREENMOONEYE = "Now I'll never lose it!",
        ORANGEMOONEYE = "It'll keep things in order.",
        YELLOWMOONEYE = "It's real easy to spot like that.",
        BLUEMOONEYE = "It'll be a good landmark.",

        --Arena Event
        LAVAARENA_BOARLORD = "That's the guy in charge here.",
        BOARRIOR = "You sure are big!",
        BOARON = "I can take him!",
        PEGHOOK = "That spit is corrosive!",
        TRAILS = "He's got a strong arm on him.",
        TURTILLUS = "Its shell is so spiky!",
        SNAPPER = "This one's got bite.",
		RHINODRILL = "He's got a nose for this kind of work.",
		BEETLETAUR = "I can smell him from here!",

        LAVAARENA_PORTAL =
        {
            ON = "I'll just be going now.",
            GENERIC = "That's how we got here. Hopefully how we get back, too.",
        },
        LAVAARENA_KEYHOLE = "It needs a key.",
		LAVAARENA_KEYHOLE_FULL = "That should do it.",
        LAVAARENA_BATTLESTANDARD = "Everyone, break the Battle Standard!",
        LAVAARENA_SPAWNER = "This is where those enemies are coming from.",

        HEALINGSTAFF = "It conducts regenerative energy.",
        FIREBALLSTAFF = "It calls a meteor from above.",
        HAMMER_MJOLNIR = "It's a heavy hammer for hitting things.",
        SPEAR_GUNGNIR = "I could do a quick charge with that.",
        BLOWDART_LAVA = "That's a weapon I could use from range.",
        BLOWDART_LAVA2 = "It uses a strong blast of air to propel a projectile.",
        LAVAARENA_LUCY = "That weapon's for throwing.",
        WEBBER_SPIDER_MINION = "I guess they're fighting for us.",
        BOOK_FOSSIL = "This'll keep those monsters held for a little while.",
		LAVAARENA_BERNIE = "He might make a good distraction for us.",
		SPEAR_LANCE = "It gets to the point.",
		BOOK_ELEMENTAL = "I can't make out the text.",
		LAVAARENA_ELEMENTAL = "It's a rock monster!",

   		LAVAARENA_ARMORLIGHT = "Light, but not very durable.",
		LAVAARENA_ARMORLIGHTSPEED = "Lightweight and designed for mobility.",
		LAVAARENA_ARMORMEDIUM = "It offers a decent amount of protection.",
		LAVAARENA_ARMORMEDIUMDAMAGER = "That could help me hit a little harder.",
		LAVAARENA_ARMORMEDIUMRECHARGER = "I'd have energy for a few more stunts wearing that.",
		LAVAARENA_ARMORHEAVY = "That's as good as it gets.",
		LAVAARENA_ARMOREXTRAHEAVY = "This armor has been petrified for maximum protection.",

		LAVAARENA_FEATHERCROWNHAT = "Those fluffy feathers make me want to run!",
        LAVAARENA_HEALINGFLOWERHAT = "The blossom interacts well with healing magic.",
        LAVAARENA_LIGHTDAMAGERHAT = "My strikes would hurt a little more wearing that.",
        LAVAARENA_STRONGDAMAGERHAT = "It looks like it packs a wallop.",
        LAVAARENA_TIARAFLOWERPETALSHAT = "Looks like it amplifies healing expertise.",
        LAVAARENA_EYECIRCLETHAT = "It has a gaze full of science.",
        LAVAARENA_RECHARGERHAT = "Those crystals will quicken my abilities.",
        LAVAARENA_HEALINGGARLANDHAT = "This garland will restore a bit of my vitality.",
        LAVAARENA_CROWNDAMAGERHAT = "That could cause some major destruction.",

		LAVAARENA_ARMOR_HP = "That should keep me safe.",

		LAVAARENA_FIREBOMB = "It smells like brimstone.",
		LAVAARENA_HEAVYBLADE = "A sharp looking instrument.",

        --Quagmire
        QUAGMIRE_ALTAR =
        {
        	GENERIC = "We'd better start cooking some offerings.",
        	FULL = "It's in the process of digestinating.",
    	},
		QUAGMIRE_ALTAR_STATUE1 = "It's an old statue.",
		QUAGMIRE_PARK_FOUNTAIN = "Been a long time since it was hooked up to water.",

        QUAGMIRE_HOE = "It's a farming instrument.",

        QUAGMIRE_TURNIP = "It's a raw turnip.",
        QUAGMIRE_TURNIP_COOKED = "Cooking is science in practice.",
        QUAGMIRE_TURNIP_SEEDS = "A handful of odd seeds.",

        QUAGMIRE_GARLIC = "The number one breath enhancer.",
        QUAGMIRE_GARLIC_COOKED = "Perfectly browned.",
        QUAGMIRE_GARLIC_SEEDS = "A handful of odd seeds.",

        QUAGMIRE_ONION = "Looks crunchy.",
        QUAGMIRE_ONION_COOKED = "A successful chemical reaction.",
        QUAGMIRE_ONION_SEEDS = "A handful of odd seeds.",

        QUAGMIRE_POTATO = "The apples of the earth.",
        QUAGMIRE_POTATO_COOKED = "A successful temperature experiment.",
        QUAGMIRE_POTATO_SEEDS = "A handful of odd seeds.",

        QUAGMIRE_TOMATO = "It's red because it's full of science.",
        QUAGMIRE_TOMATO_COOKED = "Cooking's easy if you understand chemistry.",
        QUAGMIRE_TOMATO_SEEDS = "A handful of odd seeds.",

        QUAGMIRE_FLOUR = "Ready for baking.",
        QUAGMIRE_WHEAT = "It looks a bit grainy.",
        QUAGMIRE_WHEAT_SEEDS = "A handful of odd seeds.",
        --NOTE: raw/cooked carrot uses regular carrot strings
        QUAGMIRE_CARROT_SEEDS = "A handful of odd seeds.",

        QUAGMIRE_ROTTEN_CROP = "I don't think the altar will want that.",

		QUAGMIRE_SALMON = "Mm, fresh fish.",
		QUAGMIRE_SALMON_COOKED = "Ready for the dinner table.",
		QUAGMIRE_CRABMEAT = "No imitations here.",
		QUAGMIRE_CRABMEAT_COOKED = "I can put a meal together in a pinch.",
		QUAGMIRE_SUGARWOODTREE =
		{
			GENERIC = "It's full of delicious, delicious sap.",
			STUMP = "Where'd the tree go? I'm stumped.",
			TAPPED_EMPTY = "Here sappy, sappy, sap.",
			TAPPED_READY = "Sweet golden sap.",
			TAPPED_BUGS = "That's how you get ants.",
			WOUNDED = "It looks ill.",
		},
		QUAGMIRE_SPOTSPICE_SHRUB =
		{
			GENERIC = "It reminds me of those tentacle monsters.",
			PICKED = "I can't get anymore out of that shrub.",
		},
		QUAGMIRE_SPOTSPICE_SPRIG = "I could grind it up to make a spice.",
		QUAGMIRE_SPOTSPICE_GROUND = "Flavorful.",
		QUAGMIRE_SAPBUCKET = "We can use it to gather sap from the trees.",
		QUAGMIRE_SAP = "It tastes sweet.",
		QUAGMIRE_SALT_RACK =
		{
			READY = "Salt has gathered on the rope.",
			GENERIC = "Science takes time.",
		},

		QUAGMIRE_POND_SALT = "A little salty spring.",
		QUAGMIRE_SALT_RACK_ITEM = "For harvesting salt from the pond.",

		QUAGMIRE_SAFE =
		{
			GENERIC = "It's a safe. For keeping things safe.",
			LOCKED = "It won't open without the key.",
		},

		QUAGMIRE_KEY = "Safe bet this'll come in handy.",
		QUAGMIRE_KEY_PARK = "I'll park it in my pocket until I get to the park.",
        QUAGMIRE_PORTAL_KEY = "This looks science-y.",


		QUAGMIRE_MUSHROOMSTUMP =
		{
			GENERIC = "Are those mushrooms? I'm stumped.",
			PICKED = "I don't think it's growing back.",
		},
		QUAGMIRE_MUSHROOMS = "These are edible mushrooms.",
        QUAGMIRE_MEALINGSTONE = "The daily grind.",
		QUAGMIRE_PEBBLECRAB = "That rock's alive!",


		QUAGMIRE_RUBBLE_CARRIAGE = "On the road to nowhere.",
        QUAGMIRE_RUBBLE_CLOCK = "Someone beat the clock. Literally.",
        QUAGMIRE_RUBBLE_CATHEDRAL = "Preyed upon.",
        QUAGMIRE_RUBBLE_PUBDOOR = "No longer a-door-able.",
        QUAGMIRE_RUBBLE_ROOF = "Someone hit the roof.",
        QUAGMIRE_RUBBLE_CLOCKTOWER = "That clock's been punched.",
        QUAGMIRE_RUBBLE_BIKE = "Must have mis-spoke.",
        QUAGMIRE_RUBBLE_HOUSE =
        {
            "No one's here.",
            "Something destroyed this town.",
            "I wonder who they angered.",
        },
        QUAGMIRE_RUBBLE_CHIMNEY = "Something put a damper on that chimney.",
        QUAGMIRE_RUBBLE_CHIMNEY2 = "Something put a damper on that chimney.",
        QUAGMIRE_MERMHOUSE = "What an ugly little house.",
        QUAGMIRE_SWAMPIG_HOUSE = "It's seen better days.",
        QUAGMIRE_SWAMPIG_HOUSE_RUBBLE = "Some pig's house was ruined.",
        QUAGMIRE_SWAMPIGELDER =
        {
            GENERIC = "I guess you're in charge around here?",
            SLEEPING = "It's sleeping, for now.",
        },
        QUAGMIRE_SWAMPIG = "It's a super hairy pig.",

        QUAGMIRE_PORTAL = "Another dead end.",
        QUAGMIRE_SALTROCK = "Salt. The tastiest mineral.",
        QUAGMIRE_SALT = "It's full of salt.",
        --food--
        QUAGMIRE_FOOD_BURNT = "That one was an experiment.",
        QUAGMIRE_FOOD =
        {
        	GENERIC = "I should offer it on the Altar of Gnaw.",
            MISMATCH = "That's not what it wants.",
            MATCH = "Science says this will appease the sky God.",
            MATCH_BUT_SNACK = "It's more of a light snack, really.",
        },

        QUAGMIRE_FERN = "Probably chock full of vitamins.",
        QUAGMIRE_FOLIAGE_COOKED = "We cooked the foliage.",
        QUAGMIRE_COIN1 = "I'd like more than a penny for my thoughts.",
        QUAGMIRE_COIN2 = "A decent amount of coin.",
        QUAGMIRE_COIN3 = "Seems valuable.",
        QUAGMIRE_COIN4 = "We can use these to reopen the Gateway.",
        QUAGMIRE_GOATMILK = "Good if you don't think about where it came from.",
        QUAGMIRE_SYRUP = "Adds sweetness to the mixture.",
        QUAGMIRE_SAP_SPOILED = "Might as well toss it on the fire.",
        QUAGMIRE_SEEDPACKET = "Sow what?",

        QUAGMIRE_POT = "This pot holds more ingredients.",
        QUAGMIRE_POT_SMALL = "Let's get cooking!",
        QUAGMIRE_POT_SYRUP = "I need to sweeten this pot.",
        QUAGMIRE_POT_HANGER = "It has hang-ups.",
        QUAGMIRE_POT_HANGER_ITEM = "For suspension-based cookery.",
        QUAGMIRE_GRILL = "Now all I need is a backyard to put it in.",
        QUAGMIRE_GRILL_ITEM = "I'll have to grill someone about this.",
        QUAGMIRE_GRILL_SMALL = "Barbecurious.",
        QUAGMIRE_GRILL_SMALL_ITEM = "For grilling small meats.",
        QUAGMIRE_OVEN = "It needs ingredients to make the science work.",
        QUAGMIRE_OVEN_ITEM = "For scientifically burning things.",
        QUAGMIRE_CASSEROLEDISH = "A dish for all seasonings.",
        QUAGMIRE_CASSEROLEDISH_SMALL = "For making minuscule motleys.",
        QUAGMIRE_PLATE_SILVER = "A silver plated plate.",
        QUAGMIRE_BOWL_SILVER = "A bright bowl.",
        QUAGMIRE_CRATE = "Kitchen stuff.",

        QUAGMIRE_MERM_CART1 = "Any science in there?", --sammy's wagon
        QUAGMIRE_MERM_CART2 = "I could use some stuff.", --pipton's cart
        QUAGMIRE_PARK_ANGEL = "Take that, creature!",
        QUAGMIRE_PARK_ANGEL2 = "So lifelike.",
        QUAGMIRE_PARK_URN = "Ashes to ashes.",
        QUAGMIRE_PARK_OBELISK = "A monumental monument.",
        QUAGMIRE_PARK_GATE =
        {
            GENERIC = "Turns out a key was the key to getting in.",
            LOCKED = "Locked tight.",
        },
        QUAGMIRE_PARKSPIKE = "The scientific term is: \"Sharp pointy thing\".",
        QUAGMIRE_CRABTRAP = "A crabby trap.",
        QUAGMIRE_TRADER_MERM = "Maybe they'd be willing to trade.",
        QUAGMIRE_TRADER_MERM2 = "Maybe they'd be willing to trade.",

        QUAGMIRE_GOATMUM = "Reminds me of my old nanny.",
        QUAGMIRE_GOATKID = "This goat's much smaller.",
        QUAGMIRE_PIGEON =
        {
            DEAD = "They're dead.",
            GENERIC = "He's just winging it.",
            SLEEPING = "It's sleeping, for now.",
        },
        QUAGMIRE_LAMP_POST = "Huh. Reminds me of home.",

        QUAGMIRE_BEEFALO = "Science says it should have died by now.",
        QUAGMIRE_SLAUGHTERTOOL = "Laboratory tools for surgical butchery.",

        QUAGMIRE_SAPLING = "I can't get anything else out of that.",
        QUAGMIRE_BERRYBUSH = "Those berries are all gone.",

        QUAGMIRE_ALTAR_STATUE2 = "What are you looking at?",
        QUAGMIRE_ALTAR_QUEEN = "A monumental monument.",
        QUAGMIRE_ALTAR_BOLLARD = "As far as posts go, this one is adequate.",
        QUAGMIRE_ALTAR_IVY = "Kind of clingy.",

        QUAGMIRE_LAMP_SHORT = "Enlightening.",

        --v2 Winona
        WINONA_CATAPULT =
        {
        	GENERIC = "We should launch me in it!",
        	OFF = "Dumb thing doesn't work!",
        	BURNING = "That's probably not good for it.",
        	BURNT = "Not doin' anything now.",
			SLEEP = "We should launch me in it!",
        },
        WINONA_SPOTLIGHT =
        {
        	GENERIC = "I never liked being the center of attention.",
        	OFF = "Dumb thing doesn't work!",
        	BURNING = "That's probably not good for it.",
        	BURNT = "Not doin' anything now.",
			SLEEP = "I never liked being the center of attention.",
        },
        WINONA_BATTERY_LOW =
        {
        	GENERIC = "I dunno what that is.",
        	LOWPOWER = "Is it supposed to make that noise?",
        	OFF = "What a funny lookin piece of junk!",
        	BURNING = "That's probably not good for it.",
        	BURNT = "Not doin' anything now.",
        },
        WINONA_BATTERY_HIGH =
        {
			GENERIC = "I dunno what that is",
			LOWPOWER = "Is it supposed to make that noise?",
			OFF = "What a funny lookn piece of junk!",
			BURNING = "That's probably not good for it.",
			BURNT = "Not doin' anything now.",
			OVERLOADED = "I don't like the looks of that!",
        },
		--v3 Winona
		WINONA_REMOTE =
		{
			GENERIC = "I'm gonna press it!",
			OFF = "Dumb thing doesn't work!",
			CHARGING = "I'm gonna press it!",
			CHARGED = "I'm gonna press it!",
		},
		WINONA_TELEBRELLA =
		{
			GENERIC = "That's a dumb umbrella.",
            MISSINGSKILL = "only_used_by_winona",
			OFF = "That's a dumb umbrella,",
			CHARGING = "That's a dumb umbrella.",
			CHARGED = "That's a dumb umbrella.",
		},
		WINONA_TELEPORT_PAD_ITEM =
		{
			GENERIC = "It don't make no sense.",
            MISSINGSKILL = "only_used_by_winona",
			OFF = "It doesn't work.",
			BURNING = "That's probably not good for it.",
			BURNT = "Not doin' anything now..",
		},
		WINONA_STORAGE_ROBOT =
		{
			GENERIC = "Whatcha up to?",
			OFF = "Ain't doing nothing now.",
			SLEEP = "Whatcha up to?",
			CHARGING = "Ain't doing nothing now.",
			CHARGED = "Ain't doing nothing now.",
		},
		INSPECTACLESBOX = "only_used_by_winona",
		INSPECTACLESBOX2 = "only_used_by_winona",
		INSPECTACLESHAT = 
        {
            GENERIC = "Huh, ain't them a statement.",
            MISSINGSKILL = "only_used_by_winona",
        },
		ROSEGLASSESHAT =
        {
            GENERIC = "Huh, ain't them a statement.",
            MISSINGSKILL = "only_used_by_winona",
        },
		CHARLIERESIDUE = "only_used_by_winona",
		CHARLIEROSE = "only_used_by_winona",
        WINONA_MACHINEPARTS_1 = "only_used_by_winona",
        WINONA_MACHINEPARTS_2 = "only_used_by_winona",
		WINONA_RECIPESCANNER = "only_used_by_winona",
		WINONA_HOLOTELEPAD = "only_used_by_winona",
		WINONA_HOLOTELEBRELLA = "only_used_by_winona",

        --Wormwood
        COMPOSTWRAP = "Not interested.",
        ARMOR_BRAMBLE = "No one will dare lay their paws on me now!",
        TRAP_BRAMBLE = "That'll teach 'em.",

        BOATFRAGMENT03 = "Lost at sea.",
        BOATFRAGMENT04 = "Lost at sea.",
        BOATFRAGMENT05 = "Lost at sea.",
		BOAT_LEAK = "That's a real problem.",
        MAST = "Now I can set sail.",
        SEASTACK = "They'll put a real damper if your boat, be careful.",
        FISHINGNET = "Nothing but net.", --unimplemented
        ANTCHOVIES = "Yeesh. Can I toss it back?", --unimplemented
        STEERINGWHEEL = "I lived way too far from the coastline to really go sailing..",
        ANCHOR = "That'll make sure my boat stays put.",
        BOATPATCH = "A boat band-aid!",
        DRIFTWOOD_TREE =
        {
            BURNING = "It's going up in smoke!",
            BURNT = "What a waste.",
            CHOPPED = "It's dug in.",
            GENERIC = "A dead tree from who knows where.",
        },

        DRIFTWOOD_LOG = "It'll go wherever the ocean takes it.",

        MOON_TREE =
        {
            BURNING = "Not again!!",
            BURNT = "Maybe I can salvage some charcoal...",
            CHOPPED = "Nothing I can't chop chop chop!",
            GENERIC = "I never seen this typa tree before!",
        },
		MOON_TREE_BLOSSOM = "Not very boyish to say, but it's pretty.",

        MOONBUTTERFLY =
        {
        	GENERIC = "What a strange bug.",
        	HELD = "Howdy.",
        },
		MOONBUTTERFLYWINGS = "I clipped its wings!",
        MOONBUTTERFLY_SAPLING = "Well I'llll be.",
        ROCK_AVOCADO_FRUIT = "I got in trouble for trying to eat rocks when I was little.",
        ROCK_AVOCADO_FRUIT_RIPE = "It ain't chewable!",
        ROCK_AVOCADO_FRUIT_RIPE_COOKED = "I can down it!",
        ROCK_AVOCADO_FRUIT_SPROUT = "Grown' big and strong.",
        ROCK_AVOCADO_BUSH =
        {
        	BARREN = "Won't be growing without some help.",
			WITHERED = "Can't grow nothin' in this heat.",
			GENERIC = "Some sorta weird bush,",
			PICKED = "Ain't nothin for me to take.",
			DISEASED = "It looks pretty sick.", --unimplemented
            DISEASING = "Err, something's not right.", --unimplemented
			BURNING = "That looks bad.",
		},
        DEAD_SEA_BONES = "Some remains washed ashore.",
        HOTSPRING =
        {
        	GENERIC = "Nowhere is brimming with hotsprings!",
        	BOMBED = "If you ain't ever used one, you ain't a Tazmilian!",
        	GLASS = "It's been glassed?",
			EMPTY = "Awwwww...",
        },
        MOONGLASS = "That'll slice yer fingers careful.",
        MOONGLASS_CHARGED = "It's full of energy.",
        MOONGLASS_ROCK = "Not bad, not bad at all.",
        BATHBOMB = "For my new hot spring!",
        TRAP_STARFISH =
        {
            GENERIC = "It's a starfish!",
            CLOSED = "It's a hungry starfish!",
        },
        DUG_TRAP_STARFISH = "Maybe I'll find something to use ya for.",
        SPIDER_MOON =
        {
        	GENERIC = "It looks... creepier than usual.",
        	SLEEPING = "Out like a light.",
        	DEAD = "Squashed and quashed.",
        },
        MOONSPIDERDEN = "Some den for some... thing.",
		FRUITDRAGON =
		{
			GENERIC = "Howdy, little fella!",
			RIPE = "It looks funny.",
			SLEEPING = "Get some rest.",
		},
        PUFFIN =
        {
            GENERIC = "A seabird!",
            HELD = "Howdy seabird!.",
            SLEEPING = "G'night!",
        },

		MOONGLASSAXE = "It's got the sharpness of the family axe without being so heavy!",
		GLASSCUTTER = "You'll wanna think about messin' with me twice with this on my side!",

        ICEBERG =
        {
            GENERIC = "Let's steer clear of that.", --unimplemented
            MELTED = "It's completely melted.", --unimplemented
        },
        ICEBERG_MELTED = "It's completely melted.", --unimplemented

        MINIFLARE = "In case of emergency.",
        MEGAFLARE = "That'll turn night to day!",

		MOON_FISSURE =
		{
			GENERIC = "That stuff's real bad for ya. I can just tell.",
			NOLIGHT = "The earth's fissurin.'",
		},
        MOON_ALTAR =
        {
            MOON_ALTAR_WIP = "It ain't done yet.",
            GENERIC = "It doesn't make my head feel good.",
        },

        MOON_ALTAR_IDOL = "It goes somewhere.",
        MOON_ALTAR_GLASS = "It belongs to somethin.'",
        MOON_ALTAR_SEED = "It needs to be brought somewhere.",

        MOON_ALTAR_ROCK_IDOL = "Ain't a normal rock.",
        MOON_ALTAR_ROCK_GLASS = "Ain't a normal rock.",
        MOON_ALTAR_ROCK_SEED = "Ain't a normal rock.",

        MOON_ALTAR_CROWN = "It goes somewhere.",
        MOON_ALTAR_COSMIC = "It's a part of somethng else.",

        MOON_ALTAR_ASTRAL = "It belongs somewhere.",
        MOON_ALTAR_ICON = "It's a part of somethin.'",
        MOON_ALTAR_WARD = "It needs to brought somewhere.",

        SEAFARING_PROTOTYPER =
        {
            GENERIC = "Exploring the seas, huh?",
            BURNT = "Whoops.",
        },
        BOAT_ITEM = "Maybe I can sail my way outta here.",
        BOAT_GRASS_ITEM = "It might float for a little bit.",
        STEERINGWHEEL_ITEM = "I need a way to steer, of course!",
        ANCHOR_ITEM = "My boat will be needing that.",
        MAST_ITEM = "Can't have a sailboat without a sail!",
        MUTATEDHOUND =
        {
        	DEAD = "Phew...",
        	GENERIC = "B-back! S-stay back!!",
        	SLEEPING = "Maybe... I overreacted.",
        },

        MUTATED_PENGUIN =
        {
			DEAD = "Phew...",
			GENERIC = "What in the absolute heck!?!",
			SLEEPING = "I don't think I'll be sleeping for a while.",
		},
        CARRAT =
        {
        	DEAD = "Dead.",
        	GENERIC = "Wait... you're not a carrot!",
        	HELD = "Huh. Well I'll be.",
        	SLEEPING = "G'night.",
        },

		BULLKELP_PLANT =
        {
            GENERIC = "Some seaweed.",
            PICKED = "Who knows what I'll do with it.",
        },
		BULLKELP_ROOT = "It'll grow in saltwater.",
        KELPHAT = "It makes me feel all yucky.",
		KELP = "It smells salty.",
		KELP_COOKED = "I guess it's edible.",
		KELP_DRIED = "Much better.",

		GESTALT = "I hate them.",
        GESTALT_GUARD = "They're honest about beng unkind, at least.",

		COOKIECUTTER = "They'll take a bite out of my boat, and then me!!",
		COOKIECUTTERSHELL = "All that remains from those vile critters.",
		COOKIECUTTERHAT = "How do I look?",
		SALTSTACK =
		{
			GENERIC = "It's salt!",
			MINED_OUT = "Nothing left to take.",
			GROWING = "There's a little bit of salt.",
		},
		SALTROCK = "Mmmm, salty.",
		SALTBOX = "Now my meats will stay good forever!",

		TACKLESTATION = "I could make some tackle there, I'd think.",
		TACKLESKETCH = "Dad was never one to follow diagrams.",

        MALBATROSS = "H-hey! That was my catch!",
        MALBATROSS_FEATHER = "Warned ya. My catch!",
        MALBATROSS_BEAK = "I deserve a small trophy!",
        MAST_MALBATROSS_ITEM = "Now I just need to set it up!",
        MAST_MALBATROSS = "I can sail forever on that!",
		MALBATROSS_FEATHERED_WEAVE = "Ain't a seamstress, but tried my best.",

        GNARWAIL =
        {
            GENERIC = "Howdy! All alone out here?",
            BROKENHORN = "Oh, I'm sorry for ya!",
            FOLLOWER = "Guess we're pals.",
            BROKENHORN_FOLLOWER = "I'll see if I can find you a new one.",
        },
        GNARWAIL_HORN = "It's a mighty horn.",

        WALKINGPLANK = "A diving board?",
        WALKINGPLANK_GRASS = "A diving board?",
        OAR = "Now I can get some exercise while at sea!",
		OAR_DRIFTWOOD = "Now I can get some exercise whle at sea!",

		OCEANFISHINGROD = "I never been sea fishin' before.",
		OCEANFISHINGBOBBER_NONE = "It bobs.",
        OCEANFISHINGBOBBER_BALL = "It bobs.",
        OCEANFISHINGBOBBER_OVAL = "Now I can see my line!",
		OCEANFISHINGBOBBER_CROW = "Now I can see my line!",
		OCEANFISHINGBOBBER_ROBIN = "I'll be needing this to do some proper fishin.'",
		OCEANFISHINGBOBBER_ROBIN_WINTER = "I'll be needing this to do some proper fishin.'",
		OCEANFISHINGBOBBER_CANARY = "It bobs.",
		OCEANFISHINGBOBBER_GOOSE = "Now I can see my line!",
		OCEANFISHINGBOBBER_MALBATROSS = "I'll be needing this to do some proper fishin.'",

		OCEANFISHINGLURE_SPINNER_RED = "A proper fishin' lure.",
		OCEANFISHINGLURE_SPINNER_GREEN = "A proper fishin' lure.",
		OCEANFISHINGLURE_SPINNER_BLUE = "A proper fishin' lure.",
		OCEANFISHINGLURE_SPOON_RED = "A proper fishin' lure.",
		OCEANFISHINGLURE_SPOON_GREEN = "A proper fishin' lure.",
		OCEANFISHINGLURE_SPOON_BLUE = "A proper fishin' lure.",
		OCEANFISHINGLURE_HERMIT_RAIN = "A proper fishin' lure.",
		OCEANFISHINGLURE_HERMIT_SNOW = "A proper fishin' lure.",
		OCEANFISHINGLURE_HERMIT_DROWSY = "A proper fishin' lure.",
		OCEANFISHINGLURE_HERMIT_HEAVY = "A proper fishin' lure.",

		OCEANFISH_SMALL_1 = "Ain't much to look at.",
		OCEANFISH_SMALL_2 = "No match for Fuel!",
		OCEANFISH_SMALL_3 = "Tinee little guy.",
		OCEANFISH_SMALL_4 = "I can't make a proper meal out of just this!",
		OCEANFISH_SMALL_5 = "What a strange fish.",
		OCEANFISH_SMALL_6 = "Ain't any typa fish I ever seen before.",
		OCEANFISH_SMALL_7 = "Gotcha!",
		OCEANFISH_SMALL_8 = "It's an okay catch.",
        OCEANFISH_SMALL_9 = "Hey! Stop that!",

		OCEANFISH_MEDIUM_1 = "I got it!",
		OCEANFISH_MEDIUM_2 = "Nothin's too tough for Fuel!",
		OCEANFISH_MEDIUM_3 = "Go me, go me!",
		OCEANFISH_MEDIUM_4 = "Gotcha!",
		OCEANFISH_MEDIUM_5 = "What a strange fish.",
		OCEANFISH_MEDIUM_6 = "What a pretty fish.",
		OCEANFISH_MEDIUM_7 = "What a pretty fish.",
		OCEANFISH_MEDIUM_8 = "This one's extra cold.",
        OCEANFISH_MEDIUM_9 = "Yes!",

		PONDFISH = "Mmmm, fish sounds real yummy right about now.",
		PONDEEL =  "I'll gobble it right up!",

        FISHMEAT = "Some raw fish.",
        FISHMEAT_COOKED = "Ready to go in my tummy!",
        FISHMEAT_SMALL = "A little fish meat.",
        FISHMEAT_SMALL_COOKED = "This'll be a good snack.",
		SPOILED_FISH = "Ew-yuck!",

		FISH_BOX = "Now my catches will stay fresh!",
        POCKET_SCALE = "I gotta weigh what I catch, yknow?",

		TACKLECONTAINER = "Now I can hold my fishing supplies!",
		SUPERTACKLECONTAINER = "That crabby missus charged me a leg and a half, but hopefully it'll be worth it.",

		TROPHYSCALE_FISH =
		{
			GENERIC = "Now I can show off a good catch!",
			HAS_ITEM = "Weight: {weight}\nCaught by: {owner}",
			HAS_ITEM_HEAVY = "Weight: {weight}\nCaught by: {owner}\nPretty nice.",
			BURNING = "Uh oh!",
			BURNT = "Whoops.",
			OWNER = "Weight: {weight}\nCaught by: {owner}\nGuess I'm just a natural.",
			OWNER_HEAVY = "Weight: {weight}\nCaught by: {owner}\nYeah, Fuel's awesome and strong. We know.",
		},

		OCEANFISHABLEFLOTSAM = "It's a buncha stuff.",

		CALIFORNIAROLL = "Can't say I ever had this before.",
		SEAFOODGUMBO = "Smells yummy!",
		SURFNTURF = "I can't say no to a good meal!",

        WOBSTER_SHELLER = "Mmmm, hello!",
        WOBSTER_DEN = "A home for the crabby types.",
        WOBSTER_SHELLER_DEAD = "Well, howdy.",
        WOBSTER_SHELLER_DEAD_COOKED = "I bet it tastes like goodness.",

        LOBSTERBISQUE = "The Sanctuary Gods gifted me such a perfect meal!",
        LOBSTERDINNER = "Don't mind if I do.",

        WOBSTER_MOONGLASS = "This one looks weird.",
        MOONGLASS_WOBSTER_DEN = "A fancy home for the crabby types.",

		TRIDENT = "More pointy ends means more poking. Simple 'rithmetic!",

		WINCH =
		{
			GENERIC = "Grabby grabber ma-bob.",
			RETRIEVING_ITEM = "Grab 'em! grab 'em, grab 'em!",
			HOLDING_ITEM = "Now it's mine!",
		},

        HERMITHOUSE = {
            GENERIC = "That house has seen better days. I can't let an old folk live like that!",
            BUILTUP = "Hope it's much more suitable for ya!",
        },

        SHELL_CLUSTER = "Looks like a buncha sea shells.",
        --
		SINGINGSHELL_OCTAVE3 =
		{
			GENERIC = "Lucas says you can hear the ocean in it.",
		},
		SINGINGSHELL_OCTAVE4 =
		{
			GENERIC = "Lucas says you can hear the ocean in it.",
		},
		SINGINGSHELL_OCTAVE5 =
		{
			GENERIC = "Lucas says you can hear the ocean in it.",
        },

        CHUM = "fish should like it.",

        SUNKENCHEST =
        {
            GENERIC = "Treasure? For me?",
            LOCKED = "It's locked! Darnit.",
        },

        HERMIT_BUNDLE = "For me? D'aw, ya shouldn't have!",
        HERMIT_BUNDLE_SHELLS = "Guess she's not all bitter, huh?",

        RESKIN_TOOL = "Sometimes ya need a change in looks.",
        MOON_FISSURE_PLUGGED = "It's definitely a solution.",


		----------------------- ROT STRINGS GO ABOVE HERE ------------------

		-- Walter
        WOBYBIG =
        {
            "Don't recall ya bein' bigger than a horse!",
            "Don't recall ya bein' bigger than a horse!",
        },
        WOBYSMALL =
        {
            "Ain'tcha nice?",
            "Ain'tcha nice?",
        },
		WALTERHAT = "I'd prefer my lumberjack hat.",
		SLINGSHOT =
		{
			GENERIC = "I guess they're useful if you ain't too keen on just throwin rocks.",
			NOT_MINE = "only_used_by_walter",
		},
		SLINGSHOTAMMO_ROCK = "Pelt 'em!",
		SLINGSHOTAMMO_MARBLE = "Pelt 'em!",
		SLINGSHOTAMMO_THULECITE = "Pelt 'em!",
        SLINGSHOTAMMO_GOLD = "Pelt 'em!",
		SLINGSHOTAMMO_HONEY = "Pelt 'em!",
        SLINGSHOTAMMO_SLOW = "Pelt 'em!",
        SLINGSHOTAMMO_FREEZE = "Pelt 'em!",
		SLINGSHOTAMMO_POOP = "Pelt 'em!",
		SLINGSHOTAMMO_STINGER = "Pelt 'em!",
		SLINGSHOTAMMO_MOONGLASS = "Pelt 'em!",
		SLINGSHOTAMMO_GELBLOB = "Pelt 'em!",
		SLINGSHOTAMMO_SCRAPFEATHER = "Pelt 'em!",
        SLINGSHOTAMMO_DREADSTONE = "Pelt 'em!",
        SLINGSHOTAMMO_GUNPOWDER = "Pelt 'em!",
        SLINGSHOTAMMO_LUNARPLANTHUSK = "Pelt 'em!",
        SLINGSHOTAMMO_PUREBRILLIANCE = "Pelt 'em!",
        SLINGSHOTAMMO_HORRORFUEL = "Pelt 'em!",
        PORTABLETENT = "Some shelter out here is much appreciated!",
        PORTABLETENT_ITEM = "Packed and ready to go?",

        -- Wigfrid
        BATTLESONG_DURABILITY = "Do I look like the actin' type to ya?",
        BATTLESONG_HEALTHGAIN = "Do I look like the actin' type to ya?",
        BATTLESONG_SANITYGAIN = "Do I look like the actin' type to ya?",
        BATTLESONG_SANITYAURA = "Do I look like the actin' type to ya?",
        BATTLESONG_FIRERESISTANCE = "Do I look like the actin' type to ya?",
        BATTLESONG_INSTANT_TAUNT = "Do I look like the actin' type to ya?",
        BATTLESONG_INSTANT_PANIC = "Do I look like the actin' type to ya?",

        -- Webber
        MUTATOR_WARRIOR = "And I thought Mike's cookies were somethin' fierce.",
        MUTATOR_DROPPER = "And I thought Mike's cookies were somethin' fierce.",
        MUTATOR_HIDER = "Ya ain't gotta share with me, buddy.",
        MUTATOR_SPITTER = "Ya ain't gotta share wth me, buddy.",
        MUTATOR_MOON = "And I thought Mike's cookies were somethin' fierce.",
        MUTATOR_HEALER = "And I thought Mike's cookies were somethin' fierce.",
        SPIDER_WHISTLE = "Ain't mine to mess with.",
        SPIDERDEN_BEDAZZLER = "Gettin' into refurbishin,' huh. Good on ya!",
        SPIDER_HEALER = "Takes care of the others, looks like to me.",
        SPIDER_REPELLENT = "Guess spiders don't got a knack for it.",
        SPIDER_HEALER_ITEM = "Looks real helpful for your spider friends.",

		-- Wendy
		GHOSTLYELIXIR_SLOWREGEN = "Is that really safe to drink?",
		GHOSTLYELIXIR_FASTREGEN = "Is that really safe to drink?",
		GHOSTLYELIXIR_SHIELD = "Is that really safe to drink?",
		GHOSTLYELIXIR_ATTACK = "Is that really safe to drink?",
		GHOSTLYELIXIR_SPEED = "Is that really safe to drink?",
		GHOSTLYELIXIR_RETALIATION = "Is that really safe to drink?",
        GHOSTLYELIXIR_REVIVE = "Is that really safe to drink?",
		SISTURN =
		{
			GENERIC = "Missin' somethin.'",
			SOME_FLOWERS = "Mmmmm. Needs somethin' still.",
			LOTS_OF_FLOWERS = "Looks about right!",
            LOTS_OF_FLOWERS_EVIL = "Looks about right, just doesn't feel about right!",
            LOTS_OF_FLOWERS_BLOSSOM = "Whoa now.",   
		},

        --Wortox
        WORTOX_SOUL = "only_used_by_wortox", --only wortox can inspect souls
        --WORTOX_DECOY is not needed because it uses the default WORTOX inspection.
        WORTOX_NABBAG = "Don't go stealing my thingss now.",
        WORTOX_REVIVER = "What's that for?",
        WORTOX_SOULJAR = "Make sure you label my soul in there, I'll be needing it!",

        PORTABLECOOKPOT_ITEM =
        {
            GENERIC = "Nice, some proper meals will hit the spot I'm sure!",
            DONE = "Mmmmm...",

			COOKING_LONG = "Just gotta be patient...",
			COOKING_SHORT = "My tummy needs food!",
			EMPTY = "Some proper meals will hit the spot I'm sure!",
        },

        PORTABLEBLENDER_ITEM = "It makes smoothies!",
        PORTABLESPICER_ITEM =
        {
            GENERIC = "Spice? Is it everything nice?",
            DONE = "Ready!",
        },
        SPICEPACK = "It'll add flavor to anything!",
        SPICE_GARLIC = "Makes my breath stink.",
        SPICE_SUGAR = "A little sugar makes me giddy.",
        SPICE_CHILI = "It's burns my mouth good!",
        SPICE_SALT = "I won't say no to a dash of salt!",
        MONSTERTARTARE = "No thanks!",
        FRESHFRUITCREPES = "Looks like a good eat!",
        FROGFISHBOWL = "Hmmmm. Beggars can't be choosers!",
        POTATOTORNADO = "That's tasty lookin!'",
        DRAGONCHILISALAD = "I love spicy. Mm mm mm!",
        GLOWBERRYMOUSSE = "I'll take twelve!",
        VOLTGOATJELLY = "I'm gonna put on a few pounds if I'm not careful!",
        NIGHTMAREPIE = "It looks like I shouldn't eat it.",
        BONESOUP = "Mm that's good.",
        MASHEDPOTATOES = "A staple back home. Don't tell dad yours is way better, though!",
        POTATOSOUFFLE = "I'm gonna be so spoiled going back home...",
        MOQUECA = "Food's food!",
        GAZPACHO = "I've never had anything this good before!",
        ASPARAGUSSOUP = "Tastes like you'd expect.",
        VEGSTINGER = "Yum!",
        BANANAPOP = "This is a fun treat!",
        CEVICHE = "Tastes good.",
        SALSA = "So yummy...",
        PEPPERPOPPER = "Don't mind if I do!",

        TURNIP = "Turnips, huh?",
        TURNIP_COOKED = "Cooked it!",
        TURNIP_SEEDS = "Some seeds I got.",

        GARLIC = "Makes my breath stinky.",
        GARLIC_COOKED = "Smells garlicky.",
        GARLIC_SEEDS = "Some seeds I got.",

        ONION = "Onions are a good enhancer.",
        ONION_COOKED = "They make me tear up.",
        ONION_SEEDS = "Some seeds I got.",

        POTATO = "We have mashed potatoes pretty often back home.",
        POTATO_COOKED = "Just gotta mash them, now.",
        POTATO_SEEDS = "Some seeds I got.",

        TOMATO = "Tomatos are real nice.",
        TOMATO_COOKED = "Cooked and cooked!.",
        TOMATO_SEEDS = "Some seeds I got.",

        ASPARAGUS = "It's a funny veggie.",
        ASPARAGUS_COOKED = "Well, down ya go, I guess.",
        ASPARAGUS_SEEDS = "Some seeds I got.",

        PEPPER = "It's real hot tasting.",
        PEPPER_COOKED = "Burned it, now it'll burn my mouth!",
        PEPPER_SEEDS = "Some seeds I got.",

        WEREITEM_BEAVER = "What the heck?",
        WEREITEM_GOOSE = "What the heck?",
        WEREITEM_MOOSE = "What the heck?",

        MERMHAT = "I'm perfectly fine with those monsters disliking me, actually.",        
        MERMTHRONE =
        {
            GENERIC = "I serve no king!",
            BURNT = "That'll show 'em!",
        },
        MOSQUITOMUSK = "We need this for Summers back home!",
        MOSQUITOBOMB = "It'll ruin someones day.",
        MOSQUITOFERTILIZER = "Guess it's good for 'em.",
        MOSQUITOMERMSALVE = "Not for me.",

        MERMTHRONE_CONSTRUCTION =
        {
            GENERIC = "A construction project? Need help?",
            BURNT = "Ah, well.",
        },
        MERMHOUSE_CRAFTED =
        {
            GENERIC = "It's an improvement.",
            BURNT = "Yikes.",
        },

        MERMWATCHTOWER_REGULAR = "Guess they're taking this all serious.",
        MERMWATCHTOWER_NOKING = "Buncha jerks live there.",
        MERMKING = "Yucky looking!",
        MERMGUARD = "Don't eye me like that.",
        MERM_PRINCE = "Huh.",

        SQUID = "Whoa.",

		GHOSTFLOWER = "Well I'll be.",
        SMALLGHOST = "Why so sad?",

        CRABKING =
        {
            GENERIC = "Guess he didn't like being disturbed!",
            INERT = "Looks like this place is missin' somethin.'",
        },
		CRABKING_CLAW = "It'll tear my boat to shreds!",

		MESSAGEBOTTLE = "Someone's leaving messages?",
		MESSAGEBOTTLEEMPTY = "It's a bottle.",

        MEATRACK_HERMIT =
        {
            DONE = "It's ready!",
            DRYING = "It's not different from charring wood, in a way.",
            DRYINGINRAIN = "This rain is no help at all!",
            GENERIC = "I could use that to dry and preserve my meat!",
            BURNT = "Man...",
            DONE_NOTMEAT = "Should be good!",
            DRYING_NOTMEAT = "Just gotta remove the moisture.",
            DRYINGINRAIN_NOTMEAT = "That's not gonna remove the moisture!",
        },
        BEEBOX_HERMIT =
        {
			READY = "I'm gonna be eating good!",
			FULLHONEY = "I'm gonna be eating good!",
			GENERIC = "Hope y'all like the little setup I gotcha. Now let's get some honey!",
			NOHONEY = "Nothin' to take..",
			SOMEHONEY = "The bees are getting busy!",
			BURNT = "Aw, man...",
        },

        HERMITCRAB = "Must not get many visitors all the way out here...",

        HERMIT_PEARL = "You trust me that much? I don't know what to say!",
        HERMIT_CRACKED_PEARL = "I'm horrible. Dad's gonna get good for this!",

        -- DSEAS
        WATERPLANT = "I never knew 'bout this plant before.",
        WATERPLANT_BOMB = "That looks dangerous. I want it!",
        WATERPLANT_BABY = "Still growing.",
        WATERPLANT_PLANTER = "Just needs a rock to take root.",

        SHARK = "Ah!! Ahhhhh!!",

        MASTUPGRADE_LAMP_ITEM = "Now I can see, at sea!",
        MASTUPGRADE_LIGHTNINGROD_ITEM = "Last thing I need is getting zapped in the middle of the ocean.",

        WATERPUMP = "A fire at sea sounds ironic.",

        BARNACLE = "Yugh.",
        BARNACLE_COOKED = "Do I really have to?",

        BARNACLEPITA = "I'm full, actually.",
        BARNACLESUSHI = "I'll pass.",
        BARNACLINGUINE = "I'll find something else to eat.",
        BARNACLESTUFFEDFISHHEAD = "I'm gonna be sick.",

        LEAFLOAF = "Tastes like the real deal.",
        LEAFYMEATBURGER = "Mmph, not too bad.",
        LEAFYMEATSOUFFLE = "I won't complain!",
        MEATYSALAD = "Yes, I was needing more meat in my salad!",

        -- GROTTO

		MOLEBAT = "You must smell all sorts of stuff with a nose like that.",
        MOLEBATHILL = "Rats live here.",

        BATNOSE = "Smell ya later!",
        BATNOSE_COOKED = "I'm not sure what I expected.",
        BATNOSEHAT = "I'd love to wear this to work!",

        MUSHGNOME = "He's real bird lookin.'",

        SPORE_MOON = "Why do I feel so sleepy?",

        MOON_CAP = "They taste like sweet dreams.",
        MOON_CAP_COOKED = "Maybe frying it will help.",

        MUSHTREE_MOON = "It's funny looking.",

        LIGHTFLIER = "Think you'd call that whimsical, or somethin!'",

        GROTTO_POOL_BIG = "It's no normal water, that's for sure.",
        GROTTO_POOL_SMALL = "It's no normal water, that's for sure.",

        DUSTMOTH = "I'd expect a fella like ya hanging in some sort of library like this!",

        DUSTMOTHDEN = "Even insect critters gotta have a home.",

        ARCHIVE_LOCKBOX = "It's holding something important",
        ARCHIVE_CENTIPEDE = "Intruder? Me?",
        ARCHIVE_CENTIPEDE_HUSK = "A buncha garbage.",

        ARCHIVE_COOKPOT =
        {
			COOKING_LONG = "Good cookin' takes time.",
			COOKING_SHORT = "I smell something yummy!",
			DONE = "Just in time!",
			EMPTY = "Ready for the next meal.",
			BURNT = "Well dang it.",
        },

        ARCHIVE_MOON_STATUE = "I never paid much attention during Prayer, but I don't recall there being a moon god.",
        ARCHIVE_RUNE_STATUE =
        {
            LINE_1 = "I can't read!",
            LINE_2 = "I got better things to do.",
            LINE_3 = "I ain't readin' that.",
            LINE_4 = "It says 'Fuel is the best.'",
            LINE_5 = "'Lucas you still owe Fuel nutbread from that time he helped you and Claus with that raft and you broke it and Fuel didn't tell Claus on you.'",
        },
		VAULT_RUNE = "Buncha gibberish to me.",
		VAULT_STATUE =
		{
			LORE1 = "That's why ya don't play with fire. Or at least, leave it to the experts!",
			LORE2 = "Ya challenged your gods, ya got what ya deserved.",
			LORE3 = "Ain't sayin' nothin' more.",
		},

        ARCHIVE_RESONATOR = {
            GENERIC = "I dunno what to make of that.",
            IDLE = "Ain't doing nothing for me.",
        },

        ARCHIVE_RESONATOR_ITEM = "It's a sort of majig.",

        ARCHIVE_LOCKBOX_DISPENCER = {
          POWEROFF = "It's not upta much. I can relate.",
          GENERIC =  "Still not upta much. Still relatable.",
        },

        ARCHIVE_SECURITY_DESK = {
            POWEROFF = "Upta nothin' but lookin' pretty.",
            GENERIC = "I like the glowey lights. They're glowey.",
        },

        ARCHIVE_SECURITY_PULSE = "I wanna eat it.",

        ARCHIVE_SWITCH = {
            VALID = "It has a gem.",
            GEMS = "Ths one is missing something.",
        },

        ARCHIVE_PORTAL = {
            POWEROFF = "Looks special.",
            GENERIC = "Not workin.'",
        },

        WALL_STONE_2 = "A wall of safety.",
        WALL_RUINS_2 = "Who knows how long ago it was built. And it's still standing!",

        REFINED_DUST = "Some funny lookin' dust.",
        DUSTMERINGUE = "Looks like insects would like it.",

        SHROOMCAKE = "I'll eat and go for a quick nap.",
        SHROOMBAIT = "Anyone else sleepy?",

        NIGHTMAREGROWTH = "That looks dangerous.",

        TURFCRAFTINGSTATION = "Now my charcoal business will never stop!",

        MOON_ALTAR_LINK = "It's... well. It's!",

        -- FARMING
        COMPOSTINGBIN =
        {
            GENERIC = "Smells like Tazmily.",
            WET = "Too much moisture in there.",
            DRY = "Ain't wet enough!",
            BALANCED = "That's perfect!",
            BURNT = "That's over and done with.",
        },
        COMPOST = "Greenfolk appreciate it.",
        SOIL_AMENDER =
		{
			GENERIC = "It needs time to ferment.",
			STALE = "It's looking good.",
			SPOILED = "Yeesh. Just a drop of that'll knock ya on your ass!",
		},

		SOIL_AMENDER_FERMENTED = "Ready to go.",

        WATERINGCAN =
        {
            GENERIC = "Now I can keep my charcoal piles from overheating.",
            EMPTY = "Charcoal can't get too out, of it'll burn up!",
        },
        PREMIUMWATERINGCAN =
        {
            GENERIC = "There's no such thing as too much water.",
            EMPTY = "All empty.",
        },

		FARM_PLOW = "It's doing its job!",
		FARM_PLOW_ITEM = "It'll muck up the earth just right.",
		FARM_HOE = "You ain't a farmer without one.",
		GOLDEN_FARM_HOE = "If it'll get the job done.",
		NUTRIENTSGOGGLESHAT = "Guess city folk would need somethin' like this, huh?",
		PLANTREGISTRYHAT = "I hate that thing.",

        FARM_SOIL_DEBRIS = "Oughta clean that up.",

		FIRENETTLES = "It's not that bad! Maybe.",
		FORGETMELOTS = "Sorry, but I need FOOD!",
		SWEETTEA = "I don't want no dang leaf water!",
		TILLWEED = "Useless weeds!",
		TILLWEEDSALVE = "It might heal some smaller boo-boos.",
        WEED_IVY = "That's a real mean weed.",
        IVY_SNARE = "Knew it was nothin' but trouble.",

		TROPHYSCALE_OVERSIZEDVEGGIES =
		{
			GENERIC = "Guess if throwing your weight around means somethin' to ya.",
			HAS_ITEM = "Weight: {weight}\nHarvested on day: {day}\nNot bad.",
			HAS_ITEM_HEAVY = "Weight: {weight}\nHarvested on day: {day}\nWho knew they grew that big?",
            HAS_ITEM_LIGHT = "Not even worth it.",
			BURNING = "Oh no!",
			BURNT = "Whoops.",
        },

        CARROT_OVERSIZED = "Fuel's eatin' good!",
        CORN_OVERSIZED = "Don't think I'll be starvin' anytime soon.",
        PUMPKIN_OVERSIZED = "You could live in that thing!",
        EGGPLANT_OVERSIZED = "How'd it get so big?",
        DURIAN_OVERSIZED = "I'm sure it'll make an even bigger stink.",
        POMEGRANATE_OVERSIZED = "That'll feed a whole village!",
        DRAGONFRUIT_OVERSIZED = "I half expect it to sprout wings.",
        WATERMELON_OVERSIZED = "A big, juicy watermelon.",
        TOMATO_OVERSIZED = "A tomato of incredible proportions.",
        POTATO_OVERSIZED = "Looks like mashed Ppotatos for all next Winter!",
        ASPARAGUS_OVERSIZED = "We can pretend to have this.",
        ONION_OVERSIZED = "A big 'ol onion.'",
        GARLIC_OVERSIZED = "We're gonna have a real serious case of bad breath on our hands!",
        PEPPER_OVERSIZED = "Betcha I could eat it all in one go.",

        VEGGIE_OVERSIZED_ROTTEN = "All that gone to waste. Shameful.",

		FARM_PLANT =
		{
			GENERIC = "It'll grow into something I can put into my mouth one of these days.",
			SEED = "Be kind to time and it will be kind to me.",
			GROWING = "It'll grow into something I can put into my mouth one of these days.",
			FULL = "Harvest season is upon us!",
			ROTTEN = "That's not good.",
			FULL_OVERSIZED = "Well I'll be, I'll be!",
			ROTTEN_OVERSIZED = "All that gone to waste. Shameful.",
			FULL_WEED = "Some nasty weeds!",

			BURNING = "Oh no!",
		},

        FRUITFLY = "Annoying little pest is what it is!",
        LORDFRUITFLY = "It's ain't little, but 2 out of 3, that ain't good, pal!",
        FRIENDLYFRUITFLY = "This one is much nicer.",
        FRUITFLYFRUIT = "It likes it.",

        SEEDPOUCH = "'Bout time I organized them seeds.'",

		-- Crow Carnival
		CARNIVAL_HOST = "Dad says don't trust a showman.",
		CARNIVAL_CROWKID = "Howdy!",
		CARNIVAL_GAMETOKEN = "Guess I need it for them machines to work.",
		CARNIVAL_PRIZETICKET =
		{
			GENERIC = "Some sorta paper.",
			GENERIC_SMALLSTACK = "I got a buncha them.",
			GENERIC_LARGESTACK = "Guess I'm just good at these sortsa stuff.",
		},

		CARNIVALGAME_FEEDCHICKS_NEST = "It needs to be set up.",
		CARNIVALGAME_FEEDCHICKS_STATION =
		{
			GENERIC = "It doesn't work.",
			PLAYING = "Do I like look like I got time for babysittin'?",
		},
		CARNIVALGAME_FEEDCHICKS_KIT = "It needs to be set up.",
		CARNIVALGAME_FEEDCHICKS_FOOD = "What the heck is this stuff?",

		CARNIVALGAME_MEMORY_KIT = "It net needs to be set up",
		CARNIVALGAME_MEMORY_STATION =
		{
			GENERIC = "Not workin.''",
			PLAYING = "Beats busy work.",
		},
		CARNIVALGAME_MEMORY_CARD =
		{
			GENERIC = "It's some sorta hatch.",
			PLAYING = "I weren't paying attention.",
		},

		CARNIVALGAME_HERDING_KIT = "Needs set up.",
		CARNIVALGAME_HERDING_STATION =
		{
			GENERIC = "Don't work.",
			PLAYING = "What am I, a cattle herder?",
		},
		CARNIVALGAME_HERDING_CHICK = "I ain't chasin' ya too long!",

		CARNIVALGAME_SHOOTING_KIT = "It needs set up.",
		CARNIVALGAME_SHOOTING_STATION =
		{
			GENERIC = "Nothin.'",
			PLAYING = "Give that button a good smack!",
		},
		CARNIVALGAME_SHOOTING_TARGET =
		{
			GENERIC = "Some sorta hatch.",
			PLAYING = "Smash that sign!",
		},

		CARNIVALGAME_SHOOTING_BUTTON =
		{
			GENERIC = "Press press press! Hello?",
			PLAYING = "I like pressing it.",
		},

		CARNIVALGAME_WHEELSPIN_KIT = "Needs to be set up.",
		CARNIVALGAME_WHEELSPIN_STATION =
		{
			GENERIC = "Not doin' nothin.''",
			PLAYING = "Put all your strength into it!",
		},

		CARNIVALGAME_PUCKDROP_KIT = "Needs set up.",
		CARNIVALGAME_PUCKDROP_STATION =
		{
			GENERIC = "Don't work.",
			PLAYING = "I'll make this one look real easy!",
		},

		CARNIVAL_PRIZEBOOTH_KIT = "Needs setup.",
		CARNIVAL_PRIZEBOOTH =
		{
			GENERIC = "All sorts of goods are kept here.",
		},

		CARNIVALCANNON_KIT = "It's some sorta cannon.",
		CARNIVALCANNON =
		{
			GENERIC = "It'll blow you away.",
			COOLDOWN = "That wasn't as big a bang as I thought it'd be.",
		},

		CARNIVAL_PLAZA_KIT = "The centerpiece for the festivities.",
		CARNIVAL_PLAZA =
		{
			GENERIC = "It don't look like anything too speical yet.",
			LEVEL_2 = "Missin' somethin.'",
			LEVEL_3 = "Now it feels like a proper festival!",
		},

		CARNIVALDECOR_EGGRIDE_KIT = "It looks kinda fun!",
		CARNIVALDECOR_EGGRIDE = "Oh. It's much smaller than I'd thought it'd be...",

		CARNIVALDECOR_LAMP_KIT = "I should put these down.",
		CARNIVALDECOR_LAMP = "I got no clue how it works.",
		CARNIVALDECOR_PLANT_KIT = "I gotta plant this somewhere.",
		CARNIVALDECOR_PLANT = "What a neat little tree!",
		CARNIVALDECOR_BANNER_KIT = "I'll put it somewhere nice.",
		CARNIVALDECOR_BANNER = "Here be nice.",

		CARNIVALDECOR_FIGURE =
		{
			RARE = "I don't even like it that much.",
			UNCOMMON = "Eh.",
			GENERIC = "Nice.",
		},
		CARNIVALDECOR_FIGURE_KIT = "Don't know what it is yet.",
		CARNIVALDECOR_FIGURE_KIT_SEASON2 = "Don't know what it is yet.",

        CARNIVAL_BALL = "It's genius in its simplicity.", --unimplemented
		CARNIVAL_SEEDPACKET = "Yum!",
		CARNIVALFOOD_CORNTEA = "Tastes like eating.",

        CARNIVAL_VEST_A = "Dad'll get a good laugh out of seeing me in this.",
        CARNIVAL_VEST_B = "It's not too shabby, actually.",
        CARNIVAL_VEST_C = "It sure is one way to cover up!",

        -- YOTB
        YOTB_SEWINGMACHINE = "Sewing can't be that hard... can it?",
        YOTB_SEWINGMACHINE_ITEM = "There looks to be a bit of assembly required.",
        YOTB_STAGE = "Strange, I never see him enter or leave...",
        YOTB_POST =  "This contest is going to go off without a hitch! Well, figuratively speaking.",
        YOTB_STAGE_ITEM = "It looks like a bit of building is in order.",
        YOTB_POST_ITEM =  "I'd better get that set up.",


        YOTB_PATTERN_FRAGMENT_1 = "If I put some of these together, I bet I could make a beefalo costume.",
        YOTB_PATTERN_FRAGMENT_2 = "If I put some of these together, I bet I could make a beefalo costume.",
        YOTB_PATTERN_FRAGMENT_3 = "If I put some of these together, I bet I could make a beefalo costume.",

        YOTB_BEEFALO_DOLL_WAR = {
            GENERIC = "Scientifically formulated for maximum huggableness.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_DOLL = {
            GENERIC = "Scientifically formulated for maximum huggableness.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_FESTIVE = {
            GENERIC = "Scientifically formulated for maximum huggableness.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_NATURE = {
            GENERIC = "Scientifically formulated for maximum huggableness.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_ROBOT = {
            GENERIC = "Scientifically formulated for maximum huggableness.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_ICE = {
            GENERIC = "Scientifically formulated for maximum huggableness.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_FORMAL = {
            GENERIC = "Scientifically formulated for maximum huggableness.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_VICTORIAN = {
            GENERIC = "Scientifically formulated for maximum huggableness.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_BEAST = {
            GENERIC = "Scientifically formulated for maximum huggableness.",
            YOTB = "I wonder what the Judge would say about this?",
        },

        WAR_BLUEPRINT = "How ferocious!",
        DOLL_BLUEPRINT = "My beefalo will look as cute as a button!",
        FESTIVE_BLUEPRINT = "This is just the occasion for some festivity!",
        ROBOT_BLUEPRINT = "This requires a suspicious amount of welding for a sewing project.",
        NATURE_BLUEPRINT = "You really can't go wrong with flowers.",
        FORMAL_BLUEPRINT = "This is a costume for some Grade A beefalo.",
        VICTORIAN_BLUEPRINT = "I think my grandmother wore something similar.",
        ICE_BLUEPRINT = "I usually like my beefalo fresh, not frozen.",
        BEAST_BLUEPRINT = "I'm feeling lucky about this one!",

        BEEF_BELL = "It makes beefalo friendly. I'm sure there's a very scientific explanation.",

		-- YOT Catcoon
		KITCOONDEN =
		{
			GENERIC = "You'd have to be pretty small to fit in there.",
            BURNT = "NOOOO!",
			PLAYING_HIDEANDSEEK = "Now where could they be...",
			PLAYING_HIDEANDSEEK_TIME_ALMOST_UP = "Not much time left! Where are they?!",
		},

		KITCOONDEN_KIT = "The whole kit and caboodle.",

		TICOON =
		{
			GENERIC = "He looks like he knows what he's doing!",
			ABANDONED = "I'm sure I can find them on my own.",
			SUCCESS = "Hey, he found one!",
			LOST_TRACK = "Someone else found them first.",
			NEARBY = "Looks like there's something nearby.",
			TRACKING = "I should follow his lead.",
			TRACKING_NOT_MINE = "He's leading the way for someone else.",
			NOTHING_TO_TRACK = "It doesn't look like there's anything left to find.",
			TARGET_TOO_FAR_AWAY = "They might be too far away for him to sniff out.",
		},

		YOT_CATCOONSHRINE =
        {
            GENERIC = "What to make...",
            EMPTY = "Maybe it would like a feather to play with...",
            BURNT = "Smells like scorched fur.",
        },

		KITCOON_FOREST = "Aren't you the cutest little cat thing!",
		KITCOON_SAVANNA = "Aren't you the cutest little cat thing!",
		KITCOON_MARSH = "I must collect more... for research!",
		KITCOON_DECIDUOUS = "Aren't you the cutest little cat thing!",
		KITCOON_GRASS = "Aren't you the cutest little cat thing!",
		KITCOON_ROCKY = "I must collect more... for research!",
		KITCOON_DESERT = "I must collect more... for research!",
		KITCOON_MOON = "I must collect more... for research!",
		KITCOON_YOT = "I must collect more... for research!",

        -- Moon Storm
        ALTERGUARDIAN_PHASE1 = {
            GENERIC = "Ah! What is that thing?!",
            DEAD = "That wasn't so bad!",
        },
        ALTERGUARDIAN_PHASE2 = {
            GENERIC = "Whatever you are, I'm gonna make you hurt real good this time!",
            DEAD = "I knew you were no match for me!",
        },
        ALTERGUARDIAN_PHASE2SPIKE = "Someone's in the mood for Fuel kabobs.",
        ALTERGUARDIAN_PHASE3 = "3rd time's the charm!",
        ALTERGUARDIAN_PHASE3TRAP = "I should stay away from that.",
        ALTERGUARDIAN_PHASE3DEADORB = "You done yet?",
        ALTERGUARDIAN_PHASE3DEAD = "Some people just never learn. Look at ya now, ya dolt!",

        ALTERGUARDIANHAT = "It tells me things I never wanted to know.",
        ALTERGUARDIANHATSHARD = "The secrets to this plane of existence, in the palm of my hand.",

        MOONSTORM_GLASS = {
            GENERIC = "It's some sort of glass?",
            INFUSED = "It's glowing all funny."
        },

        MOONSTORM_STATIC = "What's the fuzzy stuff?",
        MOONSTORM_STATIC_ITEM = "Yup. It's fuzzy.",
        MOONSTORM_STATIC_ROAMER = "What was that?",
        MOONSTORM_SPARK = "I think I'll call it the \"Higgsbury Particle.\"",

        BIRD_MUTANT = "What in the world?",
        BIRD_MUTANT_SPITTER = "That can't be good.",

        WAGSTAFF_NPC = "Ain't trustworthy. Can read 'em like a book.'",

        WAGSTAFF_NPC_MUTATIONS = "Willingly came here? Ain't that something to ponder, huh.",
        WAGSTAFF_NPC_WAGPUNK = "I got my eye on that one.",

        ALTERGUARDIAN_CONTAINED = "What are you doing with that?",

        WAGSTAFF_TOOL_1 = "Looks like something a man would have no use for.",
        WAGSTAFF_TOOL_2 = "Ya see, real men's tools are way cooler.",
        WAGSTAFF_TOOL_3 = "Ain't nothing I'd be caught using.",
        WAGSTAFF_TOOL_4 = "Couldn't tell ya.",
        WAGSTAFF_TOOL_5 = "Ya think I got any care?",

        MOONSTORM_GOGGLESHAT = "They ain't bad, I'll give ya that.",

        MOON_DEVICE = {
            GENERIC = "I ain't that keen on science.",
            CONSTRUCTION1 = "Some sorta construction project?",
            CONSTRUCTION2 = "Guess I could contribute somethin.''",
        },

		-- Wanda
        POCKETWATCH_HEAL = {
			GENERIC = "It don't work like the Twins' powers, don't it?",
			RECHARGING = "Whatsit doin?'",
		},

        POCKETWATCH_REVIVE = {
			GENERIC = "It don't work like the Twins' powers, don't it?",
			RECHARGING = "Whatsit doin'?",
		},

        POCKETWATCH_WARP = {
			GENERIC = "Ain't like no watch I seen before.",
			RECHARGING = "Whatsit doin?'",
		},

        POCKETWATCH_RECALL = {
			GENERIC = "Ain't like no watch I seen before.",
			RECHARGING = "Whatsit doin?'",
			UNMARKED = "only_used_by_wanda",
			MARKED_SAMESHARD = "only_used_by_wanda",
			MARKED_DIFFERENTSHARD = "only_used_by_wanda",
		},

        POCKETWATCH_PORTAL = {
			GENERIC = "Ain't like no watch I seen before.",
			RECHARGING = "Whatsit doin?'",
			UNMARKED = "only_used_by_wanda unmarked",
			MARKED_SAMESHARD = "only_used_by_wanda same shard",
			MARKED_DIFFERENTSHARD = "only_used_by_wanda other shard",
		},

        POCKETWATCH_WEAPON = {
			GENERIC = "When you're a man like me and Dad, only clock ya need is the sun!",
			DEPLETED = "only_used_by_wanda",
		},

        POCKETWATCH_PARTS = "Can't make heads or tails of any of this junk!",
        POCKETWATCH_DISMANTLER = "It's a do-hicky.",

        POCKETWATCH_PORTAL_ENTRANCE =
		{
			GENERIC = "Portals got me into this whole mess.",
			DIFFERENTSHARD = "Portals got me into this whole mess.",
		},
        POCKETWATCH_PORTAL_EXIT = "I ain't survivin' that one.",

        -- Waterlog
        WATERTREE_PILLAR = "Whodda guessed trees grew this big!",
        OCEANTREE = "You've got to have quite the trunk to withstand the ocean!",
        OCEANTREENUT = "That's a huge nut!",
        WATERTREE_ROOT = "A big tree root.",

        OCEANTREE_PILLAR = "Imagine the charcoal from this bad boy",

        OCEANVINE = "Bet I could climb 'em.",
        FIG = "Never had this fruit before.",
        FIG_COOKED = "Let's see how it tastes.",

        SPIDER_WATER = "Guess y'all live here!",
        MUTATOR_WATER = "And I thought Mike's cookies were somethin.''",
        OCEANVINE_COCOON = "What's it hiding?",
        OCEANVINE_COCOON_BURNT = "Yoops.",

        GRASSGATOR = "What in the heck are you supposed to be?",

        TREEGROWTHSOLUTION = "Even trees gotta eat.",

        FIGATONI = "Figgy.",
        FIGKABAB = "Needs more meat.",
        KOALEFIG_TRUNK = "Good and food didn't get along.",
        FROGNEWTON = "I can only taste the fig.",

        -- The Terrorarium
        TERRARIUM = {
            GENERIC = "What kinda globe is this?",
            CRIMSON = "It's much more red in there.",
            ENABLED = "Whoa!",
			WAITING_FOR_DARK = "I touched it and now it's all glowy!",
			COOLDOWN = "It's empty now.",
			SPAWN_DISABLED = "Is it broken?",
        },

        -- Wolfgang
        MIGHTY_GYM =
        {
            GENERIC = "Out the village, we don't got time for sorta stuff. You wanna get fit, go out and lift some lumber!",
            BURNT = "Won't do ya good like that.",
        },

        DUMBBELL = "Isn't this supposed to heavy?",
        DUMBBELL_GOLDEN = "No problem for me.",
		DUMBBELL_MARBLE = "It's heavy, but I can handle it!",
        DUMBBELL_GEM = "What a dumb bell.",
        POTATOSACK = "For all sorts of stuff.",

        DUMBBELL_HEAT = "Not mine to play with.",
        DUMBBELL_REDGEM = "It's hot to the touch.",
        DUMBBELL_BLUEGEM = "Colder than a Winter.",

        TERRARIUMCHEST =
		{
			GENERIC = "It's no normal chest.",
			BURNT = "It's burnt to a crisp.",
			SHIMMER = "Huh?",
		},

		EYEMASKHAT = "I guess if it keeps my brain inside my skulls.",

        EYEOFTERROR = "If you're lookin' to tussle, I've got the muscle!",
        EYEOFTERROR_MINI = "That's an evil eye if I've ever seen one!",
        EYEOFTERROR_MINI_GROUNDED = "What the?",

        FROZENBANANADAIQUIRI = "Mmmm, what a nice treat!",
        BUNNYSTEW = "Bunnies taste great, by the way!",
        MILKYWHITES = "What is this stuff?",

        CRITTER_EYEOFTERROR = "I guess if you quit you're starin,' I'm okay with you.",

        SHIELDOFTERROR ="Wasn't expecting my shield to take a bite out of ya, were ya?",
        TWINOFTERROR1 = "Technological terror!",
        TWINOFTERROR2 = "Technological terror!",

		-- Cult of the Lamb
		COTL_TRINKET = "What's this? Looks stupid.",
		TURF_COTL_GOLD = "Yeesh, talk about a waste.",
		TURF_COTL_BRICK = "Some bricks.",
		COTL_TABERNACLE_LEVEL1 =
		{
			LIT = "Nothing quite like a warm fire.",
			GENERIC = "Outta light.",
		},
		COTL_TABERNACLE_LEVEL2 =
		{
			LIT = "I feel so comfortable around it.",
			GENERIC = "Outta light.",
		},
		COTL_TABERNACLE_LEVEL3 =
		{
			LIT = "It's too comforting...",
			GENERIC = "Outta light..",
		},

        -- Year of the Catcoon
        CATTOY_MOUSE = "Mice with wheels, what will science think up next?",
        KITCOON_NAMETAG = "I should think of some names! Let's see, Wilson Jr., Wilson Jr. 2...",

		KITCOONDECOR1 =
        {
            GENERIC = "It's not a real bird, but the kits don't know that.",
            BURNT = "Combustion!",
        },
		KITCOONDECOR2 =
        {
            GENERIC = "Those kits are so easily distracted. Now what was I doing again?",
            BURNT = "It went up in flames.",
        },

		KITCOONDECOR1_KIT = "It looks like there's some assembly required.",
		KITCOONDECOR2_KIT = "It doesn't look too hard to build.",

        -- WX78
        WX78MODULE_MAXHEALTH = "It's a thingie.",
        WX78MODULE_MAXSANITY1 = "It's a thingie.",
        WX78MODULE_MAXSANITY = "It's a thingie.",
        WX78MODULE_MOVESPEED = "It's a thingie.",
        WX78MODULE_MOVESPEED2 = "It's a thingie.",
        WX78MODULE_HEAT = "It's a thingie.",
        WX78MODULE_NIGHTVISION = "It's a thingie.",
        WX78MODULE_COLD = "It's a thingie.",
        WX78MODULE_TASER = "It's a thingie.",
        WX78MODULE_LIGHT = "It's a thingie.",
        WX78MODULE_MAXHUNGER1 = "It's a thingie.",
        WX78MODULE_MAXHUNGER = "It's a thingie.",
        WX78MODULE_MUSIC = "It's a thingie.",
        WX78MODULE_BEE = "It's a thingie..",
        WX78MODULE_MAXHEALTH2 = "It's a thingie.",

        WX78_SCANNER =
        {
            GENERIC ="What sorta tacky piecea-",
            HUNTING = "Keep it away from me!",
            SCANNING = "Huh?",
        },

        WX78_SCANNER_ITEM = "I could smush it like a bug.",
        WX78_SCANNER_SUCCEEDED = "Stop making me feel bad!",

        WX78_MODULEREMOVER = "Think Bronson uses these sometimes.",

        SCANDATA = "Buncha crap.",

		-- QOL 2022
		JUSTEGGS = "Lucas and Claus will be your best friends forever if ya know how to whip 'em up.'",
		VEGGIEOMLET = "Mmmm, if it's gonna be a long day, at least start it right.",
		TALLEGGS = "Looks like a mouthful!",
		BEEFALOFEED = "They're not bad to knaw on.",
		BEEFALOTREAT = "It's not too bad tasting, actually!",

        -- Pirates
        BOAT_ROTATOR = "If you weren't seasick yet, boy do I got something in store for ya!",
        BOAT_ROTATOR_KIT = "Now I just need a ship.",
        BOAT_BUMPER_KELP = "Now my boat's just a biiiit stronger.",
        BOAT_BUMPER_KELP_KIT = "It goes on a boat.",
		BOAT_BUMPER_SHELL = "Do your worst, ocean!",
        BOAT_BUMPER_SHELL_KIT = "It goes on a boat.",
        BOAT_BUMPER_CRABKING = "More tank than boat at this point.",
        BOAT_BUMPER_CRABKING_KIT = "It goes on a boat.",

        BOAT_CANNON = {
            GENERIC = "It'll punch a hole in anything!",
            AMMOLOADED = "Lock and load!",
            NOAMMO = "Needs a cannon ball.",
        },
        BOAT_CANNON_KIT = "Just you wait!",
        CANNONBALL_ROCK_ITEM = "Cannon, meet ball!",

        OCEAN_TRAWLER = {
            GENERIC = "I can do real fishing with this.",
            LOWERED = "Just gotta kick back and relax.",
            CAUGHT = "Would you look at that!",
            ESCAPED = "My catch!",
            FIXED = "There. Try and escape this time, lunch!",
        },
        OCEAN_TRAWLER_KIT = "Ready for fishing!",

        BOAT_MAGNET =
        {
            GENERIC = "Is that them 'P-S-I' them Twins keep going on about?",
            ACTIVATED = "Well I'll be.",
        },
        BOAT_MAGNET_KIT = "It needs to be set up.",

        BOAT_MAGNET_BEACON =
        {
            GENERIC = "I dunno how it works.",
            ACTIVATED = "Well how about that.",
        },
        DOCK_KIT = "A dock might do us some good.",
        DOCK_WOODPOSTS_ITEM = "It'll be needing some support, won't it?",

        MONKEYHUT =
        {
            GENERIC = "Some pirates live here.",
            BURNT = "Whoops.",
        },
        POWDER_MONKEY = "You look like you're up to no good!",
        PRIME_MATE = "He's bossing 'em around.",
		LIGHTCRAB = "Well that's pretty cool!",
        CUTLESS = "Kid's toy? Psh, Dad got me my first axe when I was 8!",
        CURSED_MONKEY_TOKEN = "H-hey, it won't come off my wrist!!",
        OAR_MONKEY = "You row your boat, you beat people on the head. What's not to understand?",
        BANANABUSH = "It's a banana bush.",
        DUG_BANANABUSH = "I should plant it.",
        PALMCONETREE = "These trees just get weirder and weirder.",
        PALMCONE_SEED = "That will grow more trees.",
        PALMCONE_SAPLING = "Take yer time, I'll be needing some lumber.",
        PALMCONE_SCALE = "It's tough as Hell!",
        MONKEYTAIL = "It's some sorta bush.",
        DUG_MONKEYTAIL = "I should plant it.",

        MONKEY_MEDIUMHAT = "I look kinda silly.",
        MONKEY_SMALLHAT = "It's not very comfortable.",
        POLLY_ROGERSHAT = "It's not my typea thing.",
        POLLY_ROGERS = "Quit following me around!",

        MONKEYISLAND_PORTAL = "Portals and this place means real trouble.",
        MONKEYISLAND_PORTAL_DEBRIS = "Some junk lying around.",
        MONKEYQUEEN = "Sloozing around. Yeah, sounds like royalty to me.",
        MONKEYPILLAR = "Some supports.",
        PIRATE_FLAG_POLE = "It's a flag.",

        BLACKFLAG = "It's a flag",
        PIRATE_STASH = "Buncha stuff.",
        STASH_MAP = "Looks like a map to me.",

        BANANAJUICE = "Tastes like banana. What does banana taste like?",

        FENCE_ROTATOR = "Poke their eyes out!",

        CHARLIE_STAGE_POST = "What is this doing out here?",
        CHARLIE_LECTURN = "Huh. Some sorta script? Excuse me?",

        CHARLIE_HECKLER = "Ya better quit it!.",

        PLAYBILL_THE_DOLL = "\"Authored by C.W.\"",
        PLAYBILL_THE_VEIL = "\"Brought to you by the Heralds of Tenebrau.\"",
        PLAYBILL_THE_VAULT = "Written by \"E.\"?",
        STATUEHARP_HEDGESPAWNER = "The flowers grew back, but the head didn't.",
        HEDGEHOUND = "The bush is alive!",
        HEDGEHOUND_BUSH = "It's a bush.",

        MASK_DOLLHAT = "It's a doll mask.",
        MASK_DOLLBROKENHAT = "It's a cracked doll mask.",
        MASK_DOLLREPAIREDHAT = "It was a doll mask at one point.",
        MASK_BLACKSMITHHAT = "It's a blacksmith mask.",
        MASK_MIRRORHAT = "It's a mask, but it looks like a mirror.",
        MASK_QUEENHAT = "It's a Queen mask.",
        MASK_KINGHAT = "It's a King mask.",
        MASK_TREEHAT = "It's a tree mask.",
        MASK_FOOLHAT = "It's a fool's mask.",

        COSTUME_DOLL_BODY = "It's a doll costume.",
        COSTUME_QUEEN_BODY = "It's a Queen costume.",
        COSTUME_KING_BODY = "It's a King costume.",
        COSTUME_BLACKSMITH_BODY = "It's a blacksmith costume.",
        COSTUME_MIRROR_BODY = "It's a costume.",
        COSTUME_TREE_BODY = "It's a tree costume.",
        COSTUME_FOOL_BODY = "It's a fool's costume.",

        STAGEUSHER =
        {
            STANDING = "I don't like that!",
            SITTING = "Huh.",
        },
        SEWING_MANNEQUIN =
        {
            GENERIC = "For holding clothes.",
            BURNT = "Burnt up.",
        },

		-- Waxwell
		MAGICIAN_CHEST = "What's inside?",
		TOPHAT_MAGICIAN = "Ya can keep your hat.",

        -- Year of the Rabbit
        YOTR_FIGHTRING_KIT = "It must be built, for science!",
        YOTR_FIGHTRING_BELL =
        {
            GENERIC = "It's peaceful, for now.",
            PLAYING = "I think we've all learned a lot here today.",
        },

        YOTR_DECOR_1 = {
            GENERAL = "That rabbit can really light up a room.",
            OUT = "That rabbit isn't lighting up anything.",
        },
        YOTR_DECOR_2 = {
            GENERAL = "That rabbit can really light up a room.",
            OUT = "That rabbit isn't lighting up anything.",
        },

        HAREBALL = "At this point... I've eaten worse things.",
        YOTR_DECOR_1_ITEM = "I know just the place for it.",
        YOTR_DECOR_2_ITEM = "I know just the place for it.",

		--
		DREADSTONE = "What sorta rock is this?",
		HORRORFUEL = "This stuff... it's not good, is it?",
		DAYWALKER =
		{
			GENERIC = "Guess I'm too trusting.",
			IMPRISONED = "Who trapped you? Maybe it was for good reason.",
		},
		DAYWALKER_PILLAR =
		{
			GENERIC = "It doesn't seem like a normal pillar.",
			EXPOSED = "What is this stuff?",
		},
		DAYWALKER2 =
		{
			GENERIC = "Are we even, now?",
			BURIED = "Trapped again? That'll serve ya right!",
			HOSTILE = "Playing for keeps? Don't blame ya!",
		},
		ARMORDREADSTONE = "I don't like it.",
		DREADSTONEHAT = "Not one bit.",

        -- Rifts 1
        LUNARRIFT_PORTAL = "That portal is bringing all sorts of terrible things!",
        LUNARRIFT_CRYSTAL = "What is this stuff?",

        LUNARTHRALL_PLANT = "Hey, ya vermit! Get outta here!",
        LUNARTHRALL_PLANT_VINE_END = "That hurts alright!",

		LUNAR_GRAZER = "This place just gets worse and worse!",

        PUREBRILLIANCE = "Dunno what to make of it.",
        LUNARPLANT_HUSK = "I can't seem to break it up at all!",

		LUNAR_FORGE = "It's some sorta workstation.",
		LUNAR_FORGE_KIT = "It needs to be put somewhere.",

		LUNARPLANT_KIT = "Keeps your stuff in tip-top shape.",
		ARMOR_LUNARPLANT = "I'm a proper knight in it.",
		LUNARPLANTHAT = "No knight is complete without a helmet!",
		BOMB_LUNARPLANT = "Get ready for this one!",
		STAFF_LUNARPLANT = "I'll put this to good use!",
		SWORD_LUNARPLANT = "I'll slice anything up that gets in my way!",
		PICKAXE_LUNARPLANT = "I can squash anything now!",
		SHOVEL_LUNARPLANT = "Gimme something to beat up!",

		BROKEN_FORGEDITEM = "It'll be needing some repairs.",

        PUNCHINGBAG = "Time to prove how much of a punch I can pack.",

        -- Rifts 2
        SHADOWRIFT_PORTAL = "That is one pit I don't want to find the bottom of!",

		SHADOW_FORGE = "So long as it don't mess me up, I won't mess it up.",
		SHADOW_FORGE_KIT = "Guess I should take it with me somewhere.",

        FUSED_SHADELING = "Damn critter bites!",
        FUSED_SHADELING_BOMB = "That looks dangerous!",

		VOIDCLOTH = "It's no normal piecea cloth.",
		VOIDCLOTH_KIT = "It'll keep some of that shadow stuff intact.",
		VOIDCLOTHHAT = "No one will recognize me now!",
		ARMOR_VOIDCLOTH = "It has a coldness to it.",

        VOIDCLOTH_UMBRELLA = "Aw, come on, a little acid never hurt no one!",
        VOIDCLOTH_SCYTHE = "Call me the Grim Reaper!",

		SHADOWTHRALL_HANDS = "Don't you dare touch me there!",
		SHADOWTHRALL_HORNS = "I ain't gonna fall to you!",
		SHADOWTHRALL_WINGS = "Bring it on!",
		SHADOWTHRALL_MOUTH =  "It wants to eat me up!",

        CHARLIE_NPC = "Huh. Feel like I've ya before.",
        CHARLIE_HAND = "Looking for something?",

        NITRE_FORMATION = "It's no rock I've seen before.",
        DREADSTONE_STACK = "It's... unlike anything I've ever seen.",
        
        SCRAPBOOK_PAGE = "What is this?",

        LEIF_IDOL = "Betcha Isaac would like it.",
        WOODCARVEDHAT = "Well that's just goofy.",
        WALKING_STICK = "I ain't some old man, I can walk fine!",

        IPECACSYRUP = "Yuck.",
        BOMB_LUNARPLANT_WORMWOOD = "Our friend seems to be getting more in touch with his lunar roots.", -- Unused
        WORMWOOD_MUTANTPROXY_CARRAT =
        {
        	DEAD = "Dead.",
        	GENERIC = "Wait... you're not a carrot!",
        	HELD = "Huh. Well I'll be.",
        	SLEEPING = "G'night.",
        },
        WORMWOOD_MUTANTPROXY_LIGHTFLIER = "Think you'd call that whimsical, or somethin!'",
		WORMWOOD_MUTANTPROXY_FRUITDRAGON =
		{
			GENERIC = "Howdy, little fella!",
			RIPE = "It looks funny.",
			SLEEPING = "Get some rest.",
		},

        SUPPORT_PILLAR_SCAFFOLD = "I'm workin' on it!",
        SUPPORT_PILLAR = "Could do with some maintenance.",
        SUPPORT_PILLAR_COMPLETE = "Impressive, ain't it?",
        SUPPORT_PILLAR_BROKEN = "Well dang nab it.",

		SUPPORT_PILLAR_DREADSTONE_SCAFFOLD = "I'm workin' on it!",
		SUPPORT_PILLAR_DREADSTONE = "Could do with some maintenance.",
		SUPPORT_PILLAR_DREADSTONE_COMPLETE = "About time I put that stuff to good use.",
		SUPPORT_PILLAR_DREADSTONE_BROKEN = "Dang it!",

        WOLFGANG_WHISTLE = "When just giving orders around with your voice ain't enough.",

        -- Rifts 3

        MUTATEDDEERCLOPS = "Whaaaaaaat!",
        MUTATEDWARG = "Guess it's back with a vengeance!",
        MUTATEDBEARGER = "Back from the dead for round 2? Let's get it!",

        LUNARFROG = "Um, hi.",

        DEERCLOPSCORPSE =
        {
            GENERIC  = "Gotcha!",
            BURNING  = "Yeesh that smells!",
            REVIVING = "What's happening?",
        },

        WARGCORPSE =
        {
            GENERIC  = "Phew!",
            BURNING  = "Yeesh, that smells!",
            REVIVING = "Huh? What's going on?",
        },

        BEARGERCORPSE =
        {
            GENERIC  = "Croaked!",
            BURNING  = "By the Sanctuary Gods, that reeks!",
            REVIVING = "What's happening to it?",
        },

        BEARGERFUR_SACK = "Now my stuff will be extra cold.",
        HOUNDSTOOTH_BLOWPIPE = "Teeth? Doesn't seem all that hygenic.",
        DEERCLOPSEYEBALL_SENTRYWARD =
        {
            GENERIC = "Now do yer job.",    -- Enabled.
            NOEYEBALL = "Guess it's slacking off.",  -- Disabled.
        },
        DEERCLOPSEYEBALL_SENTRYWARD_KIT = "Let's find somewhere good to keep this.",

        SECURITY_PULSE_CAGE = "Nothin' there.",
        SECURITY_PULSE_CAGE_FULL = "There's some sort of light... thingy...",

		CARPENTRY_STATION =
        {
            GENERIC = "I'm not carpenter.",
            BURNT = "Oops.",
        },

        WOOD_TABLE = -- Shared between the round and square tables.
        {
            GENERIC = "Does this look like the time for some home decor to you?",
            HAS_ITEM = "Does this look like the time for some home decor to you?",
            BURNT = "What a waste of lumber.",
        },

        WOOD_CHAIR =
        {
            GENERIC = "The grass is more comfy.",
            OCCUPIED = "The grass is more comfy.",
            BURNT = "What a waste of lumber.",
        },

        DECOR_CENTERPIECE = "Eh.",
        DECOR_LAMP = "Eh.",
        DECOR_FLOWERVASE =
        {
            GENERIC = "Eh.",
            EMPTY = "Eh.",
            WILTED = "Them's flower's dying.",
            FRESHLIGHT = "Least it's somewhat practical.",
            OLDLIGHT = "Ain't doing much good now.",
        },
        DECOR_PICTUREFRAME =
        {
            GENERIC = "Eh.",
            UNDRAWN = "What in the- What am I doing with this?",
        },
        DECOR_PORTRAITFRAME = "Eh.",

        PHONOGRAPH = "A sorta music box? Whoa!",
        RECORD = "I don't like this song.",
        RECORD_CREEPYFOREST = "Hmmm, I need something... more lively.",
        RECORD_DANGER = "Not my favorite.", -- Unused.
        RECORD_DAWN = "Needs more trumpet.", -- Unused.
        RECORD_DRSTYLE = "A whole song on one record? Technology has come so far.",
        RECORD_DUSK = "Needs more trumpet.", -- Unused.
        RECORD_EFS = "One of their more experimental tracks.",
        RECORD_END = "A whole song on one record? Technology has come so far.", -- Unused.
        RECORD_MAIN = "Needs more trumpet.", -- Unused.
        RECORD_WORKTOBEDONE = "One of their more experimental tracks.", -- Unused.
        RECORD_HALLOWEDNIGHTS = "I can't dance to this!",
        RECORD_BALATRO = "This one's a little better.",

        ARCHIVE_ORCHESTRINA_MAIN = "I can't even begin to begin.",

        WAGPUNKHAT = "It's... a little silly looking.",
        ARMORWAGPUNK = "Dad wouldn't approve.",
        WAGSTAFF_MACHINERY = "A buncha useless junk.",
        WAGPUNK_BITS = "I got no use for this.",
        WAGPUNKBITS_KIT = "What am I supposed to do with it?",

        WAGSTAFF_MUTATIONS_NOTE = "Buncha garble to me.",

        -- Meta 3

        BATTLESONG_INSTANT_REVIVE = "It makes me feel like a new man!",

        WATHGRITHR_IMPROVEDHAT = "Do you have one for boys?",
        SPEAR_WATHGRITHR_LIGHTNING = "Guess if you're gonna stab something, you wanna make extra sure it's dead.",

        BATTLESONG_CONTAINER = "Well ain't that nifty.",

        SADDLE_WATHGRITHR = "If only it let ya fly.",

        WATHGRITHR_SHIELD = "Guess it'll come in handy!",

        BATTLESONG_SHADOWALIGNED = "Do I look like the actin' type to ya?",
        BATTLESONG_LUNARALIGNED = "Do I look like the actin' type to ya?",

		SHARKBOI = "You don't like too friendly.",
        BOOTLEG = "Guess I'll hang on to it.",
        OCEANWHIRLPORTAL = "Is that safe?",

        EMBERLIGHT = "Huh. Useful.",
        WILLOW_EMBER = "only_used_by_willow",

        -- Year of the Dragon
        YOTD_DRAGONSHRINE =
        {
            GENERIC = "I'm burning with curiosity to see what's on offer.",
            EMPTY = "It might like a piece of charcoal.",
            BURNT = "Things got a little heated.",
        },

        DRAGONBOAT_KIT = "I'd better stop dragon my feet and build it.",
        DRAGONBOAT_PACK = "Boat building made easy!",

        BOATRACE_CHECKPOINT = "There's the checkpoint!",
        BOATRACE_CHECKPOINT_THROWABLE_DEPLOYKIT = "One more thing to check off my list.",
        BOATRACE_START = "You have to start somewhere.",
        BOATRACE_START_THROWABLE_DEPLOYKIT = "Where to start?",

        BOATRACE_PRIMEMATE = "Someone's shadowing me!",
        BOATRACE_SPECTATOR_DRAGONLING = "Its support is getting me all fired up!",

        YOTD_STEERINGWHEEL = "That'll steer me in the right direction. And the left direction.",
        YOTD_STEERINGWHEEL_ITEM = "That's going to be the steering wheel.",
        YOTD_OAR = "It's a really handy paddle.",
        YOTD_ANCHOR = "I wouldn't want my boat to fly away.",
        YOTD_ANCHOR_ITEM = "Now I can build an anchor.",
        MAST_YOTD = "That's one scaly sail.",
        MAST_YOTD_ITEM = "Now I can build a mast.",
        BOAT_BUMPER_YOTD = "When you mess with a dragon boat, you get the horns!",
        BOAT_BUMPER_YOTD_KIT = "A soon-to-be boat bumper.",
        BOATRACE_SEASTACK = "Buoy oh buoy!",
        BOATRACE_SEASTACK_THROWABLE_DEPLOYKIT = "Buoy oh buoy!",
        BOATRACE_SEASTACK_MONKEY = "Buoy oh buoy!",
        BOATRACE_SEASTACK_MONKEY_THROWABLE_DEPLOYKIT = "Buoy oh buoy!",
        MASTUPGRADE_LAMP_YOTD = "Aww, just look how its eyes light up when it sees me!",
        MASTUPGRADE_LAMP_ITEM_YOTD = "I'm full of bright ideas.",
        WALKINGPLANK_YOTD = "Dressing it up doesn't make me feel better about using it.",
        CHESSPIECE_YOTD = "Just the sight of it gets my heart racing!",

        -- Rifts / Meta QoL

        HEALINGSALVE_ACID = "Acid ain't gonna hurt ya too much!",

        BEESWAX_SPRAY = "Smells real yucky.",
        WAXED_PLANT = "That's real awful.", -- Used for all waxed plants, from farm plants to trees.

        STORAGE_ROBOT = {
            GENERIC = "You're the doorway to laziness! That's what Dad would say.",
            BROKEN = "Guess it's for the best.",
        },

        SCRAP_MONOCLEHAT = "It looks stupid.",
        SCRAPHAT = "No thanks.",

        FENCE_JUNK = "What a buncha crap.",
        JUNK_PILE = "Got no interest.",
        JUNK_PILE_BIG = {
            BLUEPRINT = "What's that?",
            GENERIC = "Careful!",
        },
        
        ARMOR_LUNARPLANT_HUSK = "That'll put a thorn in your side.",

        -- Meta 4 / Ocean QoL

        OTTER = "Some sorta otter. I don't like his looks.",
        OTTERDEN = {
            GENERIC = "Sea otters live there.",
            HAS_LOOT = "Ya hidin' something?",
        },
        OTTERDEN_DEAD = "That's not good!",

        BOAT_ANCIENT_ITEM = "It's a boat.",
        BOAT_ANCIENT_CONTAINER = "Should hold plenty!",
        WALKINGPLANK_ANCIENT = "Off ya go!",

        ANCIENTTREE_SEED = "I dunno what to make of it.",

        ANCIENTTREE_GEM = {
            GENERIC = "Is it edible?",
            STUMP = "Ain't nothin' left.",
        },

        ANCIENTTREE_SAPLING_ITEM = "I could plant it somewhere",

        ANCIENTTREE_SAPLING = {
            GENERIC = "There.",
            WRONG_TILE = "Hm, that's not right.",
            WRONG_SEASON = "Guess the weather it good for it.",
        },
 
        ANCIENTTREE_NIGHTVISION = {
            GENERIC = "What kinda tree is this?",
            STUMP = "Ain't nothin' left.",
        },

        ANCIENTFRUIT_GEM = "Can I eat this?.",
        ANCIENTFRUIT_NIGHTVISION = "It's like a bug, no harm in that!",
        ANCIENTFRUIT_NIGHTVISION_COOKED = "Now we eat.",

        BOATPATCH_KELP = "It'll help in a pinch.",

        CRABKING_MOB = "Don't mess with me!",
        CRABKING_MOB_KNIGHT = "I'm not backing down!",
        CRABKING_CANNONTOWER = "That's a real problem!",
        CRABKING_ICEWALL = "Hey!",

        SALTLICK_IMPROVED = "That's real salty.",

        OFFERING_POT =
        {
            GENERIC = "Am I supposed to put something here?",
            SOME_KELP = "Could fit more.",
            LOTS_OF_KELP = "There ya are!",
        },

        OFFERING_POT_UPGRADED =
        {
            GENERIC = "Am I supposed to put something here?",
            SOME_KELP = "Could fit more.",
            LOTS_OF_KELP = "There ya are!",
        },

        MERM_ARMORY = "Great, real great.",
        MERM_ARMORY_UPGRADED = "Great, real great.",
        MERM_TOOLSHED = "Ain't nothing of my interest.",
        MERM_TOOLSHED_UPGRADED = "Ain't nothing of my interest.",
        MERMARMORHAT = "Does my noggin look that freakish to you!?",
        MERMARMORUPGRADEDHAT = "Does my noggin look that freakish to you!?",
        MERM_TOOL = "No thanks.",
        MERM_TOOL_UPGRADED = "No thanks.",

        WURT_SWAMPITEM_SHADOW = "No thanks.",
        WURT_SWAMPITEM_LUNAR = "No thanks.",

        MERM_SHADOW = "This is feelin' like some sorta witchcraft.",
        MERMGUARD_SHADOW = "This is feelin' like some sorta witchcraft.",

        MERM_LUNAR = "I dunno about that.",
        MERMGUARD_LUNAR = "I dunno about that.",

        -- Rifts 4

        SHADOW_BEEF_BELL = "It seems to bind its soul to it.",
        SADDLE_SHADOW = "It doesn't look too comfy.",
        SHADOW_BATTLEAXE = "I'm gonna stick to the family axe now that I think about it.",
        VOIDCLOTH_BOOMERANG = "Don't wanna the catch on this one.",
		ROPE_BRIDGE_KIT = "Now I can get across big gaps!",
		GELBLOB =
		{
			GENERIC = "Gross!",
			HAS_ITEM = "Hey, that's mine!",
			HAS_CHARACTER = "Oh no.",
		},
        RABBITKING_AGGRESSIVE =  "What's got you all mad?",
        RABBITKING_PASSIVE = "This one's special.",
        RABBITKING_LUCKY = "This one's special.",
        RABBITKINGMINION_BUNNYMAN = "I'll show you what!",
        ARMOR_CARROTLURE = "Rabbits won't be able to resist.",
        RABBITKINGHORN = "I'll give you this, it's got use to it.",
        RABBITKINGHORN_CHEST = "Not bad.",
        RABBITKINGSPEAR = "Guess if it comes down to it I can use it.",
        RABBITHAT = "I got no interest in this.",
        WORM_BOSS = "It's gonna swallow me whole!",

        STONE_TABLE = -- Shared between the round and square tables.
        {
            GENERIC = "Does this look like the time for some home decor to you?",
            HAS_ITEM = "Does this look like the time for some home decor to you?",
        },

        STONE_CHAIR =
        {
            GENERIC = "That don't even look comfy.",
            OCCUPIED = "That don't even look comfy.",
        },

        CARPENTRY_BLADE_MOONGLASS = "It'll slice ya real easy.",

        CHEST_MIMIC_REVEALED = "That wasn't very kind of you.",

        GELBLOB_STORAGE = {
            GENERIC  = "Nothin' to see.",
            FULL = "Guess it works.",
        },
        GELBLOB_STORAGE_KIT = "Let's set it up.",
        GELBLOB_BOTTLE = "Least it's contained.",

        PLAYER_HOSTED =
        {
            GENERIC = "You okay?",
            ME = "What the?",
        },

        MASK_SAGEHAT = "Looking sharp.",
        MASK_HALFWITHAT = "Seems a bit dull.",
        MASK_TOADYHAT = "Should I just play along?",

        SHADOWTHRALL_PARASITE = "Dumb pest.",

        PUMPKINCARVER = "This could be fun!",
		SNOWMAN =
		{
			GENERIC = "You ain't had a childhood if you never made one.",
			SNOWBALL = "Snowball fight!",
		},
        SNOWBALL_ITEM = "Who wants to get bapped?",

        -- Year of the Snake
        YOTS_SNAKESHRINE =
        {
            GENERIC = "It's bursting with promise!",
            EMPTY = "It has a monstrous appetite.",
            BURNT = "Willow!",
        },
        YOTS_WORM = "It comes from lesser depths.",
        YOTS_LANTERN_POST = 
        {
            GENERIC = "It's post to be there.",
            BURNT = "It's post post",
        },
        YOTS_LANTERN_POST_ITEM = "Where's it post to go?",
        CHESSPIECE_DEPTHWORM  = "Eh.",

        -- Meta 5
        GHOSTLYELIXIR_LUNAR = "Is that really safe to drink?",
        GHOSTLYELIXIR_SHADOW = "Is that really safe to drink?",

		SLINGSHOTMODKIT = "Slingshottery.",
		SLINGSHOT_BAND_PIGSKIN = "Slingshottery.",
		SLINGSHOT_BAND_TENTACLE = "Slingshottery.",
		SLINGSHOT_BAND_MIMIC = "Slingshottery.",
		SLINGSHOT_FRAME_BONE = "Slingshottery.",
		SLINGSHOT_FRAME_GEMS = "Slingshottery.",
		SLINGSHOT_FRAME_WAGPUNK_0 = "Slingshottery.",
		SLINGSHOT_FRAME_WAGPUNK = "Slingshottery.",
		SLINGSHOT_HANDLE_STICKY = "Slingshottery.",
		SLINGSHOT_HANDLE_JELLY = "Slingshottery.",
		SLINGSHOT_HANDLE_SILK = "Slingshottery.",
		SLINGSHOT_HANDLE_VOIDCLOTH = "Slingshottery.",

		WOBY_TREAT = "Not the best tasting.",
		BANDAGE_BUTTERFLYWINGS = "I guess if it stops bleeding, I can't complain.",
		PORTABLEFIREPIT_ITEM = "Not too bad.",
        SLINGSHOTAMMO_CONTAINER = "Slingshottery.",

        ELIXIR_CONTAINER = "Keeps ya organized.",
        GHOSTFLOWERHAT = "Not my typea thing.",
        WENDY_RESURRECTIONGRAVE = "Huh.",
        GRAVEURN =
        {
            GENERIC = "Nothin's there.",
            HAS_SPIRIT = "Someone's spirit is inside.",
        },

        SHALLOW_GRAVE = "Coulda dug it a little deeper.",
        THULECITEBUGNET = "What am I doing with this?",

        -- Deck of Cards
        DECK_OF_CARDS = "You're supposed to play games with these?",
        PLAYING_CARD = "What's with the numbers and symbols?",
        BALATRO_MACHINE = "I dunno what that thing's deal is.",

		-- Rifts 5
		GESTALT_CAGE =
		{
			GENERIC = "Nothin.' there.'",
			FILLED = "Hello!",
		},
		WAGBOSS_ROBOT_SECRET = "You're upta no good huh?",
        WAGBOSS_ROBOT = "That's trouble, real trouble!",
        WAGBOSS_ROBOT_POSSESSED = "Guess I'll take care of it, then!",
		WAGBOSS_ROBOT_LEG = "Serves ya right!",
		ALTERGUARDIAN_PHASE1_LUNARRIFT = "You're back, huh?",
		ALTERGUARDIAN_PHASE1_LUNARRIFT_GESTALT = "Yeah yeah, I got it.",
        ALTERGUARDIAN_PHASE4_LUNARRIFT = "That's enough!",
		WAGDRONE_ROLLING =
        {
            GENERIC = "Watch out!",
            INACTIVE = "Good and dead.",
            DAMAGED = "Good and dead.",
            FRIENDLY = "Guess I'll find a use for 'em.'",
        },
        WAGDRONE_FLYING =
        {
            GENERIC = "I'ma knock some sense into it!",
            INACTIVE = "Good and dead.",
            DAMAGED = "Good and dead.",
        },
		WAGDRONE_PARTS = "Junk.",
		WAGDRONE_BEACON = "A thingie.",

        WAGPUNK_WORKSTATION = "Yugh.",
        WAGPUNK_LEVER = "It's a lever.",
        WAGPUNK_FLOOR_KIT = "Some grass would do ya good.",
        WAGPUNK_CAGEWALL = "I don't like this.",

		WAGSTAFF_ITEM_1 = "A glove?",
		WAGSTAFF_ITEM_2 = "Some clipboard.",

        HERMITCRAB_RELOCATION_KIT = "A that old man got lots of unkindness to pay for.",

        WANDERINGTRADER =
        {
            REVEALED = "Oh, ya looking to trade?",
            GENERIC = "Wazzat?",
        },

        GESTALT_GUARD_EVOLVED = "It's a real angry type.",
        FLOTATIONCUSHION = "It floats!",
        LUNAR_SEED = "Finders keepers!",

        -- rifts5.1
        WAGBOSS_ROBOT_CONSTRUCTIONSITE = "Upta no good.",
        WAGBOSS_ROBOT_CONSTRUCTIONSITE_KIT = "I don't wanna help him, but... Dad's gotta be real worried about me.",
        WAGBOSS_ROBOT_CREATION_PARTS = "Stuff.",
        MOONSTORM_STATIC_CATCHER = "Guess I'll be needing it.",
        COOLANT = "What's the stuff? It edible?",

        FENCE_ELECTRIC = {
            LINKED = "That seems cruel.",      --NOTE: the fence post is fully linked to two other posts
            GENERIC = "Doing a whole lot of nothin.'",           --NOTE: no links or electricity, just boring ol fence post
        },
        FENCE_ELECTRIC_ITEM = "What sorta fence is this?",

        MUTATEDBIRD = "Yugh, that's an abomination!",

        BIRDCORPSE =
        {
            GENERIC  = "Dead.", --witnessing the corpse
            BURNING  = "Yikes!", --when its burning
            REVIVING = "What?", --when its mutating and being revived
        },

        BUZZARDCORPSE = {
            GENERIC  = "Dead.", --witnessing the corpse
            BURNING  = "Yikes!", --when its burning
            REVIVING = "What the?", --when its mutating and being revived
        },

        MUTATEDBUZZARD = {
            GENERIC = "Guh. Stay away!", -- Generic string
            EATING_CORPSE = "No table manners, huh?", -- Eating from a fresh corpse (might be from the players kill or another creatures kill)
        },

        -- Rifts 6

        SHADOWTHRALL_CENTIPEDE = {
            HEAD = "Awful thing.", --The head segment
            BODY = "Careful!", --The body segment
            FLIPPED = "My turn!", --When it's flipped over (either head or body segment)
        },

        TREE_ROCK =
		{
			BURNING = "It's gonna come crashing down!", --It's vines are burning, it will collapse
			CHOPPED = "Coulda crushed me!", --It's 'chopped', so the rock fell
			GENERIC = "What ya doing with that rock?", --Rock is still on tree
		},

        -- NOTE: Unsure about HOT and COLD, just do GENERIC, GAS, MIASMA for now!
        CAVE_VENT_ROCK =
        {
            GENERIC = "It's some sort of vent.", -- Not ventilating anything
            HOT     = "It's real warm around it.", -- Ventiliating hot air, making the area warm
            GAS     = "Is that safe to breathe?", -- Ventiliating Toadstools gas fumes and spores
            MIASMA  = "That's definitely dangerous!", -- Ventiliating the shadow rift miasma
        },
        CAVE_FERN_WITHERED = "It's a withered fern.",
        FLOWER_CAVE_WITHERED = "It's dim bulb.",

		ABYSSPILLAR_MINION =
		{
			GENERIC = "Hm.", --off, looks like decor/statue
			ACTIVATED = "What the heck?", --turned on and hopping over puzzle pillars
		},
		ABYSSPILLAR_TRIAL = "Aw man, a test?",

        VAULT_TELEPORTER =
        {
            GENERIC = "It's some sort of... thing.",
            BROKEN = "Looks all busted up.",
            UNPOWERED = "It ain't workin.''",
        },
		VAULT_TELEPORTER_UNDERCONSTRUCTION = "Ain't done.",
		VAULT_ORB = "An orb.",
        VAULT_LOBBY_EXIT = "The way out!",
		VAULT_CHANDELIER_BROKEN = "It's all abusted up.",

		ANCIENT_HUSK = "I don't like the looks of that.",
		MASK_ANCIENT_HANDMAIDHAT = "I wouldn't bug her.",
		MASK_ANCIENT_ARCHITECTHAT = "I don't see the resemblance.",
		MASK_ANCIENT_MASONHAT = "It looks heavier than the others.",

        TREE_ROCK_SEED = "It's a seed.",
        TREE_ROCK_SAPLING = "It'll grow one of these days",

        -- Rifts 6.1
        OCEANWHIRLBIGPORTALEXIT = "What is that?", -- The flotsam pickable not the waterfall.

		VAULT_TORCH =
		{
			GENERIC = "Can I pull on that?",
			BROKEN = "Oops.", --the torch still functions, just the lever is broken
		},

        CAVE_VENT_MITE =
		{
			DEAD = "Croaked.",
			GENERIC = "It's some sorta bug.",
			SLEEPING = "Snug like a bug.",
            VENTING = "Careful breathin' that stuff in!", -- in the shield state and venting out gasses
        },
		--Hallowed Nights 2025

		PUMPKINHAT =
		{
			GENERIC = "Now I can see out of it!",
			UNCARVED = "I should make it a face.",--can't wear it unless it's carved.
		},

        PENGUINCORPSE =
		{
            GENERIC  = "Poor thing.", --witnessing the corpse
            BURNING  = "Well, maybe it tastes like chicken.", --when its burning
            REVIVING = "That's unsightly!", --when its mutating and being revived
		},
        SPIDERCORPSE =
		{
			GENERIC = "Squished and squashed.",
			BURNING = "Yuck, that smells!",
			REVIVING = "Huh?",
		},
        SPIDERQUEENCORPSE =
		{
			GENERIC = "You got bug guts all on me!",
			BURNING = "Smells awful!",
			REVIVING = "What's happening to it?",
		},
        MERMCORPSE =
		{
			GENERIC = "Dead.",
			BURNING = "And I thought it smelled bad before!",
			REVIVING = "What the heck?",
		},
        GENERIC_CORPSE = -- A generic set of lines for ANY corpse, until they get their own unique lines at least.
        {
            GENERIC = "Poke it with a stick. Then you'll know for sure.",
            BURNING = "Yeesh.",
            REVIVING = "That's giving me a real bad feeling.",
        },

		--Winter's Feast 2025

		W_RADIO = "What sorta gadget is that?",

		HERMITHOTSPRING  =
        {
        	GENERIC = "Nowhere is brimming with hotsprings!",
        	BOMBED = "If you ain't ever used one, you ain't a Tazmilian!",
			EMPTY = "Awwwww...",
        },
		HERMITHOTSPRING_CONSTR = "Big things are comin.'",
		MEATRACK_HERMIT_MULTI = --talk to vito; want to reuse MEATRACK, but less meat focused; more fish/tea
        {
		    DONE = "It's ready!",
            DRYING = "It's not different from charring wood, in a way.",
            DRYINGINRAIN = "This rain is no help at all!",
            GENERIC = "I could use that to dry and preserve my meat!",
            BURNT = "Man...",
            DONE_NOTMEAT = "Should be good!",
            DRYING_NOTMEAT = "Just gotta remove the moisture.",
            DRYINGINRAIN_NOTMEAT = "That's not gonna remove the moisture!",
            DONE_SALT = "All done!",
			ABANDONED = "It ain't doing nuthin' now.",
        },
		HERMITHOUSE_ORNAMENT = "It's neat.",
		HERMITHOUSE_LAUNDRY = "Old lady clothes",

        PETALS_DRIED = "The twins' mom always dried these. Maybe mine would have too.",
        PETALS_EVIL_DRIED = "The twins' mom always dried these. Maybe mine would have too.",
        FOLIAGE_DRIED = "The twins' mom always dried these. Maybe mine would have too.",
        SUCCULENT_PICKED_DRIED = "The twins' mom always dried these. Maybe mine would have too.",
        FIRENETTLES_DRIED = "The twins' mom always dried these. Maybe mine would have too.",
        TILLWEED_DRIED = "The twins' mom always dried these. Maybe mine would have too.",
        MOON_TREE_BLOSSOM_DRIED = "The twins' mom always dried these. Maybe mine would have too.",
        FORGETMELOTS_DRIED = "The twins' mom always dried these. Maybe mine would have too.",

        HERMITCRABTEA_PETALS = "It's real relaxin.'",
        HERMITCRABTEA_PETALS_EVIL = "This just stresses me out.",
        HERMITCRABTEA_FOLIAGE = "Tastes funny.",
        HERMITCRABTEA_SUCCULENT_PICKED = "Mm, not too bad.",
        HERMITCRABTEA_FIRENETTLES = "Don'tcha worry, I can handle it!",
        HERMITCRABTEA_TILLWEED = "It's good for ya, I guess.",
        HERMITCRABTEA_MOON_TREE_BLOSSOM = "Tastes funny.",
        HERMITCRABTEA_FORGETMELOTS = "I don't mind a sip.",
        SHELLWEAVER = "Well look at that!",
        ICESTAFF2 = "Ya ain't seen nothin' yet!",
        ICESTAFF3 = "I'll freeze this whole place if ya push me to it!",
        NONSLIPGRIT = "Now I won't bust my ass!",
        NONSLIPGRITBOOSTED = "I won't bust my butt. There, that language make you happy instead?",
        DESICCANT = "It'll dry anythin' up.",
        DESICCANTBOOSTED = "It's mighty dryin' time!",
        HERMITCRAB_SHELL = "This'll really take me right over there?",
        SALTY_DOGHAT = "It looks a little too fancy for my liking.",
        SALTY_DOG = "Guess you're sorta cute.",

        HERMITCRAB_TEASHOP =
        {
            GENERIC = "It's closed.", -- Inactive state, no Pearl inside.
            ACTIVE = "Tea, huh?", -- Active, Pearl is inside, can buy from her
            BREWING = "Take yer time, Mrs. Pearl!", -- A trade just happened and she's brewing the tea!|
            BURNT = "I can relate.", -- burnt strings.
        },

        FISHMEAT_DRIED = "Dried fish? Don't mind if I do!",
        FISHMEAT_SMALL_DRIED = "Dried fish? Don't mind if I do!",

        HERMITCRAB_LIGHTPOST = -- Similar to YOTS_LANTERN_POST
        {
            GENERIC = "Makes it feel more homely around here.",
            ABANDONED = "So long as we're together, it don't matter...",
        },
        HERMITCRAB_LIGHTPOST_ITEM = "I should place this.",

        -- Year of the Clockwork Knight

        YOTH_KNIGHTSHRINE =
        {
            GENERIC = "I was shrine my best.", -- Has an offering of either gears, wires or doodad.
            EMPTY = "It gives the colt shoulder unless I offer it something.", -- No offering. Character should hint at it wanting an offering.
            BURNT = "It's not a donkey, but it's definitely an ash.", -- Burnt.
        },

        MASK_PRINCESSHAT = "Hay, princess!",
        COSTUME_PRINCESS_BODY = "Ignore the neigh-sayers.",

        PLAYBILL_THE_PRINCESS_YOTH = "Hoof you seen this one yet?",

        KNIGHT_YOTH =
        {
            GENERIC = "Quit horsin' around!", -- Generic quote. It's aggressive.
            FOLLOWING = "Good knight!", -- Following the character examining
            FOLLOWING_OTHER = "Who's in charge? Have you herd?", -- Following another character or mannequin
        },

        YOTH_KNIGHTHAT = "Will I look like a foal?",
        ARMOR_YOTH_KNIGHT = "I'm saddled with questions.",
        HORSESHOE = "It would behoove me to keep this.",
        YOTH_LANCE = "Hm, can't say I lance-a-lot.",

        FLOATINGLANTERN =
        {
            DEFLATED = "Admit deflate!", -- Depleted and on the ground
            HELD = "The trick is to let it go.", -- In the players inventory
            GENERIC = "There we glow!", -- Floating in the sky!
        },

        YOTH_KNIGHTSTICK = "I'm hot to trot!",
        YOTH_CHAIR_ROCKING_ITEM = "It's a rocky ride!", -- The chair itself uses WOOD_CHAIR inspect states.

		-- Meta 6

		WX78_DRONE_SCOUT = "So far, so good.",
		WX78_DRONE_DELIVERY = "A freight it will get lost!",
		WX78_DRONE_ZAP = "It uses current technology.",
		WX78_DRONE_ZAP_REMOTE =
		{
			GENERIC = "It controls remotely? It's a.... Detached Telecommand Apparatus!",
			CANUSE = "only_used_by_wx78",
		},

    -- All other characters but Wx-78 share one quote.
        WX78MODULE_RADAR = "That's a doodad. I know a doodad when I see it.",
        WX78MODULE_STACKSIZE = "That's a doodad. I know a doodad when I see it.",
        WX78MODULE_DIGESTION = "That's a doodad. I know a doodad when I see it.",
        WX78MODULE_SCREECH = "That's a doodad. I know a doodad when I see it.",
        WX78MODULE_LIGHT2 = "That's a doodad. I know a doodad when I see it.",
        WX78MODULE_SHIELDING = "That's a doodad. I know a doodad when I see it.",
        WX78MODULE_SPIN = "That's a doodad. I know a doodad when I see it.",
		WX78MODULE_CHESS = "That's a doodad. I know a doodad when I see it.",

        WX78_INVENTORYCONTAINER =
        {
            HELD = "only_used_by_wx78", -- Held, and working as a container
			NOPOWER = "only_used_by_wx78", -- Held but can't open due to wx charge level too low
            GENERIC = "Piecea junk if ya ask me.", -- It was dropped, treat it as if its broken down, and is rummagable
        },

        WX78_FOODBRICK =
        {
            WET = "Uh, no thank you.",
            GENERIC = "That ain't even edible.",
        },

        WX78_BACKUPBODY =
        {
            GENERIC = "That seems too unnaturally.", -- We are examining a claimed body belonging to a WX. We can use their display name if we want to.
            UNCLAIMED = "only_used_by_wx78", -- We are examining an unclaimed body.
            VIEWERS_BODY = "only_used_by_wx78", -- We (WX) are examining our own body.
        },

        WX78_POSSESSEDBODY = "It's acting weirder than normal!",

        WX78_GESTALTTRAPPER = "What in the heck?",

        SHADOW_HEART_VEIN = "Yuck.",

        WX78_SHADOWDRONE_DEBUFFER = "Keep yer distance, ya hear?",
        WX78_SHADOWDRONE_HARVESTER = "A flying machine!",
    },

    DESCRIBE_GENERIC = "Some thing.",
    DESCRIBE_TOODARK = "I can't see it.",
    DESCRIBE_SMOLDERING = "That's a fire hazard.",

    DESCRIBE_PLANTHAPPY = "It's doing all right!",
    DESCRIBE_PLANTVERYSTRESSED = "It's real upset.",
    DESCRIBE_PLANTSTRESSED = "Ain't in too good a mood, huh?",
    DESCRIBE_PLANTSTRESSORKILLJOYS = "I gotta take care of those weeds.",
    DESCRIBE_PLANTSTRESSORFAMILY = "We all need family.",
    DESCRIBE_PLANTSTRESSOROVERCROWDING = "There ain't enough room in this garden!",
    DESCRIBE_PLANTSTRESSORSEASON = "That plant don't grow in this season.",
    DESCRIBE_PLANTSTRESSORMOISTURE = "The soil's all dried up.",
    DESCRIBE_PLANTSTRESSORNUTRIENTS = "The soil's real lackin' in nutrients!",
    DESCRIBE_PLANTSTRESSORHAPPINESS = "Guess I'll have a chat with it.",

    EAT_FOOD =
    {
        TALLBIRDEGG_CRACKED = "Just don't think about it, Fuel...",
		WINTERSFEASTFUEL = "I'll make sure to bring this tradition back with me.",
    },

    WENDY_SKILLTREE_EASTEREGG = "only_used_by_wendy",
}
