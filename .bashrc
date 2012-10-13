#
# ~/.bashrc
#

# If not running interactively, don't do anything
export EDITOR=vim

orphans() {
      if [[ ! -n $(pacman -Qdt) ]]; then
              echo no orphans to remove
                else
                        sudo pacman -Rs $(pacman -Qdtq)
                          fi
}


[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias update="sudo pacman -Syu"
alias install="sudo pacman -S"
alias remove="sudo pacman -R"
#alias orphans="sudo pacman -Rs $(pacman -Qtdq)"
alias search="sudo pacman -Ss"
alias startapache="sudo rc.d start httpd"
alias stopapache="sudo rc.d stop httpd"
alias startmysql="sudo rc.d start mysqld"
alias stopmysql="sudo rc.d stop mysqld"
alias reboot="sudo reboot"
alias halt="sudo halt"


[ ! "$UID" = "0" ] && archey
#PS1='[\u@\h \W]\$ '
PS1="\[\e[1;36m\]┌─[\[\e[1;37m\u\e[1;36m\]][\[\e[1;31m\]${HOSTNAME%%.*}\[\e[1;36m\]][\[\e[1;32m\]\d\[\e[01;36m\]|\[\e[01;32m\]\@\[\e[01;36m\]]\w\[\e[01;31m\]\n\[\e[1;36m\]└─\[\e[1;36m\][\[\e[0m\]"
