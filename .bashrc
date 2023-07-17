#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '


eval "$(oh-my-posh init bash --config ~/.prompt.omp.json)"

feh --bg-fill ~/Images/Spiderman/LeapOfFaith.jpg
# feh --bg-fill ~/Images/Spiderman/GwenRoom.jpg

alias monitor="xrandr --output DP-4 --mode 1920x1080 --rate 144.00 --right-of HDMI-0 --output HDMI-0 --mode 1920x1080 --rate 60.00"

alias vim="nvim" 

alias lock="i3lock -c 00000000"
. "$HOME/.cargo/env"


alias 1="feh --bg-fill ~/Images/Spiderman/GwenPlane.png"
alias 2="feh --bg-fill ~/Images/Spiderman/MilesFight.jpeg"
alias 3="feh --bg-fill ~/Images/Spiderman/PunkRock.jpeg"
alias 4="feh --bg-fill ~/Images/Spiderman/LeapOfFaith.jpeg"

alias mac="cd ~/OSX-KVM/ ;bash /home/jules/OSX-KVM/OpenCore-Boot.sh"

alias sleep="lock && systemctl suspend"
alias stardew="cd /home/jules/.steam/steam/steamapps/common/'Stardew Valley'/Mods"
alias show="sxiv"
