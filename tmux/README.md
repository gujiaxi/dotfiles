Tmux Configurations by Isaac
=====

Tmux Plugin Manager ([tpm](https://github.com/tmux-plugins/tpm)) is required.

## Install

1. Install tpm:

   ```
   $ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
   ```

2. Create a soft link to `tmux.conf` in this directory:

   ```
   $ ln -s <PATH_TO_TMUX.CONF> ~/.tmux.conf
   ```

3. Reload Tmux environment:

   ```
   $ tmux source ~/.tmux.conf
   ```
