light_theme=false

# macOS version
if hash defaults 2> /dev/null && [[ "$(defaults read -g AppleInterfaceStyle)" != Dark* ]]; then
    light_theme=true
fi

# GNOME version
if hash gsettings 2> /dev/null && [[ "$(gsettings get org.gnome.desktop.interface color-scheme)" = "'default'" ]]; then
    light_theme=true
fi

if hash bat 2> /dev/null && [ $light_theme = "true" ]; then
    export BAT_THEME="GitHub"
fi
