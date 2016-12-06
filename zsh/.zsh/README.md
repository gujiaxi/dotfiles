Zsh configurations by Isaac
=====

## Install

1. Install [zgen](https://github.com/tarjoilija/zgen):

   ``` sh
   git clone https://github.com/tarjoilija/zgen.git ~/.zsh/.zgen
   ```

2. Make a soft link `.zshrc` from `zshrc` in this directory:

   ``` sh
   git clone https://github.com/gujiaxi/dotfiles
   cp dotfiles/.zsh/.zshrc ~/.zshrc
   ```

2. Install the needed plugins:

   ``` sh
   zsh .zshrc
   zgen update
   ```
