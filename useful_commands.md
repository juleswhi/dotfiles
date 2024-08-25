curl -s https://ohmyposh.dev/install.sh | bash -s

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
