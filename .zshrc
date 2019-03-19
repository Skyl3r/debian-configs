# Requires changed for your home path
# Path to your oh-my-zsh installation.
export ZSH="/home/skyl3r/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# You need dircolors. I used trapd00r/LS_COLORS
# Obviously $HOME/.dircolors needs to point to a file that exists.
eval $( dircolors -b $HOME/.dircolors )
