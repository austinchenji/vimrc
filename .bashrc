# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export PATH=$PATH:~/devscripts/trunk/bin

#for svn conflict editing
EDITOR=vi
export SVN_EDITOR=vi
#kreaTV related
MYROOT=/extra/branches/trunk

alias cdcode='cd $MYROOT'
alias cdm='cd $MYROOT/makesystem'
alias cdp='cd $MYROOT/platform'
alias cda='cd $MYROOT/applications'
alias cdh='cd $MYROOT/hal'
alias cdboot='cd $MYROOT/products/ip-stb/boot_image/'
alias cddist='cd $MYROOT/dist/'

alias cdtftp='cd /extra/tftp'
alias cdnfs='cd /extra/nfs/2853'
alias cdbs='cd /extra/build_server'
alias fn='find `pwd` -name'
alias e='emacs -nw'

#bin PATH

#export PS1='`whoami`@`hostname`:`pwd`>'
#export PS1='\[\e]2;\u@\H:\w\a[\u@\h \W]> '
export PS1="\[\e]2;\u@\H:\w\a\e[32;1m\][\u@\h \W]> \[\e[0m\]"

 #enable color support of ls and also add handy aliases 

if [ "$TERM" != "dumb" ]; then 
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
fi

# some more ls aliases 
#alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

alias ll='ls -la'

# User specific aliases and functions


alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias ma='make all'
alias ml='make local_all'
alias mlc='make local_clean'
alias mlb='make local_boot_image'

# User specific aliases and functions
alias vncserver='vncserver -geometry 1280x762'
