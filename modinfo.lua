-- This information tells other players more about the mod
name = "(DEV) EarthBound: Fuel"
description = "Adds Fuel from Mother 3."
author = "Lucas, Claus, Miz"
version = "0.03" -- This is the version of the template. Change it to your own number.

-- This is the URL name of the mod's thread on the forum; the part after the ? and before the first & in the url
forumthread = "/files/file/950-extended-sample-character/"

-- This lets other players know if your mod is out of date, update it to match the current version in the game
api_version = 10

-- Compatible with Don't Starve Together
dst_compatible = true

-- Not compatible with Don't Starve
dont_starve_compatible = false
reign_of_giants_compatible = false
shipwrecked_compatible = false

-- Character mods are required by all clients
all_clients_require_mod = true 

icon_atlas = "modicon.xml"
icon = "modicon.tex"

-- The mod's tags displayed on the server list
server_filter_tags = {
"character", "earthbound"
}

configuration_options = {
    {
        name = "GRAMFUEL_HEALTH",
        label = "Fuel's Health",
        options = {
            {description = "120", data = 120},
            {description = "130 (Default)", data = 130},
            {description = "140", data = 140},
        },
        default = 130
    },
    {
        name = "GRAMFUEL_SANITY",
        label = "Fuel's Sanity",
        options = {
            {description = "120", data = 120},
            {description = "130 (Default)", data = 130},
            {description = "140", data = 140},
        },
        default = 130
    },
    {
        name = "GRAMFUEL_HUNGER",
        label = "Fuel's Hunger",
        options = {
            {description = "120", data = 120},
            {description = "130 (Default)", data = 130},
            {description = "140", data = 140},
        },
        default = 130
    },
    {
        name = "FUELAXE_DAMAGE",
        label = "Big Ol' Axe Damage",
        options = {
            {description = "49", data = 49},
            {description = "55 (Default)", data = 55},
            {description = "61", data = 61},
        },
        default = 55
    },
    {
        name = "FUELAXE_USES",
        label = "Big Ol' Axe Durability",
        options = {
            {description = "250", data = 250},
            {description = "300 (Default)", data = 300},
            {description = "350", data = 350},
        },
        default = 300
    },
    {
        name = "FUELSPEAR_DAMAGE",
        label = "Charcoal Spear Damage",
        options = {
            {description = "17", data = 17},
            {description = "21 (Default)", data = 21},
            {description = "25", data = 25},
        },
        default = 21
    },
    {
        name = "FUELSPEAR_CONSUMPTION",
        label = "Charcoal Spear's Usage Rate",
        hover = "The rate at which the Charcoal Spear depletes",
        options = {
            {description = "Low",   data = 0, hover = "low consumption (takes longer to deplete)"},
            {description = "Medium (Default)",data = 1, hover = "medium consumption (default depletion time)"},
            {description = "High",  data = 2, hover = "high consumption (depletes more quickly)"},
        },
        default = 1
    },
    {
        name = "LIVINGSPEAR_DAMAGE",
        label = "Charcoal Spear Damage",
        options = {
            {description = "34", data = 34},
            {description = "42.5 (Default)", data = 42.5},
            {description = "51", data = 51},
        },
        default = 42.5
    },
    {
        name = "LIVINGSPEAR_CONSUMPTION",
        label = "Charcoal Spear's Usage Rate",
        hover = "The rate at which the Charcoal Spear depletes",
        options = {
            {description = "Low",   data = 0, hover = "low consumption (takes longer to deplete)"},
            {description = "Medium (Default)",data = 1, hover = "medium consumption (default depletion time)"},
            {description = "High",  data = 2, hover = "high consumption (depletes more quickly)"},
        },
        default = 1
    }
}
