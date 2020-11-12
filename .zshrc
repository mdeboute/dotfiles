#!/usr/bin/zsh

archey

autoload -U colors && colors

# Set up aliases
alias h=history
alias la='ls -a'
alias cl='clear'
alias lsd='ls -ld *(-/DN)'
alias bup='brew update && brew upgrade && brew cleanup'
alias bl='brew list'
alias ls='ls -GFh'

alias gsee='git log --graph --oneline'
alias gback='git reset --hard'

# navigation aliases
alias wrk="cd ~/Desktop/WorkFolder"
alias prj="cd ~/Desktop/Project/"
alias d="cd ~/Desktop/"

# conda env
alias pev=". /opt/anaconda3/bin/activate && conda activate /opt/anaconda3;"

export EDITOR=/usr/bin/vim

# open ~/.zshrc in using the default editor specified in $EDITOR
alias ec="$EDITOR $HOME/.zshrc"

# source ~/.zshrc
alias sc="source $HOME/.zshrc"

# Create a new directory and enter it
function mkd() {
    mkdir -p "$@" && cd "$@"
}

# macOS aliasses
if [[ $OSTYPE == darwin* ]]; then
alias flsh='dscacheutil -flushcache'
# Apps
alias brws="open -a /Applications/Safari.app"
fi

source ~/.zsh/themes/dracula.zsh-theme
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/wakatime/wakatime.plugin.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
