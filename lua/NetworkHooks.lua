NetworkHelper:AddReceiveHook("ShadowRaidReminderPM", "ShadowRaidReminderPMTrigger", function(data, sender)
    dofile(ShadowRaidReminder.ModPath .. "lua/SendChatMessage.lua")
    ShadowRaidReminderTriggerSendChatMessage()
end)