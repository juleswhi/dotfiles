. "$HOME/.cargo/env"

export EDITOR="nvim"
export TERMINAL="alacritty"

[ -f ~/.bashrc ] && source ~/.bashrc

if [ "$(tty)" = "/dev/tty1" ]; then
    pgrep -x i3 || exec startx
fi

xmodmap ~/.Xmodmap
