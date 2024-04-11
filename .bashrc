#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='$ '
alias v='~/.nvim-bin/bin/nvim'
alias vi='~/.nvim-bin/bin/nvim'
alias vim='~/.nvim-bin/bin/nvim'
# alias cat='bat'

WALLPAPER=$(cat /home/juleswhite/.wallpaper.txt)

feh --bg-scale $WALLPAPER

# . "$HOME/.cargo/env"
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools
export PATH=$PATH:/usr/local/go/bin

export PATH="$PATH:/home/jules/.maven/bin"
alias stardew="cd ~/.steam/debian-installation/steamapps/common/Stardew\ Valley/"
