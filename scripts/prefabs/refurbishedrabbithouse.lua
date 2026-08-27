require("worldsettingsutil")
require "prefabutil"

local assets =
{
    Asset("ANIM", "anim/rabbithouse_refurbished.zip"),
}

local prefabs =
{
    "bunnyman",
    "splash_sink",
}

local loot = {
    "carrot",
    "carrot",
    "carrot",
    "carrot",
    "carrot",
    "manrabbit_tail",
    "manrabbit_tail",
    "boards",
    "boards",
    "boards",
    "boards",
    "cutstone",
    "cutstone",
    "cutstone",
    "cutstone",
    "goldnugget"
}

local function getstatus(inst)
    return (inst:HasTag("burnt") and "BURNT")
        or (not inst.components.fueled:IsEmpty() and "COZY")
        or (inst.lightson and
            inst.components.childspawner ~= nil and
            inst.components.childspawner.childreninside > 0 and
            "FULL")
        or nil
end

--local function onoccupied(inst, child)
    --inst.SoundEmitter:PlaySound("dontstarve/pig/pig_in_hut", "pigsound")
    --inst.SoundEmitter:PlaySound("dontstarve/common/pighouse_door")
--end

local function onvacate(inst, child)
    --inst.SoundEmitter:PlaySound("dontstarve/common/pighouse_door")
    --inst.SoundEmitter:KillSound("pigsound")

    if not inst:HasTag("burnt") and child ~= nil then
        local child_platform = TheWorld.Map:GetPlatformAtPoint(child.Transform:GetWorldPosition())
        if (child_platform == nil and not child:IsOnValidGround()) then
            local fx = SpawnPrefab("splash_sink")
            fx.Transform:SetPosition(child.Transform:GetWorldPosition())

            child:Remove()
        elseif child.components.health ~= nil then
            child.components.health:SetPercent(1)
        end
    end
end

local function onhammered(inst, worker)
    if inst.components.burnable ~= nil and inst.components.burnable:IsBurning() then
        inst.components.burnable:Extinguish()
    end
    if inst.doortask ~= nil then
        inst.doortask:Cancel()
        inst.doortask = nil
    end
    if inst.components.childspawner ~= nil then
        inst.components.childspawner:ReleaseAllChildren()
    end
    inst.components.lootdropper:DropLoot()
    local fx = SpawnPrefab("collapse_big")
    fx.Transform:SetPosition(inst.Transform:GetWorldPosition())
    fx:SetMaterial("wood")
    inst:Remove()
end

local function onhit(inst, worker)
    if not inst:HasTag("burnt") then
        inst.AnimState:PlayAnimation("hit")
        inst.AnimState:PushAnimation("idle")

        if inst.glow_fx ~= nil then
            inst.glow_fx.AnimState:PlayAnimation("hit")
            inst.glow_fx.AnimState:PushAnimation("idle")
        end
    end
end

local function onstopcavedaydoortask(inst)
    inst.doortask = nil
    inst.components.childspawner:StartSpawning()
end

local function OnStopCaveDay(inst)
    --print(inst, "OnStopCaveDay")
    if not inst:HasTag("burnt") and inst.components.childspawner.childreninside > 0 then
        if inst.doortask ~= nil then
            inst.doortask:Cancel()
        end
        inst.doortask = inst:DoTaskInTime(1 + math.random() * 2, onstopcavedaydoortask)
    end
end

local function OnAcidRainingChanged(inst, isacidraining)
    if not isacidraining and not TheWorld.state.iscaveday then
        OnStopCaveDay(inst)
    end
end

local function SpawnCheckCaveDay(inst)
    inst.inittask = nil
    inst:WatchWorldState("stopcaveday", OnStopCaveDay)
    inst:WatchWorldState("isacidraining", OnAcidRainingChanged)
    inst:WatchWorldState("startcaveday", function(inst) inst.components.childspawner:StopSpawning() end)
    if inst.components.childspawner ~= nil and inst.components.childspawner.childreninside > 0 then
        if not TheWorld.state.iscaveday or
            (inst.components.burnable ~= nil and inst.components.burnable:IsBurning()) then
            inst.components.childspawner:ReleaseAllChildren()
        end
    end
end

local function oninit(inst)
    inst.inittask = inst:DoTaskInTime(math.random(), SpawnCheckCaveDay)
    if inst.components.spawner ~= nil and
            inst.components.spawner.child == nil and
            inst.components.spawner.childname ~= nil and
            not inst.components.spawner:IsSpawnPending() then
        local child = SpawnPrefab(inst.components.spawner.childname)
        if child ~= nil then
            inst.components.spawner:TakeOwnership(child)
            inst.components.spawner:GoHome(child)
        end
    end
end

local function onsave(inst, data)
    if inst:HasTag("burnt") or (inst.components.burnable ~= nil and inst.components.burnable:IsBurning()) then
        data.burnt = true
    end
end

local function onload(inst, data)
    if data ~= nil and data.burnt then
        inst.components.burnable.onburnt(inst)
    end
end

local function onbuilt(inst)
    inst.AnimState:PlayAnimation("place")
    inst.AnimState:PushAnimation("idle")
    inst.SoundEmitter:PlaySound("dontstarve/common/rabbit_hutch_craft")
end

local function onburntup(inst)
    if inst.doortask ~= nil then
        inst.doortask:Cancel()
        inst.doortask = nil
    end
    if inst.inittask ~= nil then
        inst.inittask:Cancel()
        inst.inittask = nil
    end
    if inst.glow_fx ~= nil then
        inst.glow_fx:Remove()
        inst.glow_fx = nil
    end
end

local function onignite(inst)
    if inst.components.childspawner ~= nil then
        inst.components.childspawner:ReleaseAllChildren()
    end
end

local function OnSpawnChild(inst, data)
    if data and data.child then
        if not inst.components.fueled:IsEmpty() then
            data.child.components.combat.externaldamagemultipliers:SetModifier(inst, 1.15, "fuelhome")
        end
    end
end

local function ShouldAccept(inst, item, giver)
    if item.prefab ~= "charcoal" then return false, "NOTCHARCOAL" end

    return item.prefab == "charcoal"
end

local function OnAccept(inst, giver, item)
    local wasempty = inst.components.fueled:IsEmpty()
    inst.components.fueled.accepting = true
    inst.components.fueled:TakeFuelItem(item, giver)
    inst.components.fueled.accepting = false
    inst.SoundEmitter:PlaySound("dontstarve/common/fireAddFuel")
    inst.components.fueled:StartConsuming()
    inst.Light:SetRadius(2)
    --LightsOn(inst)
    if wasempty then
        for _, v in pairs(inst.components.childspawner.childrenoutside) do
            v.components.combat.externaldamagemultipliers:SetModifier(inst, 1.15, "fuelhome", inst)
        end
    end
    inst.smoke = SpawnPrefab( "stovesmoke" )
    local follower = inst.smoke.entity:AddFollower()
    follower:FollowSymbol( inst.GUID, "rabbit_house", 50, -100, 0 ) 
end

local function OnFuelEmpty(inst)
    inst.Light:SetRadius(1)
    --LightsOff(inst)
    for _, v in pairs(inst.components.childspawner.childrenoutside) do
        v.components.combat.externaldamagemultipliers:RemoveModifier("fuelhome")
    end
    inst.smoke:Remove()
    inst.smoke = nil
end

local function OnPreLoad(inst, data)
    --WorldSettings_Spawner_PreLoad(inst, data, TUNING.RABBITHOUSE_SPAWN_TIME)
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddLight()
    inst.entity:AddSoundEmitter()
    inst.entity:AddMiniMapEntity()
    inst.entity:AddNetwork()

    MakeObstaclePhysics(inst, 1)

    inst.MiniMapEntity:SetIcon("rabbithouse_refurbished.tex")
--{anim="level1", sound="dontstarve/common/campfire", radius=2, intensity=.75, falloff=.33, colour = {197/255,197/255,170/255}},
    inst.Light:SetFalloff(1)
    inst.Light:SetIntensity(.5)
    inst.Light:SetRadius(1)
    inst.Light:Enable(false)
    inst.Light:SetColour(180/255, 195/255, 50/255)

    inst.AnimState:SetBank("rabbithouse")
    inst.AnimState:SetBuild("rabbithouse_refurbished")
    inst.AnimState:PlayAnimation("idle", true)

    inst:AddTag("cavedweller")
    inst:AddTag("structure")

    MakeSnowCoveredPristine(inst)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("lootdropper")
    inst.components.lootdropper:SetLoot(loot)

    inst:AddComponent("workable")
    inst.components.workable:SetWorkAction(ACTIONS.HAMMER)
    inst.components.workable:SetWorkLeft(4)
    inst.components.workable:SetOnFinishCallback(onhammered)
    inst.components.workable:SetOnWorkCallback(onhit)

    local cs = inst:AddComponent("childspawner")
    cs.childname = "bunnyman"
    --cs.onoccupied = onoccupied
    cs.onvacate = onvacate
    cs:SetMaxChildren(3)
    cs:SetSpawnPeriod(.34, 0)
    --cs.spawnvariance = 0
    cs:SetRegenPeriod(TUNING.PIGHOUSE_SPAWN_TIME)

    inst:AddComponent("inspectable")
    inst.components.inspectable.getstatus = getstatus

    inst:AddComponent("fueled")
    inst.components.fueled.accepting = false
    inst.components.fueled.maxfuel = 60 * 8 * 3 --3 days
    inst.components.fueled.rate = 0.67
    inst.components.fueled:SetDepletedFn(OnFuelEmpty)

    inst:AddComponent("trader")
    inst.components.trader:SetAbleToAcceptTest(ShouldAccept)
    inst.components.trader:SetOnAccept(OnAccept)

    MakeSnowCovered(inst)
    SetLunarHailBuildupAmountLarge(inst)

    MakeMediumBurnable(inst, nil, nil, true)
    MakeLargePropagator(inst)
    inst:ListenForEvent("burntup", onburntup)
    inst:ListenForEvent("onignite", onignite)

    inst.OnSave = onsave
    inst.OnLoad = onload

    inst:ListenForEvent("onbuilt", onbuilt)
    inst.inittask = inst:DoTaskInTime(0, oninit)

    MakeHauntableWork(inst)

    inst.OnPreLoad = OnPreLoad

    return inst
end

return Prefab("rabbithouse_fuelrefurbished", fn, assets, prefabs)
