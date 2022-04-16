#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# drop into fish only if the parent process is not fish
# this allows you to manually enter bash with `bash`
# instead of `bash -norc`, keeping your .bashrc config
if [[ $(ps --no-header --pid=$PPID --format=comm) != "fish" && -z ${BASH_EXECUTION_STRING} ]]
then
    exec fish
fi

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
