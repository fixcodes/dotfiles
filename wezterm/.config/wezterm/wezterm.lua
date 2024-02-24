local wezterm = require("wezterm")

local config = {}
if wezterm.config_builder then config = wezterm.config_builder() end

-- Settings
config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font_with_fallback({
  { family = "FiraCode Nerd Font", scale = 1.2 }
})
config.window_background_opacity = 0.9
config.window_decorations = "RESIZE"
config.window_close_confirmation = "AlwaysPrompt"
config.scrollback_lines = 3000
config.default_workspace = "home"

config.default_prog = { '/usr/local/bin/fish', '-l', '-c', 'zellij attach --index 0 || zellij' }


return config
