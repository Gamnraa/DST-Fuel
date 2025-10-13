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