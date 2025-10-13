AddComponentPostInit("health", function(self)
    local _dodelta = self.DoDelta
    self.DoDelta = function(self, amount, overtime, cause, ignore_invincible, afflicter, ignore_absorb, ...)
        if self.inst:HasTag("slowhealer") and amount ~= 0 then
            if math.random(100) < amount then
                --Take away maxhealth
            else
                --This should work in both directions simultaneously
                local timer = self.inst.components.timer
                local time = timer:TimerExists("fuelslowheal") and timer:GetTimeLeft("fuelslowheal") or 0  
                timer:StopTimer("fuelslowheal")
                print((amount *.75 + time))
                timer:StartTimer("fuelslowheal", math.abs(amount * .75) + time)
                if self.inst.slowhealtask then self.inst.slowhealtask:Cancel() end
                self.inst.slowhealtask = self.inst:DoPeriodicTask(1, function(inst) _dodelta(inst.components.health, amount > 0 and 1 or -1) end) 
                amount = amount * .25
            end
        end
        _dodelta(self, amount, overtime, cause, ignore_invincible, afflicter, ignore_absorb, ...)
    end
end)