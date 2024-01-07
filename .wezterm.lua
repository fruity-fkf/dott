-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config.window_background_opacity = 1.0
config.hide_tab_bar_if_only_one_tab = true
config.font_size = 9.0
config.color_scheme = "tokyonight"
config.font = wezterm.font("JetBrains Mono")
config.window_close_confirmation = "NeverPrompt"
-- and finally, return the configuration to wezterm
return config
