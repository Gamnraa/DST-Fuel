local STRINGS = GLOBAL.STRINGS
STRINGS.NAMES.BIGFUELAXE = "Big Ol' Axe"
STRINGS.NAMES.CHARCOAL_SPEAR = "Charcoal Spear"
STRINGS.NAMES.FUELCHARCOALPILE = "Charcoal Pile"
STRINGS.NAMES.PIGHOUSE_FUELREFURBISHED = "Refurbished Pighouse"
STRINGS.NAMES.RABBITHOUSE_FUELREFURBISHED = "Refurbished Rabbit Hutch"
STRINGS.NAMES.FUELIVINGCOAL = "Livingcoal"
STRINGS.NAMES.LIVINGCOAL_SPEAR = "Livingcoal Spear"
STRINGS.NAMES.WALL_FUELSTAKES = "Wood Stakes"
STRINGS.NAMES.WALL_FUELSTAKES_ITEM = "Wood Stakes"

STRINGS.RECIPE_DESC.BIGFUELAXE = "Not quite the family axe, but it gets the job done nonetheless."
STRINGS.RECIPE_DESC.CHARCOAL_SPEAR = "Your very own relightable torch."
STRINGS.RECIPE_DESC.FUELCHARCOALPILE = "Show 'em how Tazmilians get it done."
STRINGS.RECIPE_DESC.LIVINGCOAL_SPEAR = "Delve into the magical side."
STRINGS.RECIPE_DESC.WALL_FUELSTAKES_ITEM = "The best defense is a good offense."

local FUEL = STRINGS.CHARACTERS.GRAMFUEL

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
        "Strength comes in many different forms, %s.",
        "Put your back into it, %s!"
    },
    CLAUS = {
        "Not as strong as you thought, huh, Claus?",
        "I thought I taught you better, %s.",
        "Not quite right, %s.",
    },
}
FUEL.DESCRIBE.CHARCOAL_SPEAR = "It won't do much, but charcoal is real irratatin' if it gets in your eyes!"
FUEL.DESCRIBE.LIVINGCOAL_SPEAR = "It's fair from anythin' I've messed with before."
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
    FULL = "Tucked in for the night",
}
FUEL.DESCRIBE.FUELIVINGCOAL = "It's... different from normal charcoal."
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
