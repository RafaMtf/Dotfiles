#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

wal -q -i ~/Downloads/wallpaper.jpg
cat ~/.cache/wal/sequences &

neofetch
