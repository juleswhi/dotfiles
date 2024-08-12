#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

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

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/home/juleswhite/.zig
alias music="termusic"

alias find-man="compgen -c | fzf | xargs man"
. "$HOME/.cargo/env"
