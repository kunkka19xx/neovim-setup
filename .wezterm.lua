local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font = wezterm.font("Inconsolata Nerd Font Mono", { weight = "Bold" })
config.font_size = 19

config.enable_tab_bar = false
config.window_decorations = "RESIZE"

config.window_background_opacity = 0.8
config.macos_window_background_blur = 15
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}
config.color_scheme = 'Tokyo Night'
config.window_background_image = '/Users/kunkka07xx/.config/nvim/bg.jpg'
config.window_background_image_hsb = {
    -- Darken the background image by reducing it
    brightness = 0.09,
    hue = 1.08,
    saturation = 0.8,
}
return config
