Config of desktop enviroment
===

## Software Stacks
- Display Server: [X Server](https://wiki.archlinux.org/index.php/Xorg)
- Display Manager: [SDDM](https://wiki.archlinux.org/index.php/SDDM)
    - Theme: [archlinux-themes-sddm](https://aur.archlinux.org/packages/archlinux-themes-sddm)
- Window Manager: [i3 wm](https://i3wm.org/)
- Terminal Emulator: [alacritty](https://github.com/alacritty/alacritty)
- App Launcher:
    - [rofi](https://github.com/davatorium/rofi)
- Web Browser: [Google Chrome](https://wiki.archlinux.org/index.php/Chromium)
- File Browser & File Preview:
    - [Thunar](https://wiki.archlinux.org/index.php/Thunar)
    - [Ranger](https://github.com/ranger/ranger)
    - highlight
    - mediainfo
    - poppler
    - python-chardet
- Editor:
    - [neovim](https://github.com/neovim/neovim)
    - VSCode
    - Markdown: marker
    - Latex: texmaker texlive-core
- Wallpaper Display: [feh](https://wiki.archlinux.org/index.php/feh)
- Input Method: [Reference](https://gist.github.com/tanyuan/c0d4ee15cf0c9c93da28cc1cf0ff87b3)
    - [fcitx](https://wiki.archlinux.org/index.php/fcitx)
    - [fcitx-chewing](https://github.com/fcitx/fcitx-chewing)
    - fcitx-configtool
- Font:
    - Icon: [ttf-font-awesome-4](https://aur.archlinux.org/packages/ttf-font-awesome-4/)
    - Default font: [otf-source-han-code-jp](https://aur.archlinux.org/packages/otf-source-han-code-jp/)
    - ttf-noto-fonts ttf-noto-fonts-cjk: Noto Font
    - ttf-liberation : fix some issue related to pdf viewer in chrome
    - 標楷體:
        - [ttf-tw](https://aur.archlinux.org/packages/ttf-tw/)
        - [ttf-arphic-ukai](https://www.archlinux.org/packages/community/any/ttf-arphic-ukai/)
- Status Bar: [i3blocks](https://vivien.github.io/i3blocks/) [i3blocks-contrib](https://github.com/vivien/i3blocks-contrib)
- Screen Capture: [flameshot](https://wiki.archlinux.org/index.php/Flameshot)
- Screen locker: 
    - [i3lock-fancy-rapid](https://github.com/yvbbrjdr/i3lock-fancy-rapid)
    - xss-lock
- PDF viewer: [llpp](https://wiki.archlinux.org/index.php/Llpp)
- Network Manager:
    - [NetworkManager](https://wiki.archlinux.org/index.php/NetworkManager)
    - [networkmanager-dmenu](https://github.com/firecat53/networkmanager-dmenu)
- Multiple Screen Layout Management:
    - xrandr
    - arandr
- Task manager: [glances](https://github.com/nicolargo/glances)
- TODO List: [go-for-it](https://aur.archlinux.org/packages/go-for-it/)
- Audio:
    - [PulseAudio](https://wiki.archlinux.org/index.php/PulseAudio)
    - [pavucontrol](https://www.archlinux.org/packages/extra/x86_64/pavucontrol/)
- Backlight Adjuestment: [brillo](https://gitlab.com/cameronnemo/brillo/-/tree/master)

## Installation
```
bash install.sh
```

## Modified shortcuts of i3wm
- Alt+Shift+s: System conrol mode.
- Alt+Shift+n: Network setting.
- Pirnt: Capture the screen.
