local wezterm = require("wezterm")
local config = {}

-- STYLING
config.font = wezterm.font("FiraCode Nerd Font")
config.font_size = 13

config.color_scheme = "tokyonight_night"

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.9
config.macos_window_background_blur = 50

-- TABS
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true

config.window_frame = {
	inactive_titlebar_bg = "none",
	active_titlebar_bg = "none",
}

-- BELL
config.audible_bell = "Disabled"

-- KEY BINDING
local action = wezterm.action

config.keys = {
	-- Split terminal
	{
		key = "d",
		mods = "CMD|SHIFT",
		action = wezterm.action.SplitPane({
			direction = "Right",
			size = { Percent = 50 },
		}),
	},
	{
		key = "s",
		mods = "CMD|SHIFT",
		action = wezterm.action.SplitPane({
			direction = "Down",
			size = { Percent = 50 },
		}),
	},
	-- Panels Navigation
	{
		key = "w",
		mods = "CMD|SHIFT",
		action = action.CloseCurrentPane({ confirm = true }),
	},
	{
		key = "h",
		mods = "CMD|SHIFT",
		action = action.ActivatePaneDirection("Left"),
	},
	{
		key = "l",
		mods = "CMD|SHIFT",
		action = action.ActivatePaneDirection("Right"),
	},
	{
		key = "k",
		mods = "CMD|SHIFT",
		action = action.ActivatePaneDirection("Up"),
	},
	{
		key = "j",
		mods = "CMD|SHIFT",
		action = action.ActivatePaneDirection("Down"),
	},
	-- Others
	{
		key = "k",
		mods = "CMD",
		action = action.ClearScrollback("ScrollbackAndViewport"),
	},
}

return config
