## Installation
1. Install Arch linux
3. sudo pacman -S yadm
4. yadm clone https://github.com/DanRyba253/HOME-is-where-the-heart-is
5. .local/bin/bootstrap-system.sh
6. Follow instructions and installation tips
7. Reboot
8. Follow post install tips
9. Profit!

## Installation tips:
1. View PKGBUILD of swww and add `CARGO_NET_GIT_FETCH_WITH_CLI=true` to `prepare()`
2. when asked to change shell, type `/bin/fish`

## Post Install Tips:
1. If blackscreen on boot, switch to a different tty and do `sudo modeprobe nvidia_drm modeset=1`
2. If minecraft crashes on quit with prime-run, add an environment variable `__GL_THREADED_OPTIMIZATIONS=0`
