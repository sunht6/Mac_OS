# If you come from bash you might have to change your $PATH.
export PATH=$HOME/work/bin:$HOME/bin:/usr/local/bin:$HOME/oracle/instantclient_12_2:$PATH

###############FOR ORACLE_CLIENT################## 
export ORACLE_BASE=/Users/sun/oracle/instantclient_12_2
export ADMIN_HOME=$ORACLE_BASE/network/admin
export ORACLE_HOME=${ORACLE_BASE}
# Path to your oh-my-zsh installation.
export ZSH=/Users/sear/.oh-my-zsh
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
alias sd='sqlplus sd/sd@hnacttst_11g_36'
alias h=history
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="steeef"
ZSH_THEME="ys"
DEFAULT_USER="sun"
# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# costume
alias C='clear'
alias ll='ls -l'
alias la='ls -a'
alias vi='vim'
alias grep="grep --color=auto"
alias -s html=vi   # 在命令行直接输入后缀为 html 的文件名，会在 TextMate 中打开
alias -s lua=vi     # 在命令行直接输入 ruby 文件，会在 TextMate 中打开
alias -s cpp=vi       # 在命令行直接输入 python 文件，会用 vim 中打开，以下类似
alias -s h=vi
alias -s c=vi
alias -s dcd=vi
alias -s txt=vi
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias G='grep -nri'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
#对比当前本地的工作拷贝文件(working copy)和任意版本A的差异
#svn diff -rA
#open Diablo\ II.app --args -window
#find ./ -name "*.cfg" -exec sed -i "s/bd@10.1.245.136:1521/bd@10.1.241.87/g" {} \;
#撤销撤销 ctrl+r
#rsync -rav --delete -e ssh  /cygdrive/d/asiainfo/VerisBilling/ob_dev/tianjin/openboss60/rating_billing/user_mdb billbm@10.21.20.43:/tjgrp/billbm/work/products/openboss60/rating_billing/user_mdb
#⌃ + u ：清空当前行
#⌃ + a ：移动到行首
#⌃ + e ：移动到行尾
#⌃ + f ：向前移动
#⌃ + b ：向后移动
#⌃ + p ：上一条命令
#⌃ + n ：下一条命令
#⌃ + r ：搜索历史命令
#⌃ + y ：召回最近用命令删除的文字
#⌃ + h ：删除光标之前的字符
#⌃ + d ：删除光标所指的字符
#⌃ + w ：删除光标之前的单词
#⌃ + k ：删除从光标到行尾的内容
#⌃ + t ：交换光标和之前的字符
#使man结果高亮
# man page highlight
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline
#autojump
#/usr/local/etc/profile.d/autojump.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#sshpass
#tmux vim  一致
#alias tmux="TERM=screen-256color-bce tmux"
alias tmux="TERM=screen-256color tmux -2"
export TERM=screen-256color



