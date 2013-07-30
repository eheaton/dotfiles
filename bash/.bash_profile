source "`brew --prefix`/etc/grc.bashrc"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
alias b-reel_projects='cd /Users/eheaton/Documents/Projects/B-Reel/'
alias compc='compass compile'
alias compw='compass watch'
alias compcc='compass clean; compass compile'

alias artisan='php artisan'
alias lc='php artisan generate:controller'
alias lv='php artisan generate:view'
alias lm='php artisan generate:model'
alias art='php artisan'

alias gp='git pull'
alias gpp='git pull; git push;'

export EDITOR='subl -w'

export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# Enable iTunes Remote Control
# sudo chmod a+x /System/Library/CoreServices/rcd.app/Contents/MacOS/rcd
# Disable iTunes Remote
# sudo chmod a-x /System/Library/CoreServices/rcd.app/Contents/MacOS/rcd
# killall -9 rcd

# PS1='\[\e[0;31m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '
export PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] "

# sets up proper alias commands when called
alias ls='ls -G'
alias ll='ls -la'

# Setting PATH for MacPython 2.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
export PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
