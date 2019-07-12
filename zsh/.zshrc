# >>>> plugins managed by zgen <<<<
# ---- run `zgen reset` if anything is wrong

# set zgen env
export ZGEN_DIR="$HOME/.zsh_zgen"
# bootstrap zgen
if ! [[ -d $ZGEN_DIR ]]; then
    print "Installing zgen ..."
    command -v git >/dev/null 2>&1 && \
        git clone https://github.com/tarjoilija/zgen $ZGEN_DIR >/dev/null 2>&1
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
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/z
    zgen load      nksoff/muslim muslim
    zgen load      supercrabtree/k
    zgen load      zsh-users/zsh-autosuggestions
    zgen load      zsh-users/zsh-syntax-highlighting
    zgen load      gujiaxi/zsh-handy-functions
    zgen save
fi

# >>>> PATH settings <<<<

# homebrew path
PATH="/usr/local/bin:$PATH"
# ! basicTeX path
PATH="/Library/TeX/texbin:$PATH"
# ! java env from android studio
PATH="/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home/bin:$PATH"
# ! my own scripts
PATH="$HOME/.local/bin:$PATH"
# [ZSH ONLY] prevent duplicate path
typeset -U path

# >>>> other settings <<<<

# default editor
export EDITOR="vim"
# rg: nicer grep
command -v rg >/dev/null 2>&1 && alias rg="rg -Li"
# trash: cli trash
command -v trash >/dev/null 2>&1 && alias rmm="trash"
# calculate disk usage
alias duu="sh -c 'du -hs .[^.]* * | sort -rh'"
if [[ $OSTYPE == darwin* ]]; then
    # gnupg path and tty
    export GPG_TTY=$(tty)
    # homebrew-bottles repo
    export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"
    # TextEdit.app
    alias te='open -a TextEdit'
    # Delete .DS_Store
    alias clds="find . -type f -name .DS_Store -delete"
    # enable proxy
    alias hi="export http_proxy=http://localhost:8888 https_proxy=http://localhost:8888;"
fi
