# zplug init
export ZPLUG_HOME=$HOME/.zsh/.zplug
source $ZPLUG_HOME/init.zsh
# plugin list
zplug "themes/amuse", from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/common-aliases", from:oh-my-zsh
zplug "plugins/emacs", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh
zplug "plugins/z", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting"
zplug "tarruda/zsh-autosuggestions"
zplug "djui/alias-tips"
zplug "supercrabtree/k"
zplug "zplug/zplug"
# load plugins
zplug load
