#############################
#  plugins managed by zgen  #
#############################

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
    zgen load      djui/alias-tips
    zgen load      nksoff/muslim muslim
    zgen load      supercrabtree/k
    zgen load      tarruda/zsh-autosuggestions
    zgen load      zsh-users/zsh-syntax-highlighting
    zgen save
fi
# END of Plug

###################
#  PATH settings  #
###################

# homebrew path
PATH="/usr/local/bin:$PATH"
# ! ruby gem path
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
# ! basicTeX path
PATH="/Library/TeX/texbin:$PATH"
# ! java env from android studio
PATH="/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home/bin:$PATH"
# ! my own scripts
PATH="$HOME/Dropbox/Workspace/utils/_local/bin:$PATH"
PATH="$HOME/.local/bin:$PATH"
# [ZSH ONLY] prevent duplicate
typeset -U path

####################
#  other settings  #
####################

# default editor
export EDITOR="vim"
# default shell
export SHELL="/usr/local/bin/zsh"
# ! gnupg path and tty
export GPG_TTY=$(tty)
# ! homebrew-bottles repo
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"
# ! trash: cli trash
hash trash 2> /dev/null && alias rmm="trash"
# ! TextEdit.app
alias te='open -a TextEdit'
# ! Delete .DS_Store
alias clds="find . -name '*.DS_Store' -type f -delete"
# ! calculate disk usage
alias duu="sh -c 'du -hs .[^.]* * | sort -rh'"
# ! abd toolkit
alias adb="$HOME/Library/Android/sdk/platform-tools/adb"
# ! enable proxy
alias hi="export all_proxy=socks5://localhost:8889;"

###############
#  Functions  #
###############

# Recursively find files by name
function rf() {
    if hash rg 2> /dev/null; then
        rg --hidden -l --files --iglob "*$1*"
    else
        find . -iname "*$1*"
    fi
}
# Swap content between two files
function swap() {
    local TMPFILE=tmp.$$
    mv "$1" $TMPFILE && mv "$2" "$1" && mv $TMPFILE $2
}
