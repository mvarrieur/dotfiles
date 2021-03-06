if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Terminal colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Git branch in terminal
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# Git Bash Completion
source ~/git-completion.bash

# Aliases
alias re='rbenv exec'
alias brake='bundle exec rake'

alias public='cd ~/Leaf/leafpublic/'
alias styles='cd ~/Leaf/leaf-styleguide'
alias home='cd ~/Leaf/leafhome'
alias settings='cd ~/Leaf/leafsettings'
alias reports='cd ~/Leaf/leafreports'
alias tools='cd ~/Leaf/leaftools/'
alias gitprune='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'

# Homebrew before system tools
export PATH=/usr/local/bin:$PATH

