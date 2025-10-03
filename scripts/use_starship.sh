#!/bin/bash
# use_starship.sh - Easily switch between Starship prompt configurations

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    echo "❌ Please source this script: 'source use_starship.sh'"
    exit 1
fi

use_starship() {
    local CONFIG_DIR="$HOME/starship-config/configs"
    local DEST="$HOME/.config/starship.toml"
    local BACKUP="$HOME/.config/starship.toml.bak"

    #Map shorthand to actual filenames
    local MAP_INPUT=$1
    case "$MAP_INPUT" in
        devforge|de) MAP_INPUT="starship_devforge" ;;
        forestglow|fo) MAP_INPUT="starship_forestglow" ;;
        grindmode|gr) MAP_INPUT="starship_grindmode" ;;
        sugarshell|su) MAP_INPUT="starship_sugarshell" ;;
        zoomies|zo) MAP_INPUT="starship_zoomies" ;;
        default) MAP_INPUT="default" ;;
        restore) MAP_INPUT="restore" ;;
        list) MAP_INPUT="list" ;;
        help) MAP_INPUT="help" ;;
        *) MAP_INPUT="${MAP_INPUT,,}" ;;  # Convert to lowercase for consistency
    esac
    case "$MAP_INPUT" in
    default)
        if [ -f "$DEST" ]; then
            mv "$DEST" "$BACKUP"
            echo "🗑️ Reverted to default Starship prompt (backup saved)"
        else
            echo "✅ Already using default Starship config"
        fi
        ;;
    restore)
        if [ -f "$BACKUP" ]; then
            mv "$BACKUP" "$DEST"
            echo "♻️ Restored previous custom Starship config"
        else
            echo "❌ No backup found"
            return 1
        fi
        ;;
    list)
        echo "📂 Available Starship configs:"
        for f in "$CONFIG_DIR"/*.toml; do
            basename "${f%.*}" | sed 's/^starship_//'
        done
        return 0
        ;;
    help)
        echo "Usage: use_starship [default|restore|config_name]"
        return 0
        ;;
    *)
        local SOURCE="$CONFIG_DIR/$MAP_INPUT.toml"
        if [ -f "$SOURCE" ]; then
            cp "$SOURCE" "$DEST"
            echo "🔁 Switched to Starship config: $MAP_INPUT"
        else
            echo "❌ '$1.toml' not found in $CONFIG_DIR"
            echo "Run 'use_starship help' for usage info."
            return 1
        fi
        ;;
    esac

        # Refresh prompt and completions (Zsh only)
    if [[ "$SHELL" == */zsh ]]; then
        echo "🔄 Reloading Zsh prompt..."
        eval "$(starship init zsh)"
        autoload -Uz compinit && compinit -C
    fi

}
