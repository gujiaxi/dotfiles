####################
# zgen settings
####################
export ZGEN_DIR=$HOME/.zsh/.zgen
export ZGEN_INIT=$HOME/.zsh_zgen
source $ZGEN_DIR/zgen.zsh
# START of Plug
if ! zgen saved; then
    zgen oh-my-zsh
    zgen oh-my-zsh plugins/colored-man-pages
    zgen oh-my-zsh plugins/common-aliases
    zgen oh-my-zsh plugins/emacs
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/tmux
    zgen oh-my-zsh plugins/z
    zgen load      nksoff/muslim muslim
    zgen load      zsh-users/zsh-syntax-highlighting
    zgen load      tarruda/zsh-autosuggestions
    zgen load      djui/alias-tips
    zgen load      supercrabtree/k
    zgen save
fi
# END of Plug

####################
# custom settings
####################
# Set default editor
export EDITOR="vim"
# Add ruby gems to PATH
export PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"
