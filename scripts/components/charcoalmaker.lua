local temptickrate = 3
local ashtickrate = nil
local charcoaltickrate = nil

local mintemp = 150
local maxtemp = 300

--If we just call SetColourEnvelope, that'll affect the current smoke immediately
--Removing the prefab and spawning a new one does not
local function UpdateSmokeFx(self, name)
    if not self.inst.smoke then return end
    self.inst.smoke:Remove()
    self.inst.smoke = nil

    local ids = {}
    for _, player in pairs(AllPlayers) do
		table.insert(ids, player.userid)
	end
    self.inst.smoke = SpawnPrefab("charcoalsmoke" .. name)
    local follower = self.inst.smoke.entity:AddFollower()
    follower:FollowSymbol(self.inst.GUID, "object", 0, -350, 0 )
end

    

local CharcoalMaker = Class(function(self, inst)
    self.inst = inst
    self.tileslot = nil
    self.logslots = {}
    self.numcharcoalproduced = nil
    self.numlivingcoalproduced = nil
    self.numashproduced = nil
    self.logs = 0
    self.livinglogs = 0
    self.totallogs = 0
    self.timeleft = nil
    self.onharvest = nil
    self.startfn = nil
    self.finishfn = nil
    self.temperature = mintemp
    self.temptick = nil
    self.ashtick = nil
    self.charcoaltick = nil
end, nil, {})

function CharcoalMaker:UpdateSlots()
    for _, v in pairs(self.inst.components.container.slots) do
        if v.prefab == "log" or v.prefab == "livinglog" then
            table.insert(self.logslots, v)
        elseif v:HasTag("charcoalburnerturf") then
            self.tileslot = v
        end
    end
end

function CharcoalMaker:IsDone() return self.timeleft and self.timeleft <= 0 end

function CharcoalMaker:IsTooHot()
    if self.temperature > maxtemp - 45 then
        if not self.inst:HasTag("wantswater") then
            self.inst:AddTag("wantswater")
            UpdateSmokeFx(self, "c2")
        end
        return true
    elseif self.temperature < maxtemp - 130 then
        if self.inst:HasTag("wantswater") then
            self.inst:RemoveTag("wantswater")
            UpdateSmokeFx(self, "c1")
        end
    end
    return false
end

function CharcoalMaker:Start()
    self.temperature = mintemp
    if self.startfn then self.startfn(self.inst) end
    self:UpdateSlots()
    self.numcharcoalproduced = 0
    self.numlivingcoalproduced = 0
    self.numashproduced = 0
    local slot1 = self.logslots[1]
    local slot2 = self.logslots[2]
    self.logs = ((slot1 and slot1.prefab == "log") and slot1.components.stackable.stacksize or 0) + ((slot2 and slot2.prefab == "log") and slot2.components.stackable.stacksize or 0)
    self.livinglogs = ((slot1 and slot1.prefab == "livinglog") and slot1.components.stackable.stacksize or 0) + ((slot2 and slot2.prefab == "livinglog") and slot2.components.stackable.stacksize or 0)

    print(self.logs, self.livinglogs)

    if self.logs > 0 or self.livinglogs > 0 then 
        self.logs = math.floor(self.logs * 1.5)
        self.livinglogs = math.floor(self.livinglogs * 1.5)
        self.totallogs = self.logs + self.livinglogs
    end

    self.timeleft = (TUNING.CHARCOALPILE_CHAR_TIME or 8 * 1.67 * 60) + 1
    --self.timeleft = 20
    
    charcoaltickrate = self.timeleft / self.totallogs
    self.charcoaltick = charcoaltickrate
    ashtickrate = charcoaltickrate * 30
    self.ashtick = ashtickrate
    self.temptick = temptickrate

   
    self.inst:StartUpdatingComponent(self) 
    self.inst.components.container:Close()
    self.inst.components.container.canbeopened = false
end

function CharcoalMaker:Finish()
    self.inst:StopUpdatingComponent(self)
    if self.finishfn then self.finishfn(self.inst) end
    self.inst:AddTag("readytoharvest")
end


function CharcoalMaker:Harvest(doer)
    self.temperature = mintemp
    if self.onharvest then self.onharvest(self.inst) end
    if self.numcharcoalproduced and self.numashproduced then
       
        local tileproduct = SpawnPrefab(self.tileslot:HasTag("charred") and "ash" or "turf_grass")
        self.inst.components.container:DestroyContents()

        print(self.numcharcoalproduced, self.numlivingcoalproduced)

        for i = 1, self.numcharcoalproduced do
            local product = SpawnPrefab("charcoal")
            product:AddTag("purecharcoal")
            product.components.fuel.fuelvalue = TUNING.LARGE_FUEL  
            if doer and doer.components.inventory then
                doer.components.inventory:GiveItem(product, nil, self.inst:GetPosition())
            else
                LaunchAt(product, self.inst, nil, 1, 1)
            end
        end

        for i = 1, self.numlivingcoalproduced do
            local product = SpawnPrefab("fuelivingcoal")
            if doer and doer.components.inventory then
                doer.components.inventory:GiveItem(product, nil, self.inst:GetPosition())
            else
                LaunchAt(product, self.inst, 1.5, 10, 1)
            end
        end

        self.numcharcoalproduced = nil
        self.numlivingcoalproduced = nil
        
        for i = 1, self.numashproduced do
            local product = SpawnPrefab("ash") 
            if doer and doer.components.inventory then
                doer.components.inventory:GiveItem(product, nil, self.inst:GetPosition())
            else
                LaunchAt(product, self.inst, nil, 1, 1)
            end
        end
        self.numashproduced = nil
        
        --self.inst.components.lootdropper:FlingItem(tileproduct)

        if self.inst.components.container then
            self.inst.components.container.canbeopened = true
        end

        self.timeleft = nil
        self.logs = 0
        self.livinglogs = 0
        charcoaltickrate = nil
        self.charcoaltick = nil
        self.temptick = nil
        ashtickrate = nil
        self.ashtick = nil

        self.inst:RemoveTag("readytoharvest")

        return true
    end
end

function CharcoalMaker:OnSave()
    return {
        timeleft = self.timeleft,
        logs = self.logs,
        livinglogs = self.livinglogs,
        charcoaltickrate = charcoaltickrate,
        charcoaltick = self.charcoaltick,
        temptick = self.temptick,
        ashtickrate = ashtickrate,
        ashtick = self.ashtick,
        numcharcoalproduced = self.numcharcoalproduced,
        numlivingcoalproduced = self.numlivingcoalproduced,
        numashproduced = self.numashproduced,
        temperature = self.temperature
    }
end

function CharcoalMaker:OnLoad(data)
    self.inst:DoTaskInTime(0, function(inst) self:UpdateSlots() end)

    self.timeleft = data.timeleft
    self.logs = data.logs
    self.livinglogs = data.livinglogs
    charcoaltickrate = data.charcoaltickrate
    self.charcoaltick = data.charcoaltick
    self.temptick = data.temptick
    ashtickrate = data.ashtickrate
    self.ashtick = data.ashtick
    self.numcharcoalproduced = data.numcharcoalproduced
    self.numlivingcoalproduced = data.numlivingcoalproduced
    self.numashproduced = data.numashproduced
    self.temperature = data.temperature or mintemp

    --print(charcoaltick, charcoaltickrate, temptick, ashtick, ashtickrate, data.charcoaltick)

    if self.timeleft then 
        self.inst:DoTaskInTime(0, function(inst) inst:StartUpdatingComponent(self) end) 
        self.inst.components.container:Close()
        self.inst.components.container.canbeopened = false
        self.inst.smoke = SpawnPrefab("charcoalsmokec1")
        UpdateSmokeFx(self, self:IsTooHot() and "c2" or "c1")
    end
end

function CharcoalMaker:OnUpdate(dt)
    self.timeleft = self.timeleft - dt - (self.inst.components.moisture:GetMoisturePercent() >= .38 and FRAMES * 1.1 or 0)
    if self:IsDone() then
        self.numcharcoalproduced = self.numcharcoalproduced + self.logs
        local item = self.inst.components.container:RemoveItem(self.inst.components.container:FindItem(function(inst) return inst.prefab == "log" end, true))
        if item then item:Remove() end
        self:UpdateSlots()
        self:Finish()
        local ids = {}
        for _, player in pairs(AllPlayers) do
            table.insert(ids, player.userid)
        end
        UpdateSmokeFx(self, "c3")
    end

    if dt < self.charcoaltick then
        self.charcoaltick = self.charcoaltick - dt
    else
        if self.logs > 0 then
            self.numcharcoalproduced = self.numcharcoalproduced + 1
            self.logs = math.max(0, self.logs - 1)
            for _, v in pairs(self.logslots) do
                if v.prefab == "log" then
                    v.components.stackable:SetStackSize(v.components.stackable.stacksize - 1)
                end
            end
        elseif self.livinglogs > 0 then
            self.numlivingcoalproduced = self.numlivingcoalproduced + 1
            self.livinglogs = math.max(0, self.livinglogs - 1)
            for _, v in pairs(self.logslots) do
                if v.prefab == "livinglog" then
                    v.components.stackable:SetStackSize(v.components.stackable.stacksize - 1)
                end
            end
        end
        self.charcoaltick = charcoaltickrate
    end

    if dt < self.ashtick then
        self.ashtick = self.ashtick - dt - (self:IsTooHot() and 1 or 0)
    else
        self.numashproduced =  self.numashproduced + 1
        if self.logs > 0 then
            self.numcharcoalproduced =  math.max(1, self.numcharcoalproduced - 1)
        else
            self.numlivingcoalproduced = math.max(1, self.numlivingcoalproduced - 1)
        end
        self.ashtick = ashtickrate
    end

    if dt < self.temptick then
        self.temptick = self.temptick - dt
    else
        self.temperature = math.clamp(self.temperature + 1, mintemp, maxtemp)
        self.inst.components.moisture:DoDelta(-2)
        self.temptick = temptickrate
        --print(self.inst.GUID, "temperature rising to " .. self.temperature, self:IsTooHot())
    end
end

return CharcoalMaker