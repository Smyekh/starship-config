# Starship Themes Collection

A curated collection of 5 unique and beautiful [Starship](https://starship.rs) prompt configurations, designed to fit any mood or workflow. Enhance your terminal experience with a prompt that’s both functional and stylish.

## ✨ Theme Showcase

This collection includes 5 distinct themes. Pick the one that best fits your style!

### Forge (devforge)

A clean, professional theme with a warm, industrial color palette of oranges and browns. Perfect for focused, everyday development.

* Alias: de

### ForestGlow (forestglow)

A cozy, nature-inspired theme with earthy greens and wood tones. Uses emojis for a friendly and organic feel.

* Alias: fo

### GrindMode (grindmode)

A high-contrast, high-energy theme designed for maximum focus. Uses a bold palette of gold, blue, and green to keep you in the zone.

* Alias: gr

### SugarShell (sugarshell)

A fun and vibrant theme with a sweet palette of pinks and purples. Adds a splash of color and personality to your terminal.

* Alias: su

### Zoomies (zoomies)

An energetic and playful animal-themed prompt. Features a unique color for each segment and fun emojis for different tools.

* Alias: zo

---

## ⚙️ Setup in Seconds

### 1. Clone the Repository

```zsh
git clone https://github.com/Smyekh/starship-config.git ~/starship-config 
```

This will create the following directory structure:

```shell
~/starship-config
├── config/
│   ├── starship_devforge.toml
│   ├── starship_forestglow.toml
│   ├── starship_grindmode.toml
│   ├── starship_sugarshell.toml
│   └── starship_zoomies.toml
├── scripts/
│   └── use_starship.sh
├── themes/
│   ├── starship_devforge.meta
│   └── ... (other theme metadata)
├── setup.sh
└── README.md
```

### 2. Run the Setup Script

Navigate to the cloned directory and run the setup script to automatically configure your shell (`.zshrc` or `.bashrc`).

```zsh
cd ~/starship-config
chmod +x setup.sh  # Make the script executable
./setup.sh
```

This script will:

* Detect your shell (`bash` or `zsh`)

* Append the necessary sourcing logic to `~/.bashrc` or `~/.zshrc`

* Allow you to start using use_starship commands immediately

If you're using another shell, it’ll show you what to add manually.

### 3. Reload Your Shell

To apply the changes, either restart your terminal or run:

```zsh
source ~/.zshrc  # or source ~/.bashrc
```

This ensures the new configurations are loaded and ready to use.

## 🚀 Usage

Once setup is complete, you can easily switch between Starship configs from anywhere in your terminal.

```zsh
# Switch to a specific theme by name or alias
use_starship grindmode  # or use_starship gr
use_starship forestglow # or use_starship fo

# List all available themes
use_starship list

# Revert to Starship's default config
use_starship default

# Restore the last custom theme you were using
use_starship restore

# Get help
use_starship help
```

You can use these anywhere in your terminal — no need to specify full paths.

> ### ⚠️ Important Note
>
> This script works by replacing the contents of your main ~/.config/starship.toml file with the theme you select. Any custom changes you make directly to ~/.config/starship.toml will be lost when you switch themes. To make permanent changes, edit the theme files in ~/starship-config/config/ instead.

## 🛠️ Customizing a Theme

Want to tweak a theme? Edit the .toml files directly within the ~/starship-config/config/ directory.

```zsh
# Open the theme you want to edit in your favorite editor
code ~/starship-config/config/starship_grindmode.toml
```

After saving your changes, simply apply the theme again with use_starship grindmode to see your updates.

Refer to the official Starship Configuration [Docs](https://starship.rs/config/) for all available modules and options.

## ✅ Requirements

* [Starship] (https://starship.rs/guide/#%F0%9F%9A%80-installation) must be installed.

* A [Nerd Font] (https://www.nerdfonts.com/) is required to display icons correctly.

* The setup script officially supports bash and zsh. For other shells, you will need to manually source the `~/starship-config/scripts/use_starship.sh` script in your shell's configuration file.

---

Made with ☕ by Smyekh
