# My dotfiles

A set of configuration files managed by [stow](http://www.gnu.org/software/stow/).

## Get started

```
stow (GNU Stow)
SYNOPSIS:
    stow [OPTION ...] [-D|-S|-R] PACKAGE ... [-D|-S|-R] PACKAGE ...
OPTIONS:
    -d DIR, --dir=DIR     Set stow dir to DIR (default is current dir)
    -t DIR, --target=DIR  Set target to DIR (default is parent of stow dir)
    -S, --stow            Stow the package names that follow this option
    -D, --delete          Unstow the package names that follow this option
    -R, --restow          Restow (like stow -D followed by stow -S)
```

This repository can be used as a stow root directory containing several packages such as `emacs`, `tmux`, etc. After "stowing" any of them, the corresponding symlink will be created in the target directory. Below is an example for configuring vim.

``` sh
# Clone this repo.
git clone git@github.com:gujiaxi/dotfiles.git
# Enter the directory.
cd dotfiles/
# Create vim configs in $HOME.
# This will create a symlink in $HOME
# pointing to everything in vim folder of stow dir.
stow -t ~ -S vim
```
