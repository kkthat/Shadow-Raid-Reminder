Hooks:PostHook(ElementAreaTrigger, "on_executed", "TrackSpecificAreaTrigger", function(self, ...)
    dofile(ShadowRaidReminder.ModPath .. "lua/SendChatMessage.lua")

    if ShadowRaidReminder.should_listen then
        if not ShadowRaidReminder.already_triggered then
            if self._id == 100900 then -- Roof Trigger.
                ShadowRaidReminder.already_triggered = true
                ShadowRaidReminderTriggerSendChatMessage()
            elseif self._id == 101131 then -- Courtyard Trigger.
                ShadowRaidReminder.already_triggered = true
                ShadowRaidReminderTriggerSendChatMessage()
            else
                return
            end
        end
    end
end)