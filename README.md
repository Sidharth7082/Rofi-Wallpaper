# 🖼️ Rofi Wallpaper Changer for Hyprland

A modern wallpaper picker for **Hyprland** using **Rofi** with automatic color generation and a glassmorphism UI.

---

## ✨ Features

- 🖼️ Image previews
- 🎨 Automatic color generation
- 🌈 GIF & static wallpaper support
- ⚡ Smooth wallpaper transitions
- 🪟 Modern glassmorphism theme
- ⌨️ Easy Hyprland keybind
- 🛠️ Easy to customize

---

## 📁 Repository Structure

```text
Rofi-Wallpaper/
└── rofi/
    ├── scripts/
    │   └── wallpaper.sh
    │
    ├── themes/
    │   ├── colors.rasi
    │   └── wallpaper.rasi
    │
    └── README.md
```

---

# 📦 Dependencies

### Arch Linux

```bash
sudo pacman -S rofi-wayland imagemagick
yay -S awww
```

---

# 📥 Installation

Clone the repository

```bash
git clone https://github.com/Sidharth7082/Rofi-Wallpaper.git
cd Rofi-Wallpaper
```

Create the Rofi directories

```bash
mkdir -p ~/.config/rofi/scripts
mkdir -p ~/.config/rofi/themes
```

Copy the files

```bash
cp rofi/scripts/wallpaper.sh ~/.config/rofi/scripts/

cp rofi/themes/colors.rasi \
   rofi/themes/wallpaper.rasi \
   ~/.config/rofi/themes/
```

Make the script executable

```bash
chmod +x ~/.config/rofi/scripts/wallpaper.sh
```

---

# 📂 Installed Layout

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

---

# 🖼️ Wallpapers

Create a wallpaper directory

```bash
mkdir -p ~/Pictures/Wallpapers
```

Put your wallpapers inside

```text
~/Pictures/Wallpapers/
├── wallpaper1.jpg
├── wallpaper2.png
├── wallpaper3.gif
└── ...
```

The script automatically reads wallpapers from

```text
~/Pictures/Wallpapers
```

---

# ⚙️ Hyprland Configuration

Start the daemon

```ini
exec-once = awww-daemon
```

Add a keybind

```ini
bind = SUPER, W, exec, ~/.config/rofi/scripts/wallpaper.sh
```

Reload Hyprland

```bash
hyprctl reload
```

---

# 🚀 Usage

Open the wallpaper picker

```text
SUPER + W
```

Select a wallpaper and it will be applied automatically.

---

# 🎨 Customization

Theme

```text
~/.config/rofi/themes/wallpaper.rasi
```

Colors

```text
~/.config/rofi/themes/colors.rasi
```

Wallpaper Script

```text
~/.config/rofi/scripts/wallpaper.sh
```

---

# 🔧 Troubleshooting

Check if the daemon is running

```bash
pgrep -a awww
```

If not

```bash
awww-daemon &
```

Check the script

```bash
~/.config/rofi/scripts/wallpaper.sh
```

---

# ❤️ Credits

Inspired by the Rofi Wallpaper Changer project by Venomous27.

Modified and redesigned for Hyprland by **Sidharth7082**.

---

# ⭐ Support

If you like this project, consider giving it a ⭐ on GitHub.