# Blah

## .bashrc vs .bash_profile

When invoked, Bash reads and executes commands from a set of startup files. What
files are read depends on whether the shell is invoked as an interactive login
or non-login shell. 

### Interactive vs non-interactive shell:

A shell that is 'user-facing' (ie, gets commands from a user through a terminal
is `interactive` and a shell that is not user facing (like when scripts are
executed) is `non-interactive`. 


### Interactive login vs non-login shell:

A `login` shell is invoked when a users login to the terminal either remotely
via ssh or locally or when Bash is launched with the `--login` option. 

An interactive `non-login` shell is invoked from the login shell when opening a
terminal tab.

When invoked as an interactive login shell, Bash looks for the `/etc/profile`
file and if it exists, those commands are run. Then Bash searches for
`~/bash_profile`, `~/bash_login` and `~/.profile` files and (in that order)
executes the commands in those.

When invoked as an interactive non-login shell, it reads and executes commands
from `~/.bashrc` if it exists and is reasable.

SO: 
- use `.bash_profile` to run ocmmands that should only run once, such as
customising the $PATH variable.
- use `.bashrc` for commands that should run everytime you launch a new shell.

Typically bash_profile will include the following to ensure that bashrc is
sourced:

```
if [ -f ~/.bashrc ]; then 
        . ~/.bashrc
fi
```

# ZSH vs Bash

Zsh is an extended version of bash with a bunch more features. Some nice ones:
automatic cd, recursive path expansion, spelling correction, plugin and theme
support.

Oh-My-Zsh is a popular plugin framework for zsh and comes with some built in
plugins and themes.

Can add plugins in the .zsh file.
examples: git plugin 

# Vim

When you start vim, it first processes your `.vimrc` file and then scans all the
directories in `~/.vim` for plugins contained in `pack/*/start`

vim wont by default have this dir. So gotta create it with:

`mkdir -p ~/.vim/pack/vendor/start`

Now you can place all plugins there and they will start automatically when you
start vim. Example, for NerdTree:

`git clone --depth 1 https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree`

If you dont want the plugin to load automatically when you launch vim than you
can create an `opt` dir in `~/.vim/pack/vendor` dir. Then to load that package:

`:packadd foo`

## Add packages:

```
cd ~/dotfiles
git submodule init
git submodule add https://github.com/vim-airline/vim-airline.git vim/pack/shapeshed/start/vim-airline
git add .gitmodules vim/pack/shapeshed/start/vim-airline
git commit
```









