local assets =
{
    Asset("ANIM", "anim/charcoal_spear.zip"),
    Asset("ANIM", "anim/swap_charcoal_spear.zip"),
    Asset("ANIM", "anim/livingcoal_spear.zip"),
    Asset("ANIM", "anim/swap_livingcoal_spear.zip")
}
local function onattack(inst, attacker, target)
    inst.components.fueled:DoDelta(-TUNING.FUELSPEAR_RATE)
    if math.random(100) < 20 and target.components.hauntable then
        target.components.hauntable:Panic(math.random(5, 10))
    end

    if target.components.burnable and inst.components.burnable:IsBurning() then
        if math.random() < TUNING.TORCH_ATTACK_IGNITE_PERCENT*target.components.burnable.flammability then
            target.components.burnable:Ignite()
        end
    end

    if target.components.burnable and target.components.burnable:IsBurning() then
       if target.components.health then target.components.health:DoDelta(-TUNING.FUELSPEAR_DAMAGE / 5) end
    end
end

local function onequip(inst, owner)
    local skin_build = inst:GetSkinBuild()
    if skin_build ~= nil then
        owner:PushEvent("equipskinneditem", inst:GetSkinName())
        owner.AnimState:OverrideItemSkinSymbol("swap_object", skin_build, "swap_" .. inst.prefab, inst.GUID, "swap_" .. inst.prefab)
    else
        owner.AnimState:OverrideSymbol("swap_object", "swap_" .. inst.prefab, "swap_object")
    end
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
end

local function onunequip(inst, owner)
    inst.components.burnable:Extinguish()
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
    local skin_build = inst:GetSkinBuild()
    if skin_build ~= nil then
        owner:PushEvent("unequipskinneditem", inst:GetSkinName())
    end
end

local function onignite(inst, source, doer)
    inst.SoundEmitter:PlaySound("dontstarve/wilson/torch_LP", "torch")
    inst.SoundEmitter:PlaySound("dontstarve/wilson/torch_swing")
    inst.SoundEmitter:SetParameter( "torch", "intensity", 1 )

    inst.fire = SpawnPrefab( "spearfire" )
    local follower = inst.fire.entity:AddFollower()
    follower:FollowSymbol( doer.GUID, "swap_object", 0, -110, 4 ) 
    inst:AddComponent("lighter")
end

local function onextinguish(inst)
    inst.fire:Remove()
    inst.fire = nil
    inst.SoundEmitter:KillSound("torch")
    inst.SoundEmitter:PlaySound("dontstarve/common/fireOut")
    inst:RemoveComponent("lighter")
end

local function onload(inst)
    if inst.components.burnable:IsBurning() then
        onignite(inst)
    end
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("charcoal_spear")
    inst.AnimState:SetBuild("charcoal_spear")
    inst.AnimState:PlayAnimation("idle")

    inst:AddTag("sharp")
    inst:AddTag("pointy")

    --weapon (from weapon component) added to pristine state for optimization
    inst:AddTag("weapon")

    MakeInventoryFloatable(inst, "med", 0.05, {1.1, 0.5, 1.1}, true, -9)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(TUNING.FUELSPEAR_DAMAGE)
    inst.components.weapon:SetOnAttack(onattack)

    inst:AddComponent("fueled")
    inst.components.fueled:InitializeFuelLevel(TUNING.FUELSPEAR_FUEL)
    inst.components.fueled:SetDepletedFn(inst.Remove)

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")

    inst:AddComponent("equippable")
    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)

    inst:AddComponent("burnable")
    inst.components.burnable.canlight = false
    inst.components.burnable.fxprefab = nil
    inst.components.burnable.burntime = 120
    inst.components.burnable.onignite = onignite
	inst.components.burnable:SetOnExtinguishFn(onextinguish)

   -- inst:AddComponent("lighter") --fuel

    inst.OnLoad = onload

    MakeHauntableLaunch(inst)

    return inst
end

--Livingcoal Spear will keep fires in range of it burning indefinitely, at the cost of its durability
local function fnlivingcoal()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("livingcoal_spear")
    inst.AnimState:SetBuild("livingcoal_spear")
    inst.AnimState:PlayAnimation("idle")

    inst:AddTag("sharp")
    inst:AddTag("pointy")
    inst:AddTag("livingspear")

    --weapon (from weapon component) added to pristine state for optimization
    inst:AddTag("weapon")

    MakeInventoryFloatable(inst, "med", 0.05, {1.1, 0.5, 1.1}, true, -9)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(TUNING.FUELSPEAR_DAMAGE)
    inst.components.weapon:SetOnAttack(onattack)

    inst:AddComponent("fueled")
    inst.components.fueled:InitializeFuelLevel(TUNING.FUELSPEAR_FUEL)
    inst.components.fueled:SetDepletedFn(inst.Remove)

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")

    inst:AddComponent("equippable")
    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)

    inst:AddComponent("burnable")
    inst.components.burnable.canlight = false
    inst.components.burnable.fxprefab = nil
    inst.components.burnable.burntime = 150
    inst.components.burnable.onignite = onignite
	inst.components.burnable:SetOnExtinguishFn(onextinguish)

    --inst:AddComponent("lighter") --fuel

    inst.OnLoad = onload

    MakeHauntableLaunch(inst)

    return inst
end

return Prefab("charcoal_spear", fn, assets),
        Prefab("livingcoal_spear", fnlivingcoal, assets)