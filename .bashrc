#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '







# environment
export EDITOR=nvim
export CLICOLOR=1
export PATH
export HISTCONTROL=ignoreboth
export VISUAL=vim 
export QT_QPA_PLATFORMTHEME=qt6ct

# readline macros
bind "set completion-ignore-case on"

# sets navigation mode to vi 
set -o vi


# ALIASES #
# git bare repo
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
# core commands
alias ..='cd ..'
alias ls='lsd -l -A'
alias mv='mv -i'
alias rm='rm -i'
alias cat='bat'

# editor
alias v='nvim'
alias sv='sudo nvim'

# pacman
alias pac='sudo pacman'
alias pacor='sudo pacman -Qtdq | sudo pacman -Rns -'
#alias yay='yay --aur'

# grub
alias updategrub='sudo grub-mkconfig -o /boot/grub/grub.cfg'

# other utilities
alias fan='razer-cli write fan ac'


# ricing wip
alias configwm='v ~/.config/bspwm/bspwmrc'
alias configpb='v ~/.config/polybar/config.ini'
alias configal='v ~/.config/alacritty/alacritty.yml'
alias configsx='v ~/.config/sxhkd/sxhkdrc'
alias confignv='v ~/.config/nvim/init.vim'
alias configpi='v ~/.config/picom/picom.conf'

alias confdir='cd ~/.config/'


# test-font perl script
# ---------------------
PATH="/home/steven/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/steven/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/steven/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/steven/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/steven/perl5"; export PERL_MM_OPT;

alias tf='perl ~/test-fonts.pl'


# debug alias
alias 360='xrandr --output eDP-1-1 --mode 1920x1080_360.00'




