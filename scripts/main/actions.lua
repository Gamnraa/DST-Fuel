local ACTIONS = GLOBAL.ACTIONS
local ActionHandler = GLOBAL.ActionHandler

local split = AddAction("SPLIT", "Split Log", function(act)
    if act.doer and act.target and act.invobject then
        act.target:PushEvent("splitlog")
        act.invobject.components.finiteuses:Use(1)
        return true
    end
    return false
end)

split.invalid_hold_action = true

AddComponentAction("EQUIPPED", "tool", function(inst, doer, target, actions, right)
    if not target:HasTag("INLIMBO") and not (inst.replica.equippable ~= nil and inst.replica.equippable:IsRestricted(doer)) then
        if inst:HasTag("CHOP_tool") and doer:HasTag("GramFuel") and target:HasTag("haslog") then
            table.insert(actions, ACTIONS.SPLIT)
        end
    end
end)

AddStategraphActionHandler("wilson", ActionHandler(ACTIONS.SPLIT, "hammer_start"))
AddStategraphActionHandler("wilson_client", ActionHandler(ACTIONS.SPLIT, "hammer_start"))

local char = AddAction("CHAR", "Char Logs", function(act)
    print("char action")
    if act.doer and act.target then
        act.target.components.charcoalmaker:Start()
        return true
    end
    return false
end)


AddComponentAction("SCENE", "charcoalmaker", function(inst, doer, actions, right)
    if not (doer.replica.rider and doer.replica.rider:IsRiding()) then
        if inst:HasTag("readytoharvest") then
            table.insert(actions, ACTIONS.HARVESTCHAR)
        elseif right and (inst:HasTag("ready") and doer:HasTag("GramFuel")) then
            table.insert(actions, ACTIONS.CHAR)
        end
    end
end)

AddStategraphActionHandler("wilson", ActionHandler(ACTIONS.CHAR, "give"))
AddStategraphActionHandler("wilson_client", ActionHandler(ACTIONS.CHAR, "give"))

local harverstch = AddAction("HARVESTCHAR", "Harvest", function(act)
    if act.doer and act.target then
        act.target.components.charcoalmaker:Harvest(act.doer)
        return true
    end
    return false
end)

AddStategraphActionHandler("wilson", ActionHandler(ACTIONS.HARVESTCHAR, "dolongaction"))
AddStategraphActionHandler("wilson_client", ActionHandler(ACTIONS.HARVESTCHAR, "dolongaction"))


AddComponentAction("EQUIPPED",  "wateryprotection", function(inst, doer, target, actions, right)
    if right and target:HasTag("wantswater") then
        table.insert(actions, ACTIONS.WATERCHAR)
    end
end)

local waterch = AddAction("WATERCHAR", "Cool Down", function(act)
    if act.invobject and act.invobject:IsValid() then
        if act.invobject.components.finiteuses then
            act.invobject.components.finiteuses:Use(1)
            if act.invobject.components.finiteuses:GetUses() <= 0 then
			    return false, (act.invobject:HasTag("wateringcan") and "OUT_OF_WATER" or nil)
            end
        end
        
        if act.target and act.target:IsValid() then
            act.target.components.moisture:DoDelta(50)
            act.target.components.charcoalmaker.temperature = act.target.components.charcoalmaker.temperature - 10
            if not act.target:HasTag("wantswater") then
                --
            end
            return true
        end
    end
end)
AddStategraphActionHandler("wilson", ActionHandler(ACTIONS.WATERCHAR, "pour"))
AddStategraphActionHandler("wilson_client", ActionHandler(ACTIONS.WATERCHAR, "pour"))