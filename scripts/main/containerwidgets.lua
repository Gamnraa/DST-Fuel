local c = require("containers")
local Vector3 = GLOBAL.Vector3

local validturfs = {
    ["turf_grass"] = true,
    ["turf_forest"] = true,
    ["turf_savanna"] = true,
    ["turf_charred"] = true,
    ["turf_deciduous"] = true
}

for k, _ in pairs(validturfs) do
    AddPrefabPostInit(k, function(inst) inst:AddTag("charcoalburnerturf") end)
end

local charpile = {
    widget = 
    {
        slotpos = {
            Vector3(-72,0,0),
            Vector3(0,0,0),
            Vector3(72,0,0),
        },
        slotbg = {image = "inv_slot.tex"}, {image  = "inv_slot_log.tex"}, {image = "inv_slot_log.tex"},
        animbank = "ui_chest_3x1",
        animbuild = "ui_chest_3x1",
        pos = Vector3(200,0,0),
        side_align_tip = 100,
        buttoninfo = {
            text = GLOBAL.STRINGS.ACTIONS.COOK,
            position = Vector3(0, 64, 0)
        }
    },
    type = "cooker"
}
charpile.itemtestfn = function(container, item, slot)
    return (slot == nil and (item.prefab == "log" or validturfs[item.prefab]))
        or (slot == 1 and validturfs[item.prefab])
        or ((slot == 2 or slot == 3) and item.prefab == "log")
end

charpile.widget.buttoninfo.fn = function(inst, doer)
    print(inst.components.container)
    if inst.components.container then
        print("container")
        GLOBAL.BufferedAction(doer, inst, GLOBAL.ACTIONS.CHAR):Do()
    elseif inst.replica.container then
        print("Hello? Send my rpc?")
        GLOBAL.SendRPCToServer(GLOBAL.RPC.DoWidgetButtonAction, GLOBAL.ACTIONS.CHAR.code, inst, GLOBAL.ACTIONS.CHAR.mod_name)
    end
end

charpile.widget.buttoninfo.validfn = function(inst)
    return inst.replica.container:Has("log", 1) and inst.replica.container:HasItemWithTag("charcoalburnerturf", 1)
end
c.params.charpile = charpile