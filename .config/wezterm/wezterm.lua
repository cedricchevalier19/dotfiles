-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'Catppuccin Latte'
-- config.color_scheme = 'Darktooth (base16)'
-- config.color_scheme = 'dawnfox'
config.color_scheme = 'duskfox'
-- config.color_scheme = 'SpaceGray'

config.font = wezterm.font 'Cousine'
-- config.font = wezterm.font 'JetBrains Mono'

config.font_size = 15.0

-- Disable tab: use tmux or zellij
config.enable_tab_bar = false

config.keys = {
  -- Turn off the default CMD-m Hide action, allowing CMD-m to
  -- be potentially recognized and handled by the tab
  {
    key = 'm',
    mods = 'CMD',
    action = wezterm.action.DisableDefaultAssignment,
  },
  -- Disable launching new tab
  {
     key = "t",
     mods = "SUPER",
     action = wezterm.action.DisableDefaultAssignment,
  },
}

-- and finally, return the configuration to wezterm
return config

