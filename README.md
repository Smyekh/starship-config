# 🌌 Starship Prompt Configs

This repository contains two carefully crafted [Starship](https://starship.rs) prompt configurations, each tailored for different workflows:

## 🔀 Config Versions: Pick Your Style

### 🥇 Version 1 — *Minimalist Precision with Practical Intelligence*

- **Focus:** Clean, fast, and developer-aware.
- Compact powerline flow displaying time, directory, git status, and key tooling indicators.
- Auto-detects JS/TS, React, Expo, Vite, Docker, task runners, `uv`, `locust`, etc.
- Labels dev/backend ports (🌐 React:3000, 🚀 FastAPI:8000).
- Sleek dark theme, ideal for quick terminal work.

---

### 🥈 Version 2 — *Fully Loaded Dev Intelligence*

- **Focus:** Rich tooling insight and interactivity.
- Expanded layout includes:
  - Clickable localhost port links via ANSI OSC8.
  - Detailed Docker container emojis (🐘, 🛢️, 🧠, 🚀, etc.).
  - Locust auto-link (`http://localhost:8089`).
  - Full process and language tooling visibility (`cmd_duration`, `jobs`, `memory_usage`, `battery`, `os`, `kubernetes`).
- Vibrant colors and expressive emojis make status scanning easy.

---

## 📸 Visual Comparison

| Version 1 (Compact)                        | Version 2 (Detailed)                        |
|-------------------------------------------|---------------------------------------------|
| ![Version 1 Screenshot](path/to/v1.png)   | ![Version 2 Screenshot](path/to/v2.png)     |


---

## ⚙️ Setup & Usage

1. **Clone the repository**  
   ```bash
   git clone https://github.com/Smyekh/starship-config.git ~/starship-config
Ad

2. Add the toggle function to your ~/.zshrc or ~/.bashrc:





Made with ☕ by Smyekh
