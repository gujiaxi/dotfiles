################################
# Use zgen to manage plugins
################################
# set zgen env
export ZGEN_DIR=$HOME/.zsh_zgen
# bootstrap zgen
if ! [[ -d $ZGEN_DIR ]]; then
    puts 'Installing' 'zgen'
    command -v git > /dev/null 2>&1 && \
        env git clone https://github.com/tarjoilija/zgen.git $ZGEN_DIR > /dev/null 2>&1
fi
# source zgen
source $ZGEN_DIR/zgen.zsh
# START of Plug
if ! zgen saved; then
    zgen oh-my-zsh
    zgen oh-my-zsh plugins/colored-man-pages
    zgen oh-my-zsh plugins/common-aliases
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/z
    zgen oh-my-zsh plugins/sublime
    zgen load      djui/alias-tips
    zgen load      nksoff/muslim muslim
    zgen load      tarruda/zsh-autosuggestions
    zgen load      zsh-users/zsh-syntax-highlighting
    zgen save
fi
# END of Plug

####################
# custom settings
####################
# Set Editor
export EDITOR="vim"
# Set Zsh
export SHELL="/usr/local/bin/zsh"
# Add Homebrew
export PATH="/usr/local/bin:$PATH"
# Add BasicTeX
export PATH="/Library/TeX/texbin:$PATH"
# Add OpenCV
export PATH="/usr/local/opt/opencv3/bin:$PATH"
# Add gpg
export PATH="/usr/local/opt/gnupg/libexec/gpgbin:$PATH"
export GPG_TTY=$(tty)
# Set homebrew-bottles repo
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"
# Proxy
export https_proxy=http://127.0.0.1:8888
export http_proxy=http://127.0.0.1:8888
# Alias MPEG-DASH Player
alias osmo="/Applications/Osmo4.app/Contents/MacOS/Osmo4"
# Pastebins
alias ix="curl -n -F 'f:1=<-' ix.io"
# Be cautious
if hash trash; then
    alias rm="trash"
fi
