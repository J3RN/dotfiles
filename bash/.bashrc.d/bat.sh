light_theme=false

# macOS version
if type defaults &> /dev/null && [[ "$(defaults read -g AppleInterfaceStyle)" != Dark* ]]; then
    light_theme=true
fi

# GNOME version
if type gsettings &> /dev/null && [[ "$(gsettings get org.gnome.desktop.interface color-scheme)" = "'default'" ]]; then
    light_theme=true
fi

if type bat &> /dev/null && [ $light_theme = "true" ]; then
    export BAT_THEME="GitHub"
fi
