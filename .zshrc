archey

autoload -U colors && colors

# Set up some really useful aliases
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

# conda environment (pretty useful for data science)
alias pev=". /opt/anaconda3/bin/activate && conda activate /opt/anaconda3;"

# open ~/.zshrc in using the default editor specified in $EDITOR
alias ec="$EDITOR $HOME/.zshrc"

# source ~/.zshrc
alias sc="source $HOME/.zshrc"

export EDITOR=/usr/bin/vim #Vim team for me

# macOS aliasses
if [[ $OSTYPE == darwin* ]]; then
alias flsh='dscacheutil -flushcache' #DNS flush --> no more cookies, more anonymity
# Apps
alias brws="open -a /Applications/Safari.app"
fi

source ~/.zsh/themes/dracula.zsh-theme
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
