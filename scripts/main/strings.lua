local STRINGS = GLOBAL.STRINGS
STRINGS.NAMES.BIGFUELAXE = "Big Ol' Axe"
STRINGS.NAMES.CHARCOAL_SPEAR = "Charcoal Spear"
STRINGS.NAMES.FUELCHARCOALPILE = "Charcoal Pile"
STRINGS.NAMES.PIGHOUSE_FUELREFURBISHED = "Refurbished Pighouse"
STRINGS.NAMES.RABBITHOUSE_FUELREFURBISHED = "Refurbished Rabbit Hutch"
STRINGS.NAMES.LIVINGCOAL = "Livingcoal"
STRINGS.NAMES.LIVINGCOAL_SPEAR = "Livingcoal Spear"
STRINGS.NAMES.WALL_FUELSTAKES = "Wood Stakes"
STRINGS.NAMES.WALL_FUELSTAKES_ITEM = "Wood Stakes"

STRINGS.RECIPE_DESC.BIGFUELAXE = "Not quite the family axe, but it gets the job done nonetheless."
STRINGS.RECIPE_DESC.CHARCOAL_SPEAR = "Your very own relightable torch."
STRINGS.RECIPE_DESC.FUELCHARCOALPILE = "Show 'em how Tazmilians get it done."
STRINGS.RECIPE_DESC.LIVINGCOAL_SPEAR = "Delve into the magical side."
STRINGS.RECIPE_DESC.WALL_FUELSTAKES_ITEM = "The best defense is a good offense."

local FUEL = STRINGS.CHARACTERS.GRAMFUEL
local WILSON = STRINGS.CHARACTERS.GENERIC

--We try to avoid being too Wilson-y with these, just so it makes some sense for any char to say it
WILSON.DESCRIBE.BIGFUELAXE = "That axe seems more dangerous to the wielder than any tree!"
WILSON.DESCRIBE.CHARCOAL_SPEAR = "Now I can bring the barbeque with me!"
WILSON.DESCRIBE.LIVINGCOAL_SPEAR = "Was this really necessary?"
WILSON.DESCRIBE.FUELCHARCOALPILE = {
    NEEDSMATERIALS = "Looks like he's working on it.",
    CHARRING = "Smells like hard work.",
}
WILSON.DESCRIBE.PIGHOUSE_FUELREFURBISHED =  {
    FULL = "I can see a snout pressed up against the window.",
    GENERIC = "They're much fancier now!",
    LIGHTSOUT = "Come ON! I know you're home!",
    BURNT = "Not so fancy now, pig!",
    COZY = "I wish I were allowed in.",
}
WILSON.DESCRIBE.RABBITHOUSE_FUELREFURBISHED = {
    GENERIC = "It's a nice upgrade.",
    BURNT = "I have a feeling our carrots are toast.",
    COZY = "If I only I could stay the night.",
    FULL = "Everyone's home."
}
WILSON.DESCRIBE.LIVINGCOAL = "Some funny looking charcoal."
WILSON.DESCRIBE.WALL_FUELSTAKES = "I never felt so safe!"
WILSON.DESCRIBE.WALL_FUELSTAKES_ITEM = "Just need to find a good spot for them."

FUEL.DESCRIBE.BIGFUELAXE = "It's hefty, but with the right form, it makes short work of any tree."
FUEL.ANNOUNCE_OTHER_PICKUP_FUELAXE = {
    GENERIC = {
        "Heavier than it looks, huh, %s?",
        "Careful with that, %s! Don't wanna throw your back out. Or worse!",
        "Your form's all wrong, %s."
    },
    WOODIE = {
        "You gonna name this one too, %s?",
        "Lucy ain't a jealous type, %s?",
        "Careful, %s. It's ain't your typical lumberjack axe."
    },
    WICKERBOTTOM = {
        "Ho boy. I wanna see this.",
        "You should stick to the readin,' %s."
    },
    WAXWELL = {
        "A 'gentleman' should leave not-so gentle activities to just 'men,' %s.",
        "I ain't a judgemental type, but you sure about lugging that around, %s?",
        "I think you're a little too frail for that, %s."
    },
    GRAMNESS = {
        "Good luck with that one, city boy!",
        "Swinging that axe ain't like swinging your little stick you keep around, %s.",
        "You're not gonna go cryin' about missin' your mama over a heavy axe, right, %s?"
    },
    GRAMNINTEN = {
        "Careful, %s. Last thing we need is your asthma actin' up terrible."
    },
    LUCAS = {
        "Leave the woodwork to me, I'll leave saving the day to you, Luke.",
        "Strength comes in many different forms, Luke.",
        "Put your back into it, Luke!"
    },
    CLAUS = {
        "Not as strong as you thought, huh, Claus?",
        "I thought I taught you better, Claus.",
        "Not quite right, Claus.",
    },
}
FUEL.DESCRIBE.CHARCOAL_SPEAR = "It won't do much, but charcoal is real irratatin' if it gets in your eyes!"
FUEL.DESCRIBE.LIVINGCOAL_SPEAR = "It's far from anythin' I've messed with before."
FUEL.DESCRIBE.FUELCHARCOALPILE = {
    NEEDSMATERIALS = "Just needs some turf and wood, and I can do my magic!",
    CHARRING = "The smoke is how you tell when it's ready.",
    NEEDSWATER = "It's getting too hot! Some water will hit the spot.",
    DONE = "Would you look at that! Dad taught me well.",
}
FUEL.DESCRIBE.PIGHOUSE_FUELREFURBISHED = {
    GENERIC = "I made it nice and homely. Stove included!",
    BURNT = "Dang nabbit, again?!",
    COZY = "Life doesn't get better than relaxing by the ol' wood burner.",
    OCCUPIED = "Tucked in for the night.",
    LIGHTSOUT = "Guess they don't appreciate me quite enough."
}
FUEL.DESCRIBE.RABBITHOUSE_FUELREFURBISHED = {
    GENERIC = "I made it nice and homely. Stove included!",
    BURNT = "Nang dabbit, again?!",
    COZY = "Bein' indoors with a nice wood stove going would make me too homesick.",
    FULL = "Everyone's home!",
}
FUEL.DESCRIBE.LIVINGCOAL = "It's... different from normal charcoal."
FUEL.DESCRIBE.WALL_FUELSTAKES = "That'll teach some nasty critter to lay off my camp!"
FUEL.DESCRIBE.WALL_FUELSTAKES_ITEM = "Gotta get these set up."

FUEL.ANNOUNCE_TAZMILIAN_CHARITY = {
    "Here ya go!",
    "From me, to you!",
    "We ought to help each other, dontcha think?",
    "Hope it suits your fancy!",
    "Dad always said to be a good neighbor!",
    "Here, have this!",
    "Happy to help!",
}

FUEL.ANNOUNCE_CRITICAL_INJURY = {
    "Ooooh, that one's not healin' anytime soon.",
    "Owwww...",
    "OUCH! That's... That's gonna leave a mark...",
    "I don't think my arm is supposed to twist like that.",
}

local fn = require("play_commonfn")
local FUEL_SCRIPT1 = {
    cast = {"gramfuel"},
    lines = {
        {roles = {"gramfuel"}, duration = 2.7, line = "This one is dedicated to the greatest man I know.", anim ="dial_loop"},
        {actionfn = fn.crowdcomment,	duration = 0.8, line = "Spider Man?!", prefabs = {"gramness"}},
        {roles = {"gramfuel"}, duration = 2.9, line = "There once was a little jack rabbit who lived with his family in a hole."},
        {roles = {"gramfuel"}, duration = 2.5, line = "The little jack rabbit loved his family with all his soul."},
        {roles = {"gramfuel"}, duration = 2.8, line = "They worked hard together to bring home carrots to eat to their content."},
        {roles = {"gramfuel"}, duration = 2.6, line = "It was a simple life, yet he lived it without a hint of lament."},
        {roles = {"gramfuel"}, duration = 3.1, line = "One day, when the little jack rabbit wandered too far and got lost, much to his fear."},
        {roles = {"gramfuel"}, duration = 3.2, line = "\"Look up to the lights in the sky, they are your friends, they will show you family is always near!\""},
        {roles = {"gramfuel"}, duration = 2.4, line = "The words of his papa rabbit echoed in his mind,"},
        {roles = {"gramfuel"}, duration = 4.8, line = "And the little jack rabbit smiled. The stars are his friends, and with them his home and loved ones he would find."},
        {roles = {"gramfuel"}, duration = 1.8, line = "Just follow the stars...", anim ="dial_loop"},
    }
}

AddComponentPostInit("stageactingprop", function(inst)
	inst:AddGeneralScript("GRAMFUEL1", FUEL_SCRIPT1)
end)

AddPrefabPostInit("lucas", function(inst)
    local LUCAS = STRINGS.CHARACTERS.LUCAS
    LUCAS.DESCRIBE.GRAMFUEL = {
            GENERIC = "Oh, howdy old friend!",
            ATTACKER = "Fuel is looking pretty tense.",
            MURDERER = "You're better than this, Fuel.",
            REVIVER = "You always have my back, Fuel. Thank you.",
            GHOST = "I'll help you, friend, don't worry!",
            FIRESTARTER = "You're the last person I woulda expected this from, Fuel.",
    }

    LUCAS.DESCRIBE.BIGFUELAXE = "It's too heavy for me! Fuel must be really strong."
    LUCAS.DESCRIBE.CHARCOAL_SPEAR = "Fuel's smarter than he likes people to think."
    LUCAS.DESCRIBE.LIVINGCOAL_SPEAR = "I guess it's a good idea. Maybe."
    LUCAS.DESCRIBE.FUELCHARCOALPILE = {
        NEEDSMATERIALS = "Maybe I can help out!",
        CHARRING = "Hard at work!",
    }
    LUCAS.DESCRIBE.PIGHOUSE_FUELREFURBISHED = {
        GENERIC = "Wow, Fuel really outdid himself!",
        BURNT = "I'm sorry.",
        COZY = "I miss home.",
        OCCUPIED = "I wonder if they don't mind vistors.",
        LIGHTSOUT = "I guess I'm not welcome..."
    }
    LUCAS.DESCRIBE.RABBITHOUSE_FUELREFURBISHED = {
        GENERIC = "Wow, Fuel really outdid himself!",
        BURNT = "It's not much of a home anymore.",
        COZY = "I wish I was allowed in...",
        FULL = "No more room."
    }
    LUCAS.DESCRIBE.LIVINGCOAL = "What is this stuff??"
    LUCAS.DESCRIBE.WALL_FUELSTAKES = "They seem so mean!"
    LUCAS.DESCRIBE.WALL_FUELSTAKES_ITEM = "Watch the pointy ends!"
end)

AddPrefabPostInit("claus", function(inst)
    local CLAUS = STRINGS.CHARACTERS.CLAUS
    CLAUS.DESCRIBE.GRAMFUEL = {
            GENERIC = "Glad ta see ya again Fuel!",
            ATTACKER = "Someone woke up on the wrong side of the bed.",
            MURDERER = "Don't become that person, Fuel. Trust me.",
            REVIVER = "Coolest guy in all of Sunshine Forest right here!",
            GHOST = "I'm sorry it turned it out like this.",
            FIRESTARTER = "Forest fire? You? Fuel, you sonova-!",
    }

    CLAUS.DESCRIBE.BIGFUELAXE = "I can hold it just fine! I just uh, gotta warm up!"
    CLAUS.DESCRIBE.CHARCOAL_SPEAR = "I gotta see what I'm thwapping. Good idea!"
    CLAUS.DESCRIBE.LIVINGCOAL_SPEAR = "Hmmmm, it's magical!"
    CLAUS.DESCRIBE.FUELCHARCOALPILE = {
        NEEDSMATERIALS = "Many hands make for short work!",
        CHARRING = "Look atcha go!",
    }
    CLAUS.DESCRIBE.PIGHOUSE_FUELREFURBISHED = {
        GENERIC = "Nice job, Fuel!",
        BURNT = "A real shame.",
        COZY = "Bet they're real comfy.",
        OCCUPIED = "Home and restin.'",
        LIGHTSOUT = "Still ain't feelin' neighborly, huh."
    }
    CLAUS.DESCRIBE.RABBITHOUSE_FUELREFURBISHED = {
        GENERIC = "Nice job, Fuel!",
        BURNT = "A real shame.",
        COZY = "Must be cozy in there.",
        FULL = "I wouldn't want them judgin' my meat eating anyways."
    }
    CLAUS.DESCRIBE.LIVINGCOAL = "What in tarnation did you do to this charcoal?"
    CLAUS.DESCRIBE.WALL_FUELSTAKES = "It's a sorta keep out sign for folks who can't read too good."
    CLAUS.DESCRIBE.WALL_FUELSTAKES_ITEM = "We gotta place those."
end)


