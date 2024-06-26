-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.use_ime = true
config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = true
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.95

-- For example, changing the color scheme:
config.color_scheme = "catppuccin-macchiato"
config.font_size = 15
config.font = wezterm.font_with_fallback({
	{ family = "JetBrainsMono Nerd Font", weight = "Medium" },
	{ family = "Terminus", weight = "Bold" },
	"Noto Color Emoji",
})
config.line_height = 1.2

-- and finally, return the configuration to wezterm
return config
