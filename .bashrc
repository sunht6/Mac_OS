# To the extent possible under law, the author(s) have dedicated all 
# copyright and related and neighboring rights to this software to the 
# public domain worldwide. This software is distributed without any warranty. 
# You should have received a copy of the CC0 Public Domain Dedication along 
# with this software. 
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>. 

# base-files version 4.2-4

# ~/.bashrc: executed by bash(1) for interactive shells.

# The latest version as installed by the Cygwin Setup program can
# always be found at /etc/defaults/etc/skel/.bashrc

# Modifying /etc/skel/.bashrc directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bashrc) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benifitial to all, please feel free to send
# a patch to the cygwin mailing list.

# User dependent .bashrc file

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Shell Options
#
# See man bash for more options...
#
# Don't wait for job termination notification
# set -o notify
#
# Don't use ^D to exit
# set -o ignoreeof
#
# Use case-insensitive filename globbing
# shopt -s nocaseglob
#
# Make bash append rather than overwrite the history on disk
# shopt -s histappend
#
# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
# shopt -s cdspell

# Completion options
#
# These completion tuning parameters change the default behavior of bash_completion:
#
# Define to access remotely checked-out files over passwordless ssh for CVS
# COMP_CVS_REMOTE=1
#
# Define to avoid stripping description in --option=description of './configure --help'
# COMP_CONFIGURE_HINTS=1
#
# Define to avoid flattening internal contents of tar files
# COMP_TAR_INTERNAL_PATHS=1
#
# Uncomment to turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
# [[ -f /etc/bash_completion ]] && . /etc/bash_completion

# History Options
#
# Don't put duplicate lines in the history.
# export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
#
# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit'
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well
#
# Whenever displaying the prompt, write the previous line to disk
# export PROMPT_COMMAND="history -a"

# Aliases
#
# Some people use a different file for aliases
# if [ -f "${HOME}/.bash_aliases" ]; then
#   source "${HOME}/.bash_aliases"
# fi
#
# Some example alias instructions
# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.
#
# Interactive operation...
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
#
# Default to human readable figures
# alias df='df -h'
# alias du='du -h'
#
# Misc :)
# alias less='less -r'                          # raw control characters
# alias whence='type -a'                        # where, of a sort
# alias grep='grep --color'                     # show differences in colour
# alias egrep='egrep --color=auto'              # show differences in colour
# alias fgrep='fgrep --color=auto'              # show differences in colour
#
# Some shortcuts for different directory listings
# alias ls='ls -hF --color=tty'                 # classify files in colour
#alias ls='ls --color=auto --format=vertical'
alias ls='ls --color=auto'
# alias ll='ls -l'                              # long list
# alias la='ls -A'                              # all but . and ..
# alias l='ls -CF'                              #

# Umask
#
# /etc/profile sets 022, removing write perms to group + others.
# Set a more restrictive umask: i.e. no exec perms for others:
# umask 027
# Paranoid: neither group nor others have any perms:
# umask 077

# Functions
#
# Some people use a different file for functions
# if [ -f "${HOME}/.bash_functions" ]; then
#   source "${HOME}/.bash_functions"
# fi
#
# Some example functions:
#
# a) function settitle
# settitle () 
# { 
#   echo -ne "\e]2;$@\a\e]1;$@\a"; 
# }
# 
# b) function cd_func
# This function defines a 'cd' replacement function capable of keeping, 
# displaying and accessing history of visited directories, up to 10 entries.
# To use it, uncomment it, source this file and try 'cd --'.
# acd_func 1.0.5, 10-nov-2004
# Petar Marinov, http:/geocities.com/h2428, this is public domain
# cd_func ()
# {
#   local x2 the_new_dir adir index
#   local -i cnt
# 
#   if [[ $1 ==  "--" ]]; then
#     dirs -v
#     return 0
#   fi
# 
#   the_new_dir=$1
#   [[ -z $1 ]] && the_new_dir=$HOME
# 
#   if [[ ${the_new_dir:0:1} == '-' ]]; then
#     #
#     # Extract dir N from dirs
#     index=${the_new_dir:1}
#     [[ -z $index ]] && index=1
#     adir=$(dirs +$index)
#     [[ -z $adir ]] && return 1
#     the_new_dir=$adir
#   fi
# 
#   #
#   # '~' has to be substituted by ${HOME}
#   [[ ${the_new_dir:0:1} == '~' ]] && the_new_dir="${HOME}${the_new_dir:1}"
# 
#   #
#   # Now change to the new dir and add to the top of the stack
#   pushd "${the_new_dir}" > /dev/null
#   [[ $? -ne 0 ]] && return 1
#   the_new_dir=$(pwd)
# 
#   #
#   # Trim down everything beyond 11th entry
#   popd -n +11 2>/dev/null 1>/dev/null
# 
#   #
#   # Remove any other occurence of this dir, skipping the top of the stack
#   for ((cnt=1; cnt <= 10; cnt++)); do
#     x2=$(dirs +${cnt} 2>/dev/null)
#     [[ $? -ne 0 ]] && return 0
#     [[ ${x2:0:1} == '~' ]] && x2="${HOME}${x2:1}"
#     if [[ "${x2}" == "${the_new_dir}" ]]; then
#       popd -n +$cnt 2>/dev/null 1>/dev/null
#       cnt=cnt-1
#     fi
#   done
# 
#   return 0
# }
# 
# alias cd=cd_func

alias md=mkdir
alias se='grep -r "\[error\]"'
alias ll='ls  -rlt'
alias G='grep -narR'
alias T='tail -f '
alias h='history'
#awk 'BEGIN{i=1;}{if($0 ~ /lack|more/){printf("\n%s\n",$0)}else{if(i%6==0){printf("\n");i=1;}else{printf("%s ",$0);i++;}}}' todo | column.exe -t
#awk 'NR==FNR{a[$0]=1;next;}NR>FNR{if(a[$0]!=1){print $0}}' 
#awk '{for(i=0;++i<=NF;)a[i]=a[i]?a[i] FS $i:$i}END{for(i=0;i++<NF;)print a[i]}' 
#awk '{if(!NF ){next}}1'    去空行
# About the below environment usage, please refer to ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUPSTREAM=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
#export GIT_PS1_SHOWCOLORHINTS=true

bash_prompt()  
{  
    #Clean colors
    local CC="\[\e[0m\]"
 
    # unsets color to term's fg color  
    # \e : an ASCII escape character (033)  
    # regular colors  
    local K="\[\e[0;30m\]"    # black  
    local R="\[\e[0;31m\]"    # red  
    local G="\[\e[0;32m\]"    # green  
    local Y="\[\e[0;33m\]"    # yellow  
    local B="\[\e[0;34m\]"    # blue  
    local M="\[\e[0;35m\]"    # magenta  
    local C="\[\e[0;36m\]"    # cyan  
    local W="\[\e[0;37m\]"    # white  
  
    # emphasized (bolded) colors  
    local EMK="\[\e[1;30m\]"  
    local EMR="\[\e[1;31m\]"  
    local EMG="\[\e[1;32m\]"  
    local EMY="\[\e[1;33m\]"  
    local EMB="\[\e[1;34m\]"  
    local EMM="\[\e[1;35m\]"  
    local EMC="\[\e[1;36m\]"  
    local EMW="\[\e[1;37m\]"  
  
    # background colors  
    local BGK="\[\e[40m\]"  
    local BGR="\[\e[41m\]"  
    local BGG="\[\e[42m\]"  
    local BGY="\[\e[43m\]"  
    local BGB="\[\e[44m\]"  
    local BGM="\[\e[45m\]"  
    local BGC="\[\e[46m\]"  
    local BGW="\[\e[47m\]"  
  
  
    :<<INTERPRET  
    \d         the date in "Weekday Month Date" format (e.g., "Tue May 26")  
    \D{format} the format is passed to strftime(3) and the result  
               is inserted into the prompt string an empty format  
               results in a locale-specific time representation.  
               The braces are required  
    \t         the current time in 24-hour HH:MM:SS format  
    \T         the current time in 12-hour HH:MM:SS format  
    \@         the current time in 12-hour am/pm format  
    \A         the current time in 24-hour HH:MM format  
  
    \h         the hostname up to the first  
    \H         the hostname  
  
    \w         the current working directory, with $HOME abbreviated with a tilde  
    \W         the basename of the current working directory, with $HOME  
  
    \!         the history number of this command  
    \$         if the effective UID is 0, a #, otherwise a $  
INTERPRET
  
    EXIT_STATUS="\`if [ \$? -eq 0 ]; then echo \"$G\"; else echo \"$R\"; fi\`"  
    export PS1="$EXIT_STATUS<\!> $M\u@\h$C\$(__git_ps1 2>/dev/null) $w[\W] $CC\$"
} 
bash_prompt
export LC_ALL=zh_CN.UTF-8
export LC_CTYPE=zh_CN.UTF-8
export LANG=zh_CN.UTF-8
export XMODIFIERS=@im=Chinput3
stty cs8 -istrip
stty pass8
export LESSCHARSET=latin1
alias vb='vi ~/.bashrc'
alias sb='source ~/.bashrc'
alias vi=vim
alias rsbm='svn up /cygdrive/d/asiainfo/VerisBilling/ob_dev/tianjin/openboss60/rating_billing/user_mdb;sshpass -p '1357qwer' rsync -rav --delete -e ssh  /cygdrive/d/asiainfo/VerisBilling/ob_dev/tianjin/openboss60/rating_billing/user_mdb  billbm@10.143.24.35:/tjgrp/billbm/work/products/openboss60/rating_billing/user_mdb'
alias rsd='svn up /cygdrive/d/asiainfo/VerisBilling/ob_dev/tianjin/openboss60/rating_billing/user_mdb;sshpass -p 'zwcl_aps321' rsync -rav --delete -e ssh  /cygdrive/d/asiainfo/VerisBilling/ob_dev/tianjin/openboss60/rating_billing/user_mdb  billbm@10.143.24.27:/tjgrp/billbm/work/products/openboss60/rating_billing/user_mdb'
alias vv='vi ~/.vimrc'
alias sv='source ~/.vimrc'
alias l='ll'
#alias rsd='sshpass -p "1357qwer" rsync '
alias vi='vim'
alias cdw='cd ~/work'
alias cdd='cd /cygdrive/d/asiainfo/VerisBilling/ob_dev/tianjin/openboss60/mediation/dupcheck'
alias cdu='cd /cygdrive/d/asiainfo/VerisBilling/ob_dev/tianjin/openboss60/rating_billing/user_mdb/userinfo/mdb_serv_cmcc/map_reduce_cloud'
alias cds='cd /cygdrive/d/asiainfo/VerisBilling/ob_dev/tianjin/openboss60/rating_billing/rating/sdl2xdr_forward'
alias cdl='cd /cygdrive/d/asiainfo/VerisBilling/ob_dev/tianjin/openboss60/rating_billing/rating/loader'
alias cdr='cd /cygdrive/d/asiainfo/VerisBilling/ob_dev/tianjin/openboss60/rating_billing'
export TERM=xterm
export PATH=.:$PATH
export PATH=$HOME/bin:$PATH
export SSHPASS=Bill!0612
#date -d @1478180364

# vim 括号匹配跳转操作：  
#   
# % 跳转到相配对的括号  
# gD 跳转到局部变量的定义处  
# '' 跳转到光标上次停靠的地方, 是两个', 而不是一个"  
# mx 设置书签,x只能是a-z的26个字母  
# `x 跳转到书签处("`"是1左边的键)  
# > 增加缩进,"x>"表示增加以下x行的缩进  
# < 减少缩进,"x<"表示减少以下x行的缩进  
#   
# { 跳到上一段的开头  
# } 跳到下一段的的开头  
# ( 移到这个句子的开头  
# ) 移到下一个句子的开头  
#   
# [[ 跳转至上一个函数(要求代码块中'{'必须单独占一行)  
# ]] 跳转至下一个函数(要求代码块中'{'必须单独占一行)  
#   
# C-] 跳转至函数或变量定义处  
# C-O 返回跳转前位置   
# C-T 同上   
# nC-T 返回跳转 n 次  
#   
# 0 数字0,跳转至行首   
# ^ 跳转至行第一个非空字符   
# $ 跳转至行尾  
# 删除空行\s代表空格
# :g/^\s*$/d
# :g 代表在全文档范围内
# ^代表行的开始
# \s*代表空白字符
# &代表行的结束
# d代表删除

# 删除行未空格
# 行末空格：\s\+$
# 行首空格：^\+\s

# 删除行尾空格：
# :%s/\s\+$//

#adb 黑域
#1、
#adb devices

#List of devices attached
#08cc37ce        device
#2、
#ADB -d shell

#adb -d shell sh /sdcard/Android/data/me.piebridge.brevent/brevent.sh

#checking....successfully
#date -d @1281161747 实现时间戳 → 普通时间

#date +%s -d"20110904 10:22:00" 实现普通时间→至时间戳
#文件编码格式转化
#convmv就是更改文件名编码方式的一个工具
#convmv -f GBK -t UTF-8 -r --nosmart --notest <目标目?
#                                                     
#－f from                                             
#－t to                                               
#--nosmart 如果已经是utf－8 忽略                      
#-r 包含所有子目录                                    
#--notest 不加表示只列出有什么需要转换的，不做实际转换
#iconv是更改文件编码方式的一个工具：
# iconv -f gbk -t utf-8 -o outfile  infile


