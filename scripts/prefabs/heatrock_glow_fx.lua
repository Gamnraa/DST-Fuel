local assets =
{
    Asset("ANIM", "anim/heatrock_glow.zip")
}

local function killFX(inst)
	inst:DoTaskInTime(0, inst.Remove)
end

local function fn()
    local inst = CreateEntity()
	
    inst.entity:AddTransform()
    inst.entity:AddNetwork()
	inst.entity:AddSoundEmitter()
	inst.entity:AddAnimState()
	inst.AnimState:SetBank("glowfx")
    inst.AnimState:SetBuild("heatrock_glow")
	inst.AnimState:PlayAnimation("anim", true)
    inst:AddTag("FX")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst.persists = false
	
	inst.kill_fx = killFX
    return inst
end

return Prefab("heatrock_glow", fn, assets)