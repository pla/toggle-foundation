local function handle_foundation_toggle(event)
    local player = game.get_player(event.player_index)

    local is_active = player.is_shortcut_toggled("toggle-foundation")
    player.set_shortcut_toggled("toggle-foundation", not is_active)

    player.force.technologies["foundation"].researched = not is_active
end

local function handle_landfill_toggle(event)
    local player = game.get_player(event.player_index)

    local is_active = player.is_shortcut_toggled("toggle-landfill")
    player.set_shortcut_toggled("toggle-landfill", not is_active)

    player.force.technologies["landfill"].researched = not is_active
end

local function handle_cliffexp_toggle(event)
    local player = game.get_player(event.player_index)

    local is_active = player.is_shortcut_toggled("toggle-cliffexp")
    player.set_shortcut_toggled("toggle-cliffexp", not is_active)

    player.force.technologies["cliff-explosives"].researched = not is_active
end

script.on_event(defines.events.on_lua_shortcut, function(event)
    if event.prototype_name == "toggle-foundation" then
        handle_foundation_toggle(event)
    elseif event.prototype_name == "toggle-landfill" then
        handle_landfill_toggle(event)
    elseif event.prototype_name == "toggle-cliffexp" then
        handle_cliffexp_toggle(event)
    end
end)

if script.active_mods["space-age"] then
	script.on_event("toggle-foundation", function(event)
		handle_foundation_toggle(event)
	end)
end

script.on_event("toggle-landfill", function(event)
    handle_landfill_toggle(event)
end)

script.on_event("toggle-cliffexp", function(event)
    handle_cliffexp_toggle(event)
end)