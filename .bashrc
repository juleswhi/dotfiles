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

# pnpm
export PNPM_HOME="/home/juleswhite/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(oh-my-posh init bash --config ~/.prompt.omp.json)"


export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/home/juleswhite/.zig
