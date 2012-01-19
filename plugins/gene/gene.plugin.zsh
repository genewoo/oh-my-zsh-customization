psgrep() {
  ps aux | grep "$1" | grep -v grep
}

mvim () {
#    local f
#    for f; do
#        test -e "$f" || touch "$f"
#    done
    open -a macvim "$@"
}

dropb () {
  cd ~/Dropbox/$1
}

_dropb() { _files -W ~/Dropbox -/; }

compdef _dropb dropb

ws () {
  cd ~/workspaces/$1
}

_ws() { _files -W ~/workspaces -/; }

compdef _ws ws

alias la='ls -a'
alias gsf='git svn fetch'
alias gsr='git svn rebase'

function ext-change() {
  for i in *.$1 ; do mv $i ${i:r}.$2 ; done
}

autoload -U zmv

function dropboxreset() {
  dropbox stop
  dropbox start
}

export DEV_BASE=~/
export SRV_PROFILE=main
export JBOSS_HOME=$DEV_BASE/workspaces/sfsf/jboss43
export JBOSS_SRV=$JBOSS_HOME/server/$SRV_PROFILE
export JBOSS_DEPLOY=$JBOSS_HOME/server/$SRV_PROFILE/deploy
export JBOSS_LOG=$JBOSS_HOME/server/$SRV_PROFILE/log
export JBOSS_JSP=$JBOSS_HOME/server/$SRV_PROFILE/deploy/sfv4.ear/sfv4.war/jsp

#DROPBOX section
export DROPBOX_FOLDER=$HOME/Dropbox
export MY_SHELL=$DROPBOX_FOLDER/Workspaces/shell
export GTDLIST=$DROPBOX_FOLDER/PlainText
SFSF_NOTE=$DROPBOX_FOLDER/SFSF/notes
export SFSF_NOTE
export EDITOR=vim

export ORACLE_HOME=/usr/lib/oracle/xe/app/oracle/product/10.2.0/server
export LD_LIBRARY_PATH=$ORACLE_HOME/lib
export ORACLE_SID=XE
export M2_HOME=~/dev/mvn2.1
#export JAVA_HOME=~/dev/jdk6
#export JDK_HOME=~/dev/jdk6
export JAVA_HOME=/usr/lib/jvm/java-6-sun
export JDK_HOME=/usr/lib/jvm/java-6-sun
export ANT_HOME=~/dev/ant1.8
export GRAILS_HOME=~/dev/grails
export GROOVY_HOME=~/dev/groovy
export SCALA_HOME=~/dev/scala

#alias
alias sqlplusl='sqlplus system/oracle'

alias tvim='gvim --remote-tab'
alias Open='gnome-open'
alias ajsp='ant deploy-jsp'
alias axhtml='ant deploy-jsp'
alias ajs='ant deploy-js'
alias acs='ant clean-server'
alias arb='rebuild `pwd | sed "s/.*\///"`'
alias freetalk='freetalk -j gene.wu.msn@gmail.com'
alias eclipseee='/home/jian/dev/eclipse35/eclipse'
alias aptana='/home/jian/dev/aptana3/studio3'
alias eclipsepy='/home/jian/dev/eclipseSE/eclipse'
alias sqldev='/home/jian/dev/sqldeveloper/sqldeveloper.sh'
alias judeuml='/home/jian/dev/jude_community/jude'
alias jgtd='gvim -S ~/.vim/sessions/gtd.vim'
alias jxgtd='vim -S ~/.vim/sessions/gtd.vim'
alias rbr='dev-rb -r'
alias rb='dev-rb'
alias rj='dev-jboss'
alias startxe='sudo service oracle-xe start'
alias tmuxr='tmux attach'


export WORKSPACES=$DEV_BASE/workspaces/git/
export V4=$WORKSPACES/V4

export PATH=$PATH:$ANT_HOME/bin

#Awesome special for Java App
export AWT_TOOLKIT=MToolkit

#export MY_IP=`$MY_SHELL/getmyip | head -n1`
