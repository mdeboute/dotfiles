archey

autoload -U colors && colors

# Set up aliases
alias h=history
alias la='ls -a'
alias cl='clear'
alias lsd='ls -ld *(-/DN)'
alias bup='brew update && brew upgrade && brew cleanup'
alias ls='ls -GFh'

alias gsee='git log --graph --oneline'

# navigation aliases
alias wrk="cd ~/Desktop/yourWorkFolder"
alias prj="cd ~/Desktop/yourPersonnalFolder/"
alias d="cd ~/Desktop/"

# conda env
alias pev=". /opt/anaconda3/bin/activate && conda activate /opt/anaconda3;"

# open ~/.zshrc in using the default editor specified in $EDITOR
alias ec="$EDITOR $HOME/.zshrc"

# source ~/.zshrc
alias sc="source $HOME/.zshrc"

export EDITOR=/usr/bin/vim

# macOS aliasses
if [[ $OSTYPE == darwin* ]]; then
alias flsh='dscacheutil -flushcache'
# Apps
alias brws="open -a /Applications/Safari.app"
fi

source /Users/mdeboute/.zsh/themes/dracula.zsh-theme
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
