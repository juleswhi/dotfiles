#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

stty -ixon
shopt -s autocd

alias sp="sudo pacman"
alias ss="sudo systemctl"

alias ls='ls --color=auto'
alias grep='grep --color=auto'

source /usr/share/git/completion/git-prompt.sh

# eval "$(starship init bash)"
# PS1='┏ [\e[1;34m\u\e[0m@\e[1;32m\h\e[0m]-[\e[1;31m\e[0m]-[\e[1;36m$(date +%H:%M:%S)\e[0m]-[\e[33;1m\w\e[0m] ┗ $ '
PS1='\W $(__git_ps1 "git:%s ")$ '
EDITOR=nvim

eval "$(oh-my-posh init bash --config ~/.prompt.omp.json)"

alias v='nvim'
alias vi='nvim'

export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools
export PATH=$PATH:/usr/local/go/bin

export PATH=$PATH:~/.local/bin

. "$HOME/.cargo/env"

export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/home/juleswhite/.zig
alias music="termusic"

export hyprconf=~/dotfiles/.config/hypr

alias fdm="compgen -c | fzf | xargs man"
alias la="ls -a"

# xinput set-prop "deviceid" "libinput Accel Profile Enabled" 0 1 0

alias xre="sudo xremap $HOME/.config/xremap/config.yml &"

alias roblox="flatpak run org.vinegarhq.Sober"
eval "$(thefuck --alias)"
alias scott="ssh juleswhi@192.168.74.2"
alias r="hyprctl reload"
alias vorp_db='mariadb -h 192.168.74.2 -u vorp -p --skip-ssl vorp'
alias run="make run NAME=J"
VP_NAME=J
NAME=J
alias commit="git add . && git commit -m $1 && git push"
export mcmods=~/.minecraft/mods
export vpn_username=zhkbsr8XPwwyvqMU
export vpn_password=67Nmmr7f4Ha9u88NzS4kncGeXFszbGTb
export ALACRITTY_CONFIG=$HOME/.config/alacritty/alacritty.toml
