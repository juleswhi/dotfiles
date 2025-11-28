#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

FZF_TAB_COMPLETION_PROMPT='❯ '

eval "$(fzf --bash)"

stty -ixon
shopt -s autocd

alias ls='ls --color=auto'
alias grep='grep --color=auto'

EDITOR=nvim

export PATH=$PATH:~/.local/bin

eval "$(oh-my-posh init bash --config ~/.prompt.omp.json)"

# eval "$(starship init bash)"

alias v='nvim'
alias vi='nvim'
alias vim='nvim'

alias fdm="compgen -c | fzf | xargs man"

export ROBOT="192.168.43.1"
export LAPTOP="192.168.1.243"





# alias scott="ssh juleswhi@192.168.74.2"
# alias vorp_db='mariadb -h 192.168.74.2 -u vorp -p --skip-ssl vorp'
alias run="make run NAME=J"
alias commit="git add . && git commit -m $1 && git push"
export mcmods=~/.minecraft/mods
export vpn_username=zhkbsr8XPwwyvqMU
export vpn_password=67Nmmr7f4Ha9u88NzS4kncGeXFszbGTb
export ALACRITTY_CONFIG=$HOME/.config/alacritty/alacritty.toml
. "$HOME/.cargo/env"

alias bat="cat /sys/class/power_supply/BAT0/capacity | notify-send "

export mac=12:e1:7d:f8:a3:e5
eval OPAM_LAST_ENV='/home/callum/.opam/.last-env/env-62d3ec69affbc6fa444ea91fe3b295ff-0'; export OPAM_LAST_ENV;
OPAM_SWITCH_PREFIX='/home/callum/.opam/default'; export OPAM_SWITCH_PREFIX;
CAML_LD_LIBRARY_PATH='/home/callum/.opam/default/lib/stublibs:/usr/lib/ocaml/stublibs:/usr/lib/ocaml'; export CAML_LD_LIBRARY_PATH;
OCAML_TOPLEVEL_PATH='/home/callum/.opam/default/lib/toplevel'; export OCAML_TOPLEVEL_PATH;
MANPATH=':/home/callum/.opam/default/man'; export MANPATH;
PATH='/home/callum/.opam/default/bin:/home/callum/.cargo/bin:/sbin:/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/callum/.local/bin:/home/callum/.local/bin:/home/callum/.local/bin'; export PATH;

export balatro_path=/home/callum/.local/share/Steam/steamapps/compatdata/2379780/pfx/drive_c/users/steamuser/AppData/Roaming/Balatro

export FARMER=~/.steam/steam/steamapps/compatdata/2060160/pfx/drive_c/users/steamuser/AppData/LocalLow/TheFarmerWasReplaced/TheFarmerWasReplaced/Saves/

