## juleswhi archlinux install script

### Required Packages

sudo pacman -Syyu --noconfirm
sudo pacman --noconfirm -S git neovim vim curl zip unzip feh alacritty i3 xorg xorg-xinit sxiv firefox tmux

rm ~/.bash_profile

### Prompt
curl -s https://ohmyposh.dev/install.sh | bash -s
stow .

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ~

## Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

## Packer neovim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "Done!"
