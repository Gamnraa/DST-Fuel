
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
			SHADOWMAGIC = "I don't have any crazy powers like the twins do.",
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
    ANNOUNCE_EYEOFTERROR_ARRIVE = "What is that- a giant floating eyeball?!",
    ANNOUNCE_EYEOFTERROR_FLYBACK = "Finally!",
    ANNOUNCE_EYEOFTERROR_FLYAWAY = "Get back here, I'm not finished with you yet!",

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

	ANNOUNCE_WORTOX_REVIVER_FAILTELEPORT = "Hmm. What went wrong?",

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
        BOOK_SLEEP = "If reading it fails, then using it for blunt force trauma might do the trick!",
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
            GHOST = "I'd hate to be only child again.",
            FIRESTARTER = "Hope that fire is controlled, %s.",
        },
        LUCAS = 
        {
            GENERIC = "Hey Luke. Alrights good saying a familiar face!",
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
            MURDERER = "You may be strong, Ness, but I can't handle a no-gooder like you!",
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
            REVIVER = "Still me, %s? Well I'll be.",
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
            FIRESTARTER = "Let me guess, this has something to do with \"preserving the timeline\"?",
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
		WORMLIGHT = "Looks delicious.",
		WORMLIGHT_LESSER = "Kinda wrinkled.",
		WORM =
		{
		    PLANT = "Seems safe to me.",
		    DIRT = "Just looks like a pile of dirt.",
		    WORM = "It's a worm!",
		},
        WORMLIGHT_PLANT = "Seems safe to me.",
		MOLE =
		{
			HELD = "Nowhere left to dig, my friend.",
			UNDERGROUND = "Something's under there, searching for minerals.",
			ABOVEGROUND = "I'd sure like to whack that mole... thing.",
		},
		MOLEHILL = "What a nice, homey hole in the ground!",
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
			ACTIVE = "I wonder if the twins' powers work like it.",
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
            MOONSTAFF = "Whoa. The mood did that?",
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
        FLOWER_CAVE = "Science makes it glow.",
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
		CATCOONHAT = "Almost like the pair I got back home!",
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
            "Burn everything from wood until there ain't nothin' but its base element, and you got yourself the foundation to the iron age.",
            "Charcoal might look humble, but it's done a lotta work for humans over the years.",
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
		CRITTER_LAMB = "Wonder if the twins would like ya.",
        CRITTER_PUPPY = "Cool little guy.",
        CRITTER_KITTEN = "Come along if ya want.",
        CRITTER_PERDLING = "Howdy!",
		CRITTER_LUNARMOTHLING = "So long as you ain't harming none.",

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
			CHOPPED = "Nothing Fuel couldn't handle",
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
        POND = "I wouldn't mind a swim",
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
            GENERIC = "Maybe the twins know more.",
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
            GENERIC = "That's a big of ice!",
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
			ACTIVE = "That's a CRAZY looking rock!",
			INACTIVE = "Where did the rest of it go?",
		},
		SAPLING =
		{
			BURNING = "That's burning fast!",
			WITHERED = "It might be okay if it cooled down.",
			GENERIC = "Baby trees are so cute!",
			PICKED = "That'll teach him.",
			DISEASED = "It looks pretty sick.", --removed
			DISEASING = "Err, something's not right.", --removed
		},
   		SCARECROW =
   		{
			GENERIC = "All dressed up and no where to crow.",
			BURNING = "Someone made that strawman eat crow.",
			BURNT = "Someone MURDERed that scarecrow!",
   		},
   		SCULPTINGTABLE=
   		{
			EMPTY = "We can make stone sculptures with this.",
			BLOCK = "Ready for sculpting.",
			SCULPTURE = "A masterpiece!",
			BURNT = "Burnt right down.",
   		},
        SCULPTURE_KNIGHTHEAD = "Where's the rest of it?",
		SCULPTURE_KNIGHTBODY =
		{
			COVERED = "It's an odd marble statue.",
			UNCOVERED = "I guess he cracked under the pressure.",
			FINISHED = "At least it's back in one piece now.",
			READY = "Something's moving inside.",
		},
        SCULPTURE_BISHOPHEAD = "Is that a head?",
		SCULPTURE_BISHOPBODY =
		{
			COVERED = "It looks old, but it feels new.",
			UNCOVERED = "There's a big piece missing.",
			FINISHED = "Now what?",
			READY = "Something's moving inside.",
		},
        SCULPTURE_ROOKNOSE = "Where did this come from?",
		SCULPTURE_ROOKBODY =
		{
			COVERED = "It's some sort of marble statue.",
			UNCOVERED = "It's not in the best shape.",
			FINISHED = "All patched up.",
			READY = "Something's moving inside.",
		},
        GARGOYLE_HOUND = "I don't like how it's looking at me.",
        GARGOYLE_WEREPIG = "It looks very lifelike.",
		SEEDS = "Each one is a tiny mystery.",
		SEEDS_COOKED = "That cooked the life right out of 'em!",
		SEWING_KIT = "Darn it! Darn it all to heck!",
		SEWING_TAPE = "Good for mending.",
		SHOVEL = "There's a lot going on underground.",
		SILK = "It comes from a spider's butt.",
		SKELETON = "Better you than me.",
		SCORCHED_SKELETON = "Spooky.",
        SKELETON_NOTPLAYER = "These are not human bones.",
		SKULLCHEST = "I'm not sure if I want to open it.", --removed
		SMALLBIRD =
		{
			GENERIC = "That's a rather small bird.",
			HUNGRY = "It looks hungry.",
			STARVING = "It must be starving.",
			SLEEPING = "It's barely making a peep.",
		},
		SMALLMEAT = "A tiny chunk of dead animal.",
		SMALLMEAT_DRIED = "A little jerky.",
		SPAT = "What a crusty looking animal.",
		SPEAR = "That's one pointy stick.",
		SPEAR_WATHGRITHR = "It feels very stabby.",
		WATHGRITHRHAT = "Pretty fancy hat, that.",
		SPIDER =
		{
			DEAD = "Ewwww!",
			GENERIC = "I hate spiders.",
			SLEEPING = "I'd better not be here when he wakes up.",
		},
		SPIDERDEN = "Sticky!",
		SPIDEREGGSACK = "I hope these don't hatch. Period.",
		SPIDERGLAND = "It has a tangy, antiseptic smell.",
		SPIDERHAT = "I hope I got all of the spider goo out of it.",
		SPIDERQUEEN = "AHHHHHHHH! That spider is huge!",
		SPIDER_WARRIOR =
		{
			DEAD = "Good riddance!",
			GENERIC = "Looks even meaner than usual.",
			SLEEPING = "I should keep my distance.",
		},
		SPOILED_FOOD = "It's a furry ball of rotten food.",
        STAGEHAND =
        {
			AWAKE = "Just keep your hand to yourself, alright?",
			HIDING = "Something's odd here, but I can't put my finger on it.",
        },
        STATUE_MARBLE =
        {
            GENERIC = "It's a fancy marble statue.",
            TYPE1 = "Don't lose your head now!",
            TYPE2 = "Statuesque.",
            TYPE3 = "I wonder who the artist is.", --bird bath type statue
        },
		STATUEHARP = "What happened to the head?",
		STATUEMAXWELL = "He's a lot shorter in person.",
		STEELWOOL = "Scratchy metal fibers.",
		STINGER = "Looks sharp!",
		STRAWHAT = "Hats always ruin my hair.",
		STUFFEDEGGPLANT = "It's really stuffing!",
		SWEATERVEST = "This vest is dapper as all get-out.",
		REFLECTIVEVEST = "Keep off, evil sun!",
		HAWAIIANSHIRT = "It's not lab-safe!",
		TAFFY = "If I had a dentist they'd be mad I ate stuff like that.",
		TALLBIRD = "That's a tall bird!",
		TALLBIRDEGG = "Will it hatch?",
		TALLBIRDEGG_COOKED = "Delicious and nutritious.",
		TALLBIRDEGG_CRACKED =
		{
			COLD = "Is it shivering or am I?",
			GENERIC = "Looks like it's hatching!",
			HOT = "Are eggs supposed to sweat?",
			LONG = "I have a feeling this is going to take a while...",
			SHORT = "It should hatch any time now.",
		},
		TALLBIRDNEST =
		{
			GENERIC = "That's quite an egg!",
			PICKED = "The nest is empty.",
		},
		TEENBIRD =
		{
			GENERIC = "Not a very tall bird.",
			HUNGRY = "You need some food and quick, huh?",
			STARVING = "It has a dangerous look in its eye.",
			SLEEPING = "It's getting some shut-eye",
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
		TELESTAFF = "That could reveal the world.",
		TENT =
		{
			GENERIC = "I get sort of crazy when I don't sleep.",
			BURNT = "Nothing left to sleep in.",
		},
		SIESTAHUT =
		{
			GENERIC = "A nice place for an afternoon rest, safely out of the heat.",
			BURNT = "It won't provide much shade now.",
		},
		TENTACLE = "That looks dangerous.",
		TENTACLESPIKE = "It's pointy and slimy.",
		TENTACLESPOTS = "I think these were its genitalia.",
		TENTACLE_PILLAR = "A slimy pole.",
        TENTACLE_PILLAR_HOLE = "Seems stinky, but worth exploring.",
		TENTACLE_PILLAR_ARM = "Little slippery arms.",
		TENTACLE_GARDEN = "Yet another slimy pole.",
		TOPHAT = "What a nice hat.",
		TORCH = "Something to hold back the night.",
		TRANSISTOR = "It's whirring with electricity.",
		TRAP = "I wove it real tight.",
		TRAP_TEETH = "This is a nasty surprise.",
		TRAP_TEETH_MAXWELL = "I'll want to avoid stepping on that!", --single player
		TREASURECHEST =
		{
			GENERIC = "It's a tickle trunk!",
			BURNT = "That trunk was truncated.",
            UPGRADED_STACKSIZE = "It's been sizably improved.",
		},
		TREASURECHEST_TRAP = "How convenient!",
        CHESTUPGRADE_STACKSIZE = "The laws of physics are surprisingly flexible.", -- Describes the kit upgrade item.
		COLLAPSEDCHEST = "The laws of physics have been bent and broken.",
		SACRED_CHEST =
		{
			GENERIC = "I hear whispers. It wants something.",
			LOCKED = "It's passing its judgment.",
		},
		TREECLUMP = "It's almost like someone is trying to prevent me from going somewhere.", --removed

		TRINKET_1 = "Melted. Maybe Willow had some fun with them?", --Melted Marbles
		TRINKET_2 = "What's kazoo with you?", --Fake Kazoo
		TRINKET_3 = "The knot is stuck. Forever.", --Gord's Knot
		TRINKET_4 = "It must be some kind of religious artifact.", --Gnome
		TRINKET_5 = "Sadly it's too small for me to escape on.", --Toy Rocketship
		TRINKET_6 = "Their electricity carrying days are over.", --Frazzled Wires
		TRINKET_7 = "There's no time for fun and games!", --Ball and Cup
		TRINKET_8 = "Great. All of my tub stopping needs are met.", --Rubber Bung
		TRINKET_9 = "I'm more of a zipper person, myself.", --Mismatched Buttons
		TRINKET_10 = "They've quickly become Wes' favorite prop.", --Dentures
		TRINKET_11 = "Hal whispers beautiful lies to me.", --Lying Robot
		TRINKET_12 = "That's just asking to be experimented on.", --Dessicated Tentacle
		TRINKET_13 = "It must be some kind of religious artifact.", --Gnomette
		TRINKET_14 = "Now if I only had some tea...", --Leaky Teacup
		TRINKET_15 = "...Maxwell left his stuff out again.", --Pawn
		TRINKET_16 = "...Maxwell left his stuff out again.", --Pawn
		TRINKET_17 = "A horrifying utensil fusion. Maybe science *can* go too far.", --Bent Spork
		TRINKET_18 = "I wonder what it's hiding?", --Trojan Horse
		TRINKET_19 = "It doesn't spin very well.", --Unbalanced Top
		TRINKET_20 = "Wigfrid keeps jumping out and hitting me with it?!", --Backscratcher
		TRINKET_21 = "This egg beater is all bent out of shape.", --Egg Beater
		TRINKET_22 = "I have a few theories about this string.", --Frayed Yarn
		TRINKET_23 = "I can put my shoes on without help, thanks.", --Shoehorn
		TRINKET_24 = "I think Wickerbottom had a cat.", --Lucky Cat Jar
		TRINKET_25 = "It smells kind of stale.", --Air Unfreshener
		TRINKET_26 = "Food and a cup! The ultimate survival container.", --Potato Cup
		TRINKET_27 = "If you unwound it you could poke someone from really far away.", --Coat Hanger
		TRINKET_28 = "How Machiavellian.", --Rook
        TRINKET_29 = "How Machiavellian.", --Rook
        TRINKET_30 = "Honestly, he just leaves them out wherever.", --Knight
        TRINKET_31 = "Honestly, he just leaves them out wherever.", --Knight
        TRINKET_32 = "I know someone who'd have a ball with this!", --Cubic Zirconia Ball
        TRINKET_33 = "I hope this doesn't attract spiders.", --Spider Ring
        TRINKET_34 = "Let's make a wish. For science.", --Monkey Paw
        TRINKET_35 = "Hard to find a good flask around here.", --Empty Elixir
        TRINKET_36 = "I might need these after all that candy.", --Faux fangs
        TRINKET_37 = "I don't believe in the supernatural.", --Broken Stake
        TRINKET_38 = "I think it came from another world. One with grifts.", -- Binoculars Griftlands trinket
        TRINKET_39 = "I wonder where the other one is?", -- Lone Glove Griftlands trinket
        TRINKET_40 = "Holding it makes me feel like bartering.", -- Snail Scale Griftlands trinket
        TRINKET_41 = "It's a little warm to the touch.", -- Goop Canister Hot Lava trinket
        TRINKET_42 = "It's full of someone's childhood memories.", -- Toy Cobra Hot Lava trinket
        TRINKET_43= "It's not very good at jumping.", -- Crocodile Toy Hot Lava trinket
        TRINKET_44 = "It's some sort of plant specimen.", -- Broken Terrarium ONI trinket
        TRINKET_45 = "It's picking up frequencies from another world.", -- Odd Radio ONI trinket
        TRINKET_46 = "Maybe a tool for testing aerodynamics?", -- Hairdryer ONI trinket

        -- The numbers align with the trinket numbers above.
        LOST_TOY_1  = "I'm sure there's a perfectly scientific explanation for that.",
        LOST_TOY_2  = "I'm sure there's a perfectly scientific explanation for that.",
        LOST_TOY_7  = "I'm sure there's a perfectly scientific explanation for that.",
        LOST_TOY_10 = "I'm sure there's a perfectly scientific explanation for that.",
        LOST_TOY_11 = "I'm sure there's a perfectly scientific explanation for that.",
        LOST_TOY_14 = "I'm sure there's a perfectly scientific explanation for that.",
        LOST_TOY_18 = "I'm sure there's a perfectly scientific explanation for that.",
        LOST_TOY_19 = "I'm sure there's a perfectly scientific explanation for that.",
        LOST_TOY_42 = "I'm sure there's a perfectly scientific explanation for that.",
        LOST_TOY_43 = "I'm sure there's a perfectly scientific explanation for that.",

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
		TRUNKVEST_SUMMER = "Wilderness casual.",
		TRUNKVEST_WINTER = "Winter survival gear.",
		TRUNK_COOKED = "Somehow even more nasal than before.",
		TRUNK_SUMMER = "A light breezy trunk.",
		TRUNK_WINTER = "A thick, hairy trunk.",
		TUMBLEWEED = "Who knows what that tumbleweed has picked up.",
		TURKEYDINNER = "Mmmm.",
		TWIGS = "It's a bunch of small twigs.",
		UMBRELLA = "I always hate when my hair gets wet and poofy.",
		GRASS_UMBRELLA = "My hair looks good wet... it's when it dries that's the problem.",
		UNIMPLEMENTED = "It doesn't look finished! It could be dangerous.",
		WAFFLES = "I'm waffling on whether it needs more syrup.",
		WALL_HAY =
		{
			GENERIC = "Hmmmm. I guess that'll have to do.",
			BURNT = "That won't do at all.",
		},
		WALL_HAY_ITEM = "This seems like a bad idea.",
		WALL_STONE = "That's a nice wall.",
		WALL_STONE_ITEM = "They make me feel so safe.",
		WALL_RUINS = "An ancient piece of wall.",
		WALL_RUINS_ITEM = "A solid piece of history.",
		WALL_WOOD =
		{
			GENERIC = "Pointy!",
			BURNT = "Burnt!",
		},
		WALL_WOOD_ITEM = "Pickets!",
		WALL_MOONROCK = "Spacey and smooth!",
		WALL_MOONROCK_ITEM = "Very light, but surprisingly tough.",
		WALL_DREADSTONE = "I feel so... safe?",
		WALL_DREADSTONE_ITEM = "What could go wrong?",
        WALL_SCRAP = "It's made of garbage.",
        WALL_SCRAP_ITEM = "It's like a bundle wrap, of scrap.",
		FENCE = "It's just a wood fence.",
        FENCE_ITEM = "All we need to build a nice, sturdy fence.",
        FENCE_GATE = "It opens. And closes sometimes, too.",
        FENCE_GATE_ITEM = "All we need to build a nice, sturdy gate.",
		WALRUS = "Walruses are natural predators.",
		WALRUSHAT = "It's covered with walrus hairs.",
		WALRUS_CAMP =
		{
			EMPTY = "Looks like somebody was camping here.",
			GENERIC = "It looks warm and cozy inside.",
		},
		WALRUS_TUSK = "I'm sure I'll find a use for it eventually.",
		WARDROBE =
		{
			GENERIC = "It holds dark, forbidden secrets...",
            BURNING = "That's burning fast!",
			BURNT = "It's out of style now.",
		},
		WARG = "You might be something to reckon with, big dog.",
        WARGLET = "It's going to be one of those days...",

		WASPHIVE = "I think those bees are mad.",
		WATERBALLOON = "What a scientific marvel!",
		WATERMELON = "Sticky sweet.",
		WATERMELON_COOKED = "Juicy and warm.",
		WATERMELONHAT = "Let the juice run down your face.",
		WAXWELLJOURNAL =
		{
			GENERIC = "Spooky.",
			NEEDSFUEL = "only_used_by_waxwell",
		},
		WETGOOP = "It tastes like nothing.",
        WHIP = "Nothing like loud noises to help keep the peace.",
		WINTERHAT = "It'll be good for when winter comes.",
		WINTEROMETER =
		{
			GENERIC = "Mercurial.",
			BURNT = "Its measuring days are over.",
		},

        WINTER_TREE =
        {
            BURNT = "That puts a damper on the festivities.",
            BURNING = "That was a mistake, I think.",
            CANDECORATE = "Happy Winter's Feast!",
            YOUNG = "It's almost Winter's Feast!",
        },
		WINTER_TREESTAND =
		{
			GENERIC = "I need a pine cone for that.",
            BURNT = "That puts a damper on the festivities.",
		},
        WINTER_ORNAMENT = "Every scientist appreciates a good bauble.",
        WINTER_ORNAMENTLIGHT = "A tree's not complete without some electricity.",
        WINTER_ORNAMENTBOSS = "This one is especially impressive.",
		WINTER_ORNAMENTFORGE = "I should hang this one over a fire.",
		WINTER_ORNAMENTGORGE = "For some reason it makes me hungry.",
        WINTER_ORNAMENTPEARL = "Really fine work considering she has claws.",

        WINTER_FOOD1 = "The anatomy's not right, but I'll overlook it.", --gingerbread cookie
        WINTER_FOOD2 = "I'm going to eat forty. For science.", --sugar cookie
        WINTER_FOOD3 = "A Yuletide toothache waiting to happen.", --candy cane
        WINTER_FOOD4 = "That experiment may have been a tiny bit unethical.", --fruitcake
        WINTER_FOOD5 = "It's nice to eat something other than berries for once.", --yule log cake
        WINTER_FOOD6 = "I'm puddin' that straight in my mouth!", --plum pudding
        WINTER_FOOD7 = "It's a hollowed apple filled with yummy juice.", --apple cider
        WINTER_FOOD8 = "How does it stay warm? A thermodynamical mug?", --hot cocoa
        WINTER_FOOD9 = "Can science explain why it tastes so good?", --eggnog

		WINTERSFEASTOVEN =
		{
			GENERIC = "A festive furnace for flame-grilled foodstuffs!",
			COOKING = "Cooking really is a science.",
			ALMOST_DONE_COOKING = "The science is almost done!",
			DISH_READY = "Science says it's done.",
		},
		BERRYSAUCE = "Equal parts merry and berry.",
		BIBINGKA = "Soft and spongy.",
		CABBAGEROLLS = "The meat hides inside the cabbage to avoid predators.",
		FESTIVEFISH = "I wouldn't mind sampling some seasonal seafood.",
		GRAVY = "It's all gravy.",
		LATKES = "I could eat a latke more of these.",
		LUTEFISK = "Is there any trumpetfisk?",
		MULLEDDRINK = "This punch has a kick to it.",
		PANETTONE = "This Yuletide bread really rose to the occasion.",
		PAVLOVA = "I lova good Pavlova.",
		PICKLEDHERRING = "You won't be herring any complaints from me.",
		POLISHCOOKIE = "I'll polish off this whole plate!",
		PUMPKINPIE = "I should probably just eat the whole thing... for science.",
		ROASTTURKEY = "I see a big juicy drumstick with my name on it.",
		STUFFING = "That's the good stuff!",
		SWEETPOTATO = "Science has created a hybrid between dinner and dessert.",
		TAMALES = "If I eat much more I'm going to start feeling a bit husky.",
		TOURTIERE = "Pleased to eat you.",

		TABLE_WINTERS_FEAST =
		{
			GENERIC = "A feastival table.",
			HAS_FOOD = "Time to eat!",
			WRONG_TYPE = "It's not the season for that.",
			BURNT = "Who would do such a thing?",
		},

		GINGERBREADWARG = "Time to desert this dessert.",
		GINGERBREADHOUSE = "Room and board all rolled into one.",
		GINGERBREADPIG = "I'd better follow him.",
		CRUMBS = "A crummy way to hide yourself.",
		WINTERSFEASTFUEL = "The spirit of the season!",

        KLAUS = "What on earth is that thing!",
        KLAUS_SACK = "We should definitely open that.",
		KLAUSSACKKEY = "It's really fancy for a deer antler.",
		WORMHOLE =
		{
			GENERIC = "Soft and undulating.",
			OPEN = "Science compels me to jump in.",
		},
		WORMHOLE_LIMITED = "Guh, that thing looks worse off than usual.",
		ACCOMPLISHMENT_SHRINE = "I want to use it, and I want the world to know that I did.", --single player
		LIVINGTREE = "Is it watching me?",
		ICESTAFF = "It's cold to the touch.",
		REVIVER = "The beating of this hideous heart will bring a ghost back to life!",
		SHADOWHEART = "The power of science must have reanimated it...",
        ATRIUM_RUBBLE =
        {
			LINE_1 = "It depicts an old civilization. The people look hungry and scared.",
			LINE_2 = "This tablet is too worn to make out.",
			LINE_3 = "Something dark creeps over the city and its people.",
			LINE_4 = "The people are shedding their skins. They look different underneath.",
			LINE_5 = "It shows a massive, technologically advanced city.",
		},
        ATRIUM_STATUE = "It doesn't seem fully real.",
        ATRIUM_LIGHT =
        {
			ON = "A truly unsettling light.",
			OFF = "Something must power it.",
		},
        ATRIUM_GATE =
        {
			ON = "Back in working order.",
			OFF = "The essential components are still intact.",
			CHARGING = "It's gaining power.",
			DESTABILIZING = "The gateway is destabilizing.",
			COOLDOWN = "It needs time to recover. Me too.",
        },
        ATRIUM_KEY = "There is power emanating from it.",
		LIFEINJECTOR = "A scientific breakthrough! The cure!",
		SKELETON_PLAYER =
		{
			MALE = "%s must've died performing an experiment with %s.",
			FEMALE = "%s must've died performing an experiment with %s.",
			ROBOT = "%s must've died performing an experiment with %s.",
			DEFAULT = "%s must've died performing an experiment with %s.",
		},
		HUMANMEAT = "Flesh is flesh. Where do I draw the line?",
		HUMANMEAT_COOKED = "Cooked nice and pink, but still morally gray.",
		HUMANMEAT_DRIED = "Letting it dry makes it not come from a human, right?",
		ROCK_MOON = "That rock came from the moon.",
		MOONROCKNUGGET = "That rock came from the moon.",
		MOONROCKCRATER = "I should stick something shiny in it. For research.",
		MOONROCKSEED = "There's science inside!",

        REDMOONEYE = "It can see and be seen for miles!",
        PURPLEMOONEYE = "Makes a good marker, but I wish it'd stop looking at me.",
        GREENMOONEYE = "That'll keep a watchful eye on the place.",
        ORANGEMOONEYE = "No one could get lost with that thing looking out for them.",
        YELLOWMOONEYE = "That ought to show everyone the way.",
        BLUEMOONEYE = "It's always smart to keep an eye out.",

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
        	GENERIC = "She's made a sort of automatic defense system.",
        	OFF = "It needs some electricity.",
        	BURNING = "It's on fire!",
        	BURNT = "Science couldn't save it.",
			SLEEP = "She's made a sort of automatic defense system.",
        },
        WINONA_SPOTLIGHT =
        {
        	GENERIC = "What an ingenious idea!",
        	OFF = "It needs some electricity.",
        	BURNING = "It's on fire!",
        	BURNT = "Science couldn't save it.",
			SLEEP = "What an ingenious idea!",
        },
        WINONA_BATTERY_LOW =
        {
        	GENERIC = "Looks science-y. How does it work?",
        	LOWPOWER = "It's getting low on power.",
        	OFF = "I could get it working, if Winona's busy.",
        	BURNING = "It's on fire!",
        	BURNT = "Science couldn't save it.",
        },
        WINONA_BATTERY_HIGH =
        {
			GENERIC = "Hey! That's not science!",
			LOWPOWER = "It'll turn off soon.",
			OFF = "Science beats magic, every time.",
			BURNING = "It's on fire!",
			BURNT = "Science couldn't save it.",
			OVERLOADED = "It's about to explode! ...Sorry, old habit from my lab days.",
        },
		--v3 Winona
		WINONA_REMOTE =
		{
			GENERIC = "I think she forgot to attach these buttons to her machine.",
			OFF = "It needs some electricity.",
			CHARGING = "I think she forgot to attach these buttons to her machine.",
			CHARGED = "I think she forgot to attach these buttons to her machine.",
		},
		WINONA_TELEBRELLA =
		{
			GENERIC = "Winona's been brainstorming.",
            MISSINGSKILL = "only_used_by_winona",
			OFF = "It needs some electricity.",
			CHARGING = "Winona's been brainstorming.",
			CHARGED = "Winona's been brainstorming.",
		},
		WINONA_TELEPORT_PAD_ITEM =
		{
			GENERIC = "It uses displacement theory - things go from displace to datplace.",
            MISSINGSKILL = "only_used_by_winona",
			OFF = "It needs some electricity.",
			BURNING = "It's on fire!",
			BURNT = "Science couldn't save it.",
		},
		WINONA_STORAGE_ROBOT =
		{
			GENERIC = "Aren't you the cutest little bucket of bolts?",
			OFF = "Taking a break? Winona must be going easy on you.",
			SLEEP = "Aren't you the cutest little bucket of bolts?",
			CHARGING = "Taking a break? Winona must be going easy on you.",
			CHARGED = "Taking a break? Winona must be going easy on you.",
		},
		INSPECTACLESBOX = "only_used_by_winona",
		INSPECTACLESBOX2 = "only_used_by_winona",
		INSPECTACLESHAT = 
        {
            GENERIC = "Winona always struck me as someone with a vision for the future.",
            MISSINGSKILL = "only_used_by_winona",
        },
		ROSEGLASSESHAT =
        {
            GENERIC = "They don't seem like Winona's usual style.",
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
        COMPOSTWRAP = "Wormwood offered me a bite, but I respectfully declined.",
        ARMOR_BRAMBLE = "The best offense is a good defense.",
        TRAP_BRAMBLE = "It'd really poke whoever stepped on it.",

        BOATFRAGMENT03 = "Not much left of it.",
        BOATFRAGMENT04 = "Not much left of it.",
        BOATFRAGMENT05 = "Not much left of it.",
		BOAT_LEAK = "I should patch that up before we sink.",
        MAST = "Avast! A mast!",
        SEASTACK = "It's a rock.",
        FISHINGNET = "Nothing but net.", --unimplemented
        ANTCHOVIES = "Yeesh. Can I toss it back?", --unimplemented
        STEERINGWHEEL = "I could have been a sailor in another life.",
        ANCHOR = "I wouldn't want my boat to float away.",
        BOATPATCH = "Just in case of disaster.",
        DRIFTWOOD_TREE =
        {
            BURNING = "That driftwood's burning!",
            BURNT = "Doesn't look very useful anymore.",
            CHOPPED = "There might still be something worth digging up.",
            GENERIC = "A dead tree that washed up on shore.",
        },

        DRIFTWOOD_LOG = "It floats on water.",

        MOON_TREE =
        {
            BURNING = "The tree is burning!",
            BURNT = "The tree burned down.",
            CHOPPED = "That was a pretty thick tree.",
            GENERIC = "I didn't know trees grew on the moon.",
        },
		MOON_TREE_BLOSSOM = "It fell from the moon tree.",

        MOONBUTTERFLY =
        {
        	GENERIC = "My vast scientific knowledge tells me it's... a moon butterfly.",
        	HELD = "I've got you now.",
        },
		MOONBUTTERFLYWINGS = "We're really winging it now.",
        MOONBUTTERFLY_SAPLING = "A moth turned into a tree? Lunacy!",
        ROCK_AVOCADO_FRUIT = "I'd shatter my teeth on that.",
        ROCK_AVOCADO_FRUIT_RIPE = "Uncooked stone fruit is the pits.",
        ROCK_AVOCADO_FRUIT_RIPE_COOKED = "It's actually soft enough to eat now.",
        ROCK_AVOCADO_FRUIT_SPROUT = "It's growing.",
        ROCK_AVOCADO_BUSH =
        {
        	BARREN = "Its fruit growing days are over.",
			WITHERED = "It's pretty hot out.",
			GENERIC = "It's a bush... from the moon!",
			PICKED = "It'll take awhile to grow more fruit.",
			DISEASED = "It looks pretty sick.", --unimplemented
            DISEASING = "Err, something's not right.", --unimplemented
			BURNING = "It's burning!",
		},
        DEAD_SEA_BONES = "That's what they get for coming up on land.",
        HOTSPRING =
        {
        	GENERIC = "If only I could soak my weary bones.",
        	BOMBED = "Just a simple chemical reaction.",
        	GLASS = "Water turns to glass under the moon. That's just science.",
			EMPTY = "I'll just have to wait for it to fill up again.",
        },
        MOONGLASS = "It's very sharp.",
        MOONGLASS_CHARGED = "I should put this to scientific use before the energy fades!",
        MOONGLASS_ROCK = "I can practically see my reflection in it.",
        BATHBOMB = "It's just textbook chemistry.",
        TRAP_STARFISH =
        {
            GENERIC = "Aw, what a cute little starfish!",
            CLOSED = "It tried to chomp me!",
        },
        DUG_TRAP_STARFISH = "It's not fooling anyone now.",
        SPIDER_MOON =
        {
        	GENERIC = "Oh good. The moon mutated it.",
        	SLEEPING = "Thank science, it stopped moving.",
        	DEAD = "Is it really dead?",
        },
        MOONSPIDERDEN = "That's not a normal spider den.",
		FRUITDRAGON =
		{
			GENERIC = "It's cute, but it's not ripe yet.",
			RIPE = "I think it's ripe now.",
			SLEEPING = "It's snoozing.",
		},
        PUFFIN =
        {
            GENERIC = "I've never seen a live puffin before!",
            HELD = "Catching one ain't puffin to brag about.",
            SLEEPING = "Peacefully huffin' and puffin'.",
        },

		MOONGLASSAXE = "I've made it extra effective.",
		GLASSCUTTER = "I'm not really cut out for fighting.",

        ICEBERG =
        {
            GENERIC = "Let's steer clear of that.", --unimplemented
            MELTED = "It's completely melted.", --unimplemented
        },
        ICEBERG_MELTED = "It's completely melted.", --unimplemented

        MINIFLARE = "I can light it to let everyone know I'm here.",
        MEGAFLARE = "It will let everything know I'm here. Everything.",

		MOON_FISSURE =
		{
			GENERIC = "My brain pulses with peace and terror.",
			NOLIGHT = "The cracks in this place are starting to show.",
		},
        MOON_ALTAR =
        {
            MOON_ALTAR_WIP = "It wants to be finished.",
            GENERIC = "Hm? What did you say?",
        },

        MOON_ALTAR_IDOL = "I feel compelled to carry it somewhere.",
        MOON_ALTAR_GLASS = "It doesn't want to be on the ground.",
        MOON_ALTAR_SEED = "It wants me to give it a home.",

        MOON_ALTAR_ROCK_IDOL = "There's something trapped inside.",
        MOON_ALTAR_ROCK_GLASS = "There's something trapped inside.",
        MOON_ALTAR_ROCK_SEED = "There's something trapped inside.",

        MOON_ALTAR_CROWN = "I fished it up, now to find a fissure!",
        MOON_ALTAR_COSMIC = "It feels like it's waiting for something.",

        MOON_ALTAR_ASTRAL = "It seems to be part of a larger mechanism.",
        MOON_ALTAR_ICON = "I think I know just where you belong.",
        MOON_ALTAR_WARD = "It wants to be with the others.",

        SEAFARING_PROTOTYPER =
        {
            GENERIC = "I think tanks are in order.",
            BURNT = "The science has been lost to sea.",
        },
        BOAT_ITEM = "It would be nice to do some experiments on the water.",
        BOAT_GRASS_ITEM = "It's technically a boat.",
        STEERINGWHEEL_ITEM = "That's going to be the steering wheel.",
        ANCHOR_ITEM = "Now I can build an anchor.",
        MAST_ITEM = "Now I can build a mast.",
        MUTATEDHOUND =
        {
        	DEAD = "Now I can breathe easy.",
        	GENERIC = "Science save us!",
        	SLEEPING = "I have a very strong desire to run.",
        },

        MUTATED_PENGUIN =
        {
			DEAD = "That's the end of that.",
			GENERIC = "That thing's terrifying!",
			SLEEPING = "Thank goodness. It's sleeping.",
		},
        CARRAT =
        {
        	DEAD = "That's the end of that.",
        	GENERIC = "Are carrots supposed to have legs?",
        	HELD = "You're kind of ugly up close.",
        	SLEEPING = "It's almost cute.",
        },

		BULLKELP_PLANT =
        {
            GENERIC = "Welp. It's kelp.",
            PICKED = "I just couldn't kelp myself.",
        },
		BULLKELP_ROOT = "I can plant it in deep water.",
        KELPHAT = "Sometimes you have to feel worse to feel better.",
		KELP = "It gets my pockets all wet and gross.",
		KELP_COOKED = "It's closer to a liquid than a solid.",
		KELP_DRIED = "The sodium content's kinda high.",

		GESTALT = "They're promising me... knowledge.",
        GESTALT_GUARD = "They're promising me... a good smack if I get too close.",

		COOKIECUTTER = "I don't like the way it's looking at my boat...",
		COOKIECUTTERSHELL = "A shell of its former self.",
		COOKIECUTTERHAT = "At least my hair will stay dry.",
		SALTSTACK =
		{
			GENERIC = "Are those natural formations?",
			MINED_OUT = "It's mined... it's all mined!",
			GROWING = "I guess it just grows like that.",
		},
		SALTROCK = "Science compels me to lick it.",
		SALTBOX = "Just the cure for spoiling food!",

		TACKLESTATION = "Time to tackle my reel problems.",
		TACKLESKETCH = "A picture of some fishing tackle. I bet I could make this...",

        MALBATROSS = "A fowl beast indeed!",
        MALBATROSS_FEATHER = "Plucked from a fine feathered fiend.",
        MALBATROSS_BEAK = "Smells fishy.",
        MAST_MALBATROSS_ITEM = "It's lighter than it looks.",
        MAST_MALBATROSS = "Spread my wings and sail away!",
		MALBATROSS_FEATHERED_WEAVE = "I'm making a quill-t!",

        GNARWAIL =
        {
            GENERIC = "My, what a big horn you have.",
            BROKENHORN = "Got your nose!",
            FOLLOWER = "This is all whale and good.",
            BROKENHORN_FOLLOWER = "That's what happens when you nose around!",
        },
        GNARWAIL_HORN = "Gnarly!",

        WALKINGPLANK = "Couldn't we have just made a lifeboat?",
        WALKINGPLANK_GRASS = "Couldn't we have just made a lifeboat?",
        OAR = "Manual ship acceleration.",
		OAR_DRIFTWOOD = "Manual ship acceleration.",

		OCEANFISHINGROD = "Now this is the reel deal!",
		OCEANFISHINGBOBBER_NONE = "A bobber might improve its accuracy.",
        OCEANFISHINGBOBBER_BALL = "The fish will have a ball with this.",
        OCEANFISHINGBOBBER_OVAL = "Those fish won't give me the slip this time!",
		OCEANFISHINGBOBBER_CROW = "I'd rather eat fish than crow.",
		OCEANFISHINGBOBBER_ROBIN = "Hopefully it won't attract any red herrings.",
		OCEANFISHINGBOBBER_ROBIN_WINTER = "The snowbird quill helps me stay frosty.",
		OCEANFISHINGBOBBER_CANARY = "Say y'ello to my little friend!",
		OCEANFISHINGBOBBER_GOOSE = "You're going down, fish!",
		OCEANFISHINGBOBBER_MALBATROSS = "Where there's a quill, there's a way.",

		OCEANFISHINGLURE_SPINNER_RED = "Some fish might find this a-luring!",
		OCEANFISHINGLURE_SPINNER_GREEN = "Some fish might find this a-luring!",
		OCEANFISHINGLURE_SPINNER_BLUE = "Some fish might find this a-luring!",
		OCEANFISHINGLURE_SPOON_RED = "Some smaller fish might find this a-luring!",
		OCEANFISHINGLURE_SPOON_GREEN = "Some smaller fish might find this a-luring!",
		OCEANFISHINGLURE_SPOON_BLUE = "Some smaller fish might find this a-luring!",
		OCEANFISHINGLURE_HERMIT_RAIN = "Soaking myself might help me think like a fish...",
		OCEANFISHINGLURE_HERMIT_SNOW = "The fish won't snow what hit them!",
		OCEANFISHINGLURE_HERMIT_DROWSY = "My brain is protected by a thick layer of hard science!",
		OCEANFISHINGLURE_HERMIT_HEAVY = "This feels a bit heavy handed.",

		OCEANFISH_SMALL_1 = "Looks like the runt of its school.",
		OCEANFISH_SMALL_2 = "I won't win any bragging rights with this one.",
		OCEANFISH_SMALL_3 = "It's a bit on the small side.",
		OCEANFISH_SMALL_4 = "A fish this size won't tide me over for long.",
		OCEANFISH_SMALL_5 = "I can't wait to pop it in my mouth.",
		OCEANFISH_SMALL_6 = "You have to sea it to beleaf it.",
		OCEANFISH_SMALL_7 = "I finally caught this bloomin' fish!",
		OCEANFISH_SMALL_8 = "It's a scorcher!",
        OCEANFISH_SMALL_9 = "Just spit-balling, but I might have a use for you...",

		OCEANFISH_MEDIUM_1 = "I certainly hope it tastes better than it looks.",
		OCEANFISH_MEDIUM_2 = "I went to a lot of treble to catch it.",
		OCEANFISH_MEDIUM_3 = "I wasn't lion about my aptitude for fishing!",
		OCEANFISH_MEDIUM_4 = "I'm sure this won't bring me any bad luck.",
		OCEANFISH_MEDIUM_5 = "This one seems kind of corny.",
		OCEANFISH_MEDIUM_6 = "Now that's the real McKoi!",
		OCEANFISH_MEDIUM_7 = "Now that's the real McKoi!",
		OCEANFISH_MEDIUM_8 = "Ice bream, youse bream.",
        OCEANFISH_MEDIUM_9 = "That's the sweet smell of a successful fishing trip.",

		PONDFISH = "Now I shall eat for a day.",
		PONDEEL = "This will make a delicious meal.",

        FISHMEAT = "A chunk of fish meat.",
        FISHMEAT_COOKED = "Grilled to perfection.",
        FISHMEAT_SMALL = "A small bit of fish.",
        FISHMEAT_SMALL_COOKED = "A small bit of cooked fish.",
		SPOILED_FISH = "I'm not terribly curious about the smell.",

		FISH_BOX = "They're stuffed in there like sardines!",
        POCKET_SCALE = "A scaled-down weighing device.",

		TACKLECONTAINER = "This extra storage space has me hooked!",
		SUPERTACKLECONTAINER = "I had to shell out quite a bit to get this.",

		TROPHYSCALE_FISH =
		{
			GENERIC = "I wonder how my catch of the day will measure up!",
			HAS_ITEM = "Weight: {weight}\nCaught by: {owner}",
			HAS_ITEM_HEAVY = "Weight: {weight}\nCaught by: {owner}\nWhat a catch!",
			BURNING = "On a scale of 1 to on fire... that's pretty on fire.",
			BURNT = "All my bragging rights, gone up in flames!",
			OWNER = "Not to throw my weight around, buuut...\nWeight: {weight}\nCaught by: {owner}",
			OWNER_HEAVY = "Weight: {weight}\nCaught by: {owner}\nIt's the one that DIDN'T get away!",
		},

		OCEANFISHABLEFLOTSAM = "Just some muddy grass.",

		CALIFORNIAROLL = "But I don't have chopsticks.",
		SEAFOODGUMBO = "It's a jumbo seafood gumbo.",
		SURFNTURF = "It's perf!",

        WOBSTER_SHELLER = "What a wascally Wobster.",
        WOBSTER_DEN = "It's a rock with Wobsters in it.",
        WOBSTER_SHELLER_DEAD = "You should cook up nicely.",
        WOBSTER_SHELLER_DEAD_COOKED = "I can't wait to eat you.",

        LOBSTERBISQUE = "Could use more salt, but that's none of my bisque-ness.",
        LOBSTERDINNER = "If I eat it in the morning is it still dinner?",

        WOBSTER_MOONGLASS = "What a wascally Lunar Wobster.",
        MOONGLASS_WOBSTER_DEN = "It's a chunk of moonglass with Lunar Wobsters in it.",

		TRIDENT = "This is going to be a blast!",

		WINCH =
		{
			GENERIC = "It'll do in a pinch.",
			RETRIEVING_ITEM = "I'll let it do the heavy lifting.",
			HOLDING_ITEM = "What do we have here?",
		},

        HERMITHOUSE = {
            GENERIC = "It's just an empty shell of a house.",
            BUILTUP = "It just needed a little love.",
        },

        SHELL_CLUSTER = "I bet there's some nice shells in there.",
        --
		SINGINGSHELL_OCTAVE3 =
		{
			GENERIC = "It's a bit more toned down.",
		},
		SINGINGSHELL_OCTAVE4 =
		{
			GENERIC = "Is that what the ocean sounds like?",
		},
		SINGINGSHELL_OCTAVE5 =
		{
			GENERIC = "It's ready for the high C's.",
        },

        CHUM = "It's a fish meal!",

        SUNKENCHEST =
        {
            GENERIC = "The real treasure is the treasure we found along the way.",
            LOCKED = "It's clammed right up!",
        },

        HERMIT_BUNDLE = "She shore shells out a lot of these.",
        HERMIT_BUNDLE_SHELLS = "She DOES sell sea shells!",

        RESKIN_TOOL = "I like the dust! It feels scholarly!",
        MOON_FISSURE_PLUGGED = "It's not very scientific... but pretty effective.",


		----------------------- ROT STRINGS GO ABOVE HERE ------------------

		-- Walter
        WOBYBIG =
        {
            "What in the name of science have you been feeding her?",
            "What in the name of science have you been feeding her?",
        },
        WOBYSMALL =
        {
            "It's a scientific fact that petting a good dog will improve your day.",
            "It's a scientific fact that petting a good dog will improve your day.",
        },
		WALTERHAT = "I was never exactly \"outdoorsy\" in my youth.",
		SLINGSHOT =
		{
			GENERIC = "The bane of windows everywhere.",
			NOT_MINE = "only_used_by_walter",
		},
		SLINGSHOTAMMO_ROCK = "Shots to be slinged.",
		SLINGSHOTAMMO_MARBLE = "Shots to be slinged.",
		SLINGSHOTAMMO_THULECITE = "Shots to be slinged.",
        SLINGSHOTAMMO_GOLD = "Shots to be slinged.",
		SLINGSHOTAMMO_HONEY = "Shots to be slinged.",
        SLINGSHOTAMMO_SLOW = "Shots to be slinged.",
        SLINGSHOTAMMO_FREEZE = "Shots to be slinged.",
		SLINGSHOTAMMO_POOP = "Poop projectiles.",
		SLINGSHOTAMMO_STINGER = "Shots to be stinged?",
		SLINGSHOTAMMO_MOONGLASS = "Shots to be slinged... slung?",
		SLINGSHOTAMMO_GELBLOB = "Shots to be slinged.",
		SLINGSHOTAMMO_SCRAPFEATHER = "Shots to be slinged.",
        SLINGSHOTAMMO_DREADSTONE = "Shots to be slinged.",
        SLINGSHOTAMMO_GUNPOWDER = "Shots to be slinged.",
        SLINGSHOTAMMO_LUNARPLANTHUSK = "Shots to be slinged.",
        SLINGSHOTAMMO_PUREBRILLIANCE = "Shots to be slinged.",
        SLINGSHOTAMMO_HORRORFUEL = "Shots to be slinged.",
        PORTABLETENT = "I feel like I haven't had a proper night's sleep in ages!",
        PORTABLETENT_ITEM = "This requires some a-tent-tion.",

        -- Wigfrid
        BATTLESONG_DURABILITY = "Theater makes me fidgety.",
        BATTLESONG_HEALTHGAIN = "Theater makes me fidgety.",
        BATTLESONG_SANITYGAIN = "Theater makes me fidgety.",
        BATTLESONG_SANITYAURA = "Theater makes me fidgety.",
        BATTLESONG_FIRERESISTANCE = "I once burned my vest before seeing a play. I call that dramatic ironing.",
        BATTLESONG_INSTANT_TAUNT = "I'm afraid I'm not a licensed poetic.",
        BATTLESONG_INSTANT_PANIC = "I'm afraid I'm not a licensed poetic.",

        -- Webber
        MUTATOR_WARRIOR = "Oh wow, that looks um... delicious, Webber!",
        MUTATOR_DROPPER = "Ah, I... just ate! Why don't you give it to one of your spider friends?",
        MUTATOR_HIDER = "Oh wow, that looks um... delicious, Webber!",
        MUTATOR_SPITTER = "Ah, I... just ate! Why don't you give it to one of your spider friends?",
        MUTATOR_MOON = "Oh wow, that looks um... delicious, Webber!",
        MUTATOR_HEALER = "Ah, I... just ate! Why don't you give it to one of your spider friends?",
        SPIDER_WHISTLE = "I don't want to call any spiders over to me!",
        SPIDERDEN_BEDAZZLER = "It looks like someone's been getting crafty.",
        SPIDER_HEALER = "Oh wonderful. Now the spiders can heal themselves.",
        SPIDER_REPELLENT = "If only science could make it work for me.",
        SPIDER_HEALER_ITEM = "If I see any spiders around I'll be sure to give it to them. Maybe.",

		-- Wendy
		GHOSTLYELIXIR_SLOWREGEN = "Ah yes. Very science-y.",
		GHOSTLYELIXIR_FASTREGEN = "Ah yes. Very science-y.",
		GHOSTLYELIXIR_SHIELD = "Ah yes. Very science-y.",
		GHOSTLYELIXIR_ATTACK = "Ah yes. Very science-y.",
		GHOSTLYELIXIR_SPEED = "Ah yes. Very science-y.",
		GHOSTLYELIXIR_RETALIATION = "Ah yes. Very science-y.",
        GHOSTLYELIXIR_REVIVE = "Ah yes. Very science-y.",
		SISTURN =
		{
			GENERIC = "Some flowers would liven it up a bit.",
			SOME_FLOWERS = "A few more flowers should do the trick.",
			LOTS_OF_FLOWERS = "What a brilliant boo-quet!",
            LOTS_OF_FLOWERS_EVIL = "It gives me a bad feeling.",
            LOTS_OF_FLOWERS_BLOSSOM = "What an eerie sound.",   
		},

        --Wortox
        WORTOX_SOUL = "only_used_by_wortox", --only wortox can inspect souls
        --WORTOX_DECOY is not needed because it uses the default WORTOX inspection.
        WORTOX_NABBAG = "He's a chip off the ol' Krampus.",
        WORTOX_REVIVER = "I can guess what that's fur.",
        WORTOX_SOULJAR = "It's rather jarring if you think about it.",

        PORTABLECOOKPOT_ITEM =
        {
            GENERIC = "Now we're cookin'!",
            DONE = "Now we're done cookin'!",

			COOKING_LONG = "That meal is going to take a while.",
			COOKING_SHORT = "It'll be ready in no-time!",
			EMPTY = "I bet there's nothing in there.",
        },

        PORTABLEBLENDER_ITEM = "It mixes all the food.",
        PORTABLESPICER_ITEM =
        {
            GENERIC = "This will spice things up.",
            DONE = "Should make things a little tastier.",
        },
        SPICEPACK = "A breakthrough in culinary science!",
        SPICE_GARLIC = "A powerfully potent powder.",
        SPICE_SUGAR = "Sweet! It's sweet!",
        SPICE_CHILI = "A flagon of fiery fluid.",
        SPICE_SALT = "A little sodium's good for the heart.",
        MONSTERTARTARE = "There's got to be something else to eat around here.",
        FRESHFRUITCREPES = "Sugary fruit! Part of a balanced breakfast.",
        FROGFISHBOWL = "Is that just... frogs stuffed inside a fish?",
        POTATOTORNADO = "Potato, scientifically infused with the power of a tornado!",
        DRAGONCHILISALAD = "I hope I can handle the spice level.",
        GLOWBERRYMOUSSE = "Warly sure can cook.",
        VOLTGOATJELLY = "It's shockingly delicious.",
        NIGHTMAREPIE = "It's a little spooky.",
        BONESOUP = "No bones about it, Warly can cook.",
        MASHEDPOTATOES = "I've heard cooking is basically chemistry. I should try it.",
        POTATOSOUFFLE = "I forgot what good food tasted like.",
        MOQUECA = "He's as talented a chef as I am a scientist.",
        GAZPACHO = "How in science does it taste so good?",
        ASPARAGUSSOUP = "Smells like it tastes.",
        VEGSTINGER = "Can you use the celery as a straw?",
        BANANAPOP = "No, not brain freeze! I need that for science!",
        CEVICHE = "Can I get a bigger bowl? This one looks a little shrimpy.",
        SALSA = "So... hot...!",
        PEPPERPOPPER = "What a mouthful!",

        TURNIP = "It's a raw turnip.",
        TURNIP_COOKED = "Cooking is science in practice.",
        TURNIP_SEEDS = "A handful of odd seeds.",

        GARLIC = "The number one breath enhancer.",
        GARLIC_COOKED = "Perfectly browned.",
        GARLIC_SEEDS = "A handful of odd seeds.",

        ONION = "Looks crunchy.",
        ONION_COOKED = "A successful chemical reaction.",
        ONION_SEEDS = "A handful of odd seeds.",

        POTATO = "The apples of the earth.",
        POTATO_COOKED = "A successful temperature experiment.",
        POTATO_SEEDS = "A handful of odd seeds.",

        TOMATO = "It's red because it's full of science.",
        TOMATO_COOKED = "Cooking's easy if you understand chemistry.",
        TOMATO_SEEDS = "A handful of odd seeds.",

        ASPARAGUS = "A vegetable.",
        ASPARAGUS_COOKED = "Science says it's good for me.",
        ASPARAGUS_SEEDS = "It's some seeds.",

        PEPPER = "Nice and spicy.",
        PEPPER_COOKED = "It was already hot to begin with.",
        PEPPER_SEEDS = "A handful of seeds.",

        WEREITEM_BEAVER = "I guess science works differently up North.",
        WEREITEM_GOOSE = "That thing's giving ME goosebumps!",
        WEREITEM_MOOSE = "A perfectly normal cursed moose thing.",

        MERMHAT = "Finally, I can show my face in public.",        
        MERMTHRONE =
        {
            GENERIC = "Looks fit for a swamp king!",
            BURNT = "There was something fishy about that throne anyway.",
        },
        MOSQUITOMUSK = "Those suckers will never get me!",
        MOSQUITOBOMB = "I'm just itching to throw it.",
        MOSQUITOFERTILIZER = "Apparently plants like it.",
        MOSQUITOMERMSALVE = "It's the latest buzz among the merms.",

        MERMTHRONE_CONSTRUCTION =
        {
            GENERIC = "Just what is she planning?",
            BURNT = "I suppose we'll never know what it was for now.",
        },
        MERMHOUSE_CRAFTED =
        {
            GENERIC = "It's actually kind of cute.",
            BURNT = "Ugh, the smell!",
        },

        MERMWATCHTOWER_REGULAR = "They seem happy to have found a king.",
        MERMWATCHTOWER_NOKING = "A royal guard with no Royal to guard.",
        MERMKING = "Your Majesty!",
        MERMGUARD = "I feel very guarded around these guys...",
        MERM_PRINCE = "They operate on a first-come, first-sovereigned basis.",

        SQUID = "I have an inkling they'll come in handy.",

		GHOSTFLOWER = "My scientific brain refuses to perceive it.",
        SMALLGHOST = "Aww, does someone have a little boo-boo?",

        CRABKING =
        {
            GENERIC = "Yikes! A little too crabby for me.",
            INERT = "That castle needs a little decoration.",
        },
		CRABKING_CLAW = "That's claws for alarm!",

		MESSAGEBOTTLE = "I wonder if it's for me!",
		MESSAGEBOTTLEEMPTY = "It's full of nothing.",

        MEATRACK_HERMIT =
        {
            DONE = "Jerky time!",
            DRYING = "Meat takes a while to dry.",
            DRYINGINRAIN = "Meat takes even longer to dry in rain.",
            GENERIC = "Those look like they could use some meat.",
            BURNT = "The rack got dried.",
            DONE_NOTMEAT = "In laboratory terms, we would call that \"dry\".",
            DRYING_NOTMEAT = "Drying things is not an exact science.",
            DRYINGINRAIN_NOTMEAT = "Rain, rain, go away. Be wet again another day.",
        },
        BEEBOX_HERMIT =
        {
            READY = "It's full of honey.",
            FULLHONEY = "It's full of honey.",
            GENERIC = "I'm sure there's a little sweetness to be found inside.",
            NOHONEY = "It's empty.",
            SOMEHONEY = "Need to wait a bit.",
            BURNT = "How did it get burned?!!",
        },

        HERMITCRAB = "Living by yourshellf must get abalonely.",

        HERMIT_PEARL = "I'll take good care of it.",
        HERMIT_CRACKED_PEARL = "I... didn't take good care of it.",

        -- DSEAS
        WATERPLANT = "As long as we don't take their barnacles, they'll stay our buds.",
        WATERPLANT_BOMB = "We're under seedge!",
        WATERPLANT_BABY = "This one's just a sprout.",
        WATERPLANT_PLANTER = "They seem to grow best on oceanic rocks.",

        SHARK = "We may need a bigger boat...",

        MASTUPGRADE_LAMP_ITEM = "I'm full of bright ideas.",
        MASTUPGRADE_LIGHTNINGROD_ITEM = "I've harnessed the power of electricity over land and sea!",

        WATERPUMP = "It puts out fires very a-fish-iently.",

        BARNACLE = "They don't look like knuckles to me.",
        BARNACLE_COOKED = "I'm told it's quite a delicacy.",

        BARNACLEPITA = "Barnacles taste better when you can't see them.",
        BARNACLESUSHI = "I still seem to have misplaced my chopsticks.",
        BARNACLINGUINE = "Pass the pasta!",
        BARNACLESTUFFEDFISHHEAD = "I'm just hungry enough to consider it...",

        LEAFLOAF = "Mystery leaf meat.",
        LEAFYMEATBURGER = "Vegetarian, but not cruelty-free.",
        LEAFYMEATSOUFFLE = "Has science gone too far?",
        MEATYSALAD = "Strangely filling, for a salad.",

        -- GROTTO

		MOLEBAT = "A regular Noseferatu.",
        MOLEBATHILL = "I wonder what might be stuck in that rat's nest.",

        BATNOSE = "Who knows whose nose this is?",
        BATNOSE_COOKED = "It came out smelling like a nose.",
        BATNOSEHAT = "For hands-free dairy drinking.",

        MUSHGNOME = "It might be aggressive, but only sporeradically.",

        SPORE_MOON = "I'll keep as mushroom between me and those spores as I can.",

        MOON_CAP = "It doesn't look particularly appetizing.",
        MOON_CAP_COOKED = "The things I do in the name of science...",

        MUSHTREE_MOON = "This mushroom tree is clearly stranger than the rest.",

        LIGHTFLIER = "How strange, carrying one makes my pocket feel lighter!",

        GROTTO_POOL_BIG = "The moon water makes the glass grow. That's just science.",
        GROTTO_POOL_SMALL = "The moon water makes the glass grow. That's just science.",

        DUSTMOTH = "Tidy little guys, aren't they?",

        DUSTMOTHDEN = "They're snug as bugs in there.",

        ARCHIVE_LOCKBOX = "Now how do I get the knowledge out?",
        ARCHIVE_CENTIPEDE = "You won't centimpede my progress!",
        ARCHIVE_CENTIPEDE_HUSK = "A pile of old spare parts.",

        ARCHIVE_COOKPOT =
        {
            COOKING_LONG = "This is going to take a while.",
            COOKING_SHORT = "It's almost done!",
            DONE = "Mmmmm! It's ready to eat!",
            EMPTY = "Let's dust off this old crockery, shall we?",
            BURNT = "The pot got cooked.",
        },

        ARCHIVE_MOON_STATUE = "These magnificent moon statues have me waxing poetic.",
        ARCHIVE_RUNE_STATUE =
        {
            LINE_1 = "So much knowledge, if only I could read it!",
            LINE_2 = "These markings look different from the ones in the rest of the ruins.",
            LINE_3 = "So much knowledge, if only I could read it!",
            LINE_4 = "These markings look different from the ones in the rest of the ruins.",
            LINE_5 = "So much knowledge, if only I could read it!",
        },
		VAULT_RUNE = "I can't read that.",
		VAULT_STATUE =
		{
			LORE1 = "Looks like he met a dark end...",
			LORE2 = "This really bugs me.",
			LORE3 = "They make a pointed argument.",
		},

        ARCHIVE_RESONATOR = {
            GENERIC = "Why use a map when you could use a mind-bogglingly complex piece of machinery?",
            IDLE = "It seems to have found everything worth finding.",
        },

        ARCHIVE_RESONATOR_ITEM = "Aha! I used the secret knowledge to build a device! Why does this feel familiar...",

        ARCHIVE_LOCKBOX_DISPENCER = {
          POWEROFF = "If only there was a way to get it working again...",
          GENERIC =  "I have the strongest urge to stand around it and talk about nothing in particular.",
        },

        ARCHIVE_SECURITY_DESK = {
            POWEROFF = "Whatever it did, it's not doing it anymore.",
            GENERIC = "It looks inviting.",
        },

        ARCHIVE_SECURITY_PULSE = "Where are you going? Someplace interesting?",

        ARCHIVE_SWITCH = {
            VALID = "Those gems seem to power it... through entirely scientific means, I'm sure.",
            GEMS = "The socket is empty.",
        },

        ARCHIVE_PORTAL = {
            POWEROFF = "Dead as a dead doornail.",
            GENERIC = "Strange, the power is on but this isn't.",
        },

        WALL_STONE_2 = "That's a nice wall.",
        WALL_RUINS_2 = "An ancient piece of wall.",

        REFINED_DUST = "Ah-CHOO!",
        DUSTMERINGUE = "Who or what would eat this?",

        SHROOMCAKE = "It lives up to its name.",
        SHROOMBAIT = "It smells like dreams.",

        NIGHTMAREGROWTH = "Those crystals might be cause for some concern.",

        TURFCRAFTINGSTATION = "A true scientist is always breaking new ground!",

        MOON_ALTAR_LINK = "It must be building up to something.",

        -- FARMING
        COMPOSTINGBIN =
        {
            GENERIC = "I can barrel-y stand the smell.",
            WET = "That looks too soggy.",
            DRY = "Hm... too dry.",
            BALANCED = "Just right!",
            BURNT = "I didn't think it could smell any worse...",
        },
        COMPOST = "Food for plants, and not much else.",
        SOIL_AMENDER =
		{
			GENERIC = "Now we wait for science to do its work.",
			STALE = "It's creating what we scientists call a chemical reaction!",
			SPOILED = "That stomach-churning smell means it's working!",
		},

		SOIL_AMENDER_FERMENTED = "That's some strong science!",

        WATERINGCAN =
        {
            GENERIC = "I can water the plants with this.",
            EMPTY = "Maybe there's a pond around here somewhere...",
        },
        PREMIUMWATERINGCAN =
        {
            GENERIC = "It's been improved with science... and bird parts!",
            EMPTY = "It won't do me much good without water.",
        },

		FARM_PLOW = "A convenient plot device.",
		FARM_PLOW_ITEM = "I'd better find a good spot for my garden before I use it.",
		FARM_HOE = "I have to make the ground more comfortable for the seeds.",
		GOLDEN_FARM_HOE = "Do I really need something this fancy to move dirt around?",
		NUTRIENTSGOGGLESHAT = "This will help me see all the science hiding in the dirt.",
		PLANTREGISTRYHAT = "To understand the plant, you must wear the plant.",

        FARM_SOIL_DEBRIS = "It's making a mess of my garden.",

		FIRENETTLES = "If you can't stand the heat, stay out of the garden.",
		FORGETMELOTS = "Hm. I can't remember what I was going to say about those.",
		SWEETTEA = "A nice cup of tea to forget all my problems.",
		TILLWEED = "Out of my garden, you!",
		TILLWEEDSALVE = "My salve-ation.",
        WEED_IVY = "Hey, you're not a vegetable!",
        IVY_SNARE = "Now that's just rude.",

		TROPHYSCALE_OVERSIZEDVEGGIES =
		{
			GENERIC = "I can scientifically measure my harvest's heftiness.",
			HAS_ITEM = "Weight: {weight}\nHarvested on day: {day}\nNot bad.",
			HAS_ITEM_HEAVY = "Weight: {weight}\nHarvested on day: {day}\nWho knew they grew that big?",
            HAS_ITEM_LIGHT = "It's so average the scale isn't even bothering to tell me its weight.",
			BURNING = "Mmm, what's cooking?",
			BURNT = "I suppose that wasn't the best way to cook it.",
        },

        CARROT_OVERSIZED = "That's one big bunch of carrots!",
        CORN_OVERSIZED = "What a big ear you have!",
        PUMPKIN_OVERSIZED = "A rather pumped up pumpkin.",
        EGGPLANT_OVERSIZED = "I still don't see any resemblance to an egg.",
        DURIAN_OVERSIZED = "I'm sure it'll make an even bigger stink.",
        POMEGRANATE_OVERSIZED = "That might be the biggest pomegranate I've ever seen.",
        DRAGONFRUIT_OVERSIZED = "I half expect it to sprout wings.",
        WATERMELON_OVERSIZED = "A big, juicy watermelon.",
        TOMATO_OVERSIZED = "A tomato of incredible proportions.",
        POTATO_OVERSIZED = "That's a tater lot.",
        ASPARAGUS_OVERSIZED = "I guess we'll be eating asparagus for a while...",
        ONION_OVERSIZED = "They grow up so fast! It's... it's bringing a tear to my eye.",
        GARLIC_OVERSIZED = "A gargantuan garlic!",
        PEPPER_OVERSIZED = "A pepper of rather unusual size.",

        VEGGIE_OVERSIZED_ROTTEN = "What rotten luck.",

		FARM_PLANT =
		{
			GENERIC = "That's a plant!",
			SEED = "And now, we wait.",
			GROWING = "Grow my beautiful creation, grow!",
			FULL = "Time to reap science's rewards.",
			ROTTEN = "Drat! If only I'd picked it while I had the chance!",
			FULL_OVERSIZED = "With the power of science, I've produced monstrous produce!",
			ROTTEN_OVERSIZED = "What rotten luck.",
			FULL_WEED = "I knew I'd weed out the imposter eventually!",

			BURNING = "That can't be good for the plants...",
		},

        FRUITFLY = "Buzz off!",
        LORDFRUITFLY = "Hey, stop upsetting the plants!",
        FRIENDLYFRUITFLY = "The garden seems happier with it around.",
        FRUITFLYFRUIT = "Now I'm in charge!",

        SEEDPOUCH = "I was getting tired of carrying loose seeds in my pockets.",

		-- Crow Carnival
		CARNIVAL_HOST = "What an odd fellow.",
		CARNIVAL_CROWKID = "Good day to you, small bird person.",
		CARNIVAL_GAMETOKEN = "One shiny token.",
		CARNIVAL_PRIZETICKET =
		{
			GENERIC = "That's the ticket!",
			GENERIC_SMALLSTACK = "That's the tickets!",
			GENERIC_LARGESTACK = "That's a lot of tickets!",
		},

		CARNIVALGAME_FEEDCHICKS_NEST = "It's a little trapdoor.",
		CARNIVALGAME_FEEDCHICKS_STATION =
		{
			GENERIC = "It won't let me play until I give it something shiny.",
			PLAYING = "This looks like fun!",
		},
		CARNIVALGAME_FEEDCHICKS_KIT = "This really is a pop-up carnival.",
		CARNIVALGAME_FEEDCHICKS_FOOD = "I don't need to chew them up first, do I?",

		CARNIVALGAME_MEMORY_KIT = "This really is a pop-up carnival.",
		CARNIVALGAME_MEMORY_STATION =
		{
			GENERIC = "It won't let me play until I give it something shiny.",
			PLAYING = "Not to brag, but I've been called a bit of an egghead in the past.",
		},
		CARNIVALGAME_MEMORY_CARD =
		{
			GENERIC = "It's a little trapdoor.",
			PLAYING = "Is this the right one?",
		},

		CARNIVALGAME_HERDING_KIT = "This really is a pop-up carnival.",
		CARNIVALGAME_HERDING_STATION =
		{
			GENERIC = "It won't let me play until I give it something shiny.",
			PLAYING = "Those eggs are looking a little runny.",
		},
		CARNIVALGAME_HERDING_CHICK = "Come back here!",

		CARNIVALGAME_SHOOTING_KIT = "This really is a pop-up carnival.",
		CARNIVALGAME_SHOOTING_STATION =
		{
			GENERIC = "It won't let me play until I give it something shiny.",
			PLAYING = "I could calculate the trajectory, but it involves a lot of complicated numbers and squiggles.",
		},
		CARNIVALGAME_SHOOTING_TARGET =
		{
			GENERIC = "It's a little trapdoor.",
			PLAYING = "That target's really starting to bug me.",
		},

		CARNIVALGAME_SHOOTING_BUTTON =
		{
			GENERIC = "It won't let me play until I give it something shiny.",
			PLAYING = "Science compels me to press that big shiny button!",
		},

		CARNIVALGAME_WHEELSPIN_KIT = "This really is a pop-up carnival.",
		CARNIVALGAME_WHEELSPIN_STATION =
		{
			GENERIC = "It won't let me play until I give it something shiny.",
			PLAYING = "It turns out that spinning your wheels is actually very productive.",
		},

		CARNIVALGAME_PUCKDROP_KIT = "This really is a pop-up carnival.",
		CARNIVALGAME_PUCKDROP_STATION =
		{
			GENERIC = "It won't let me play until I give it something shiny.",
			PLAYING = "Physics don't always work the same way twice.",
		},

		CARNIVAL_PRIZEBOOTH_KIT = "The real prize is the booth we made along the way.",
		CARNIVAL_PRIZEBOOTH =
		{
			GENERIC = "I've got my eyes on the prize. That one, over there!",
		},

		CARNIVALCANNON_KIT = "I've got a lot of experience in making things explode.",
		CARNIVALCANNON =
		{
			GENERIC = "This experiment blows up on purpose!",
			COOLDOWN = "What a blast!",
		},

		CARNIVAL_PLAZA_KIT = "It's a scientifically proven fact that birds love trees.",
		CARNIVAL_PLAZA =
		{
			GENERIC = "It doesn't really scream \"Cawnival\" yet, does it?",
			LEVEL_2 = "A little birdy told me it could use some more decorations around here.",
			LEVEL_3 = "This tree is caws for celebration!",
		},

		CARNIVALDECOR_EGGRIDE_KIT = "I hope this prize is all it's cracked up to be.",
		CARNIVALDECOR_EGGRIDE = "I could watch it for hours.",

		CARNIVALDECOR_LAMP_KIT = "Only some light work left to do.",
		CARNIVALDECOR_LAMP = "It's powered by whimsy.",
		CARNIVALDECOR_PLANT_KIT = "Maybe it's a boxwood?",
		CARNIVALDECOR_PLANT = "Either it's small, or I'm gigantic.",
		CARNIVALDECOR_BANNER_KIT = "I have to build it myself? I should have known there'd be a catch.",
		CARNIVALDECOR_BANNER = "I think all these shiny decorations reflect well on me.",

		CARNIVALDECOR_FIGURE =
		{
			RARE = "See? Proof that trying the exact same thing over and over will eventually lead to success!",
			UNCOMMON = "You don't see this kind of design too often.",
			GENERIC = "I seem to be getting a lot of these...",
		},
		CARNIVALDECOR_FIGURE_KIT = "The thrill of discovery!",
		CARNIVALDECOR_FIGURE_KIT_SEASON2 = "The thrill of discovery!",

        CARNIVAL_BALL = "It's genius in its simplicity.", --unimplemented
		CARNIVAL_SEEDPACKET = "I was feeling a bit peckish.",
		CARNIVALFOOD_CORNTEA = "Is this drink supposed to be crunchy?",

        CARNIVAL_VEST_A = "I think it makes me look adventurous.",
        CARNIVAL_VEST_B = "It's like wearing my own shade tree.",
        CARNIVAL_VEST_C = "I hope there's no bugs in it...",

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
            GENERIC = "You'll pay for breaking all that science!",
            DEAD = "Gotcha!",
        },
        ALTERGUARDIAN_PHASE2 = {
            GENERIC = "I think I just made it angry...",
            DEAD = "This time I'm sure I got it.",
        },
        ALTERGUARDIAN_PHASE2SPIKE = "You've made your point!",
        ALTERGUARDIAN_PHASE3 = "It's definitely angry now!",
        ALTERGUARDIAN_PHASE3TRAP = "After rigorous testing, I can confirm that they make me want to take a nap.",
        ALTERGUARDIAN_PHASE3DEADORB = "Is it dead? That strange energy still seems to be lingering around it.",
        ALTERGUARDIAN_PHASE3DEAD = "Maybe someone should go poke it... just to be sure.",

        ALTERGUARDIANHAT = "It shows me infinite possibilities...",
        ALTERGUARDIANHATSHARD = "Even a single piece is pretty illuminating!",

        MOONSTORM_GLASS = {
            GENERIC = "It's glassy.",
            INFUSED = "It's glowing with unearthly energy."
        },

        MOONSTORM_STATIC = "A new discovery, how electrifying!",
        MOONSTORM_STATIC_ITEM = "It makes my hair do crazy things.",
        MOONSTORM_STATIC_ROAMER = "It seems lost in transmission.",
        MOONSTORM_SPARK = "I think I'll call it the \"Higgsbury Particle.\"",

        BIRD_MUTANT = "I think that used to be a crow.",
        BIRD_MUTANT_SPITTER = "I don't like the way it's looking at me...",

        WAGSTAFF_NPC = "As a fellow man of science, I'm compelled to help him!",

        WAGSTAFF_NPC_MUTATIONS = "Science never rests!",
        WAGSTAFF_NPC_WAGPUNK = "I wonder where he's off to...",

        ALTERGUARDIAN_CONTAINED = "It's draining the energy right out of that monster!",

        WAGSTAFF_TOOL_1 = "That has to be the tool I'm looking for!",
        WAGSTAFF_TOOL_2 = "Of course I know what it is! It's just, er... too complicated to explain.",
        WAGSTAFF_TOOL_3 = "Clearly a very scientific tool!",
        WAGSTAFF_TOOL_4 = "My scientific instincts tell me that this is the tool I'm looking for!",
        WAGSTAFF_TOOL_5 = "I know exactly what it does! Science!",

        MOONSTORM_GOGGLESHAT = "Of course! Combining moon energy with potato energy, why didn't I think of that?",

        MOON_DEVICE = {
            GENERIC = "It's containing the energy! I knew what it was for all along, of course.",
            CONSTRUCTION1 = "The science has only just started.",
            CONSTRUCTION2 = "That's looking much more science-y already!",
        },

		-- Wanda
        POCKETWATCH_HEAL = {
			GENERIC = "I bet there's a lot of interesting science inside.",
			RECHARGING = "I guess it needs time to... recalibrate the, uh... time whatsit.",
		},

        POCKETWATCH_REVIVE = {
			GENERIC = "I bet there's a lot of interesting science inside.",
			RECHARGING = "I guess it needs time to... recalibrate the, uh... time whatsit.",
		},

        POCKETWATCH_WARP = {
			GENERIC = "I bet there's a lot of interesting science inside.",
			RECHARGING = "It's doing \"time stuff\", that's the technical term.",
		},

        POCKETWATCH_RECALL = {
			GENERIC = "I bet there's a lot of interesting science inside.",
			RECHARGING = "It's doing \"time stuff\", that's the technical term.",
			UNMARKED = "only_used_by_wanda",
			MARKED_SAMESHARD = "only_used_by_wanda",
			MARKED_DIFFERENTSHARD = "only_used_by_wanda",
		},

        POCKETWATCH_PORTAL = {
			GENERIC = "I bet there's a lot of interesting science inside.",
			RECHARGING = "It's doing \"time stuff\", that's the technical term.",
			UNMARKED = "only_used_by_wanda unmarked",
			MARKED_SAMESHARD = "only_used_by_wanda same shard",
			MARKED_DIFFERENTSHARD = "only_used_by_wanda other shard",
		},

        POCKETWATCH_WEAPON = {
			GENERIC = "That looks like a bad time just waiting to happen.",
			DEPLETED = "only_used_by_wanda",
		},

        POCKETWATCH_PARTS = "Wait a minute, this is starting to look more like magic than science!",
        POCKETWATCH_DISMANTLER = "I wonder if she got them second hand.",

        POCKETWATCH_PORTAL_ENTRANCE =
		{
			GENERIC = "Onward, to discovery!",
			DIFFERENTSHARD = "Onward, to discovery!",
		},
        POCKETWATCH_PORTAL_EXIT = "It's a long drop down.",

        -- Waterlog
        WATERTREE_PILLAR = "That tree is massive!",
        OCEANTREE = "I think these trees are a little lost.",
        OCEANTREENUT = "There's something alive inside.",
        WATERTREE_ROOT = "It's not a square root.",

        OCEANTREE_PILLAR = "It's not quite as great as the original, but still pretty good.",

        OCEANVINE = "The scientific term is \"tree noodles\".",
        FIG = "I'll call it \"Newton's Fig\".",
        FIG_COOKED = "It's been warmed by science.",

        SPIDER_WATER = "Why in the name of science do they get to float?",
        MUTATOR_WATER = "Oh wow, that looks um... delicious, Webber!",
        OCEANVINE_COCOON = "What if I just gave it a little poke?",
        OCEANVINE_COCOON_BURNT = "I smell burnt toast.",

        GRASSGATOR = "I don't think he likes me very much.",

        TREEGROWTHSOLUTION = "Mmmm, tree food!",

        FIGATONI = "Mama mia!",
        FIGKABAB = "Fig with a side of stick.",
        KOALEFIG_TRUNK = "Great, now I've got a stuffed nose.",
        FROGNEWTON = "The fig really brings it all together.",

        -- The Terrorarium
        TERRARIUM = {
            GENERIC = "Looking at it makes my head feel fuzzy... or... blocky?",
            CRIMSON = "I have a nasty feeling about this...",
            ENABLED = "Am I on the other side of the rainbow?!",
			WAITING_FOR_DARK = "What could it be? Maybe I'll sleep on it.",
			COOLDOWN = "It needs to cool down after that.",
			SPAWN_DISABLED = "I shouldn't be bothered by anymore prying eyes now.",
        },

        -- Wolfgang
        MIGHTY_GYM =
        {
            GENERIC = "I think I pulled a muscle just looking at it...",
            BURNT = "It won't pull any muscles now.",
        },

        DUMBBELL = "I usually let my mind do all the heavy lifting.",
        DUMBBELL_GOLDEN = "It's worth its weight in gold.",
		DUMBBELL_MARBLE = "I've trained my brain to be the strongest muscle in my body.",
        DUMBBELL_GEM = "I'll conquer this weight with the power of-- ACK! My spine!!",
        POTATOSACK = "It's either filled with potato-shaped rocks or rock-shaped potatoes.",

        DUMBBELL_HEAT = "It's good for a warm-up.",
        DUMBBELL_REDGEM = "It'll really make you feel the burn.",
        DUMBBELL_BLUEGEM = "You can't get much cooler than that.",

        TERRARIUMCHEST =
		{
			GENERIC = "What harm ever came from peeking inside a box?",
			BURNT = "It won't be bothering anyone anymore.",
			SHIMMER = "That seems a bit out of place...",
		},

		EYEMASKHAT = "You could say I have an eye for style.",

        EYEOFTERROR = "Go for the eye!",
        EYEOFTERROR_MINI = "I'm starting to feel self-conscious.",
        EYEOFTERROR_MINI_GROUNDED = "I think it's about to hatch...",

        FROZENBANANADAIQUIRI = "Yellow and mellow.",
        BUNNYSTEW = "This one's luck has run out.",
        MILKYWHITES = "...Ew.",

        CRITTER_EYEOFTERROR = "Always good to have another set of eyes! Er... eye.",

        SHIELDOFTERROR ="The best defense is a good mawfence.",
        TWINOFTERROR1 = "Maybe they're friendly? ...Maybe not.",
        TWINOFTERROR2 = "Maybe they're friendly? ...Maybe not.",

		-- Cult of the Lamb
		COTL_TRINKET = "What a crowning achievement.",
		TURF_COTL_GOLD = "Don't walk on that, it was expensive!",
		TURF_COTL_BRICK = "Bricks are the building blocks of the floor.",
		COTL_TABERNACLE_LEVEL1 =
		{
			LIT = "What a soothing light.",
			GENERIC = "It needs some fuel.",
		},
		COTL_TABERNACLE_LEVEL2 =
		{
			LIT = "What an inspirational figure!",
			GENERIC = "It needs some fuel.",
		},
		COTL_TABERNACLE_LEVEL3 =
		{
			LIT = "I could stare at it forever... and ever...",
			GENERIC = "It needs some fuel.",
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
        WX78MODULE_MAXHEALTH = "So much science packed into one tiny gizmo.",
        WX78MODULE_MAXSANITY1 = "So much science packed into one tiny gizmo.",
        WX78MODULE_MAXSANITY = "So much science packed into one tiny gizmo.",
        WX78MODULE_MOVESPEED = "So much science packed into one tiny gizmo.",
        WX78MODULE_MOVESPEED2 = "So much science packed into one tiny gizmo.",
        WX78MODULE_HEAT = "So much science packed into one tiny gizmo.",
        WX78MODULE_NIGHTVISION = "So much science packed into one tiny gizmo.",
        WX78MODULE_COLD = "So much science packed into one tiny gizmo.",
        WX78MODULE_TASER = "So much science packed into one tiny gizmo.",
        WX78MODULE_LIGHT = "So much science packed into one tiny gizmo.",
        WX78MODULE_MAXHUNGER1 = "So much science packed into one tiny gizmo.",
        WX78MODULE_MAXHUNGER = "So much science packed into one tiny gizmo.",
        WX78MODULE_MUSIC = "So much science packed into one tiny gizmo.",
        WX78MODULE_BEE = "So much science packed into one tiny gizmo.",
        WX78MODULE_MAXHEALTH2 = "So much science packed into one tiny gizmo.",

        WX78_SCANNER =
        {
            GENERIC ="WX-78 really puts a piece of themselves into their work.",
            HUNTING = "Get that data!",
            SCANNING = "Seems like it's found something.",
        },

        WX78_SCANNER_ITEM = "I wonder if it dreams about scanning sheep.",
        WX78_SCANNER_SUCCEEDED = "It's got the look of someone eager to show their work.",

        WX78_MODULEREMOVER = "Obviously a very delicate and complicated scientific instrument.",

        SCANDATA = "Smells like fresh research.",

		-- QOL 2022
		JUSTEGGS = "It could use some bacon.",
		VEGGIEOMLET = "Breakfast is the most scientific meal of the day.",
		TALLEGGS = "A breakthrough in breakfast technology!",
		BEEFALOFEED = "None for me, thank you.",
		BEEFALOTREAT = "A bit too grainy for my taste.",

        -- Pirates
        BOAT_ROTATOR = "Things are going in the right direction. Or maybe the left.",
        BOAT_ROTATOR_KIT = "I think I'll take it out for a spin.",
        BOAT_BUMPER_KELP = "It won't save the boat from everything, but it sure kelps.",
        BOAT_BUMPER_KELP_KIT = "A soon-to-be boat bumper.",
		BOAT_BUMPER_SHELL = "It gives the boat a little shellf defense.",
        BOAT_BUMPER_SHELL_KIT = "A soon-to-be boat bumper.",
        BOAT_BUMPER_CRABKING = "It's my boat's crowning glory.",
        BOAT_BUMPER_CRABKING_KIT = "A soon-to-be boat bumper.",

        BOAT_CANNON = {
            GENERIC = "I should load it with something.",
            AMMOLOADED = "The cannon is ready to fire!",
            NOAMMO = "I didn't forget the cannonballs, I'm just letting the anticipation build.",
        },
        BOAT_CANNON_KIT = "It's not a cannon yet, but it will be.",
        CANNONBALL_ROCK_ITEM = "This will fit into a cannon perfectly.",

        OCEAN_TRAWLER = {
            GENERIC = "It makes fishing more effishient.",
            LOWERED = "And now we wait.",
            CAUGHT = "It caught something!",
            ESCAPED = "Looks like something was caught, but it escaped...",
            FIXED = "All ready to catch fish again!",
        },
        OCEAN_TRAWLER_KIT = "I should put it somewhere with lots of fish.",

        BOAT_MAGNET =
        {
            GENERIC = "I'm always drawn to physics, like a... ah, can't think of the word.",
            ACTIVATED = "It's working!! Er, I knew it would work, of course.",
        },
        BOAT_MAGNET_KIT = "One of my more genius ideas, if I do say so myself.",

        BOAT_MAGNET_BEACON =
        {
            GENERIC = "This will attract any strong magnets nearby.",
            ACTIVATED = "Magnetism!",
        },
        DOCK_KIT = "Everything I need to build a dock for my boat.",
        DOCK_WOODPOSTS_ITEM = "Aha! I thought the dock was missing something.",

        MONKEYHUT =
        {
            GENERIC = "Treehouses are terribly flammable places to conduct experiments.",
            BURNT = "Like I said!",
        },
        POWDER_MONKEY = "Don't you dare monkey around with my boat!",
        PRIME_MATE = "A nice hat is always a clear indicator of who's in charge.",
		LIGHTCRAB = "It's bioluminous!",
        CUTLESS = "What it lacks in slicing it makes up for in splinters.",
        CURSED_MONKEY_TOKEN = "It seems harmless.",
        OAR_MONKEY = "It really puts the paddle to the battle.",
        BANANABUSH = "That bush is bananas!",
        DUG_BANANABUSH = "That bush is bananas!",
        PALMCONETREE = "Kind of piney, for a palm tree.",
        PALMCONE_SEED = "The very beginnings of a tree.",
        PALMCONE_SAPLING = "It has big dreams of being a tree one day.",
        PALMCONE_SCALE = "If trees had toenails, I imagine they'd look like this.",
        MONKEYTAIL = "I wonder if they're edible? Maybe an experiment is in order.",
        DUG_MONKEYTAIL = "I wonder if they're edible? Maybe an experiment is in order.",

        MONKEY_MEDIUMHAT = "I think it makes me look very dashing and captain-like.",
        MONKEY_SMALLHAT = "At least it will keep my hair dry.",
        POLLY_ROGERSHAT = "A little bird told me it will come in handy.",
        POLLY_ROGERS = "That's the little bird.",

        MONKEYISLAND_PORTAL = "Nothing can get in, but it keeps spitting things out.",
        MONKEYISLAND_PORTAL_DEBRIS = "This machinery looks oddly familiar...",
        MONKEYQUEEN = "She looks like the top banana around here.",
        MONKEYPILLAR = "A real pillar of the community.",
        PIRATE_FLAG_POLE = "Ahoy!",

        BLACKFLAG = "Gentleman Pirate-Scientist does have a bit of a ring to it.",
        PIRATE_STASH = "I'm diggin' the decor.",
        STASH_MAP = "It's nice to have some direction in life.",

        BANANAJUICE = "Makes me feel a bit rogueish.",

        FENCE_ROTATOR = "Enguard! Re-post!",

        CHARLIE_STAGE_POST = "It's a setup! It feels too... staged.",
        CHARLIE_LECTURN = "Is someone doing a play?",

        CHARLIE_HECKLER = "They're just here to stir up drama.",

        PLAYBILL_THE_DOLL = "\"Authored by C.W.\"",
        PLAYBILL_THE_VEIL = "\"Brought to you by the Heralds of Tenebrau.\"",
        PLAYBILL_THE_VAULT = "Written by \"E.\"?",
        STATUEHARP_HEDGESPAWNER = "The flowers grew back, but the head didn't.",
        HEDGEHOUND = "It's an ambush!",
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
            STANDING = "Just keep your hand to yourself, alright?",
            SITTING = "Something's odd here, but I can't put my finger on it.",
        },
        SEWING_MANNEQUIN =
        {
            GENERIC = "All dressed up and nowhere to go.",
            BURNT = "All burnt up and nowhere to go.",
        },

		-- Waxwell
		MAGICIAN_CHEST = "Why am I starting to feel a bit uneasy...?",
		TOPHAT_MAGICIAN = "That hat just oozes style.",

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
		DREADSTONE = "It seems to reflect shadows instead of light.",
		HORRORFUEL = "It sends a terrible shiver down my spine.",
		DAYWALKER =
		{
			GENERIC = "Freeing him might not have been my best idea.",
			IMPRISONED = "I feel almost sorry for him.",
		},
		DAYWALKER_PILLAR =
		{
			GENERIC = "There's something glinting inside the marble.",
			EXPOSED = "A pillar of impossibly hard stone.",
		},
		DAYWALKER2 =
		{
			GENERIC = "Let's not upset him.",
			BURIED = "He's trapped under all that junk.",
			HOSTILE = "He seems upset.",
		},
		ARMORDREADSTONE = "Lightweight, sturdy, and snazzy!",
		DREADSTONEHAT = "To keep my brilliant brain safe and sound.",

        -- Rifts 1
        LUNARRIFT_PORTAL = "All that science hiding inside... and I can't get to it!",
        LUNARRIFT_CRYSTAL = "Crystallized illuminosity.",

        LUNARTHRALL_PLANT = "It doesn't seem to care about personal space.",
        LUNARTHRALL_PLANT_VINE_END = "It has a prickly disposition.",

		LUNAR_GRAZER = "It must have come through that strange rift!",

        PUREBRILLIANCE = "It's blinding me with science!",
        LUNARPLANT_HUSK = "It's incredibly tough. I could use this!",

		LUNAR_FORGE = "Just the place to make something very clever and scientific.",
		LUNAR_FORGE_KIT = "A simple combination of elements!",

		LUNARPLANT_KIT = "I'm moonlighting as a tailor.",
		ARMOR_LUNARPLANT = "This armor doesn't leaf any room for improvement.",
		LUNARPLANTHAT = "It makes me look even brighter than usual.",
		BOMB_LUNARPLANT = "Botany and chemistry, working together.",
		STAFF_LUNARPLANT = "Plant power!",
		SWORD_LUNARPLANT = "It's hard not to make sound effects when I wave it around.",
		PICKAXE_LUNARPLANT = "Smashing!",
		SHOVEL_LUNARPLANT = "The dirt displacing possibilities are endless!",

		BROKEN_FORGEDITEM = "It's broken, but I think I could repair it.",

        PUNCHINGBAG = "It comes with a finely calibrated ouch-o-meter.",

        -- Rifts 2
        SHADOWRIFT_PORTAL = "That drop looks like it goes on forever.",

		SHADOW_FORGE = "What dark designs will it bring to life?",
		SHADOW_FORGE_KIT = "It would be unscientific of me not to at least do some experiments.",

        FUSED_SHADELING = "I liked you better when you were smaller, and bothering someone else.",
        FUSED_SHADELING_BOMB = "Bombastic!",

		VOIDCLOTH = "Those shadows are all cut from the same cloth.",
		VOIDCLOTH_KIT = "My knowledge of sewing with shadows is patchy at best.",
		VOIDCLOTHHAT = "It makes me feel dark and mysterious.",
		ARMOR_VOIDCLOTH = "Oh drat, there's a tear across the front!",

        VOIDCLOTH_UMBRELLA = "I always hate when my hair gets melted by acid.",
        VOIDCLOTH_SCYTHE = "It makes harvesting so easy, it's scary!",

		SHADOWTHRALL_HANDS = "Hands off!",
		SHADOWTHRALL_HORNS = "It looks hungry for a fight.",
		SHADOWTHRALL_WINGS = "The wings seem to be just for show.",
		SHADOWTHRALL_MOUTH = "It's a mouthy one.",

        CHARLIE_NPC = "Wait, is that...?",
        CHARLIE_HAND = "It wants something dreadful.",

        NITRE_FORMATION = "It's definitely some kind of rock.",
        DREADSTONE_STACK = "It's coming from deep down in those chasms...",
        
        SCRAPBOOK_PAGE = "Someone else out there likes to scrapbook.",

        LEIF_IDOL = "Carving a tree out of wood seems a bit redundant.",
        WOODCARVEDHAT = "It looks like it's been lovingly carved.",
        WALKING_STICK = "It's a very nice stick.",

        IPECACSYRUP = "I don't think I want to eat this.",
        BOMB_LUNARPLANT_WORMWOOD = "Our friend seems to be getting more in touch with his lunar roots.", -- Unused
        WORMWOOD_MUTANTPROXY_CARRAT =
        {
        	DEAD = "That's the end of that.",
        	GENERIC = "Are carrots supposed to have legs?",
        	HELD = "You're kind of ugly up close.",
        	SLEEPING = "It's almost cute.",
        },
        WORMWOOD_MUTANTPROXY_LIGHTFLIER = "How strange, carrying one makes my pocket feel lighter!",
		WORMWOOD_MUTANTPROXY_FRUITDRAGON =
		{
			GENERIC = "It's cute, but it's not ripe yet.",
			RIPE = "I think it's ripe now.",
			SLEEPING = "It's snoozing.",
		},

        SUPPORT_PILLAR_SCAFFOLD = "It's all under wraps for now.",
        SUPPORT_PILLAR = "I should really get around to fixing that.",
        SUPPORT_PILLAR_COMPLETE = "It fills me with confidence.",
        SUPPORT_PILLAR_BROKEN = "You were once tall and strong.",

		SUPPORT_PILLAR_DREADSTONE_SCAFFOLD = "It's all under wraps for now.",
		SUPPORT_PILLAR_DREADSTONE = "I should really get around to fixing that.",
		SUPPORT_PILLAR_DREADSTONE_COMPLETE = "That looks dreadfully strong.",
		SUPPORT_PILLAR_DREADSTONE_BROKEN = "How dreadful.",

        WOLFGANG_WHISTLE = "It gives me terrible flashbacks to the gym classes of my youth...",

        -- Rifts 3

        MUTATEDDEERCLOPS = "It's got a little something in its eye.",
        MUTATEDWARG = "What big, glowing eyes you have!",
        MUTATEDBEARGER = "Things are about to get hairy...",

        LUNARFROG = "Quit staring.",

        DEERCLOPSCORPSE =
        {
            GENERIC  = "It's over... right?",
            BURNING  = "Can't be too careful.",
            REVIVING = "I don't want to believe what my eyes are seeing!",
        },

        WARGCORPSE =
        {
            GENERIC  = "Why do I still feel uneasy?",
            BURNING  = "It's for the best.",
            REVIVING = "What in the name of science?!",
        },

        BEARGERCORPSE =
        {
            GENERIC  = "What an unbearable stench!",
            BURNING  = "That was close.",
            REVIVING = "There must be a scientific explanation for this!",
        },

        BEARGERFUR_SACK = "There's still fur on it. Chilling.",
        HOUNDSTOOTH_BLOWPIPE = "Teeth? Doesn't seem all that hygenic.",
        DEERCLOPSEYEBALL_SENTRYWARD =
        {
            GENERIC = "How's that for an icy gaze?",    -- Enabled.
            NOEYEBALL = "Someone lose an eye?",  -- Disabled.
        },
        DEERCLOPSEYEBALL_SENTRYWARD_KIT = "Stand back everyone, I am a trained scientist!",

        SECURITY_PULSE_CAGE = "Interesting. It's empty.",
        SECURITY_PULSE_CAGE_FULL = "Aren't you the cutest little ball of pure energy?",

		CARPENTRY_STATION =
        {
            GENERIC = "It makes furniture.",
            BURNT = "It doesn't make furniture anymore.",
        },

        WOOD_TABLE = -- Shared between the round and square tables.
        {
            GENERIC = "I use tables periodically.",
            HAS_ITEM = "I use tables periodically.",
            BURNT = "I don't think I'll be using it anymore.",
        },

        WOOD_CHAIR =
        {
            GENERIC = "I'd like to sit on that!",
            OCCUPIED = "Somebody else is sitting on that.",
            BURNT = "I wouldn't like to sit on that.",
        },

        DECOR_CENTERPIECE = "How sophisticated.",
        DECOR_LAMP = "A welcoming light.",
        DECOR_FLOWERVASE =
        {
            GENERIC = "A nice vase of flowers.",
            EMPTY = "A nice vase without any flowers.",
            WILTED = "Not looking very fresh.",
            FRESHLIGHT = "It's nice to have a little light.",
            OLDLIGHT = "I know I told Maxwell to replace the bulb.",
        },
        DECOR_PICTUREFRAME =
        {
            GENERIC = "It's beautiful.",
            UNDRAWN = "I should draw something in this.",
        },
        DECOR_PORTRAITFRAME = "Looking good!",

        PHONOGRAPH = "Oh no, I've seen THAT before.",
        RECORD = "Drat, I just got that song out of my head!",
        RECORD_CREEPYFOREST = "A whole song on one record? Technology has come so far.",
        RECORD_DANGER = "Not my favorite.", -- Unused.
        RECORD_DAWN = "Needs more trumpet.", -- Unused.
        RECORD_DRSTYLE = "A whole song on one record? Technology has come so far.",
        RECORD_DUSK = "Needs more trumpet.", -- Unused.
        RECORD_EFS = "One of their more experimental tracks.",
        RECORD_END = "A whole song on one record? Technology has come so far.", -- Unused.
        RECORD_MAIN = "Needs more trumpet.", -- Unused.
        RECORD_WORKTOBEDONE = "One of their more experimental tracks.", -- Unused.
        RECORD_HALLOWEDNIGHTS = "Spooktacular!",
        RECORD_BALATRO = "Irresistible! It's like it touches my mind!",

        ARCHIVE_ORCHESTRINA_MAIN = "It's like they made it puzzling on purpose.",

        WAGPUNKHAT = "It really gets my gears turning.",
        ARMORWAGPUNK = "Fearsome and gearsome.",
        WAGSTAFF_MACHINERY = "There might be some discoveries to be made in this pile of junk.",
        WAGPUNK_BITS = "I bet I could make something incredibly scientific with this.",
        WAGPUNKBITS_KIT = "Machines that fix other machines! What will science think of next?",

        WAGSTAFF_MUTATIONS_NOTE = "Fascinating! Illuminating! Brain-embiggening!",

        -- Meta 3

        BATTLESONG_INSTANT_REVIVE = "It's a very lively tune.",

        WATHGRITHR_IMPROVEDHAT = "Does Wigfrid have any leadership experience? Or is she just winging it?",
        SPEAR_WATHGRITHR_LIGHTNING = "It's amplified with electricity.",

        BATTLESONG_CONTAINER = "Wow, it stores so many songs.",

        SADDLE_WATHGRITHR = "Wigfrid made that? Looks like she winged it.",

        WATHGRITHR_SHIELD = "Protect me!!",

        BATTLESONG_SHADOWALIGNED = "Theater makes me fidgety.",
        BATTLESONG_LUNARALIGNED = "Theater makes me fidgety.",

		SHARKBOI = "Shiver me timbers!",
        BOOTLEG = "Somewhere out there, a pirate is missing their bootie.",
        OCEANWHIRLPORTAL = "I'll give it a whirl.",

        EMBERLIGHT = "A fire without fuel? No matter.",
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

        HEALINGSALVE_ACID = "This will salve a number of problems.",

        BEESWAX_SPRAY = "Is that formaldehyde I smell?",
        WAXED_PLANT = "It's frozen in fear!", -- Used for all waxed plants, from farm plants to trees.

        STORAGE_ROBOT = {
            GENERIC = "Let's not get carried away.",
            BROKEN = "It's broken.",
        },

        SCRAP_MONOCLEHAT = "Does it make me look more distinguished?",
        SCRAPHAT = "The tip of that hat is almost as sharp as... my mind!",

        FENCE_JUNK = "Tell me it's ugly, I won't take a fence.",
        JUNK_PILE = "A good junk pile rummage? I'll never refuse.",
        JUNK_PILE_BIG = {
            BLUEPRINT = "There's something up there.",
            GENERIC = "I think it could fall over any moment.",
        },
        
        ARMOR_LUNARPLANT_HUSK = "That'll put a thorn in your side.",

        -- Meta 4 / Ocean QoL

        OTTER = "You should see the otter guy.",
        OTTERDEN = {
            GENERIC = "Otter den that, there's not much else there.",
            HAS_LOOT = "I otter have a closer look.",
        },
        OTTERDEN_DEAD = "We are taking on a l'otter water.",

        BOAT_ANCIENT_ITEM = "I guess I'm doing this the old-fashioned way.",
        BOAT_ANCIENT_CONTAINER = "\"Cargo\" is sailor-lingo for \"stuff\".",
        WALKINGPLANK_ANCIENT = "Couldn't we have just made a lifeboat?",

        ANCIENTTREE_SEED = "There are no surprises, only incomplete data.",

        ANCIENTTREE_GEM = {
            GENERIC = "It's vegetable AND mineral. Fascinating.",
            STUMP = "This tree has been mined.",
        },

        ANCIENTTREE_SAPLING_ITEM = "I need to plant this in the right place.",

        ANCIENTTREE_SAPLING = {
            GENERIC = "It's growing! I think?",
            WRONG_TILE = "I don't think it's getting the required nutrients here.",
            WRONG_SEASON = "It seems like it fits in, but it's not yet ready to grow.",
        },
 
        ANCIENTTREE_NIGHTVISION = {
            GENERIC = "Tree-t with caution.",
            STUMP = "It's a stump.",
        },

        ANCIENTFRUIT_GEM = "Hot and fresh off the tree.",
        ANCIENTFRUIT_NIGHTVISION = "I just wish it was less... twitchy.",
        ANCIENTFRUIT_NIGHTVISION_COOKED = "At least it stopped twitching.",

        BOATPATCH_KELP = "It'll have to do for now.",

        CRABKING_MOB = "Crabby much?",
        CRABKING_MOB_KNIGHT = "This shell be quite the challenge.",
        CRABKING_CANNONTOWER = "I knew there was mortar these crabs.",
        CRABKING_ICEWALL = "This is between me and the crab.",

        SALTLICK_IMPROVED = "Just looking at it makes me thirsty.",

        OFFERING_POT =
        {
            GENERIC = "It's so sad and kelp-less...",
            SOME_KELP = "I think I could fit some more kelp in there.",
            LOTS_OF_KELP = "Kelpious amounts of seaweed!",
        },

        OFFERING_POT_UPGRADED =
        {
            GENERIC = "It's so sad and kelp-less...",
            SOME_KELP = "I think I could fit some more kelp in there.",
            LOTS_OF_KELP = "Kelpious amounts of seaweed!",
        },

        MERM_ARMORY = "It says \"Mermfolk Ownlee.\"",
        MERM_ARMORY_UPGRADED = "It says \"Mermfolk Ownlee.\"",
        MERM_TOOLSHED = "I don't think I'll find anything scientific in there.",
        MERM_TOOLSHED_UPGRADED = "I don't think I'll find anything scientific in there.",
        MERMARMORHAT = "It won't fit me. It's a merm helmet.",
        MERMARMORUPGRADEDHAT = "It won't fit me. It's a merm helmet.",
        MERM_TOOL = "It does so much, badly.",
        MERM_TOOL_UPGRADED = "This tool looks a little fishy.",

        WURT_SWAMPITEM_SHADOW = "Dreadful... but don't tell her I said that.",
        WURT_SWAMPITEM_LUNAR = "Looking at it makes my head feel funny.",

        MERM_SHADOW = "Just a shadow of their former self.",
        MERMGUARD_SHADOW = "Just a shadow of their former self.",

        MERM_LUNAR = "The next phase of merm evolution.",
        MERMGUARD_LUNAR = "The next phase of merm evolution.",

        -- Rifts 4

        SHADOW_BEEF_BELL = "It's a dead ringer for my old beefalo bell.",
        SADDLE_SHADOW = "It reminds me of something. Ugh.",
        SHADOW_BATTLEAXE = "Yikes! I'd rather bury this hatchet.",
        VOIDCLOTH_BOOMERANG = "What's the return policy?",
		ROPE_BRIDGE_KIT = "This will keep us in suspense!",
		GELBLOB =
		{
			GENERIC = "'Ick' is right!",
			HAS_ITEM = "Oh, that's where I left it.",
			HAS_CHARACTER = "Someone's in a sticky situation.",
		},
        RABBITKING_AGGRESSIVE = "It has a hare-trigger temper!",
        RABBITKING_PASSIVE = "All hail the bun-evolent one!",
        RABBITKING_LUCKY = "I should capture it for science!",
        RABBITKINGMINION_BUNNYMAN = "They're hoppin' mad!",
        ARMOR_CARROTLURE = "I like a tight-knit bunch.",
        RABBITKINGHORN = "The rabbits dig music.",
        RABBITKINGHORN_CHEST = "I'll use it now and den.",
        RABBITKINGSPEAR = "This will give a good thumpin'.",
        RABBITHAT = "It'll put hare on your head.",
        WORM_BOSS = "It's a big worm!",

        STONE_TABLE = -- Shared between the round and square tables.
        {
            GENERIC = "I use tables periodically.",
            HAS_ITEM = "I use tables periodically.",
        },

        STONE_CHAIR =
        {
            GENERIC = "I'd like to sit on that... rockin' chair!",
            OCCUPIED = "Somebody else is sitting on that.",
        },

        CARPENTRY_BLADE_MOONGLASS = "Razor-sharp, like my mind!",

        CHEST_MIMIC_REVEALED = "Horrible! Definitely horrible!",

        GELBLOB_STORAGE = {
            GENERIC  = "Looks empty.",
            FULL = "It's keeping it... fresh?",
        },
        GELBLOB_STORAGE_KIT = "I'll preserve my judgement.",
        GELBLOB_BOTTLE = "I tend to keep things bottled up.",

        PLAYER_HOSTED =
        {
            GENERIC = "They're occupied.",
            ME = "I'm beside myself.",
        },

        MASK_SAGEHAT = "Looking sharp.",
        MASK_HALFWITHAT = "Seems a bit dull.",
        MASK_TOADYHAT = "Should I just play along?",

        SHADOWTHRALL_PARASITE = "It makes my brain itch.",

        PUMPKINCARVER = "Who's up for a gourd time?",
		SNOWMAN =
		{
			GENERIC = "It's snow laughing matter!",
			SNOWBALL = "Someone knew their roll!",
		},
        SNOWBALL_ITEM = "Not throwing this chance away...",

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
        CHESSPIECE_DEPTHWORM  = "It's a worm, figures.",

        -- Meta 5
        GHOSTLYELIXIR_LUNAR = "Ah yes. Very science-y.",
        GHOSTLYELIXIR_SHADOW = "Ah yes. Very science-y.",

		SLINGSHOTMODKIT = "Walter's really giving it his best shot.",
		SLINGSHOT_BAND_PIGSKIN = "Walter's really giving it his best shot.",
		SLINGSHOT_BAND_TENTACLE = "Walter's really giving it his best shot.",
		SLINGSHOT_BAND_MIMIC = "Walter's really giving it his best shot.",
		SLINGSHOT_FRAME_BONE = "Walter's really giving it his best shot.",
		SLINGSHOT_FRAME_GEMS = "Walter's really giving it his best shot.",
		SLINGSHOT_FRAME_WAGPUNK_0 = "Walter's really giving it his best shot.",
		SLINGSHOT_FRAME_WAGPUNK = "Walter's really giving it his best shot.",
		SLINGSHOT_HANDLE_STICKY = "Walter's really giving it his best shot.",
		SLINGSHOT_HANDLE_JELLY = "Walter's really giving it his best shot.",
		SLINGSHOT_HANDLE_SILK = "Walter's really giving it his best shot.",
		SLINGSHOT_HANDLE_VOIDCLOTH = "Walter's really giving it his best shot.",

		WOBY_TREAT = "I think I'm barking up the wrong tree with this snack.",
		BANDAGE_BUTTERFLYWINGS = "This bandage is really winging it.",
		PORTABLEFIREPIT_ITEM = "Finally, fire on the go! Patent pending.",
        SLINGSHOTAMMO_CONTAINER = "It's full of potential... energy!",

        ELIXIR_CONTAINER = "That's more of a mortician's bag than a basket.",
        GHOSTFLOWERHAT = "This makes me thirsty.",
        WENDY_RESURRECTIONGRAVE = "Strangely reassuring!",
        GRAVEURN =
        {
            GENERIC = "This urn has a lack of spirit.",
            HAS_SPIRIT = "This spirit has urned a new home!",
        },

        SHALLOW_GRAVE = "Better you than me.",
        THULECITEBUGNET = "Anyone catch the latest buzz?",

        -- Deck of Cards
        DECK_OF_CARDS = "Are we playing with a full deck?",
        PLAYING_CARD = "It's fifty-one short of a deck.",
        BALATRO_MACHINE = "I'm game for a game.",

		-- Rifts 5
		GESTALT_CAGE =
		{
			GENERIC = "Drat, empty.",
			FILLED = "It's occupied.",
		},
		WAGBOSS_ROBOT_SECRET = "How intriguing!",
        WAGBOSS_ROBOT = "Fascinating!",
        WAGBOSS_ROBOT_POSSESSED = "Has anyone tried resetting it?",
		WAGBOSS_ROBOT_LEG = "It withstood for a while!",
		ALTERGUARDIAN_PHASE1_LUNARRIFT = "You look the same but different.",
		ALTERGUARDIAN_PHASE1_LUNARRIFT_GESTALT = "This must be the one he wants.",
        ALTERGUARDIAN_PHASE4_LUNARRIFT = "Haven't you broken enough science?!",
		WAGDRONE_ROLLING =
        {
            GENERIC = "They just drone on and on.",
            INACTIVE = "We should take it for a whirl.",
            DAMAGED = "I could repair it or harvest for parts.",
            FRIENDLY = "Spin it to win it!",
        },
        WAGDRONE_FLYING =
        {
            GENERIC = "Like a bot out of hell.",
            INACTIVE = "We should take it for a whirl.",
            DAMAGED = "It's too damaged to fix but I can salvage the parts.",
        },
		WAGDRONE_PARTS = "Now I can put a positive spin on things.",
		WAGDRONE_BEACON = "This will help keep things contained.",

        WAGPUNK_WORKSTATION = "Let's get to work!",
        WAGPUNK_LEVER = "It's a good time to switch things up.",
        WAGPUNK_FLOOR_KIT = "What is this floor?",
        WAGPUNK_CAGEWALL = "Wall or nothing!",

		WAGSTAFF_ITEM_1 = "Strange, this glove is not a projection.",
		WAGSTAFF_ITEM_2 = "This clipboard is... real.",

        HERMITCRAB_RELOCATION_KIT = "The crab's new home will be pitcher perfect.",

        WANDERINGTRADER =
        {
            REVEALED = "If we trade, will we beef friends?",
            GENERIC = "What a strange looking beefalo.",
        },

        GESTALT_GUARD_EVOLVED = "These ones have an explosive personality.",
        FLOTATIONCUSHION = "Oh, buoyancy!",
        LUNAR_SEED = "This formed part of its crown.",

        -- rifts5.1
        WAGBOSS_ROBOT_CONSTRUCTIONSITE = "Keeping it under wraps for now.",
        WAGBOSS_ROBOT_CONSTRUCTIONSITE_KIT = "Big automatons really do come in small packages.",
        WAGBOSS_ROBOT_CREATION_PARTS = "It comes in pieces!",
        MOONSTORM_STATIC_CATCHER = "There's nothing inside.",
        COOLANT = "It's bubbling with possibility!",

        FENCE_ELECTRIC = {
            LINKED = "Aw, it found a connection.",      --NOTE: the fence post is fully linked to two other posts
            GENERIC = "It is not functional as a standalone unit.",           --NOTE: no links or electricity, just boring ol fence post
        },
        FENCE_ELECTRIC_ITEM = "It's not a tree, but it must be planted.",

        MUTATEDBIRD = "I suppose it's a rare bird.",

        BIRDCORPSE =
        {
            GENERIC  = "I call fowl.", --witnessing the corpse
            BURNING  = "That's what I call a firebird.", --when its burning
            REVIVING = "It's becoming a new species!", --when its mutating and being revived
        },

        BUZZARDCORPSE = {
            GENERIC  = "I call fowl.", --witnessing the corpse
            BURNING  = "That's what I call a firebird.", --when its burning
            REVIVING = "It's becoming a new species!", --when its mutating and being revived
        },

        MUTATEDBUZZARD = {
            GENERIC = "I admire its dead-ication.", -- Generic string
            EATING_CORPSE = "Don't mind me, just carrion eating.", -- Eating from a fresh corpse (might be from the players kill or another creatures kill)
        },

        -- Rifts 6

        SHADOWTHRALL_CENTIPEDE = {
            HEAD = "Heads or heads?", --The head segment
            BODY = "Dreadful!", --The body segment
            FLIPPED = "Bottoms up!", --When it's flipped over (either head or body segment)
        },

        TREE_ROCK =
		{
			BURNING = "It looks a little hot under the collar.", --It's vines are burning, it will collapse
			CHOPPED = "It lacks support.", --It's 'chopped', so the rock fell
			GENERIC = "Looks vine to me.", --Rock is still on tree
		},

        -- NOTE: Unsure about HOT and COLD, just do GENERIC, GAS, MIASMA for now!
        CAVE_VENT_ROCK =
        {
            GENERIC = "I'm not sure which way it vent.", -- Not ventilating anything
            HOT     = "Things are really heating up.", -- Ventiliating hot air, making the area warm
            GAS     = "That's exhausting.", -- Ventiliating Toadstools gas fumes and spores
            MIASMA  = "What about miasma?", -- Ventiliating the shadow rift miasma
        },
        CAVE_FERN_WITHERED = "It's a withered fern.",
        FLOWER_CAVE_WITHERED = "It's dim bulb.",

		ABYSSPILLAR_MINION =
		{
			GENERIC = "I'm glad it's just a statue.", --off, looks like decor/statue
			ACTIVATED = "How unoriginal!", --turned on and hopping over puzzle pillars
		},
		ABYSSPILLAR_TRIAL = "I've got some pull around here.",

        VAULT_TELEPORTER =
        {
            GENERIC = "This piece really moves me.",
            BROKEN = "It's broken.",
            UNPOWERED = "It needs power.",
        },
		VAULT_TELEPORTER_UNDERCONSTRUCTION = "\"This Waymark is under development for a future update.\"",
		VAULT_ORB = "I think this plays a roll.",
        VAULT_LOBBY_EXIT = "An exit hole?",
		VAULT_CHANDELIER_BROKEN = "Light's out.",

		ANCIENT_HUSK = "Something bad happened here.",
		MASK_ANCIENT_HANDMAIDHAT = "I wouldn't bug her.",
		MASK_ANCIENT_ARCHITECTHAT = "I don't see the resemblance.",
		MASK_ANCIENT_MASONHAT = "It looks heavier than the others.",

        TREE_ROCK_SEED = "It's a seed.",
        TREE_ROCK_SAPLING = "It had a rocky start.",

        -- Rifts 6.1
        OCEANWHIRLBIGPORTALEXIT = "I sea debris.", -- The flotsam pickable not the waterfall.

		VAULT_TORCH =
		{
			GENERIC = "Is that a light switch?",
			BROKEN = "The switch looks broken.", --the torch still functions, just the lever is broken
		},

        CAVE_VENT_MITE =
		{
			DEAD = "Out of gas!",
			GENERIC = "What mite it be?",
			SLEEPING = "Careful, it mite wake up.",
            VENTING = "It's fuming mad!", -- in the shield state and venting out gasses
        },
    },

    DESCRIBE_GENERIC = "It's a... thing.",
    DESCRIBE_TOODARK = "It's too dark to see!",
    DESCRIBE_SMOLDERING = "That thing is about to catch fire.",

    DESCRIBE_PLANTHAPPY = "What a happy plant!",
    DESCRIBE_PLANTVERYSTRESSED = "This plant seems to be under a lot of stress.",
    DESCRIBE_PLANTSTRESSED = "It's a little cranky.",
    DESCRIBE_PLANTSTRESSORKILLJOYS = "I might have to do a bit of weeding...",
    DESCRIBE_PLANTSTRESSORFAMILY = "It's my scientific conclusion that this plant seems lonely.",
    DESCRIBE_PLANTSTRESSOROVERCROWDING = "There are too many plants competing for this small space.",
    DESCRIBE_PLANTSTRESSORSEASON = "This season is not being kind to this plant.",
    DESCRIBE_PLANTSTRESSORMOISTURE = "This looks really dehydrated.",
    DESCRIBE_PLANTSTRESSORNUTRIENTS = "This poor plant needs nutrients!",
    DESCRIBE_PLANTSTRESSORHAPPINESS = "It's hungry for some good conversation.",

    EAT_FOOD =
    {
        TALLBIRDEGG_CRACKED = "Mmm. Beaky.",
		WINTERSFEASTFUEL = "Tastes like the holidays.",
    },

    WENDY_SKILLTREE_EASTEREGG = "only_used_by_wendy",


}
