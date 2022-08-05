parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1='\n'
PS1=$PS1'\[\e[38;5;32m\]\t '
PS1=$PS1'\[\033[35m\]\u\[\033[37m\]: '
PS1=$PS1'\[\033[01;32m\]\w\[\e[1;34m\]'
PS1=$PS1'$(__git_ps1)\012'
PS1=$PS1''
export PS1=$PS1'\[\033[37m\]\[\033[00m\]\[\033[1;36m\]$ \[\033[00m\]'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxxegedabagaced