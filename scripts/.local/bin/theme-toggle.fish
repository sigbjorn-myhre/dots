#! /opt/homebrew/bin/fish

set light_theme_kitty "Flexoki (Light)"
set dark_theme_kitty "Kaolin Dark"

set light_theme_hx flexoki_light
set dark_theme_hx kaolin-dark

set hx_config_path "$HOME/dots/helix/.config/helix/config.toml"

function theme_toggle_kitty
    set active_theme $light_theme_kitty
    if test "$DARKMODE" = 1
        set active_theme $dark_theme_kitty
    end

    kitty +kitten themes --reload-in=all $active_theme
end

function theme_toggle_hx
    set replace "s/$dark_theme_hx/$light_theme_hx/g"
    if test "$DARKMODE" = 1
        set replace "s/$light_theme_hx/$dark_theme_hx/g"
    end

    # Replace theme in config file
    sed -i '' $replace $hx_config_path

    # Send signal to reload helix config
    pkill -USR1 hx
end

function theme_toggle
    theme_toggle_hx
    theme_toggle_kitty
end
theme_toggle
