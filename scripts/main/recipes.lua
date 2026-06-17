local Ingredient = GLOBAL.Ingredient
local TECH = GLOBAL.TECH
local logrecipes = {}
local function AddFuelLogDiscount(recipe, sortkey)
    GLOBAL.PREFAB_SKINS_IDS[recipe.name .. "_gramfuel"] = GLOBAL.PREFAB_SKINS_IDS[recipe.name]
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
        placer = recipe.placer,
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
                    v.forward_ingredients = {v.name .. "_gramfuel"}
                    v.no_builder_tag = "gramfuel"
                    logrecipes[v.name] = true
                    AddFuelLogDiscount(v, i)
                end
            end
        end
    end
end)

AddClassPostConstruct("widgets/redux/craftingmenu_pinslot", function(self)

    local _setrecipe = self.SetRecipe

    if self.owner.prefab == "gramfuel" and self.recipe_name and logrecipes[self.recipe_name] then
        self.recipe_name = self.recipe_name .. "_gramfuel"
    end
    
    self.SetRecipe = function(recipe_name, skin_name, ...)
        if self.owner.prefab == "gramfuel" and logrecipes[recipe_name] then
            _setrecipe(recipe_name .. "_gramfuel", skin_name, ...)
        else
            _setrecipe(recipe_name, skin_name, ...)
        end
    end
end)

AddCharacterRecipe("fuel_axe",
    {Ingredient("flint", 5), Ingredient("twigs", 2)},
    TECH.SCIENCE_ONE,
    {
        product = "bigfuelaxe",
        builder_tag = "gramfuel",
        numtogive = 1,
        image = "bigfuelaxe.tex",
        atlas = "images/inventoryimages/bigfuelaxe.xml",
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
        builder_tag = "gramfuel",
        numtogive = 1,
        image = "charcoal_spear.tex",
        atlas = "images/inventoryimages/charcoal_spear.xml",
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
        builder_tag = "gramfuel",
        numtogive = 1,
        image = "charcoal_pile.tex",
        atlas = "images/map_icons/charcoal_pile.xml",
    },
    {
        "STRUCTURES",
    }
)

GLOBAL.CONSTRUCTION_PLANS["pighouse"] = {Ingredient("boards", 6), Ingredient("cutstone", 5), Ingredient("goldnugget", 2)}
GLOBAL.CONSTRUCTION_PLANS["rabbithouse"] = {Ingredient("boards", 6), Ingredient("cutstone", 3), Ingredient("goldnugget", 2)}