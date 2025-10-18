local assets = 
{
    Asset("ANIM", "anim/cook_pot.zip"),
    Asset("ANIM", "anim/cook_pot_food.zip"),
}

local prefabs = 
{
    "collapse_big"
}

local function onhammered(inst, worker)
    if inst.components.container ~= nil then
        inst.components.container:DropEverything()
    end
    inst.components.lootdropper:DropLoot()
    local fx = SpawnPrefab("collapse_big")
    fx.Transform:SetPosition(inst.Transform:GetWorldPosition())
    --fx:SetMaterial("metal")
    inst:Remove()
end

local function onhit(inst, worker)
    if inst.components.container ~= nil and inst.components.container:IsOpen() then
        inst.components.container:Close()
        --onclose will trigger sfx already
    else
        inst.SoundEmitter:PlaySound("dontstarve/common/cookingpot_close")
    end
    inst.AnimState:PlayAnimation("hit_empty")
    inst.AnimState:PushAnimation("idle_empty", false)
end

local function startcharring(inst)
    inst.AnimState:PlayAnimation("cooking_loop", true)
    inst.Light:Enable(true)
end

local function donecharring(inst) 
    inst.AnimState:PlayAnimation("cooking_pst")
    inst.AnimState:PushAnimation("idle_full", false)
    inst:AddTag("finished")
    inst.Light:Enable(false)
    --[[inst.components.pickable:Enable()
    inst.components.pickable.product = "charcoal"
    inst.components.pickable.numtoharvest = inst.components.charcoalmaker.numproductproduced]]
end

local function harvest(inst)
    inst.AnimState:PlayAnimation("idle_empty")
    inst:RemoveTag("finished")
    inst:AddTag("waiting")
end

local function getstatus(inst, viewer)
    return ((viewer:HasTag("GramFuel") and inst.components.charcoalmaker:IsDone()) and "DONE")
        or ((viewer:HasTag("GramFuel") and inst.components.charcoalmaker:IsTooHot()) and "NEEDSWATER")
        or (inst.components.charcoalmaker:IsCharring() and "CHARRING")
        or "NEEDSMATERIALS"
end

local function onbuilt(inst) end

local function onupdatecontainer(inst, data)
    if inst.components.charcoalmaker.timeleft then return end
    if inst.components.container:Has("log", 1) and inst.components.container:HasItemWithTag("charcoalburnerturf", 1) then
        inst:AddTag("ready")
        inst:RemoveTag("waiting")
    else 
        inst:AddTag("waiting")
        inst:RemoveTag("ready")
    end
end

local function onloadpostpass(inst, newents, data)
    if data and data.additems and inst.components.container then
        for i, itemname in ipairs(data.additems)do
            local ent = SpawnPrefab(itemname)
            inst.components.container:GiveItem( ent )
        end
    end
end 

local function fn()
    local inst = CreateEntity()
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddMiniMapEntity()
    inst.entity:AddLight()
    inst.entity:AddNetwork()

	inst:SetDeploySmartRadius(1) --recipe min_spacing/2
    MakeObstaclePhysics(inst, .5)

    inst.Light:Enable(false)
    inst.Light:SetRadius(.6)
    inst.Light:SetFalloff(1)
    inst.Light:SetIntensity(.5)
    inst.Light:SetColour(235/255,62/255,12/255)

    inst:AddTag("structure")
    inst:AddTag("fuelcharcoalmaker")

    inst.AnimState:SetBank("cook_pot")
    inst.AnimState:SetBuild("cook_pot")
    inst.AnimState:PlayAnimation("idle_empty")
    inst.scrapbook_anim = "idle_empty"
    inst.MiniMapEntity:SetIcon("cookpot.png")

    inst.entity:SetPristine()
    if not TheWorld.ismastersim then
        inst.OnEntityReplicated = function(inst) inst.replica.container:WidgetSetup("charpile") end
        return inst
    end

    inst:AddComponent("container")
    inst.components.container:WidgetSetup("charpile")
    inst.components.container.skipclosesnd = true
    inst.components.container.skipopensnd = true

    inst:AddComponent("inspectable")
    inst.components.inspectable.getstatus = getstatus

    inst:AddComponent("lootdropper")
    inst:AddComponent("workable")
    inst.components.workable:SetWorkAction(ACTIONS.HAMMER)
    inst.components.workable:SetWorkLeft(4)
    inst.components.workable:SetOnFinishCallback(onhammered)
    inst.components.workable:SetOnWorkCallback(onhit)

    inst:AddComponent("moisture")
    inst:AddComponent("temperature")
    inst.components.temperature.maxtemp = 250
    inst.components.temperature.mintemp = 50

    inst:AddComponent("charcoalmaker")
    inst.components.charcoalmaker.onharvest = harvest
    inst.components.charcoalmaker.startfn = startcharring
    inst.components.charcoalmaker.finishfn = donecharring

    inst:ListenForEvent("onbuilt", onbuilt)
    inst:ListenForEvent("itemget", onupdatecontainer)
    inst:ListenForEvent("itemlose", onupdatecontainer)
    inst.OnLoadPostPass = onloadpostpass

    return inst
end

return Prefab("charcoalpile", fn, assets, prefabs)