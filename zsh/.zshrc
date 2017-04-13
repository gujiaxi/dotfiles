########################################################################
#  'git clone git@github.com:tarjoilija/zgen.git ~/.zsh_zgen`
########################################################################
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
    zgen oh-my-zsh plugins/catimg
    zgen oh-my-zsh plugins/sublime
    zgen load      djui/alias-tips
    zgen load      nksoff/muslim muslim
    zgen load      supercrabtree/k
    zgen load      tarruda/zsh-autosuggestions
    zgen load      zsh-users/zsh-syntax-highlighting
    if [[ -n /usr/local/fzf ]]; then
        zgen load junegunn/fzf shell/completion.zsh
        zgen load junegunn/fzf shell/key-bindings.zsh
        export FZF_DEFAULT_OPTS="--height 40% --reverse --border --inline-info"
    fi
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
# gpg instead of gpg1
export PATH=/usr/local/opt/gnupg/libexec/gpgbin:$PATH
# homebrew-bottles repo
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
# MPEG-DASH Player
alias osmo=/Applications/Osmo4.app/Contents/MacOS/Osmo4
