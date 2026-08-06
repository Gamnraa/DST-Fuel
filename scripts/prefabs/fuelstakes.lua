require "prefabutil"
local function OnIsPathFindingDirty(inst)
    if inst._ispathfinding:value() then
        if inst._pfpos == nil and inst:GetCurrentPlatform() == nil then
            inst._pfpos = inst:GetPosition()
            TheWorld.Pathfinder:AddWall(inst._pfpos:Get())
        end
    elseif inst._pfpos ~= nil then
        TheWorld.Pathfinder:RemoveWall(inst._pfpos:Get())
        inst._pfpos = nil
    end
end

local function InitializePathFinding(inst)
    inst:ListenForEvent("onispathfindingdirty", OnIsPathFindingDirty)
    OnIsPathFindingDirty(inst)
end

local function makeobstacle(inst)
    inst.Physics:SetActive(true)
    inst._ispathfinding:set(true)
end

local function clearobstacle(inst)
    inst.Physics:SetActive(false)
    inst._ispathfinding:set(false)
end

local anims =
{
    { threshold = 0, anim = "broken" },
    { threshold = 0.4, anim = "onequarter" },
    { threshold = 0.5, anim = "half" },
    { threshold = 0.99, anim = "threequarter" },
    { threshold = 1, anim = { "fullA", "fullB", "fullC" } },
}

local function resolveanimtoplay(inst, percent)
    for i, v in ipairs(anims) do
        if percent <= v.threshold then
            if type(v.anim) == "table" then
                -- get a stable animation, by basing it on world position
                local x, y, z = inst.Transform:GetWorldPosition()
                local x = math.floor(x)
                local z = math.floor(z)
                local q1 = #v.anim + 1
                local q2 = #v.anim + 4
                local t = ( ((x%q1)*(x+3)%q2) + ((z%q1)*(z+3)%q2) )% #v.anim + 1
                return v.anim[t]
            else
                return v.anim
            end
        end
    end
end

local function onhealthchange(inst, old_percent, new_percent)
    inst.AnimState:PlayAnimation("hit")
    inst.AnimState:PushAnimation("idle")
end

local function keeptargetfn()
    return false
end

local function onload(inst,data)
    if inst.components.health:IsDead() then
        clearobstacle(inst)
    end

    if data and data.gridnudge then
        local function normalize(coord)

            local temp = coord%0.5
            coord = coord + 0.5 - temp

            if  coord%1 == 0 then
                coord = coord -0.5
            end

            return coord
        end

        local pt = Vector3(inst.Transform:GetWorldPosition())
        pt.x = normalize(pt.x)
        pt.z = normalize(pt.z)
        inst.Transform:SetPosition(pt.x,pt.y,pt.z)
    end
end

local function onremove(inst)
    inst._ispathfinding:set_local(false)
    OnIsPathFindingDirty(inst)
end

local PLAYER_TAGS = { "player" }
local function ValidRepairFn(inst)
    if inst.Physics:IsActive() then
        return true
    end

    local x, y, z = inst.Transform:GetWorldPosition()
    if TheWorld.Map:IsAboveGroundAtPoint(x, y, z) then
        return true
    end

    if TheWorld.Map:IsVisualGroundAtPoint(x,y,z) then
        for i, v in ipairs(TheSim:FindEntities(x, 0, z, 1, PLAYER_TAGS)) do
            if v ~= inst and
            v.entity:IsVisible() and
            v.components.placer == nil and
            v.entity:GetParent() == nil then
                local px, _, pz = v.Transform:GetWorldPosition()
                if math.floor(x) == math.floor(px) and math.floor(z) == math.floor(pz) then
                    return false
                end
            end
        end
    end
    return true
end

function MakeWallType(data)
    local assets = 
    {
        Asset("ANIM", "anim/wood_stakes.zip"),
    }

    local prefabs =
    {
        "collapse_small",
    }

	local bank = "wall"

    local function ondeploywall(inst, pt, deployer)
        --inst.SoundEmitter:PlaySound("dontstarve/creatures/spider/spider_egg_sack")
        local wall = SpawnPrefab("wall_fuelstakes", inst.linked_skinname, inst.skin_id)
        if wall ~= nil then
            local x = math.floor(pt.x) + .5
            local z = math.floor(pt.z) + .5
            wall.Physics:SetCollides(false)
            wall.Physics:Teleport(x, 0, z)
            wall.Physics:SetCollides(true)
            inst.components.stackable:Get():Remove()

            wall.SoundEmitter:PlaySound("dontstarve/common/place_structure_wood")
        end
    end

    local function onhammered(inst, worker)
        
        local num_loots = math.max(1, math.floor(2 * inst.components.health:GetPercent()))
        for i = 1, num_loots do
            inst.components.lootdropper:SpawnLootPrefab("twigs")
        end
        inst.components.lootdropper:SpawnLootPrefab("log")

        local fx = SpawnPrefab("collapse_small")
        fx.Transform:SetPosition(inst.Transform:GetWorldPosition())
        fx:SetMaterial("wood")

        inst:Remove()
    end

    local function itemfn()
        local inst = CreateEntity()

        inst.entity:AddTransform()
        inst.entity:AddAnimState()
        inst.entity:AddNetwork()

        MakeInventoryPhysics(inst)

        inst:AddTag("wallbuilder")

		inst.AnimState:SetBank("wood_stakes")
        inst.AnimState:SetBuild("wood_stakes")
        inst.AnimState:PlayAnimation("idle")
		inst.Transform:SetScale(0.5,0.5,0.5)

        MakeInventoryFloatable(inst)


        inst.entity:SetPristine()

        if not TheWorld.ismastersim then
            return inst
        end

        inst:AddComponent("stackable")
        inst.components.stackable.maxsize = TUNING.STACK_SIZE_MEDITEM

        inst:AddComponent("inspectable")
        inst:AddComponent("inventoryitem")
        inst.components.inventoryitem.imagename = "wood_stakes"
        inst.components.inventoryitem.atlasname = "images/inventoryimages/wood_stakes.xml"
        --if not item_floats then
            inst.components.inventoryitem:SetSinks(true)
        --end

        inst:AddComponent("repairer")
        inst.components.repairer.repairmaterial = MATERIALS.WOOD
        inst.components.repairer.healthrepairvalue = 150 / 6

        MakeSmallBurnable(inst, TUNING.MED_BURNTIME)
        MakeSmallPropagator(inst)

        inst:AddComponent("fuel")
        inst.components.fuel.fuelvalue = TUNING.SMALL_FUEL


        inst:AddComponent("deployable")
        inst.components.deployable.ondeploy = ondeploywall
        inst.components.deployable:SetDeployMode(DEPLOYMODE.WALL)

        MakeHauntableLaunch(inst)

        return inst
    end

    local function onhit(inst, attacker)
        if attacker and attacker.components.combat then
            attacker.components.combat:GetAttacked(inst, 34)
        end

        inst.SoundEmitter:PlaySound("dontstarve/common/destroy_wood")


        local healthpercent = inst.components.health:GetPercent()
        if healthpercent > 0 then
            local anim_to_play = resolveanimtoplay(inst, healthpercent)
            inst.AnimState:PlayAnimation("hit")
            inst.AnimState:PushAnimation("idle")
        else
            onhammered(inst, attacker)
        end
    end

    local function onrepaired(inst)
        inst.SoundEmitter:PlaySound("dontstarve/common/place_structure_wood")
        makeobstacle(inst)
    end

    local function fn()
        local inst = CreateEntity()

        inst.entity:AddTransform()
        inst.entity:AddAnimState()
        inst.entity:AddSoundEmitter()
        inst.entity:AddNetwork()

        inst.Transform:SetEightFaced()

		inst:SetDeploySmartRadius(0.5) --DEPLOYMODE.WALL assumes spacing of 1

        MakeObstaclePhysics(inst, .75)
        inst.Physics:SetDontRemoveOnSleep(true)

        --inst.Transform:SetScale(1.3,1.3,1.3)

        inst:AddTag("wall")
        inst:AddTag("noauradamage")
		inst:AddTag("electricdamageimmune")

		inst.AnimState:SetBank("wood_stakes")
        inst.AnimState:SetBuild("wood_stakes")
        inst.AnimState:PlayAnimation("idle")

        inst:AddTag("wood")

        inst._pfpos = nil
        inst._ispathfinding = net_bool(inst.GUID, "_ispathfinding", "onispathfindingdirty")
        makeobstacle(inst)
        --Delay this because makeobstacle sets pathfinding on by default
        --but we don't to handle it until after our position is set
        inst:DoTaskInTime(0, InitializePathFinding)

        inst.OnRemoveEntity = onremove

        inst.entity:SetPristine()

        if not TheWorld.ismastersim then
            return inst
        end

        inst.scrapbook_specialinfo = "WALLS"
        inst.scrapbook_anim = "idle"

        inst:AddComponent("inspectable")
        inst:AddComponent("lootdropper")

        inst:AddComponent("repairable")
        inst.components.repairable.repairmaterial = MATERIALS.WOOD
        inst.components.repairable.onrepaired = onrepaired
        inst.components.repairable.testvalidrepairfn = ValidRepairFn

        inst:AddComponent("combat")
        inst.components.combat:SetKeepTargetFunction(keeptargetfn)
        inst.components.combat.onhitfn = onhit

        inst:AddComponent("health")
        inst.components.health:SetMaxHealth(150)
        inst.components.health:SetCurrentHealth(150)
        inst.components.health.ondelta = onhealthchange
        inst.components.health.nofadeout = true
        inst.components.health.canheal = false

        MakeMediumBurnable(inst)
        MakeLargePropagator(inst)
        inst.components.burnable.flammability = .5
        inst.components.burnable.nocharring = true
        inst.components.propagator.flashpoint = 30 + math.random() * 10
  

        inst:AddComponent("workable")
        inst.components.workable:SetWorkAction(ACTIONS.HAMMER)
		inst.components.workable:SetWorkLeft(3)
        inst.components.workable:SetOnFinishCallback(onhammered)
        inst.components.workable:SetOnWorkCallback(onhit)

        MakeHauntableWork(inst)

        inst.OnLoad = onload

        return inst
    end

    return Prefab("wall_fuelstakes", fn, assets, prefabs),
        Prefab("wall_fuelstakes_item", itemfn, assets, { "wall_fuelstakes", "wall_fuelstakes_item_placer" }),
		MakePlacer("wall_fuelstakes_item_placer", "wood_stakes", "wood_stakes", "idle", false, false, true, nil, nil, "eight")
end

return MakeWallType()
