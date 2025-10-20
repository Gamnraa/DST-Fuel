local temptickrate = 3
local ashtickrate = nil
local charcoaltickrate = nil

local temptick = nil
local ashtick = nil
local charcoaltick = nil

local mintemp = 150
local maxtemp = 300

local CharcoalMaker = Class(function(self, inst)
    self.inst = inst
    self.tileslot = inst.components.container.slots[1]
    self.logslots = {inst.components.container.slots[2], inst.components.container.slots[3]}
    self.numproductproduced = nil
    self.numashproduced = nil
    self.logs = 0
    self.timeleft = nil
    self.onharvest = nil
    self.startfn = nil
    self.finishfn = nil
    self.temperature = mintemp
end, nil, {})

function CharcoalMaker:UpdateSlots()
    self.tileslot = self.inst.components.container.slots[1]
    self.logslots = {self.inst.components.container.slots[2], self.inst.components.container.slots[3]}
end

function CharcoalMaker:IsDone() return self.timeleft and self.timeleft <= 0 end

function CharcoalMaker:IsTooHot()
    if self.temperature > maxtemp - 45 then
        self.inst:AddTag("wantswater")
        return true
    elseif self.temperature < maxtemp - 100 then 
        self.inst:RemoveTag("wantswater")
    end
    return false
end

function CharcoalMaker:Start()
    if self.startfn then self.startfn(self.inst) end
    self:UpdateSlots()
    self.numproductproduced = 0
    self.numashproduced = 0
    self.logs = (self.logslots[1] and self.logslots[1].components.stackable.stacksize or 0) + (self.logslots[2] and self.logslots[2].components.stackable.stacksize or 0)
    if self.logs > 0 then self.logs = math.ceil(self.logs * 1.5) end
    self.timeleft = TUNING.CHARCOALPILE_CHAR_TIME or 8 * 2 * 60
    charcoaltickrate = self.timeleft / self.logs
    charcoaltick = charcoaltickrate
    ashtickrate = charcoaltickrate * 30
    ashtick = ashtickrate
    temptick = temptickrate

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
    if self.onharvest then self.onharvest(self.inst) end
    if self.numproductproduced and self.numashproduced then
       
        local tileproduct = SpawnPrefab(self.tileslot:HasTag("charred") and "ash" or "turf_grass")
        local item self.inst.components.container:RemoveItemBySlot(1)
        if item and item:IsValid() then item:Remove() end

        for i = 1, self.numproductproduced do
            local product = SpawnPrefab("charcoal") 
            if doer and doer.components.inventory then
                doer.components.inventory:GiveItem(product, nil, self.inst:GetPosition())
            else
                LaunchAt(product, self.inst, nil, 1, 1)
            end
        end
        self.numproductproduced = nil

        for i = 1, self.numashproduced do
            local product = SpawnPrefab("ash") 
            if doer and doer.components.inventory then
                doer.components.inventory:GiveItem(product, nil, self.inst:GetPosition())
            else
                LaunchAt(product, self.inst, nil, 1, 1)
            end
        end
        self.numashproduced = nil
        
        self.inst.components.lootdropper:FlingItem(tileproduct)

        if self.inst.components.container then
            self.inst.components.container.canbeopened = true
        end

        self.timeleft = nil
        self.logs = 0
        charcoaltickrate = nil
        charcoaltick = nil
        temptick = nil
        ashtickrate = nil
        ashtick = nil

        self.inst:RemoveTag("readytoharvest")

        return true
    end
end

function CharcoalMaker:OnSave()
    return {
        timeleft = self.timeleft,
        logs = self.logs,
        charcoaltickrate = self.charcoaltickrate,
        charcoaltick = self.charcoaltick,
        temptick = self.temptick,
        ashtickrate = self.ashtickrate,
        ashtick = self.ashtick,
        numproductproduced = self.numproductproduced,
        numashproduced = self.numashproduced,
    }
end

function CharcoalMaker:OnLoad(data)
    self.inst:DoTaskInTime(0, function(inst) self:UpdateSlots() end)

    self.timeleft = data.timeleft
    self.logs = data.logs
    self.charcoaltickrate = data.charcoaltickrate
    self.charcoaltick = data.charcoaltick
    self.temptick = data.temptick
    self.ashtickrate = data.ashtickrate
    self.ashtick = data.ashtick
    self.numproductproduced = data.numproductproduced
    self.numashproduced = data.numashproduced

    if self.timeleft then 
        self.inst:StartUpdatingComponent(self) 
        self.inst.components.container:Close()
        self.inst.components.container.canbeopened = false
    end
end

function CharcoalMaker:OnUpdate(dt)
    self.timeleft = self.timeleft - dt - (self.inst.components.moisture:GetMoisturePercent() >= .65 and 1 or 0)
    if self:IsDone() then
        self.numproductproduced = self.numproductproduced + self.logs
        local item = self.inst.components.container:RemoveItem("log", true)
        if item and item:IsValid() then item:Remove() end
        self:UpdateSlots()
        self:Finish()
        return
    end

    if dt < charcoaltick then
        charcoaltick = charcoaltick - dt
    else
        self.numproductproduced = self.numproductproduced + 1
        self.logs = self.logs - 1
        if self.logslots[1] or self.logslots[2] then
            local item = self.inst.components.container:RemoveItem("log", false)
            if item and item:IsValid() then item:Remove() end
            self:UpdateSlots()
        end
        charcoaltick = charcoaltickrate
    end

    if dt < ashtick then
        ashtick = ashtick - dt - (self:IsTooHot() and 1 or 0)
    else
        self.numashproduced =  self.numashproduced + 1
        self.numproductproduced =  math.max(1, self.numproductproduced - 1)
        ashtick = ashtickrate
    end

    if dt < temptick then
        temptick = temptick - dt
    else
        self.temperature = math.clamp(self.temperature + 1, mintemp, maxtemp)
        temptick = temptickrate
    end
end

return CharcoalMaker