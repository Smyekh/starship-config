# Starship Prompt Configs

This repository contains two carefully crafted [Starship](https://starship.rs) prompt configurations, each tailored for different workflows. Designed to enhance your terminal experience with a focus on developer productivity and usability.

## 🔀 Config Versions: Pick Your Style

### 🥇 Version 1 — *Minimalist Precision with Practical Intelligence*

- **Focus:** Clean, fast, and developer-aware.
- Compact powerline flow displaying time, directory, Git status, and key tooling indicators.
- Auto-detects JS/TS, React, Expo, Vite, Docker, task runners (`just`, `make`, `task`), `uv`, `locust`, and more.
- Labels frontend/backend ports (🌐 React:3000, 🚀 FastAPI:8000).
- Sleek dark theme, ideal for quick terminal work and high performance.

---

### 🥈 Version 2 — *Fully Loaded Dev Intelligence*

- **Focus:** Rich tooling insight and interactivity.
- Expanded layout includes:
  - Clickable localhost port links using ANSI OSC8 escape codes.
  - Auto-reload indicator for Vite, Uvicorn, Nodemon, Expo, Next.js, etc.
  - Docker container detection with labeled emoji indicators:
    - 🐘 postgres, 🧠 redis, 🛢️ mysql, 🌐 frontend, 🚀 backend, 📦 other
  - Locust auto-link (`🐜 http://localhost:8089`)
  - More verbose visibility into:
    - `cmd_duration`, `jobs`, `memory_usage`, `battery`, `os`, `kubernetes`

> 🎯 Perfect for power users who want their terminal to *think like a full-stack dashboard*.

---

## ⚙️ Setup in Seconds

### 1. Clone the Repository

```bash
git clone https://github.com/Smyekh/starship-config.git ~/starship-config 
```

Now you have the following directory structure:

```~/starship-config
├── config_v1.toml  #version 1 config
├── config_v2.toml  #Version 2 config
├── setup.sh        #automatic setup script
└── scripts/ 
    └── use_starship.sh #Script to use the config

```

### 2. Run the Setup Script

Navigate to the cloned directory and run the setup script:

```bash
cd ~/starship-config
chmod +x setup.sh  # Make the script executable
./setup.sh
```

This script will:

- Detect your shell (bash or zsh)

- Append the necessary sourcing logic to ~/.bashrc or ~/.zshrc

- Allow you to start using use_starship commands immediately

If you're using another shell, it’ll show you what to add manually.

### 3. Reload Your Shell

Apply the changes:

```bash
source ~/.zshrc  # or ~/.bashrc depending on your shell
```

## 🚀 Usage

Once setup is complete, you can switch Starship configs with:

```bash
use_starship v1     # or: use_starship **min**
use_starship v2     # or: use_starship **dev**
use_starship default  # use your regular Starship config
use_starship restore  # restore the config used before switching
use_starship list     # see available configs
```

You can use these anywhere in your terminal — no need to specify full paths.

## 🛠️ Customizing the Configs

Want to tweak the look or behavior of the prompt?
Each configuration is fully editable:

```bash
# Open the config file in your editor of choice:
code ~/starship-config/config_v1.toml  # Minimal (v1)
code ~/starship-config/config_v2.toml  # Detailed (v2)
```

Once edited:

- Switch to that config using use_starship v1 or use_starship v2

- Or just reload your shell if you're already using it:

```bash
exec $SHELL  # quick refresh without closing terminal
```

### 🔧 Tips for Customization

- Reference the [Starship Configuration Docs](https://starship.rs/config/) to see all available modules and options.
- To add a new module (e.g. kubernetes, git_status, python), just add it under [module_name] in the TOML file.
- For emoji indicators or color tweaks, follow Starship's syntax:

```toml
[nodejs]
symbol = "🟩 "
style = "bold green"
```

- Use the `style` attribute to customize colors and formatting.

## ✅ Requirements

- [Starship CLI installed](https://starship.rs/guide/#%F0%9F%9A%80-installation)

- Compatible with **bash** or **zsh** shells

## 🎉 Conclusion

Now you have a powerful, customizable Starship prompt that enhances your terminal experience with either a minimalist or fully loaded configuration. Choose the one that fits your workflow best and enjoy the productivity boost!

Made with ☕ by Smyekh
