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


# open ~/.zshrc in using the default editor specified in $EDITOR
alias ec="$EDITOR $HOME/.zshrc"

# source ~/.zshrc
alias sc="source $HOME/.zshrc"

export EDITOR=/usr/bin/vim

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

### These next lines were added in the steps above

# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# pipx
export PATH="~/.local/bin:$PATH"

# poetry
export PATH="$HOME/.poetry/bin:$PATH"


### Add these next lines to protect your system python from
### polution from 3rd-party packages

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true

# commands to override pip restriction above.
# use `gpip` or `gpip3` to force installation of
# a package in the global python environment
# Never do this! It is just an escape hatch.
gpip(){
   PIP_REQUIRE_VIRTUALENV="" pip "$@"
}
gpip3(){
   PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}


source ~/.zsh/themes/dracula.zsh-theme
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/wakatime/wakatime.plugin.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
