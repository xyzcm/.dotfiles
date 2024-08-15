-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

local mux = wezterm.mux
local act = wezterm.action

-- This is where you actually apply your config choices

wezterm.on('gui-startup', function()
 local tab, pane, window = mux.spawn_window({})
 window:gui_window():maximize()
end)

-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'

config.color_scheme = 'Solarized Dark - Patched'
config.font = wezterm.font("Terminess Nerd Font Mono")
config.font_size = 22
config.enable_tab_bar = false
config.window_decorations = "RESIZE"

-- and finally, return the configuration to wezterm
return config