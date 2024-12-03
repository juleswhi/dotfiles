. "$HOME/.cargo/env"

export EDITOR="nvim"
export TERMINAL="alacritty"
eval "$(oh-my-posh init bash --config ~/.prompt.omp.json)"

[ -f ~/.bashrc ] && source ~/.bashrc

# ZVM
export ZVM_INSTALL="$HOME/.zvm/self"
export PATH="$PATH:$HOME/.zvm/bin"
export PATH="$PATH:$ZVM_INSTALL/"
