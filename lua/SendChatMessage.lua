function ShadowRaidReminderSendChatMessage(time, showtime, color)
    randomnumber = math.random(0,2000000) -- Cheap hack to get all the messages to show up without canceling previous ones. It just makes each message call have a unique id.
    DelayedCalls:Add("ShadowRaidReminderSendChatMessage" .. randomnumber, time, function()
        managers.chat:_receive_message(1, "[Shadow Raid Reminder]", "Heli spawn in ".. showtime .." seconds.", color)
    end)
end

function ShadowRaidReminderTriggerSendChatMessage()
    local is_host = NetworkHelper:IsHost()

    -- Thought i would explain the structure of these, The first number is the time to send the message in. 0 would be instant, 60 would be in a minutes time.
    -- The second number is for the time to show in the message itself. The last option is the color of the message text.
    ShadowRaidReminderSendChatMessage(240, 60, Color.green)
    ShadowRaidReminderSendChatMessage(255, 45, Color.yellow)
    ShadowRaidReminderSendChatMessage(270, 30, Color.yellow)
    ShadowRaidReminderSendChatMessage(285, 15, Color.red)

    if is_host then
        NetworkHelper:SendToPeers("ShadowRaidReminderPM", "ShadowRaidReminderPMTrigger")
    end
end