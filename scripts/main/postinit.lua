local dohealingtask = function(inst, _dodelta)
    local health = inst.components.health
    if inst.slowhealtask then self.inst.slowhealtask:Cancel() end
    inst.slowhealtask = self.inst:DoPeriodicTask(self.inst.healtickrate, function(inst) 
        _dodelta(inst.components.health, 
            (health.currenthealth > inst.expectedhealth and -1) or 
            (health.currenthealth < inst.expectedhealth and 1) or 0)
        print("tick",inst.expectedhealth)
        if health.currenthealth == inst.expectedhealth then
            inst.slowhealtask:Cancel()
        end    
    end) 
end

AddComponentPostInit("health", function(self)
    local _dodelta = self.DoDelta
    self.DoDelta = function(self, amount, overtime, cause, ignore_invincible, afflicter, ignore_absorb, ...)
        if self.inst:HasTag("slowhealer") and amount ~= 0 and self.redirect == nil and cause ~= "cold" and cause ~= "hunger" then
            if math.random(100) + 5 < amount then
                --Take away maxhealth
                self:DeltaPenalty((-amount * .25) / self.maxhealth)
                self.inst.expectedhealth = (self.inst.expectedhealth or self.currenthealth) + (amount * .25)
                dohealingtask(self.inst, _dodelta)
            else
                --This should work in both directions simultaneously
                self.inst.expectedhealth = (self.inst.expectedhealth or self.currenthealth) + amount
                print("init",self.inst.expectedhealth)
                dohealingtask(self.inst, _dodelta)
                amount = amount * .25
            end
        end
        _dodelta(self, amount, overtime, cause, ignore_invincible, afflicter, ignore_absorb, ...)
    end
end)