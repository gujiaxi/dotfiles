Tmux Configurations by Isaac
=====

Tmux Plugin Manager ([tpm](https://github.com/tmux-plugins/tpm)) is required.

## Install

1. Install tpm:

   ``` sh
   git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
   ```

2. Create a soft link to `tmux.conf` in this directory:

   ``` sh
   git clone https://github.com/gujiaxi/dotfiles
   cp dotfiles/.tmux ~/.tmux
   ln -s ~/.tmux/.tmux.conf ~/.tmux.conf
   ```

3. Reload Tmux environment:

   ``` sh
   tmux source ~/.tmux.conf
   ```
