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

PS1='$ '
EDITOR=nvim

alias v='nvim'
alias vi='nvim'

export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools
export PATH=$PATH:/usr/local/go/bin

export PATH=$PATH:~/.local/bin

eval "$(oh-my-posh init bash --config ~/.prompt.omp.json)"

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
alias scott="ssh juleswhi@scott.qnet.org.uk"
alias r="hyprctl reload"
