#!/bin/bash

# Path to the switching script
CONFIG_SCRIPT_PATH="$HOME/starship-config/scripts/use_starship.sh"

# Determine the user's shell
if [[ "$SHELL" == */zsh ]]; then
    SHELL_RC="$HOME/.zshrc"
    SHELL_NAME="zsh"
elif [[ "$SHELL" == */bash ]]; then
    SHELL_RC="$HOME/.bashrc"
    SHELL_NAME="bash"
else
    echo "❌ Unsupported shell: $SHELL"
    echo "👉 Please manually add the following line to your shell config:"
    echo "   source \"$CONFIG_SCRIPT_PATH\""
    exit 1
fi

# Add the source line if not already present
if grep -Fxq "source \"$CONFIG_SCRIPT_PATH\"" "$SHELL_RC"; then
    echo "✅ Already configured in $SHELL_RC"
else
    echo "🔧 Adding config to $SHELL_RC..."
    echo -e "\n# Starship Config Switcher\nsource \"$CONFIG_SCRIPT_PATH\"" >> "$SHELL_RC"
    echo "✅ Added source \"$CONFIG_SCRIPT_PATH\" to $SHELL_RC"
fi

# Final message
echo
echo "🎉 Setup complete for $SHELL_NAME!"
echo "👉 To apply changes now, run:"
echo "   source $SHELL_RC"
echo
echo "Or restart your terminal to use the 'use_starship' command."
