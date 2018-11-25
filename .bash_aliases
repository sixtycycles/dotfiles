# ---------------------------
# USEFUL ALIASES
# --------------------------
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias ll='ls -FlAh'
alias lsl='ls -FlAh | less'
alias less='less -FSRXc'
cd() { builtin cd "$@"; ll; }               # list directory contents when u look in it
alias cd..='cd ../'                         # lol i need this one.

# macOS
#alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
#alias which='type -all'                     # which for osx
#alias ttop="top -R -F -s 10 -o rsize"	    # better top

#Linux
alias top='htop'			    #better top again
alias untar='tar -zxvf'			    #its hard to remember flags.
alias du='du -ach | sort -h'
alias df='df -Tha --total'
alias free='free -ht'

#   ---------------------------
#   6. NETWORKING
#   ---------------------------

#talk to cisco switches over usb on my mac
#(you will need to change the tty.usbserial-SOMEOTHER NUMBER) but keep the 9600 baud
alias cconsole='screen /dev/tty.usbserial-AL03ZOSU 9600'
#some helpful shortcuts
alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
