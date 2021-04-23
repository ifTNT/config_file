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
		- thunar-volman
		- thunar-archive-plugin
    - [tumbler](https://www.archlinux.org/packages/extra/x86_64/tumbler/)
    - [Ranger](https://github.com/ranger/ranger)
    - highlight
    - mediainfo
    - poppler
    - python-chardet
	- gvfs
		- gvfs-mtp
		- gvfs-ntp
- Editor:
    - [neovim](https://github.com/neovim/neovim)
    - VSCode
    - Extenstions of VSCode:
        - Remote – Containers
        - Path Intellisence
        - Live Server
        - Prettier
        - Bracket Pair Colorizer 2
        - GitLens
        - Neo Vim
        - Setting Sync
    - Leafpad
    - Markdown: marker
    - Latex: texmaker texlive-core
- Wallpaper Display: [feh](https://wiki.archlinux.org/index.php/feh)
- Image viewer: gThumb
- Input Method: [Reference](https://gist.github.com/tanyuan/c0d4ee15cf0c9c93da28cc1cf0ff87b3)
    - [fcitx](https://wiki.archlinux.org/index.php/fcitx)
    - [fcitx-chewing](https://github.com/fcitx/fcitx-chewing)
    - fcitx-configtool
- Font:
    - Icon: [ttf-font-awesome-4](https://aur.archlinux.org/packages/ttf-font-awesome-4/)
    - Default font:
        - Sans: ttf-ubuntu-font-family, ttf-noto-fonts, ttf-noto-fonts-cjk
        - Serif
            - ttf-liberation : fix some issue related to pdf viewer in chrome
            - 標楷體:
                - [ttf-ms-win10-zh_tw](https://aur.archlinux.org/packages/ttf-ms-win10-zh_tw/)
                - [ttf-tw](https://aur.archlinux.org/packages/ttf-tw/)
                - [ttf-arphic-ukai](https://www.archlinux.org/packages/community/any/ttf-arphic-ukai/)
                - 自行從已安裝的Windows系統複製
        - Monospace: [otf-source-han-code-jp](https://aur.archlinux.org/packages/otf-source-han-code-jp/)
- Status Bar: [i3blocks](https://vivien.github.io/i3blocks/) [i3blocks-contrib](https://github.com/vivien/i3blocks-contrib)
- Screen Capture: [flameshot](https://wiki.archlinux.org/index.php/Flameshot)
- Screen locker: 
    - [i3lock-fancy-rapid](https://github.com/yvbbrjdr/i3lock-fancy-rapid)
    - xss-lock
- PDF viewer: [llpp](https://wiki.archlinux.org/index.php/Llpp)
- Archive Manager: [xarchiver](https://www.archlinux.org/packages/community/x86_64/xarchiver/)
- Network Manager:
    - [NetworkManager](https://wiki.archlinux.org/index.php/NetworkManager)
    - [networkmanager-dmenu](https://github.com/firecat53/networkmanager-dmenu)
- Bluetooth Manager:
    - [rofi-bluetooth](https://github.com/ClydeDroid/rofi-bluetooth)
- Multiple Screen Layout Management:
    - xrandr
    - arandr
- Task manager: [glances](https://github.com/nicolargo/glances)
- TODO List: [go-for-it](https://aur.archlinux.org/packages/go-for-it/)
- Audio:
    - [PulseAudio](https://wiki.archlinux.org/index.php/PulseAudio)
    - [pavucontrol](https://www.archlinux.org/packages/extra/x86_64/pavucontrol/)
- Backlight Adjuestment: [brillo](https://gitlab.com/cameronnemo/brillo/-/tree/master)
- Auto mount removal storage: [udiskie](https://github.com/coldfix/udiskie)

## Installation
```
bash install.sh
```

## Modified shortcuts of i3wm
- Alt+Shift+s: System conrol mode.
- Alt+Shift+n: Network setting.
- Pirnt: Capture the screen.
