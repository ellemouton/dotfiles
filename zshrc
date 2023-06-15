# zsh stuff
export ZSH="/Users/elle/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(
        git
)
source $ZSH/oh-my-zsh.sh

# Go stuff
#export GOROOT=/opt/homebrew/Cellar/go/1.18.3/libexec
#export GOROOT=/Users/elle/sdk/go1.18.4
export GOROOT=/usr/local/go
export GOPATH=/Users/elle/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH=/opt/homebrew/bin:$PATH
export PATH=/opt/homebrew/Cellar:$PATH
export EDITOR='vim'

# vi bindings on command line 
# For some reason, this has gotta be before the fzf sourcing
# below. Otherwise CTRL-R for fzf command line history doesnt 
# work.
set -o vi

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# environment variables

# aliases
alias ll="ls -la"
alias sz="source ~/.zshrc"
alias g2="goto go"

## git
alias gcp="git cherry-pick"
alias gcc="git cherry-pick --continue"
alias grc="git rebase --continue"
alias gaa="git add -A"
alias gaaa="git add -A && git commit --amend"
alias gca="git commit --amend"
alias gc="git commit"
alias gs="git status"
alias gfu="git fetch upstream && git merge upstream/master"
alias gfum="git fetch upstream && git merge upstream/main"
alias gl="git log --oneline --graph"
alias gla="git log --oneline --graph --all"
alias gca="git commit --amend"
alias grm="git rebase -i master"
alias gas="git rebase --autosquash -i master"

## ssh 
alias hetzner="ssh admin@135.181.199.179"


# Enable AWS CLI tab-completion
complete -C aws_completer aws

## regtest env setup
# source /Users/elle/LL/dev-resources/functions.sh
