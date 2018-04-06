PATH=/usr/local/bin:$PATH

## Colors, Colors everywhere ##
BLUE="\[\e[0;34m\]"
RED="\[\e[0;31m\]"
VIOLET="\[\e[0;35m\]"
YELLOW="\[\e[0;33m\]"
WHITE="\[\e[0;37m\]"
NORMAL="\[\e[0m\]"

export CLICOLOR=1

# Set git autocompletion and PS1 integration
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

export GIT_PS1_SHOWDIRTYSTATE=1 GIT_PS1_SHOWSTASHSTATE=1 GIT_PS1_SHOWUNTRACKEDFILES=1
export PS1='\u@\h:\w$(__git_ps1) \$ '

#### Alias ####
alias ll='ls -l'
alias la='ls -la'
alias server='python -m SimpleHTTPServer'
