local assets =
{
    Asset("ANIM", "anim/fuel_axe.zip"),
    Asset("ANIM", "anim/swap_fuel_axe.zip"),
}

local function onequip(inst, owner)
    inst.components.equippable.walkspeedmult = owner:HasTag("GramFuel") and 0.88 or 0.66
    if not owner:HasTag("GramFuel") then owner:AddTag("groggy") end
    local skin_build = inst:GetSkinBuild()
    if skin_build ~= nil then
        owner:PushEvent("equipskinneditem", inst:GetSkinName())
        owner.AnimState:OverrideItemSkinSymbol("swap_object", skin_build, "swap_fuel_axe", inst.GUID, "swap_fuel_axe")
    else
        owner.AnimState:OverrideSymbol("swap_object", "swap_fuel_axe", "swap_object")
    end
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
    local ent = FindEntity(inst, 10, nil, {"GramFuel"}, {"playerghost"})
    if ent and ent ~= owner and not ent.bigaxeresponse then --logically, we should not need to check if the owner is Fuel if ent ~= owner
        local mod = STRINGS.CHARACTERS.GRAMFUEL.ANNOUNCE_OTHER_PICKUP_FUELAXE[string.upper(owner.prefab)] or "GENERIC"
        ent.components.talker:Say(string.format(GetString(ent, "ANNOUNCE_OTHER_PICKUP_FUELAXE", mod), owner.name))
        ent.bigaxeresponse = ent:DoTaskInTime(10, function(inst) inst.bigaxeresponse = nil end)
        ent.sg:GoToState("fueltaunt")
    end
end

local function onunequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
    local skin_build = inst:GetSkinBuild()
    if skin_build ~= nil then
        owner:PushEvent("unequipskinneditem", inst:GetSkinName())
    end

    if not owner:HasTag("GramFuel") then owner:RemoveTag("groggy") end
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("fuel_axe")
    inst.AnimState:SetBuild("fuel_axe")
    inst.AnimState:PlayAnimation("idle")

    inst:AddTag("sharp")
    inst:AddTag("possessable_axe")
    inst:AddTag("bigolaxe")

    --tool (from tool component) added to pristine state for optimization
    inst:AddTag("tool")

    if TheNet:GetServerGameMode() ~= "quagmire" then
        --weapon (from weapon component) added to pristine state for optimization
        inst:AddTag("weapon")
    end

    MakeInventoryFloatable(inst, "small", 0.05, {1.2, 0.75, 1.2})

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inventoryitem")
    -----
    inst:AddComponent("tool")
    inst.components.tool:SetAction(ACTIONS.CHOP, 5)

    if TheNet:GetServerGameMode() ~= "quagmire" then
        -------
        inst:AddComponent("finiteuses")
        inst.components.finiteuses:SetMaxUses(TUNING.FUELAXE_USES)
        inst.components.finiteuses:SetUses(TUNING.FUELAXE_USES)
        inst.components.finiteuses:SetOnFinished(inst.Remove)
        inst.components.finiteuses:SetConsumption(ACTIONS.CHOP, 1)

        -------
        inst:AddComponent("weapon")
        inst.components.weapon:SetDamage(TUNING.FUELAXE_DAMAGE)
    end

    inst:AddComponent("inspectable")

    inst:AddComponent("equippable")
    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)
    inst.components.equippable.walkspeedmult = 0.70

    MakeHauntableLaunch(inst)

    inst.components.floater:SetBankSwapOnFloat(true, -11, {sym_build = "swap_axe"})

    return inst
end

return Prefab("bigfuelaxe", fn, assets)