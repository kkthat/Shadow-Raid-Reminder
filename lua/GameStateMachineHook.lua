Hooks:PostHook(GameStateMachine, "change_state_by_name", "TrackGameState", function(self, state_name)
    if state_name == "ingame_standard" then
        if Global.game_settings and Global.game_settings.level_id then
            if Global.game_settings.level_id == "kosugi" then -- kosugi is shadow raids map id. *play the more you know star*
                ShadowRaidReminder.should_listen = true
            else
                return
            end
        else
            return -- Couldnt figure out what the map is called.
        end
    else
        ShadowRaidReminder.should_listen = false -- Set it back to false when we leave the mission.
    end
end)