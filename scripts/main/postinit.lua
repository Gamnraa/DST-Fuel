local function mastersim() return GLOBAL.TheWorld.ismastersim end 
local ACTIONS = GLOBAL.ACTIONS

local dohealingtask = function(inst, _dodelta)
    local health = inst.components.health
    if inst.slowhealtask then inst.slowhealtask:Cancel() end
    inst.slowhealtask = inst:DoPeriodicTask(inst.healtickrate, function(inst) 
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
    inst.AnimState:PlayAnimation("stump_log")
    inst.AnimState:OverrideSymbol("log", "evergreen_gramfuel", "log")
end

local function OnTakeLog(inst, taker, loot)
    inst.components.trader:Enable()
    inst:RemoveTag("haslog")

    --Set art
    inst.AnimState:PlayAnimation("stump_tall")
end

AddClientModRPCHandler("fuellogsplitter", "fuelsplitlog", function(inst) print(inst) inst:AddTag("split") end)

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
    local ids = {}
	for _, player in pairs(GLOBAL.AllPlayers) do
		table.insert(ids, player.userid)
	end

    inst:DoTaskInTime(GLOBAL.FRAMES, function() 
        SendModRPCToClient(GetClientModRPC("fuellogsplitter", "fuelsplitlog"), ids, log1)
        SendModRPCToClient(GetClientModRPC("fuellogsplitter", "fuelsplitlog"), ids, log2)
    end)
    OnTakeLog(inst)
end

local function MakeLogHolder(inst)
     if inst and inst:HasTag("stump") and ((inst.prefab == "evergreen" or inst.prefab == "evergreen_sparse") and inst.components.growable and inst.components.growable.stage == 3) then
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

AddPrefabPostInit("evergreen_sparse", function(inst)
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
    inst.OnLoad = function(inst, data) 
        inst.skinname = data and data.skinname

        local ids = {}
	    for _, player in pairs(GLOBAL.AllPlayers) do
		    table.insert(ids, player.userid)
	    end 

        inst:DoTaskInTime(GLOBAL.FRAMES, function() 
            SendModRPCToClient(GetClientModRPC("fuellogsplitter", "fuelsplitlog"), ids, inst)
        end)
        if inst.skinname then inst:AddTag("split") end 
    end
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

AddGlobalClassPostConstruct("components/stackable_replica", "Stackable", function(self)
    local _canstackwith = self.CanStackWith
    function self:CanStackWith(item, ...)
        if item.prefab == "log" and self.inst.prefab == item.prefab then
            return self.inst:HasTag("split") == item:HasTag("split")
        else
            return _canstackwith(self, item, ...)
        end
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
			local speed = inst:HasTag("GramFuel") and 0.85 or 0.75
					
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
			local speed = inst:HasTag("GramFuel") and 0.85 or 0.75
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
            local speed = inst:HasTag("GramFuel") and 0.75 or 0.5
            inst.AnimState:SetDeltaTimeMultiplier(speed)
            for k, v in pairs(_chop.timeline) do
				v.time = v.time / speed
			end
        end
    end
    _chop.onexit = function(inst,...)
        local weapon = inst.components.inventory and inst.components.inventory:GetEquippedItem(GLOBAL.EQUIPSLOTS.HANDS)
        if weapon and weapon:HasTag("bigolaxe") then
            local speed = inst:HasTag("GramFuel") and 0.75 or 0.5
            inst.AnimState:SetDeltaTimeMultiplier(1)			
			for k, v in pairs(_chop.timeline) do
				v.time = v.time * speed
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
        local x,y,z = inst.Transform:GetWorldPosition()
        local ents = GLOBAL.TheSim:FindEntities(x,y,z, 12, nil, {"INLIMBO", "playerghost"}, {"livingspear", "player"})
        local isspear = false 
        for _, v in pairs(ents) do
            if v:HasTag("livingspear") then
                v.components.fueled:DoDelta(-0.15)
                isspear = true
            else 
                local handitem = v.components.inventory:GetEquippedItem(GLOBAL.EQUIPSLOTS.HANDS)
                if handitem and handitem:HasTag("livingspear") then
                    handitem.components.fueled:DoDelta(-0.15)
                    isspear = true
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


local oldRegisterPrefabsImpl = GLOBAL.RegisterPrefabsImpl
GLOBAL.RegisterPrefabsImpl = function(prefab, ...)
	if prefab.name == "evergreen" or prefab.name == "evergreen_sparse" then
		table.insert(prefab.assets, Asset("ANIM", "anim/evergreen_gramfuel.zip"))
	end
	oldRegisterPrefabsImpl(prefab, ...)
end


local function cancelaction_rpc(inst, target)
    inst.sg:GoToState("idle")
    inst:ClearBufferedAction()
    inst:DoTaskInTime(.1, function() print(inst.sg) end)
    local weapon = inst.replica.combat:GetWeapon()
    local act = GLOBAL.BufferedAction(inst, target, GLOBAL.ACTIONS.SPLIT, weapon, inst:GetPosition())
    act.instant = true
    print(act, act.doer:IsValid(), act.target:IsValid(), act.invobject:IsValid(), act.doer.components.playercontroller:IsBusy())
    --inst:DoTaskInTime(0, function() inst.components.playercontroller:DoAction(act) end)
    inst.components.playercontroller:DoAction(act)
    print(inst.sg, inst:GetBufferedAction())
end
AddModRPCHandler("GramCancelAction", "GramCancelAction", cancelaction_rpc)



    GLOBAL.TheInput:AddKeyUpHandler(GLOBAL.KEY_SPACE, function()
        if not GLOBAL.IsPaused() then
            local player = GLOBAL.ThePlayer
            if not player:HasTag("gramfuel") then return end

            local weapon = player.replica.combat:GetWeapon()
            print(weapon)
            if not weapon then return end
            if not weapon:HasTag("CHOP_tool") then return end

            local stump = GLOBAL.FindEntity(player, 2, function(target) return target:HasTag("haslog") end)
            print(stump)
            if stump then
                --b:Cancel()
                print(player:GetBufferedAction())
                if player:GetBufferedAction() and player:GetBufferedAction().action ~= GLOBAL.ACTIONS.SPLIT then
                    print("cancel", player:GetBufferedAction().action, GLOBAL.ACTIONS.SPLIT, GLOBAL.ACTIONS.PICK)
                    player.sg:GoToState("idle")
                    player:ClearBufferedAction()
                    if not mastersim() then
                        GLOBAL.SendModRPCToServer(GLOBAL.GetModRPC("GramCancelAction", "GramCancelAction"), stump)
                    end
                    
                else
                    return
                end
                --player:DoTaskInTime(0, function()
                    local x,y,z = player.Transform:GetWorldPosition()
                    local pc = player.components.playercontroller
                    local act = GLOBAL.BufferedAction(player, stump, GLOBAL.ACTIONS.SPLIT, weapon, player:GetPosition())
                    act.instant = true

                    if not mastersim() then
                        if not player.components.playercontroller.locomotor then
                            if act.action.pre_action_cb then
                                act.action.pre_action_cb(act)
                            end
                            GLOBAL.SendRPCToServer(GLOBAL.RPC.ActionButton, act.action.code, stump, player.Transform:GetRotation(), nil, act.action.canforce, true, act.action.mod_name)
                        elseif player.components.playercontroller:CanLocomote() then
                            act.preview_cb = function()
                                player.components.playercontroller.remote_controls[GLOBAL.CONTROL_ACTION] = 0
                                local isreleased = not GLOBAL.TheInput:IsControlPressed(GLOBAL.CONTROL_ACTION)
                                GLOBAL.SendRPCToServer(GLOBAL.RPC.ActionButton, act.action.code, stump, player.Transform:GetRotation(), isreleased, nil, true, act.action.mod_name)
                            end
                        end
                    end
                    print(mastersim(), "doaction")
                    player.components.playercontroller:DoAction(act)
                --end)
            end
        end
    end)
