# 🖼️ Rofi Wallpaper Changer for Hyprland

A simple Rofi wallpaper selector for **Hyprland**.

It lets you choose wallpapers from a Rofi menu with image previews and changes the wallpaper using `awww`.

---

## ✨ Features

- Wallpaper previews
- Rofi interface
- Smooth wallpaper transitions
- Custom colors and theme
- Simple keyboard shortcut
- Works with Hyprland
- Supports normal Hyprland config and Hyprland Lua config

---

# 📦 Dependencies

This project requires:

- `rofi`
- `awww`
- `imagemagick`

### Arch Linux

Install Rofi and ImageMagick:

```bash
sudo pacman -S rofi-wayland imagemagick
```

Install `awww`:

```bash
yay -S awww
```

---

# 📥 Installation

## 1. Clone the repository

```bash
git clone https://github.com/Sidharth7082/Rofi-Wallpaper.git
cd Rofi-Wallpaper
```

---

## 2. Create the required folders

```bash
mkdir -p ~/.config/rofi/themes
mkdir -p ~/.config/rofi/scripts
```

---

## 3. Copy the files

Copy the theme files:

```bash
cp colors.rasi ~/.config/rofi/themes/
cp wallpaper.rasi ~/.config/rofi/themes/
```

Copy the wallpaper script:

```bash
cp wallpaper.sh ~/.config/rofi/scripts/
```

Make the script executable:

```bash
chmod +x ~/.config/rofi/scripts/wallpaper.sh
```

---

## 📁 Your Rofi folder should look like this

```text
~/.config/rofi/
├── scripts/
│   └── wallpaper.sh
│
└── themes/
    ├── colors.rasi
    └── wallpaper.rasi
```

You can check it with:

```bash
ls ~/.config/rofi/themes
```

You should see:

```text
colors.rasi
wallpaper.rasi
```

Then:

```bash
ls ~/.config/rofi/scripts
```

You should see:

```text
wallpaper.sh
```

---

# 🖼️ Wallpapers

Create a wallpaper folder:

```bash
mkdir -p ~/Pictures/Wallpapers
```

Put your wallpapers inside it.

Example:

```text
~/Pictures/Wallpapers/
├── anime.jpg
├── landscape.png
├── nature.jpg
└── wallpaper.png
```

---

# ⚙️ Hyprland Setup

You need to do only **two things**:

1. Start `awww-daemon`
2. Add a keybind to open the wallpaper selector

---

# 🟢 Normal Hyprland Config

If you use:

```text
~/.config/hypr/hyprland.conf
```

open it:

```bash
nvim ~/.config/hypr/hyprland.conf
```

### Start awww

Add:

```ini
exec-once = awww-daemon
```

### Add keybind

Add:

```ini
bind = SUPER, W, exec, ~/.config/rofi/scripts/wallpaper.sh
```

Now press:

```text
SUPER + W
```

to open the wallpaper selector.

---

# 🔵 Hyprland Lua Config

If you use a Lua Hyprland configuration, open your main:

```text
~/.config/hypr/hyprland.lua
```

or whichever Lua file your setup loads.

### Start awww

Add:

```lua
hl.exec_cmd("awww-daemon")
```

### Add keybind

Add:

```lua
hl.bind(
    "SUPER + W",
    hl.dsp.exec_cmd("~/.config/rofi/scripts/wallpaper.sh")
)
```

If your config already defines:

```lua
local mainMod = "SUPER"
```

you can instead use:

```lua
hl.bind(
    mainMod .. " + W",
    hl.dsp.exec_cmd("~/.config/rofi/scripts/wallpaper.sh")
)
```

---

# 🔄 Reload Hyprland

After editing your Hyprland config:

```bash
hyprctl reload
```

If this is your first time setting it up, you can also start `awww` manually:

```bash
awww-daemon &
```

---

# 🧪 Test It

Before testing the keybind, run the script directly:

```bash
~/.config/rofi/scripts/wallpaper.sh
```

If the wallpaper selector appears, it is working.

Now try:

```text
SUPER + W
```

---

# ❗ If It Doesn't Work

## Check awww

Run:

```bash
pgrep -a awww
```

If nothing appears:

```bash
awww-daemon &
```

Then try again.

---

## Check the script

Make sure it is executable:

```bash
chmod +x ~/.config/rofi/scripts/wallpaper.sh
```

Run:

```bash
~/.config/rofi/scripts/wallpaper.sh
```

---

## Check the files

Run:

```bash
ls ~/.config/rofi/themes
```

It should show:

```text
colors.rasi
wallpaper.rasi
```

Run:

```bash
ls ~/.config/rofi/scripts
```

It should show:

```text
wallpaper.sh
```

---

# 🎨 Customize the Theme

To change the Rofi layout:

```bash
nvim ~/.config/rofi/themes/wallpaper.rasi
```

To change the colors:

```bash
nvim ~/.config/rofi/themes/colors.rasi
```

To change how wallpapers are selected or applied:

```bash
nvim ~/.config/rofi/scripts/wallpaper.sh
```

---

# 📂 Final Structure

Your setup should look like:

```text
~/.config/
└── rofi/
    ├── scripts/
    │   └── wallpaper.sh
    │
    └── themes/
        ├── colors.rasi
        └── wallpaper.rasi
```

And your wallpapers:

```text
~/Pictures/Wallpapers/
├── wallpaper1.jpg
├── wallpaper2.png
├── wallpaper3.jpg
└── ...
```

---

# 🚀 Quick Installation

If you already have all dependencies installed, you can use:

```bash
git clone https://github.com/Sidharth7082/Rofi-Wallpaper.git && \
cd Rofi-Wallpaper && \
mkdir -p ~/.config/rofi/themes ~/.config/rofi/scripts && \
cp colors.rasi wallpaper.rasi ~/.config/rofi/themes/ && \
cp wallpaper.sh ~/.config/rofi/scripts/ && \
chmod +x ~/.config/rofi/scripts/wallpaper.sh
```

Then add the Hyprland configuration shown above.

---

# ❤️ Credits

Inspired by the Rofi Wallpaper Changer project by Venomous27.

Modified and customized for an easy Hyprland setup.

---

# ⭐ Support

If this project helped you, consider giving the repository a ⭐.

Contributions and improvements are welcome.