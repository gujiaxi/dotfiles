Zsh configurations by Isaac
=====

## Install

1. Install [zgen](https://github.com/tarjoilija/zgen):

   ```
   $ git clone https://github.com/tarjoilija/zgen.git ~/.zgen
   ```

2. Make a soft link `.zshrc` from `zshrc` in this directory:

   ```
   $ ls -n <PATH-TO-ZSHRC> .zshrc
   ```

2. Install the needed plugins:

   ```
   $ zsh .zshrc
   $ zplug install
   ```
