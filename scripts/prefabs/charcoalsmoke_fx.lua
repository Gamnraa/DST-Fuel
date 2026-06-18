
local SMOKE_TEXTURE = "fx/smoke.tex"
local TEXTURE = "fx/torchfire.tex"

local SHADER = "shaders/vfx_particle.ksh"

local COLOUR_ENVELOPE_NAME_SMOKE_1 = "c1"
local COLOUR_ENVELOPE_NAME_SMOKE_2 = "c2"
local COLOUR_ENVELOPE_NAME_SMOKE_3 = "c3"
local SCALE_ENVELOPE_NAME_SMOKE = "firesmokescaleenvelope"
local COLOUR_ENVELOPE_NAME = "firecolourenvelope"
local SCALE_ENVELOPE_NAME = "firescaleenvelope"

local assets =
{
    Asset("IMAGE", TEXTURE),
    Asset("SHADER", SHADER),
}

--------------------------------------------------------------------------

local function IntColour(r, g, b, a)
    return { r / 255, g / 255, b / 255, a / 255 }
end

local function InitEnvelope()
    EnvelopeManager:AddColourEnvelope(
        COLOUR_ENVELOPE_NAME_SMOKE_1,
        {
            { 0,    IntColour(210, 210, 210, 240) },
            { .3,   IntColour(200, 200, 200, 220) },
            { .55,  IntColour(180, 180, 190, 200) },
            { .66,    IntColour(160, 170, 180, 180) },
            { .77,    IntColour(160, 165, 170, 100) },
            { .95,    IntColour(160, 165, 170, 50) },
            { 1,    IntColour(160, 165, 170, 25) },
        }
    )

        EnvelopeManager:AddColourEnvelope(
        COLOUR_ENVELOPE_NAME_SMOKE_2,
        {
            { 0,    IntColour(8, 8, 8, 240) },
            { .3,   IntColour(12, 12, 12, 220) },
            { .55,  IntColour(16, 16, 16, 200) },
            { .66,    IntColour(20, 20, 20, 180) },
            { .77,    IntColour(25, 25, 25, 100) },
            { .95,    IntColour(30, 30, 30, 50) },
            { 1,    IntColour(40, 40, 40, 15) },
        }
    )

        EnvelopeManager:AddColourEnvelope(
        COLOUR_ENVELOPE_NAME_SMOKE_3,
        {
            { 0,    IntColour(90, 200, 245, 10) },
            { .55,  IntColour(90, 200, 235, 8) },
            { .95,    IntColour(90, 195, 235, 5) },
            { 1,    IntColour(90, 192, 212, 3) },
        }
    )

    local smoke_max_scale = 12
    EnvelopeManager:AddVector2Envelope(
        SCALE_ENVELOPE_NAME_SMOKE,
        {
            { 0,    { smoke_max_scale * .22, smoke_max_scale * .4} },
            { .50,  { smoke_max_scale * .55, smoke_max_scale * .6} },
            { .65,  { smoke_max_scale * .77, smoke_max_scale * .9} },
            { 1,    { smoke_max_scale, smoke_max_scale / 1.5} },
        }
    )

    InitEnvelope = nil
    IntColour = nil
end

--------------------------------------------------------------------------

local FIRE_MAX_LIFETIME = .4
local SMOKE_MAX_LIFETIME = 8

local function emit_smoke_fn(effect, sphere_emitter)
    local vx, vy, vz = math.abs(.024 * UnitRand()) + .016, math.random(1, 2) == 1 and 0.055 or 0.065, .005 * UnitRand()
    local lifetime = SMOKE_MAX_LIFETIME * (.9 + UnitRand() * .1)
    local px, py, pz = sphere_emitter()
    local uv_offset = math.random(0, 3) * .25

    effect:AddParticleUV(
        0,
        lifetime,           -- lifetime
        px, py, pz,         -- position
        vx, vy, vz,         -- velocity
        uv_offset, 0        -- uv offset
    )
end

local function emit_fire_fn(effect, sphere_emitter)
    local vx, vy, vz = .052 * UnitRand(), .01 * UnitRand(), .052 * UnitRand()
    local lifetime = FIRE_MAX_LIFETIME * (.9 + UnitRand() * .1)
    local px, py, pz = sphere_emitter()
    local uv_offset = math.random(0, 3) * .25

    effect:AddParticleUV(
        1,
        lifetime,           -- lifetime
        px, py, pz,         -- position
        vx, vy, vz,         -- velocity
        uv_offset, 0        -- uv offset
    )
end

--------------------------------------------------------------------------

local function common_postinit(inst, name)
    --Dedicated server does not need to spawn local particle fx


    if TheNet:IsDedicated() then        
        return
    elseif InitEnvelope ~= nil then
        InitEnvelope()
    end

    -----------------------------------------------------

    local effect = inst.entity:AddVFXEffect()
    effect:InitEmitters(1)

    --SMOKE
    effect:SetRenderResources(0, SMOKE_TEXTURE, SHADER)
    effect:SetMaxNumParticles(0, 350)
    effect:SetMaxLifetime(0, SMOKE_MAX_LIFETIME)
    effect:SetColourEnvelope(0, name)
    effect:SetScaleEnvelope(0, SCALE_ENVELOPE_NAME_SMOKE)
    effect:SetBlendMode(0, BLENDMODE.Premultiplied)
    effect:EnableBloomPass(0, true)
    effect:SetUVFrameSize(0, .25, 1)
    effect:SetSortOrder(0, 0)
    effect:SetSortOffset(0, 1)
    effect:SetRadius(0, 2) --only needed on a single emitter

    -----------------------------------------------------

    local tick_time = TheSim:GetTickTime()

    local smoke_desired_pps = 10
    local smoke_particles_per_tick = smoke_desired_pps * tick_time
    local smoke_num_particles_to_emit = -10 --start delay

    local sphere_emitter = CreateSphereEmitter(.08)

    EmitterManager:AddEmitter(inst, nil, function()
        --SMOKE
        while smoke_num_particles_to_emit > 1 do
            emit_smoke_fn(effect, sphere_emitter)
            smoke_num_particles_to_emit = smoke_num_particles_to_emit - 1
        end
        smoke_num_particles_to_emit = smoke_num_particles_to_emit + smoke_particles_per_tick
    end)
end

local function master_postinit(inst)
    inst.fx_offset = -400
end

local function fn(name)
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()

    inst:AddTag("FX")

    inst.SoundEmitter:PlaySound("dontstarve/wilson/torch_LP", "torch")
    inst.SoundEmitter:SetParameter("torch", "intensity", .25)


    if common_postinit ~= nil then
        common_postinit(inst, name)
    end

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst.persists = false

    if master_postinit ~= nil then
        master_postinit(inst)
    end

    return inst
end

return Prefab("charcoalsmokec1", fn("c1"), assets),
        Prefab("charcoalsmokec2", fn("c2"), assets),
        Prefab("charcoalsmokec3", fn("c3"), assets)