[[ $- != *i* ]] && return

stty -ixon
shopt -s autocd

eval $(opam env)
eval "$(fzf --bash)"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias htop='btop'
alias fdm="compgen -c | fzf | xargs man"
alias go_proto_gen="protoc --go_out=. --go_opt=paths=source_relative --go-grpc_out=. --go-grpc_opt=paths=source_relative packet.proto"

export LAPTOP='192.168.1.243'

alias youtube="yt-x"

. "$HOME/.cargo/env"

export EDITOR=nvim
export MANPAGER='nvim +Man!'
export MCMODS=~/.minecraft/mods
export ALACRITTY_CONFIG=$HOME/.config/alacritty/alacritty.toml
export mac=12:e1:7d:f8:a3:e5
export PATH=$PATH:~/.local/bin
export BALATRO_PATH=$HOME/.local/share/Steam/steamapps/compatdata/2379780/pfx/drive_c/users/steamuser/AppData/Roaming/Balatro
eval "$(oh-my-posh init bash --config ~/.prompt.omp.json)"
alias fart="cowsay HII"
