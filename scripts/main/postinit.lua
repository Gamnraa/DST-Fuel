local function mastersim() return GLOBAL.TheWorld.ismastersim end 
local ACTIONS = GLOBAL.ACTIONS

local dohealingtask = function(inst, _dodelta)
    local health = inst.components.health
    if inst.slowhealtask then inst.slowhealtask:Cancel() end
    inst.slowhealtask = inst:DoPeriodicTask(inst.healtickrate, function(inst) 
        health.currenthealth = math.floor(health.currenthealth)
        _dodelta(inst.components.health, 
            (health.currenthealth > inst.expectedhealth and -1) or 
            (health.currenthealth < inst.expectedhealth and 1) or 0)
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
                self.inst.components.talker:Say(GLOBAL.GetString(self.inst, "ANNOUNCE_CRITICAL_INJURY"))
                self:DeltaPenalty((-amount * .5) / self.maxhealth)
                if self.inst.slowhealtask then
                    self.inst.slowhealtask:Cancel()
                end
                --self.inst.expectedhealth = math.floor(math.max(0, (self.inst.expectedhealth or self.currenthealth) + (amount * .5)))
                --dohealingtask(self.inst, _dodelta)
                amount = amount * .5
            else
                --This should work in both directions simultaneously
                self.inst.expectedhealth = math.min(math.floor(math.max(0, (self.inst.expectedhealth or self.currenthealth) + amount)), self:GetMaxWithPenalty())
                --if self.inst.expectedhealth > self:GetMaxWithPenalty() then self.inst.expectedhealth = self:GetMaxWithPenalty() end
                print("init",self.inst.expectedhealth, self:GetMaxWithPenalty())
                dohealingtask(self.inst, _dodelta)
                amount = (amount > 0 and 0) or (amount * .15)
            end
        end
        _dodelta(self, amount, overtime, cause, ignore_invincible, afflicter, ignore_absorb, ...)
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
            inst.bigaxechop = true
            local speed = inst:HasTag("GramFuel") and 0.85 or 0.75
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
        if inst.bigaxechop then
			local speed = inst:HasTag("GramFuel") and 0.85 or 0.75

			inst.AnimState:SetDeltaTimeMultiplier(1)			
			for k, v in pairs(_attack.timeline) do
				v.time = v.time*speed
			end
            inst.bigaxechop = false
		end
		return _onexit(inst,...)
	end

    local _chops = sg.states.chop_start
	local _chopsonenter = _chops.onenter
	_chops.onenter = function(inst,...)
        _chopsonenter(inst,...)
        local weapon = inst.components.inventory and inst.components.inventory:GetEquippedItem(GLOBAL.EQUIPSLOTS.HANDS)
        if weapon and weapon:HasTag("bigolaxe") then
            inst.bigaxechop = true
            local speed = inst:HasTag("GramFuel") and 0.75 or 0.5
            --inst.sg:SetTimeout(inst.sg.timeout/speed) --override timeout
            inst.AnimState:SetDeltaTimeMultiplier(speed) -- time multiplier
            for k, v in pairs(_chops.timeline) do --override timeline
                v.time = v.time/speed
            end
        end
    end
    local _chopsexit = _chops.onexit
    _chops.onexit = function(inst,...)
        _chopsexit(inst,...)
        if inst.bigaxechop then
            local speed = inst:HasTag("GramFuel") and 0.75 or 0.5
            inst.AnimState:SetDeltaTimeMultiplier(1)			
			for k, v in pairs(_chops.timeline) do
				v.time = v.time * speed
			end
            inst.bigaxechop = false
        end
    end
    local _choponexit = sg.states.chop.onexit
	sg.states.chop.onexit = function(inst,...)
        local weapon = inst.components.inventory and inst.components.inventory:GetEquippedItem(GLOBAL.EQUIPSLOTS.HANDS)
        if inst.bigaxechop then
            inst:RemoveTag("fuelchop")
            local speed = inst:HasTag("GramFuel") and 0.75 or 0.5
			inst.AnimState:SetDeltaTimeMultiplier(1)			
			for k, v in pairs(sg.states.chop.timeline) do
				v.time = v.time*speed
			end
            inst.bigaxechop = false
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
                local speed = inst:HasTag("GramFuel") and 0.75 or 0.5
                inst.AnimState:SetDeltaTimeMultiplier(speed)
                for k, v in pairs(_chop.timeline) do
                    v.time = v.time/speed
                end
            end
            inst:AddTag("fuelchop")
            inst.bigaxechop = true
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
			local speed = inst:HasTag("GramFuel") and 0.85 or 0.75
            inst.bigaxechop = true
					
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
        if inst.bigaxechop then
			local speed = inst:HasTag("GramFuel") and 0.85 or 0.75
			inst.AnimState:SetDeltaTimeMultiplier(1)			
			for k, v in pairs(_attack.timeline) do
				v.time = v.time*speed
			end	
            inst.bigaxechop = false	
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
            inst.bigaxechop = true
            local speed = inst:HasTag("GramFuel") and 0.75 or 0.5
            inst.AnimState:SetDeltaTimeMultiplier(speed)
            for k, v in pairs(_chop.timeline) do
				v.time = v.time / speed
			end
        end
    end
    _chop.onexit = function(inst,...)
        local weapon = inst.components.inventory and inst.components.inventory:GetEquippedItem(GLOBAL.EQUIPSLOTS.HANDS)
        if inst.bigaxechop then
            local speed = inst:HasTag("GramFuel") and 0.75 or 0.5
            inst.AnimState:SetDeltaTimeMultiplier(1)			
			for k, v in pairs(_chop.timeline) do
				v.time = v.time * speed
			end
            inst.bigaxechop = false
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
        --Construction Site does not have a way to set it so only entities with certain tags are capable of performing the construction for its attached entity
        --Construction Site checks its replica to determine if the player can perform the action
        --The replica does not communicate to the server when it's updated
        --So what we can do is we keep the component activated on the Serverside, and then disable it through the client's replica
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

AddComponentPostInit("burnable", function(self)
    --if not mastersim() then return end
    self.inst.fuelspearcheck = self.inst:DoPeriodicTask(1, function(inst)
        if self.inst:HasTag("livingspear") then return end
        if not self:IsBurning() then return end
        print(self.inst, self.inst:HasTag("fire"))
        local x,y,z = inst.Transform:GetWorldPosition()
        local ents = GLOBAL.TheSim:FindEntities(x,y,z, TUNING.LIVINGSPEAR_RANGE, nil, {"INLIMBO", "playerghost"}, {"livingspear", "player"})
        local isspear = false 
        for _, v in pairs(ents) do
            if v:HasTag("livingspear") then
                v.components.fueled:DoDelta(-0.11)
                isspear = true
                if not v.glow then
                    v.glow = GLOBAL.SpawnPrefab("heatrock_glow")
                    local follower = v.glow.entity:AddFollower()
                    follower:FollowSymbol( v.GUID, "swap_object_ground", 120, 90, 0 )
                end 
            else 
                local handitem = v.components.inventory:GetEquippedItem(GLOBAL.EQUIPSLOTS.HANDS)
                if handitem and handitem:HasTag("livingspear") then
                    handitem.components.fueled:DoDelta(-0.11)
                    isspear = true
                    if not handitem.glow then
                        handitem.glow = GLOBAL.SpawnPrefab("heatrock_glow")
                        local follower = handitem.glow.entity:AddFollower()
                        follower:FollowSymbol( v.GUID, "swap_object", 20, -160, 0 )
                    end 
                end
            end
        end
        if isspear then 
            self:ExtendBurning()
            if self.inst.components.fueled then self.inst.components.fueled:StopConsuming() end
        elseif self.inst.components.fueled then self.inst.components.fueled:StartConsuming()
        end
    end)
end)

AddPrefabPostInit("charcoal", function(inst)
    --inst:AddTag("purecharcoal")
    if not mastersim() then return end
    local _save = inst.OnSave
    inst.OnSave = function(inst, data)
        print("save", inst, inst:HasTag("purecharcoal"))
        data.bettercharcoal = inst:HasTag("purecharcoal")
        if _save then _save(inst, data) end
    end

    local _load = inst.OnLoad
    inst.OnLoad = function(inst, data)
        --print(inst, data)
        if data and data.bettercharcoal then
            print(inst, "made by Fuel")
            inst:AddTag("purecharcoal")
            inst.components.fuel.fuelvalue = TUNING.LARGE_FUEL  
        end
        if _load then _load(inst, data) end
    end
end)


local oldRegisterPrefabsImpl = GLOBAL.RegisterPrefabsImpl
GLOBAL.RegisterPrefabsImpl = function(prefab, ...)
	if prefab.name == "evergreen" or prefab.name == "evergreen_sparse" then
		table.insert(prefab.assets, Asset("ANIM", "anim/evergreen_gramfuel.zip"))
	end
	oldRegisterPrefabsImpl(prefab, ...)
end
