################################################################################
#  CLONE ZGEN FIRST: 'git clone git@github.com:tarjoilija/zgen.git ~/.zsh_zgen`
################################################################################
export ZGEN_DIR=$HOME/.zsh_zgen
source $ZGEN_DIR/zgen.zsh
# START of Plug
if ! zgen saved; then
    zgen oh-my-zsh
    zgen oh-my-zsh plugins/brew
    zgen oh-my-zsh plugins/colored-man-pages
    zgen oh-my-zsh plugins/common-aliases
    zgen oh-my-zsh plugins/extract
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/osx
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/z
    zgen load      nksoff/muslim muslim
    zgen load      zsh-users/zsh-syntax-highlighting
    zgen load      tarruda/zsh-autosuggestions
    zgen load      djui/alias-tips
    zgen load      supercrabtree/k
    zgen load      qianxinfeng/vscode
    zgen save
fi
# END of Plug

####################
# custom settings
####################
# Set default editor
export EDITOR="vim"
# Homebrew PATH
export PATH=/usr/local/bin:$PATH
# BasicTeX PATH
export PATH=/Library/TeX/texbin:$PATH
# OpenCV PATH
export PATH=/usr/local/opt/opencv3/bin:$PATH
