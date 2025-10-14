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
    inst.components.pickable.product = nil
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

AddPrefabPostInit("evergreen_stump", function(inst)
    print("postinit", inst)
    inst:AddComponent("trader")
    inst.components.trader:SetAcceptTest(CanGiveStumpLog)
    inst.components.trader.deleteitemonaccept = false
    inst.components.trader.onaccept = OnGiveStumpLog

    inst:AddComponent("pickable")
    inst.components.pickable.caninteractwith = false
    inst.components.pickable.quickpick = true
    inst.components.pickable.onpickedfn = OnTakeLog

    inst:ListenForEvent("splitlog", Split)
end)

AddPrefabPostInit("log", function(inst)
    inst.skinname = inst:HasTag("split") and "fuellog" or nil
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
--[[AddComponentPostInit("stackable", function(self)
    local _put = self.Put
    self.Put = function(self, item, source_pos, ...)
        if item.prefab ~= "log" or self.inst.prefab ~= "log" then
            _put(self, item, source_pos, ...)
            return
        end

        --Logic must be: i
        if item:HasTag("split") and self.inst:HasTag("split") then
            _put(self, item, source_pos, ...)
        end
    end
end)]]