#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=100000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/~}"'
                                                        
    ;;
  screen)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/~}"'
    ;;
esac

source $HOME/.local/bin/git-prompt.sh

PS1="\$(__git_ps1 '(%s)')\[\e[0;32m\]\u\[\e[m\]@\h \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]\[\033[0m\]"

PATH=$HOME/.local/bin/:${PATH}

# some more ls aliases
alias ls='ls --color=auto'
alias ll='ls -lF'
alias la='ls -A'
alias l='ls -CF'

export LANG="en_US.UTF-8"
if [ ! -d $HOME/../virtualenvs ]; then
  mkdir $HOME/../virtualenvs;
fi
export WORKON_HOME=$HOME/../virtualenvs
if [ ! -d $HOME/../projects ]; then
  mkdir $HOME/../projects;
fi
export PROJECT_HOME=$HOME/../projects

if [ -f $HOME/.local/bin/virtualenvwrapper.sh ]; then
  source $HOME/.local/bin/virtualenvwrapper.sh;
fi

if [ -f $HOME/.bashrc.local ]; then
  source $HOME/.bashrc.local;
fi

if [ -z "$STY" ]; then
exec screen -dR
fi

export HISTTIMEFORMAT="%s "
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND ; }"'echo $$ $USER "$(history 1)" >> ~/.bash_eternal_history'
