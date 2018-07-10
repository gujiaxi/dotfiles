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
    zgen oh-my-zsh plugins/extract
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/osx
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/z
    zgen oh-my-zsh plugins/sublime
    zgen load      djui/alias-tips
    zgen load      nksoff/muslim muslim
    zgen load      supercrabtree/k
    zgen load      tarruda/zsh-autosuggestions
    zgen load      zsh-users/zsh-syntax-highlighting
    zgen save
fi
# END of Plug

####################
# custom settings
####################
# default editor
export EDITOR="vim"
# default shell
export SHELL="/usr/local/bin/zsh"
# homebrew path
export PATH="/usr/local/bin:$PATH"
# ! basicTeX path
export PATH="/Library/TeX/texbin:$PATH"
# ! gnupg path and tty
export GPG_TTY=$(tty)
# ! homebrew-bottles repo
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"
# ! java env from android studio
export PATH="/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home/bin:$PATH"
# ! Delete to trash
if hash trash; then alias rmm="trash"; fi
# ! Delete .DS_Store
alias clds="find . -name '*.DS_Store' -type f -delete"
# ! abd toolkit
alias adb="$HOME/Library/Android/sdk/platform-tools/adb"
# ! zquote
alias zquote="$HOME/Dropbox/Workspace/scripts/zQuote/bin/zquote"
# ! let's call it a day
alias ciad="$HOME/Dropbox/Workspace/scripts/ciad.sh"

####################
# functions
####################
# Recursively find files by name
function rf () {
    if hash rg 2> /dev/null; then
        rg --files --iglob "*$1*"
    else
        find . -iname "*$1*"
    fi
}
