# 🌌 Starship Prompt Configs

This repository contains multiple versions of my custom [Starship](https://starship.rs) prompt configuration.

Switch between different layouts, styles, or revert to the default prompt using a simple shell function.

---

## 📁 Config Versions

All configs are stored in the `configs/` directory:

configs/
├── starship-v1.toml # Clean developer layout
├── starship-v2.toml # Dark theme with powerline segments


---

## ⚙️ Setup Instructions

### 1. Clone this Repository

```bash
git clone https://github.com/Smyekh/starship-config.git ~/starship-config

### Starship Config Versions Comparison
🔀 Starship Config Versions
This repo includes two Starship prompt configurations designed to supercharge your terminal with dev intelligence and clickable powerline visuals. Both are optimized for modern workflows — but tailored for different levels of depth and aesthetics.

✅ Summary Table
Feature	Version 1	Version 2 (Enhanced)
Powerline Style	Clean and minimal	Seamless transitions and rich styling
Time & Directory	Included	Included with better contrast
Git Branch & Status	✅	✅
Clickable Dev Ports (e.g. React, Vite, Expo)	✅	✅ (improved labels & logic)
Clickable API Ports (FastAPI, Flask, etc.)	✅	✅
Task Runner Detection (just, make, Taskfile)	✅	✅
JavaScript/TypeScript Detection	✅	✅
React & Vite Detection	✅	✅
React Native & Expo Detection	❌	✅
Tooling Awareness	Basic (Node-focused)	Expanded (Node + Python + Rust)
uv, locust, maturin, cargo, flet support	❌	✅
Docker Container Port Mapping	✅	✅
Auto-reload Process Detection (🔁)	✅	✅
Memory, Battery, OS, K8s, Duration Info	✅	✅

💡 Which Should You Use?
🟢 Version 1:
Lightweight, fast, and minimal. Ideal for quick workflows and clean UIs.

🔵 Version 2:
Fully-loaded terminal dashboard. Perfect for fullstack devs, API testers, Docker users, and anyone who wants deep insights right in their prompt.


Made with ☕ by Smyekh
