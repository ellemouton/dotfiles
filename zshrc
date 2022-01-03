# zsh stuff
export ZSH="/Users/ellemouton/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(
        git
)
source $ZSH/oh-my-zsh.sh

# Go stuff
export GOPATH=/Users/ellemouton/go
export PATH=$PATH:$GOPATH/bin

# vi bindings on command line 
# For some reason, this has gotta be before the fzf sourcing
# below. Otherwise CTRL-R for fzf command line history doesnt 
# work.
set -o vi

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# environment variables
export GENSCRATCHPATH=/Users/ellemouton/scratch/c++/play

# aliases
alias gm="genmake"
alias gs="genscratch"
alias sshthunder="ssh ubuntu@ec2-52-210-53-99.eu-west-1.compute.amazonaws.com"
alias LL="cd ~/go/src/github.com/lightninglabs"

# Ruby stuff. Honestly dont remember using ruby... but anyways.
eval "$(rbenv init -)"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.6.6/bin:$PATH"

# Enable AWS CLI tab-completion
complete -C aws_completer aws
