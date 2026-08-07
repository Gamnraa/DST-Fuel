local assets =
{
    Asset("ANIM", "anim/livingcoal.zip"),
}

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("livingcoal")
    inst.AnimState:SetBuild("livingcoal")
    inst.AnimState:PlayAnimation("idle")

    inst.pickupsound = "wood"

    inst:AddTag("molebait")

    MakeInventoryFloatable(inst, "med", 0.05, 0.6)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("stackable")
    inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM

    inst:AddComponent("fuel")
    inst.components.fuel.fuelvalue = TUNING.LARGE_FUEL

    inst:AddComponent("edible")
    inst.components.edible.foodtype = FOODTYPE.BURNT
    inst.components.edible.hungervalue = 20
    inst.components.edible.healthvalue = 20
    --inst.components.edible.sanityvalue = -15

    inst:AddComponent("tradable")

    inst:AddComponent("bait")

    MakeMediumBurnable(inst, TUNING.MED_BURNTIME)
    MakeMediumPropagator(inst)

    MakeHauntableLaunchAndIgnite(inst)

    ---------------------

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "livingcoal"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/livingcoal.xml"


	--inst:AddComponent("snowmandecor")

    return inst
end

return Prefab("livingcoal", fn, assets)
