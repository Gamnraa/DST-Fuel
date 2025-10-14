local Ingredient = GLOBAL.Ingredient
local function AddFuelLogDiscount(recipe)
    local ingredients = {}
    for _, v in pairs(recipe.ingredients) do
        table.insert(ingredients, Ingredient(v.type, v.type == "log" and v.amount-1 or v.amount, v.atlas, v.deconstruct, v.image))
    end
    local filters = {}
    for k, v in pairs(GLOBAL.CRAFTING_FILTERS) do
        if v.recipes and type(v.recipes) == "table" then
            for i, j in pairs(v.recipes) do
                --print(k, i, j)
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
end

AddSimPostInit(function() 
    for _, v in pairs(GLOBAL.AllRecipes) do
        if not (v.builder_tag or v.builder_skill or string.find(v.name, "gramfuel")) then
            for _, j in pairs(v.ingredients) do
                if j.type == "log" and j.amount > 1 then
                    v.forward_ingredients = v.name .. "_gramfuel"
                    v.no_builder_tag = "gramfuel"
                    AddFuelLogDiscount(v)
                end
            end
        end
    end
end)