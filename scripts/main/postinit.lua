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
            if giver then giver:PushEvent("giveitem", self.inst, item) end
        end
    end
end)

AddStategraphPostInit("wilson", function(sg)
    --Taken form Skylarr and Monti18
    local _attack = sg.states.attack
	local _onenter = _attack.onenter
	_attack.onenter = function(inst,...)
        _onenter(inst,...)
        local weapon = inst.components.inventory and inst.components.inventory:GetEquippedItem(GLOBAL.EQUIPSLOTS.HANDS)
        if weapon and weapon:HasTag("bigolaxe") then
            local speed = 0.8
            inst.sg:SetTimeout(inst.sg.timeout/speed) --override timeout
            inst.components.combat:SetAttackPeriod(TUNING.WILSON_ATTACK_PERIOD / speed) --attack cooldown
            inst.AnimState:SetDeltaTimeMultiplier(speed) -- time multiplier
            for k, v in pairs(_attack.timeline) do --override timeline
                v.time = v.time/speed
            end
        end
    end
    local _onexit = _attack.onexit
	_attack.onexit = function(inst,...)
		local weapon = inst.components.inventory and inst.components.inventory:GetEquippedItem(GLOBAL.EQUIPSLOTS.HANDS)
        if weapon and weapon:HasTag("bigolaxe") then
			local speed = 0.8

			inst.AnimState:SetDeltaTimeMultiplier(1)			
			for k, v in pairs(_attack.timeline) do
				v.time = v.time*speed
			end
		end
		return _onexit(inst,...)
	end

    local _chops = sg.states.chop_start
	local _chopsonenter = _chops.onenter
	_chops.onenter = function(inst,...)
        _chopsonenter(inst,...)
        local weapon = inst.components.inventory and inst.components.inventory:GetEquippedItem(GLOBAL.EQUIPSLOTS.HANDS)
        if weapon and weapon:HasTag("bigolaxe") then
            local speed = 0.6
            --inst.sg:SetTimeout(inst.sg.timeout/speed) --override timeout
            inst.AnimState:SetDeltaTimeMultiplier(speed) -- time multiplier
            for k, v in pairs(_chops.timeline) do --override timeline
                v.time = v.time/speed
            end
        end
    end
    local _choponexit = sg.states.chop.onexit
	sg.states.chop.onexit = function(inst,...)
        local weapon = inst.components.inventory and inst.components.inventory:GetEquippedItem(GLOBAL.EQUIPSLOTS.HANDS)
        if weapon and weapon:HasTag("bigolaxe") then
            inst:RemoveTag("fuelchop")
            local speed = 0.75
			inst.AnimState:SetDeltaTimeMultiplier(1)			
			for k, v in pairs(sg.states.chop.timeline) do
				v.time = v.time*speed
			end
		end
		return _choponexit(inst,...)
	end

    local _chop = sg.states.chop
    local _choponenter = _chop.onenter
    _chop.onenter = function(inst, ...)
        _choponenter(inst,...)
        local weapon = inst.components.inventory and inst.components.inventory:GetEquippedItem(GLOBAL.EQUIPSLOTS.HANDS)
        if weapon and weapon:HasTag("bigolaxe") then
            if not inst:HasTag("fuelchop") then
                local speed = 0.8
                inst.AnimState:SetDeltaTimeMultiplier(speed)
                for k, v in pairs(_chop.timeline) do
                    v.time = v.time/speed
                end
            end
            inst:AddTag("fuelchop")
        end
    end
end)

--Slower Fuel Axe swings
AddStategraphPostInit("wilson_client", function(sg)
    local _attack = sg.states.attack
	local _onenter = _attack.onenter
	_attack.onenter = function(inst,...)
		_onenter(inst,...)
		local weapon = inst.components.inventory and inst.components.inventory:GetEquippedItem(GLOBAL.EQUIPSLOTS.HANDS)
        if weapon and weapon:HasTag("bigolaxe") then
			local speed = 0.8
					
			inst.sg:SetTimeout(inst.sg.timeout/speed)
			inst.AnimState:SetDeltaTimeMultiplier(speed)				
			for k, v in pairs(_attack.timeline) do
				v.time = v.time/speed
			end
		end
		return
	end
	local _onexit = _attack.onexit
	_attack.onexit = function(inst,...)
		local weapon = inst.components.inventory and inst.components.inventory:GetEquippedItem(GLOBAL.EQUIPSLOTS.HANDS)
        if weapon and weapon:HasTag("bigolaxe") then
			local speed = 0.8
			inst.AnimState:SetDeltaTimeMultiplier(1)			
			for k, v in pairs(_attack.timeline) do
				v.time = v.time*speed
			end		
		end
		return _onexit(inst,...)
	end

    local _chop = sg.states.chop_start
    local _choponenter = _chop.onenter
    _chop.onenter = function(inst, ...)
        _choponenter(inst, ...)
        local weapon = inst.components.inventory and inst.components.inventory:GetEquippedItem(GLOBAL.EQUIPSLOTS.HANDS)
        if weapon and weapon:HasTag("bigolaxe") then
            --inst.sg:SetTimeout(inst.sg.timeout * 2)
            inst.AnimState:SetDeltaTimeMultiplier(0.67)
            for k, v in pairs(_chop.timeline) do
				v.time = v.time / .6
			end
        end
    end
    _chop.onexit = function(inst,...)
        local weapon = inst.components.inventory and inst.components.inventory:GetEquippedItem(GLOBAL.EQUIPSLOTS.HANDS)
        if weapon and weapon:HasTag("bigolaxe") then
            inst.AnimState:SetDeltaTimeMultiplier(1)			
			for k, v in pairs(_chop.timeline) do
				v.time = v.time * .6
			end
        end
    end
end)

local function OnConstructRefurbish(inst, doer)
    for _, v in pairs(GLOBAL.CONSTRUCTION_PLANS[inst.prefab]) do 
        if inst.components.constructionsite:GetMaterialCount(v.type) < v.amount then
            return
        end
    end

    local child = inst.components.spawner.child
    inst.SoundEmitter:PlaySound("hookline_2/characters/hermit/house/stage2_place")
    local upgrade = GLOBAL.ReplacePrefab(inst, inst.prefab .. "_fuelrefurbished")
    if child then upgrade.components.childspawner:TakeOwnership(child) end
end

local function addrefurbishing(inst) 
    inst:AddTag("fuelupgradeable")
    inst:AddTag("constructionsite")
    if not mastersim() then
        --Construction Site does not have a way to set it so only entities with certain tags are capable of performing the action
        --Construction Site checks its replica to determine if the player can perform the action
        --The replica does not communicate to the server when it's updated
        --So what we can do is we keep the component activated on the Serverside, and then disable it through the client replica
        --And then update it based on who is looking at it
        --That way, only Fuel can actually access the component action!
        local _replicated = inst.OnEntityReplicated
        inst.OnEntityReplicated = function(inst)
            if _replicated then _replicated(inst) end
            inst.replica.constructionsite:SetEnabled(false)
        end
        return 
    end

    local con = inst:AddComponent("constructionsite")
    con:SetConstructionPrefab("construction_container")
    con:SetOnConstructedFn(OnConstructRefurbish)
    --con:Disable()
end

AddPrefabPostInit("pighouse", addrefurbishing)
AddPrefabPostInit("rabbithouse", addrefurbishing)