#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -al --color=auto'
alias grep='grep --color=auto'
alias em="emacs -nw"
# alias copy="xclip -sel c <"
export PATH=$PATH:~/.cargo/bin/
export PATH=$PATH:~/.local/bin/
export TERMINAL=alacritty
export EDITOR=nvim
PS1='[\u@\h \W]\$ '
eval "$(fzf --bash)"
eval "$(zoxide init bash)"
alias cd=z

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/demonaarwu/.lmstudio/bin"
