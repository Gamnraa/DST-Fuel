local function mastersim() return GLOBAL.TheWorld.ismastersim end 
local ACTIONS = GLOBAL.ACTIONS

local dohealingtask = function(inst, _dodelta)
    local health = inst.components.health
    if inst.slowhealtask then inst.slowhealtask:Cancel() end
    inst.slowhealtask = inst:DoPeriodicTask(inst.healtickrate, function(inst) 
        _dodelta(inst.components.health, 
            (health.currenthealth > inst.expectedhealth and -1) or 
            (health.currenthealth < inst.expectedhealth and 1) or 0)
        print("tick",inst.expectedhealth)
        if math.floor(health.currenthealth) == math.floor(inst.expectedhealth) then
            inst.slowhealtask:Cancel()
        end    
    end) 
end

AddComponentPostInit("health", function(self)
    local _dodelta = self.DoDelta
    self.DoDelta = function(self, amount, overtime, cause, ignore_invincible, afflicter, ignore_absorb, ...)
        if self.inst.jumpstart then
            dohealingtask(self.inst, _dodelta)
            self.inst.jumpstart = false
            return
        end

        if self.inst:HasTag("slowhealer") and amount ~= 0 and self.redirect == nil and cause ~= "cold" and cause ~= "hunger" then
            if amount < 0 and math.random(100) + 5 < math.abs(amount) then
                --Take away maxhealth
                self:DeltaPenalty((-amount * .25) / self.maxhealth)
                self.inst.expectedhealth = math.ceil(math.max(0, (self.inst.expectedhealth or self.currenthealth) + (amount * .25)))
                dohealingtask(self.inst, _dodelta)
                amount = 0
            else
                --This should work in both directions simultaneously
                self.inst.expectedhealth = math.ceil(math.max(0, (self.inst.expectedhealth or self.currenthealth) + amount))
                print("init",self.inst.expectedhealth)
                dohealingtask(self.inst, _dodelta)
                amount = amount * .25
            end
        end
        _dodelta(self, amount, overtime, cause, ignore_invincible, afflicter, ignore_absorb, ...)
    end
end)

local function CanGiveStumpLog(inst, item, giver)
    return item.prefab == "log" and not item:HasTag("split") and (giver:HasTag("gramfuel") or giver:HasTag("gramfuelally"))
end

local function OnGiveStumpLog(inst, giver, item)
    inst.components.trader:Disable()
    inst.components.pickable:SetUp("log", 1000000)
    inst.components.pickable:Pause()
    inst.components.pickable.caninteractwith = true
    inst:AddTag("haslog")

    --Set art
end

local function OnTakeLog(inst, taker, loot)
    inst.components.trader:Enable()
    inst:RemoveTag("haslog")

    --Set art
end

local function Split(inst)
    inst.components.pickable:MakeEmpty()
    local log1 = GLOBAL.SpawnPrefab("log")
    log1:AddTag("split")
    log1.skinname = "fuellog"
    --art
    local log2 = GLOBAL.SpawnPrefab("log")
    log2:AddTag("split")
    log2.skinname = "fuellog"
    inst.components.lootdropper:FlingItem(log1)
    inst.components.lootdropper:FlingItem(log2)
    OnTakeLog(inst)
end

local function MakeLogHolder(inst)
     if inst and inst:HasTag("stump") then
        inst:AddComponent("trader")
        inst.components.trader:SetAcceptTest(CanGiveStumpLog)
        inst.components.trader.deleteitemonaccept = false
        inst.components.trader.onaccept = OnGiveStumpLog

        inst:AddComponent("pickable")
        inst.components.pickable.caninteractwith = false
        inst.components.pickable.quickpick = true
        inst.components.pickable.onpickedfn = OnTakeLog

        inst:ListenForEvent("splitlog", Split)
    end
end

AddPrefabPostInit("evergreen", function(inst)
    if not mastersim() then return end
    inst:DoTaskInTime(0, function(inst) if inst:HasTag("stump") then MakeLogHolder(inst) end end)

    inst:ListenForEvent("workfinished", function(inst)
        inst:DoTaskInTime(0, MakeLogHolder)
    end)
end)

AddPrefabPostInit("log", function(inst)
    --If your mod adds an OnSave and OnLoad to the log we have beef
    if not mastersim() then return end
    inst.OnSave = function(inst, data) data.skinname = inst.skinname end
    inst.OnLoad = function(inst, data) inst.skinname = data and data.skinname if inst.skinname then inst:AddTag("split") end end
end)


AddGlobalClassPostConstruct("entityscript", "EntityScript", function(self)
    local _stackableskinhack = self.StackableSkinHack
    function self:StackableSkinHack(target, ...)
        if self.prefab == "log" then
            return self:HasTag("split") == target:HasTag("split")
        end
        return _stackableskinhack(self, target, ...)
    end
end)

local function StopFollowingFuel(inst, data)
    if data.leader:HasTag("GramFuel") then
        inst.components.workmultiplier:AddMultiplier(ACTIONS.CHOP, math.max(1, inst.components.workmultiplier:GetMultiplier(ACTIONS.CHOP) - .15), inst)
        inst.components.combat.externaldamagemultipliers:RemoveModifier("fuelhand")
    end
end

AddPrefabPostInit("pigman", function(inst)
    if not mastersim() then return end
    if not inst.components.workmultiplier then
        inst:AddComponent("workmultiplier")
    end
    inst:ListenForEvent("loseloyalty", StopFollowingFuel)
    local _onaccept = inst.components.trader.onaccept
    inst.components.trader.onaccept = function(inst, giver, item, ...)
        _onaccept(inst, giver, item, ...)
        if giver:HasTag("gramfuel") and inst.components.follower.leader == giver then
            inst.components.follower:AddLoyaltyTime(item.components.edible:GetHunger() * TUNING.PIG_LOYALTY_PER_HUNGER * .5)
            inst.components.follower.maxfollowtime = TUNING.PIG_LOYALTY_MAXTIME * 1.5
            inst.components.workmultiplier:AddMultiplier(ACTIONS.CHOP, inst.components.workmultiplier:GetMultiplier(ACTIONS.CHOP) + .15, inst)
        end
    end
end)

AddPrefabPostInit("bunnyman", function(inst)
    if not mastersim() then return end
    inst:ListenForEvent("loseloyalty", StopFollowingFuel)
    local _onaccept = inst.components.trader.onaccept
    inst.components.trader.onaccept = function(inst, giver, item, ...)
        _onaccept(inst, giver, item, ...)
         if giver:HasTag("gramfuel") and inst.components.follower.leader == giver then
            inst.components.follower:AddLoyaltyTime(TUNING.RABBIT_CARROT_LOYALTY * .5)
            inst.components.follower.maxfollowtime = TUNING.PIG_LOYALTY_MAXTIME * 1.5
            inst.components.combat.externaldamagemultipliers:SetModifier(inst, 1.15, "fuelhand")
        end
    end
end)

AddPrefabPostInit("rocky", function(inst)
    if not mastersim() then return end
    local _onaccept = inst.components.trader.onaccept
    inst.components.trader.onaccept = function(inst, giver, item, ...)
        _onaccept(inst, giver, item, ...)
         if giver:HasTag("gramfuel") and inst.components.follower.leader == giver then
            inst.components.follower:AddLoyaltyTime(TUNING.ROCKY_LOYALTY * .5)
            inst.components.follower.maxfollowtime = TUNING.PIG_LOYALTY_MAXTIME * 1.5
        end
    end
end)

AddComponentPostInit("childspawner", function(self)
    local _spawnchild = self.SpawnChild
    self.SpawnChild = function(target, prefab, radius, ...)
        local child = _spawnchild(target, prefab, radius, ...)
        if child then
            self.inst:PushEvent("spawnedchild", {child = child})
        end
    end
end)

AddComponentPostInit("trader", function(self)
    local _acceptgift = self.AcceptGift
    self.AcceptGift = function(item, giver, count, ...)
        if _acceptgift(item, giver, count, ...) then
            giver:PushEvent("giveitem", self.inst, item)
        end
    end
end)