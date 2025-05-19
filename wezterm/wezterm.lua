local wezterm = require 'wezterm'
local config = {}

config.font = wezterm.font 'FiraCode Nerd Font'
config.font_size = 13

config.color_scheme = 'Monokai Soda'

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.85
config.macos_window_background_blur = 50

config.window_frame = {
        inactive_titlebar_bg = "none",
        active_titlebar_bg = "none",
}

config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true

return config
