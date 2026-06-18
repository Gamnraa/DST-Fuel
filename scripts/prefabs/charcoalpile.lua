local assets = 
{
    Asset("ANIM", "anim/charcoal_pile.zip"),
}

local prefabs = 
{
    "collapse_big"
}

--this just copypasted it from aeriths spinning fx code so it has a lot of unnecesssary leftovers
local function DoSpawnFX(inst, x, y, z, rot, radius, burst, prefab, anim, theta)
	local fx = SpawnPrefab(prefab)
	fx.Transform:SetRotation(rot)
	fx.Transform:SetPosition(x,y,z)		

	if inst.fx then
		table.insert(inst.fx, fx)
	end
	
end
local function SpawnFX(inst, burst, radius, prefab, changeanim)
	local x, y, z = inst.Transform:GetWorldPosition()
	local theta = inst.Transform:GetRotation() * DEGREES
	local delta = PI2 / burst
	for i=1, burst do
		local x1 = x + (radius / 1.08) * math.cos(theta)
		local z1 = z - (radius) * math.sin(theta)
		DoSpawnFX(inst, x1, y, z1, theta * RADIANS, radius, burst, prefab, changeanim, theta)
		theta = theta + delta
	end	
end

local function ischarring(inst)
    return inst.components.charcoalmaker.timeleft
end

local function onhammered(inst, worker)
    if inst.components.container ~= nil then
        inst.components.container:DropEverything()
    end
    inst.components.lootdropper:DropLoot()
    local fx = SpawnPrefab("collapse_big")
    fx.Transform:SetPosition(inst.Transform:GetWorldPosition())
    fx:SetMaterial("wood")
    inst:Remove()
end

local function onhit(inst, worker)
    if inst.components.container ~= nil and inst.components.container:IsOpen() then
        inst.components.container:Close()
        --onclose will trigger sfx already
    else
        inst.SoundEmitter:PlaySound("dontstarve/common/cookingpot_close")
    end
    local state = ischarring(inst) and "_full" or "_partial" 
    inst.AnimState:PlayAnimation("hit" .. state)
    inst.AnimState:PushAnimation("idle" .. state, false)
end

local function startcharring(inst)
    inst.AnimState:PlayAnimation("partial_to_full")
    inst.AnimState:PushAnimation("idle_full")
    inst.Light:Enable(true)
    inst:RemoveTag("ready")
    inst.smoke = SpawnPrefab("charcoalsmokec1")
    local follower = inst.smoke.entity:AddFollower()
    follower:FollowSymbol( inst.GUID, "object", 0, -350, 0 ) 
end

local function donecharring(inst) 
    inst:AddTag("finished")
    inst.Light:Enable(false)
end

local function harvest(inst)
    inst.AnimState:PlayAnimation("full_to_partial")
    inst.AnimState:PushAnimation("idle_partial")
    inst:RemoveTag("finished")
    inst:AddTag("waiting")
    inst.smoke:Remove()
    inst.fire = nil
end

local function getstatus(inst, viewer)
    return ((viewer:HasTag("GramFuel") and inst.components.charcoalmaker:IsDone()) and "DONE")
        or ((viewer:HasTag("GramFuel") and inst.components.charcoalmaker:IsTooHot()) and "NEEDSWATER")
        or (inst.components.charcoalmaker.timeleft and "CHARRING")
        or "NEEDSMATERIALS"
end

local function onbuilt(inst)
    inst.AnimState:PlayAnimation("place")
    inst.AnimState:PushAnimation("idle_partial") 
end

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

local function onload(inst)
    local state = ischarring(inst) and "_full" or "_partial" 
    inst.AnimState:PlayAnimation("idle" .. state, false)
    if state == "_full" then
        inst.smoke = SpawnPrefab("charcoalsmokec3")
        local follower = inst.smoke.entity:AddFollower()
        follower:FollowSymbol( inst.GUID, "object", 0, -350, 0 )
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
    --inst.entity:AddMiniMapEntity()
    inst.entity:AddLight()
    inst.entity:AddNetwork()

	inst:SetDeploySmartRadius(1) --recipe min_spacing/2
    MakeObstaclePhysics(inst, 2.5)

    inst.Light:Enable(false)
    inst.Light:SetRadius(2.2)
    inst.Light:SetFalloff(1)
    inst.Light:SetIntensity(.5)
    inst.Light:SetColour(235/255,62/255,12/255)

    inst:AddTag("structure")
    inst:AddTag("fuelcharcoalmaker")
    inst:AddTag("HASHEATER")

    inst.AnimState:SetBank("charcoal_pile")
    inst.AnimState:SetBuild("charcoal_pile")
    inst.AnimState:PlayAnimation("idle_partial", false)
    inst.scrapbook_anim = "idle_full"
    --inst.MiniMapEntity:SetIcon("cookpot.png")

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
    inst:AddComponent("charcoalmaker")
    inst.components.charcoalmaker.onharvest = harvest
    inst.components.charcoalmaker.startfn = startcharring
    inst.components.charcoalmaker.finishfn = donecharring

    inst:ListenForEvent("onbuilt", onbuilt)
    inst:ListenForEvent("itemget", onupdatecontainer)
    inst:ListenForEvent("itemlose", onupdatecontainer)
    inst.OnLoad = onload
    inst.OnLoadPostPass = onloadpostpass

    inst:DoTaskInTime(.1, function()
	SpawnPrefab("fuelcharcoalpile_ground").Transform:SetPosition(inst.Transform:GetWorldPosition())
	SpawnFX(inst, 25, 3.3, "fuelcharcoalpile_rocks", false)
		
	end)

    return inst
end

local function rocksfn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    inst.AnimState:SetBank("charcoal_pile")
    inst.AnimState:SetBuild("charcoal_pile")
    inst.AnimState:PlayAnimation("rocks_"..math.random(0,5))
    if math.random(100) > 40 then
        inst.AnimState:SetScale(-1, 1, -1)
    end
	--could add extra variety here by flipping them using setscale
	
    inst:AddTag("NOCLICK")
	
    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end
	inst.persists = false
    return inst
end

local function groundfn() --ground
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    inst.AnimState:SetBank("charcoal_pile")
    inst.AnimState:SetBuild("charcoal_pile")
    inst.AnimState:PlayAnimation("ground", false)
    inst.AnimState:SetOrientation(ANIM_ORIENTATION.OnGround)
	inst.AnimState:SetLayer(LAYER_BACKGROUND)
	inst.AnimState:SetSortOrder(3)
	inst.AnimState:SetScale(.97, .97, .97)
   -- inst:AddTag("NOCLICK")
	
    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end
		     --burst, radius
	inst.persists = false
    return inst
end

return Prefab("fuelcharcoalpile", fn, assets, prefabs),
    MakePlacer("fuelcharcoalpile_placer", "fuelcharcoalpile", "cookpot", "idle"),
    Prefab("fuelcharcoalpile_rocks", rocksfn, assets),
    Prefab("fuelcharcoalpile_ground", groundfn, assets)