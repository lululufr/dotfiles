-- Wezterm API
local wezterm = require("wezterm")

-- Hold configuration
local config = wezterm.config_builder()

config.font = wezterm.font("Hack Nerd Font Mono")
config.font_size = 12

config.enable_tab_bar = false

--theme de couleur

config.color_scheme = "Gruvbox Dark"
config.enable_scroll_bar = true

return config
