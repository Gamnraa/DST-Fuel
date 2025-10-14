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