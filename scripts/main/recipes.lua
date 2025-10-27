local Ingredient = GLOBAL.Ingredient
local TECH = GLOBAL.TECH
local function AddFuelLogDiscount(recipe, sortkey)
    local ingredients = {}
    for _, v in pairs(recipe.ingredients) do
        table.insert(ingredients, Ingredient(v.type, v.type == "log" and v.amount-1 or v.amount, v.atlas, v.deconstruct, v.image))
    end
    local filters = {}
    for k, v in pairs(GLOBAL.CRAFTING_FILTERS) do
        if v.recipes and type(v.recipes) == "table" then
            for i, j in pairs(v.recipes) do
                if j == recipe.name then
                    table.insert(filters, k)
                    break
                end
            end
        end
    end

    local r = AddRecipe2(recipe.name .. "_gramfuel", ingredients, recipe.level, {
        min_spacing = recipe.min_spacing, 
        nounlock = recipe.nounlock, 
        numtogive = recipe.numtogive, 
        atlas = recipe.atlas, 
        image = recipe.image, 
        testfn = recipe.testfn, 
        product = recipe.product, 
        build_mode = recipe.build_mode, 
        build_distnace = recipe.build_distance,
        builder_tag = "gramfuel",
    }, filters
    )
    r.sortkey = sortkey
end

AddSimPostInit(function()
    local t = GLOBAL.AllRecipes
    local i = 1
    table.sort(t, function(a, b) return a.sortkey < b.sortkey end) 
    for _, v in pairs(t) do
        i = i + 1
        if not (v.builder_tag or v.builder_skill or string.find(v.name, "gramfuel")) then
            for _, j in pairs(v.ingredients) do
                if j.type == "log" and j.amount > 1 then
                    v.forward_ingredients = v.name .. "_gramfuel"
                    v.no_builder_tag = "gramfuel"
                    AddFuelLogDiscount(v, i)
                end
            end
        end
    end
end)

AddCharacterRecipe("bigfuelaxe",
    {Ingredient("flint", 5), Ingredient("twigs", 2)},
    TECH.SCIENCE_ONE,
    {
        product = "bigfuelaxe",
        builder_tag = "GramFuel",
        numtogive = 1,
        image = "axe",
    },
    {
        "TOOLS",
    }
)
AddCharacterRecipe("fuelcharcoalspear",
    {Ingredient("charcoal", 1), Ingredient("rope", 1), Ingredient("twigs", 2)},
    TECH.NONE,
    {
        product = "fuelcharcoalspear",
        builder_tag = "GramFuel",
        numtogive = 1,
        image = "spear"
    },
    {
        "WEAPONS",
    }
)
AddCharacterRecipe("fuelcharcoalpile",
    {Ingredient("rocks", 24), Ingredient("twigs", 12), Ingredient("cutgrass", 6)},
    TECH.SCIENCE_TWO,
    {
        placer = "fuelcharcoalpile_placer",
        product = "fuelcharcoalpile",
        builder_tag = "GramFuel",
        numtogive = 1,
        --atlas = "cook_pot",
    },
    {
        "STRUCTURES",
    }
)

GLOBAL.CONSTRUCTION_PLANS["pighouse"] = {Ingredient("boards", 6), Ingredient("cutstone", 5), Ingredient("goldnugget", 2)}
GLOBAL.CONSTRUCTION_PLANS["rabbithouse"] = {Ingredient("boards", 6), Ingredient("cutstone", 3), Ingredient("goldnugget", 2)}