AddComponentPostInit("health", function(self)
    local _dodelta = self.DoDelta
    self.DoDelta = function(self, amount, overtime, cause, ignore_invincible, afflicter, ignore_absorb, ...)
        if self.inst:HasTag("slowhealer") and amount ~= 0 and self.redirect == nil and cause ~= "cold" and cause ~= "hunger" then
            if math.random(100) < amount then
                --Take away maxhealth
            else
                --This should work in both directions simultaneously
                self.inst.expectedhealth = (self.inst.expectedhealth or self.currenthealth) + amount
                print("init",self.inst.expectedhealth)
                local timer = self.inst.components.timer
                local time = timer:TimerExists("fuelslowheal") and timer:GetTimeLeft("fuelslowheal") or 0  
                timer:StopTimer("fuelslowheal")
                timer:StartTimer("fuelslowheal", math.abs(amount * .75) + time)
                if self.inst.slowhealtask then self.inst.slowhealtask:Cancel() end
                self.inst.slowhealtask = self.inst:DoPeriodicTask(self.inst.healtickrate, function(inst) 
                    _dodelta(inst.components.health, 
                        (self.currenthealth > self.inst.expectedhealth and -1) or 
                        (self.currenthealth < self.inst.expectedhealth and 1) or 0)
                    print("tick",self.inst.expectedhealth)
                    if self.currenthealth == self.inst.expectedhealth then
                        timer:StopTimer("fuelslowheal")
                        self.inst.slowhealtask:Cancel()
                    end    
                end) 
                amount = amount * .25
            end
        end
        _dodelta(self, amount, overtime, cause, ignore_invincible, afflicter, ignore_absorb, ...)
    end
end)