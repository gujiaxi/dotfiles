# My dotfiles

A set of configuration files managed by [Stow](http://www.gnu.org/software/stow/).

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

For this repository, it can used as a Stow root directory containing several packages such as `emacs`, `tmux` and etc. After stowwing any of them, the corresponding symbolinks will be created in the target directory. Below is an example for vim configurations.

``` sh
# Clone this repo.
git clone git@github.com:gujiaxi/dotfiles.git
# Enter the directory.
cd dotfiles/
# Create vim configs in $HOME.
# This will create symbolinks in $HOME
# pointing to everything in vim folder of stow dir.
stow -t $HOME -S vim
```
