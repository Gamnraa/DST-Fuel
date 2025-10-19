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

function CharcoalMaker:IsTooHot() return self.temperature > maxtemp - 40 end

function CharcoalMaker:Start()
    if self.startfn then self.startfn(self.inst) end
    self:UpdateSlots()
    self.numproductproduced = 0
    self.numashproduced = 0
    self.logs = (self.logslots[1] and self.logslots[1].components.stackable.stacksize or 0) + (self.logslots[2] and self.logslots[2].components.stackable.stacksize or 0)
    if self.logs > 0 then self.logs = math.ceil(self.logs * 1.5) end
    self.timeleft = TUNING.CHARCOALPILE_CHAR_TIME or 480
    charcoaltickrate = self.timeleft / self.logs
    charcoaltick = charcoaltickrate
    ashtickrate = charcoaltickrate * 10
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
        self.inst.components.container:RemoveItem(self.tileslot.prefab, false)

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

function CharcoalMaker:OnUpdate(dt)
    self.timeleft = self.timeleft - dt - (self.inst.components.moisture:GetMoisturePercent() >= .65 and 1 or 0)
    if self:IsDone() then
        self.numproductproduced = self.numproductproduced + self.logs
        self.inst.components.container:RemoveItem("log", true)
        self:UpdateSlots()
        self:Finish()
        return
    end

    print("temp", self.temperature, ashtick)

    if dt < charcoaltick then
        charcoaltick = charcoaltick - dt
    else
        self.numproductproduced = self.numproductproduced + 1
        self.logs = self.logs - 1
        if self.logslots[1] or self.logslots[2] then
            self.inst.components.container:RemoveItem("log", false)
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