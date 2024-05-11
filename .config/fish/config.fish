if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_greeting
    fish_vi_key_bindings

    if test -z "$WAYLAND_DISPLAY"; and test "$XDG_VTNR" -eq 1
        exec sway
    end
end

set EDITOR nvim

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/$USER/.ghcup/bin $PATH # ghcup-env

set LANG en_US.utf-8
